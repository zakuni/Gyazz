# -*- coding: utf-8 -*-

def page(name,title,write_authorized=false)
  page = {}

  # ロボット検索可能かどうか
  page['searchable'] = attr(name,'searchable')

  page['do_auth'] = false

  page['rawdata'] = readdata(name,title)['data'].join("\n")

  #  page['rawdata'] = ''
  #  data_file = Gyazz.datafile(name,title)
  #  if File.exist?(data_file) then
  #    page['rawdata'] = File.read(data_file)
  #    if title == ALL_AUTH then
  #      if !cookie_authorized?(name,ALL_AUTH) then
  #        page['rawdata'] = randomize(page['rawdata'])
  #        page['do_auth'] = true
  #      end
  #    elsif title == WRITE_AUTH then
  #      if !cookie_authorized?(name,WRITE_AUTH) then
  #        page['rawdata'] = randomize(page['rawdata'])
  #        page['do_auth'] = true
  #      end
  #    end
  #  end

  page['write_authorized'] = write_authorized

  page['name'] = name
  page['title'] = title
  page['related'] = related_pages(name,title) # この中でURL生成したりしてるのがよくない

  page

  # response["Access-Control-Allow-Origin"] = "*"
end
