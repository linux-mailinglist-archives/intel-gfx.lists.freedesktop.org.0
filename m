Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D66D45458AC
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jun 2022 01:36:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D59312AE57;
	Thu,  9 Jun 2022 23:36:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 272BB12AD64;
 Thu,  9 Jun 2022 23:36:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1B926A66C8;
 Thu,  9 Jun 2022 23:36:36 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Thu, 09 Jun 2022 23:36:36 -0000
Message-ID: <165481779607.17375.2917353082839551210@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220609232020.2292649-1-lucas.demarchi@intel.com>
In-Reply-To: <20220609232020.2292649-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_iosys-map=3A_Add_word-sized_reads?=
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: iosys-map: Add word-sized reads
URL   : https://patchwork.freedesktop.org/series/104947/
State : warning

== Summary ==

Error: dim checkpatch failed
9f93e9ff5930 iosys-map: Add word-sized reads
-:38: WARNING:TYPO_SPELLING: 'accidentaly' may be misspelled - perhaps 'accidentally'?
#38: 
changes to track object creation time. This happens to accidentaly
                                                       ^^^^^^^^^^^

-:69: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#69: FILE: include/linux/iosys-map.h:338:
+	u64: val_ = readq(vaddr_iomem_),
 	   ^

-:69: WARNING:INDENTED_LABEL: labels should not be indented
#69: FILE: include/linux/iosys-map.h:338:
+	u64: val_ = readq(vaddr_iomem_),

-:74: CHECK:CAMELCASE: Avoid CamelCase: <_Generic>
#74: FILE: include/linux/iosys-map.h:343:
+#define __iosys_map_rd_io(val__, vaddr_iomem__, type__) _Generic(val__,	\

-:74: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'val__' - possible side-effects?
#74: FILE: include/linux/iosys-map.h:343:
+#define __iosys_map_rd_io(val__, vaddr_iomem__, type__) _Generic(val__,	\
+	u8: val__ = readb(vaddr_iomem__),				\
+	u16: val__ = readw(vaddr_iomem__),				\
+	u32: val__ = readl(vaddr_iomem__),				\
+	__iosys_map_rd_io_u64_case(val__, vaddr_iomem__)		\
+	default: memcpy_fromio(&(val__), vaddr_iomem__, sizeof(val__)))

-:74: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'vaddr_iomem__' - possible side-effects?
#74: FILE: include/linux/iosys-map.h:343:
+#define __iosys_map_rd_io(val__, vaddr_iomem__, type__) _Generic(val__,	\
+	u8: val__ = readb(vaddr_iomem__),				\
+	u16: val__ = readw(vaddr_iomem__),				\
+	u32: val__ = readl(vaddr_iomem__),				\
+	__iosys_map_rd_io_u64_case(val__, vaddr_iomem__)		\
+	default: memcpy_fromio(&(val__), vaddr_iomem__, sizeof(val__)))

-:75: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#75: FILE: include/linux/iosys-map.h:344:
+	u8: val__ = readb(vaddr_iomem__),				\
 	  ^

-:75: WARNING:INDENTED_LABEL: labels should not be indented
#75: FILE: include/linux/iosys-map.h:344:
+	u8: val__ = readb(vaddr_iomem__),				\

-:76: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#76: FILE: include/linux/iosys-map.h:345:
+	u16: val__ = readw(vaddr_iomem__),				\
 	   ^

-:76: WARNING:INDENTED_LABEL: labels should not be indented
#76: FILE: include/linux/iosys-map.h:345:
+	u16: val__ = readw(vaddr_iomem__),				\

-:77: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#77: FILE: include/linux/iosys-map.h:346:
+	u32: val__ = readl(vaddr_iomem__),				\
 	   ^

-:77: WARNING:INDENTED_LABEL: labels should not be indented
#77: FILE: include/linux/iosys-map.h:346:
+	u32: val__ = readl(vaddr_iomem__),				\

-:79: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#79: FILE: include/linux/iosys-map.h:348:
+	default: memcpy_fromio(&(val__), vaddr_iomem__, sizeof(val__)))
 	       ^

-:79: ERROR:TRAILING_STATEMENTS: trailing statements should be on next line
#79: FILE: include/linux/iosys-map.h:348:
+	default: memcpy_fromio(&(val__), vaddr_iomem__, sizeof(val__)))

-:92: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'map__' - possible side-effects?
#92: FILE: include/linux/iosys-map.h:363:
+#define iosys_map_rd(map__, offset__, type__) ({				\
+	type__ val;								\
+	if ((map__)->is_iomem) {						\
+		__iosys_map_rd_io(val, (map__)->vaddr_iomem + offset__, type__);\
+	} else {								\
+		memcpy(&val, (map__)->vaddr + offset__, sizeof(val));		\
+	}									\
+	val;									\
 })

-:92: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'offset__' - possible side-effects?
#92: FILE: include/linux/iosys-map.h:363:
+#define iosys_map_rd(map__, offset__, type__) ({				\
+	type__ val;								\
+	if ((map__)->is_iomem) {						\
+		__iosys_map_rd_io(val, (map__)->vaddr_iomem + offset__, type__);\
+	} else {								\
+		memcpy(&val, (map__)->vaddr + offset__, sizeof(val));		\
+	}									\
+	val;									\
 })

-:92: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'offset__' may be better as '(offset__)' to avoid precedence issues
#92: FILE: include/linux/iosys-map.h:363:
+#define iosys_map_rd(map__, offset__, type__) ({				\
+	type__ val;								\
+	if ((map__)->is_iomem) {						\
+		__iosys_map_rd_io(val, (map__)->vaddr_iomem + offset__, type__);\
+	} else {								\
+		memcpy(&val, (map__)->vaddr + offset__, sizeof(val));		\
+	}									\
+	val;									\
 })

-:92: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'type__' - possible side-effects?
#92: FILE: include/linux/iosys-map.h:363:
+#define iosys_map_rd(map__, offset__, type__) ({				\
+	type__ val;								\
+	if ((map__)->is_iomem) {						\
+		__iosys_map_rd_io(val, (map__)->vaddr_iomem + offset__, type__);\
+	} else {								\
+		memcpy(&val, (map__)->vaddr + offset__, sizeof(val));		\
+	}									\
+	val;									\
 })

total: 6 errors, 5 warnings, 7 checks, 38 lines checked


