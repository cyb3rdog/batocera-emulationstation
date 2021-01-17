project("rapidjson")

set(JSON_HEADERS
	${CMAKE_CURRENT_SOURCE_DIR}/allocators.h
	${CMAKE_CURRENT_SOURCE_DIR}/cursorstreamwrapper.h
	${CMAKE_CURRENT_SOURCE_DIR}/document.h
	${CMAKE_CURRENT_SOURCE_DIR}/encodedstream.h
	${CMAKE_CURRENT_SOURCE_DIR}/encodings.h
	${CMAKE_CURRENT_SOURCE_DIR}/filereadstream.h
	${CMAKE_CURRENT_SOURCE_DIR}/filewritestream.h
	${CMAKE_CURRENT_SOURCE_DIR}/fwd.h
	${CMAKE_CURRENT_SOURCE_DIR}/istreamwrapper.h
	${CMAKE_CURRENT_SOURCE_DIR}/memorybuffer.h
	${CMAKE_CURRENT_SOURCE_DIR}/memorystream.h
	${CMAKE_CURRENT_SOURCE_DIR}/ostreamwrapper.h
	${CMAKE_CURRENT_SOURCE_DIR}/pointer.h
	${CMAKE_CURRENT_SOURCE_DIR}/prettywriter.h
	${CMAKE_CURRENT_SOURCE_DIR}/rapidjson.h
	${CMAKE_CURRENT_SOURCE_DIR}/reader.h
	${CMAKE_CURRENT_SOURCE_DIR}/schema.h
	${CMAKE_CURRENT_SOURCE_DIR}/stream.h
	${CMAKE_CURRENT_SOURCE_DIR}/stringbuffer.h
	${CMAKE_CURRENT_SOURCE_DIR}/writer.h

	${CMAKE_CURRENT_SOURCE_DIR}/error/en.h
	${CMAKE_CURRENT_SOURCE_DIR}/error/error.h

	${CMAKE_CURRENT_SOURCE_DIR}/internal/biginteger.h
	${CMAKE_CURRENT_SOURCE_DIR}/internal/clzll.h
	${CMAKE_CURRENT_SOURCE_DIR}/internal/diyfp.h
	${CMAKE_CURRENT_SOURCE_DIR}/internal/dtoa.h
	${CMAKE_CURRENT_SOURCE_DIR}/internal/ieee754.h
	${CMAKE_CURRENT_SOURCE_DIR}/internal/itoa.h
	${CMAKE_CURRENT_SOURCE_DIR}/internal/meta.h
	${CMAKE_CURRENT_SOURCE_DIR}/internal/pow10.h
	${CMAKE_CURRENT_SOURCE_DIR}/internal/regex.h
	${CMAKE_CURRENT_SOURCE_DIR}/internal/stack.h
	${CMAKE_CURRENT_SOURCE_DIR}/internal/strfunc.h
	${CMAKE_CURRENT_SOURCE_DIR}/internal/strtod.h
	${CMAKE_CURRENT_SOURCE_DIR}/internal/swap.h

	${CMAKE_CURRENT_SOURCE_DIR}/msinttypes/inttypes.h
	${CMAKE_CURRENT_SOURCE_DIR}/msinttypes/stdint.h
)

include_directories(${CMAKE_CURRENT_SOURCE_DIR})
#add_library(rapidjson STATIC ${JSON_SOURCES} ${JSON_HEADERS})
