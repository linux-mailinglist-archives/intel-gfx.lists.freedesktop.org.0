Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D50EA54F84E
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jun 2022 15:26:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D94D111A758;
	Fri, 17 Jun 2022 13:26:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BD9BD11A758;
 Fri, 17 Jun 2022 13:25:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B4908A00CC;
 Fri, 17 Jun 2022 13:25:59 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Fri, 17 Jun 2022 13:25:59 -0000
Message-ID: <165547235970.20132.8102058258089729367@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220617085204.1678035-1-lucas.demarchi@intel.com>
In-Reply-To: <20220617085204.1678035-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_iosys-map=3A_Add_per-word_re?=
 =?utf-8?q?ad?=
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

Series: series starting with [1/2] iosys-map: Add per-word read
URL   : https://patchwork.freedesktop.org/series/105273/
State : warning

== Summary ==

Error: dim checkpatch failed
59710fe2242f iosys-map: Add per-word read
-:87: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#87: FILE: include/linux/iosys-map.h:339:
+	u64: val_ = readq(vaddr_iomem_)
 	   ^

-:87: WARNING:INDENTED_LABEL: labels should not be indented
#87: FILE: include/linux/iosys-map.h:339:
+	u64: val_ = readq(vaddr_iomem_)

-:90: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#90: FILE: include/linux/iosys-map.h:342:
+	u64: memcpy_fromio(&(val_), vaddr_iomem__, sizeof(u64))
 	   ^

-:90: WARNING:INDENTED_LABEL: labels should not be indented
#90: FILE: include/linux/iosys-map.h:342:
+	u64: memcpy_fromio(&(val_), vaddr_iomem__, sizeof(u64))

-:93: CHECK:CAMELCASE: Avoid CamelCase: <_Generic>
#93: FILE: include/linux/iosys-map.h:345:
+#define __iosys_map_rd_io(val__, vaddr_iomem__, type__) _Generic(val__,		\

-:93: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'val__' - possible side-effects?
#93: FILE: include/linux/iosys-map.h:345:
+#define __iosys_map_rd_io(val__, vaddr_iomem__, type__) _Generic(val__,		\
+	u8: val__ = readb(vaddr_iomem__),					\
+	u16: val__ = readw(vaddr_iomem__),					\
+	u32: val__ = readl(vaddr_iomem__),					\
+	__iosys_map_rd_io_u64_case(val__, vaddr_iomem__))

-:93: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'vaddr_iomem__' - possible side-effects?
#93: FILE: include/linux/iosys-map.h:345:
+#define __iosys_map_rd_io(val__, vaddr_iomem__, type__) _Generic(val__,		\
+	u8: val__ = readb(vaddr_iomem__),					\
+	u16: val__ = readw(vaddr_iomem__),					\
+	u32: val__ = readl(vaddr_iomem__),					\
+	__iosys_map_rd_io_u64_case(val__, vaddr_iomem__))

-:94: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#94: FILE: include/linux/iosys-map.h:346:
+	u8: val__ = readb(vaddr_iomem__),					\
 	  ^

-:94: WARNING:INDENTED_LABEL: labels should not be indented
#94: FILE: include/linux/iosys-map.h:346:
+	u8: val__ = readb(vaddr_iomem__),					\

-:95: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#95: FILE: include/linux/iosys-map.h:347:
+	u16: val__ = readw(vaddr_iomem__),					\
 	   ^

-:95: WARNING:INDENTED_LABEL: labels should not be indented
#95: FILE: include/linux/iosys-map.h:347:
+	u16: val__ = readw(vaddr_iomem__),					\

-:96: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#96: FILE: include/linux/iosys-map.h:348:
+	u32: val__ = readl(vaddr_iomem__),					\
 	   ^

-:96: WARNING:INDENTED_LABEL: labels should not be indented
#96: FILE: include/linux/iosys-map.h:348:
+	u32: val__ = readl(vaddr_iomem__),					\

-:99: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'type__' may be better as '(type__)' to avoid precedence issues
#99: FILE: include/linux/iosys-map.h:351:
+#define __iosys_map_rd_sys(val__, vaddr__, type__) ({				\
+	compiletime_assert(sizeof(type__) <= sizeof(u64),			\
+			   "Unsupported access size for __iosys_map_rd_sys()");	\
+	val__ = READ_ONCE(*((type__ *)vaddr__));				\
+})

-:125: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'map__' - possible side-effects?
#125: FILE: include/linux/iosys-map.h:371:
+#define iosys_map_rd(map__, offset__, type__) ({				\
+	type__ val;								\
+	if ((map__)->is_iomem) {						\
+		__iosys_map_rd_io(val, (map__)->vaddr_iomem + (offset__), type__);\
+	} else {								\
+		__iosys_map_rd_sys(val, (map__)->vaddr + (offset__), type__);	\
+	}									\
+	val;									\
 })

-:125: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'offset__' - possible side-effects?
#125: FILE: include/linux/iosys-map.h:371:
+#define iosys_map_rd(map__, offset__, type__) ({				\
+	type__ val;								\
+	if ((map__)->is_iomem) {						\
+		__iosys_map_rd_io(val, (map__)->vaddr_iomem + (offset__), type__);\
+	} else {								\
+		__iosys_map_rd_sys(val, (map__)->vaddr + (offset__), type__);	\
+	}									\
+	val;									\
 })

-:125: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'type__' - possible side-effects?
#125: FILE: include/linux/iosys-map.h:371:
+#define iosys_map_rd(map__, offset__, type__) ({				\
+	type__ val;								\
+	if ((map__)->is_iomem) {						\
+		__iosys_map_rd_io(val, (map__)->vaddr_iomem + (offset__), type__);\
+	} else {								\
+		__iosys_map_rd_sys(val, (map__)->vaddr + (offset__), type__);	\
+	}									\
+	val;									\
 })

total: 5 errors, 5 warnings, 7 checks, 73 lines checked
c205cb395bbc iosys-map: Add per-word write
-:30: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#30: FILE: include/linux/iosys-map.h:341:
+	u64: writeq(val_, vaddr_iomem_)
 	   ^

-:30: WARNING:INDENTED_LABEL: labels should not be indented
#30: FILE: include/linux/iosys-map.h:341:
+	u64: writeq(val_, vaddr_iomem_)

-:35: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#35: FILE: include/linux/iosys-map.h:346:
+	u64: memcpy_toio(vaddr_iomem_, &(val_), sizeof(u64))
 	   ^

-:35: WARNING:INDENTED_LABEL: labels should not be indented
#35: FILE: include/linux/iosys-map.h:346:
+	u64: memcpy_toio(vaddr_iomem_, &(val_), sizeof(u64))

-:43: CHECK:CAMELCASE: Avoid CamelCase: <_Generic>
#43: FILE: include/linux/iosys-map.h:361:
+#define __iosys_map_wr_io(val__, vaddr_iomem__, type__) _Generic(val__,		\

-:43: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'val__' - possible side-effects?
#43: FILE: include/linux/iosys-map.h:361:
+#define __iosys_map_wr_io(val__, vaddr_iomem__, type__) _Generic(val__,		\
+	u8: writeb(val__, vaddr_iomem__),					\
+	u16: writew(val__, vaddr_iomem__),					\
+	u32: writel(val__, vaddr_iomem__),					\
+	__iosys_map_wr_io_u64_case(val__, vaddr_iomem__))

-:43: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'vaddr_iomem__' - possible side-effects?
#43: FILE: include/linux/iosys-map.h:361:
+#define __iosys_map_wr_io(val__, vaddr_iomem__, type__) _Generic(val__,		\
+	u8: writeb(val__, vaddr_iomem__),					\
+	u16: writew(val__, vaddr_iomem__),					\
+	u32: writel(val__, vaddr_iomem__),					\
+	__iosys_map_wr_io_u64_case(val__, vaddr_iomem__))

-:44: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#44: FILE: include/linux/iosys-map.h:362:
+	u8: writeb(val__, vaddr_iomem__),					\
 	  ^

-:44: WARNING:INDENTED_LABEL: labels should not be indented
#44: FILE: include/linux/iosys-map.h:362:
+	u8: writeb(val__, vaddr_iomem__),					\

-:45: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#45: FILE: include/linux/iosys-map.h:363:
+	u16: writew(val__, vaddr_iomem__),					\
 	   ^

-:45: WARNING:INDENTED_LABEL: labels should not be indented
#45: FILE: include/linux/iosys-map.h:363:
+	u16: writew(val__, vaddr_iomem__),					\

-:46: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#46: FILE: include/linux/iosys-map.h:364:
+	u32: writel(val__, vaddr_iomem__),					\
 	   ^

-:46: WARNING:INDENTED_LABEL: labels should not be indented
#46: FILE: include/linux/iosys-map.h:364:
+	u32: writel(val__, vaddr_iomem__),					\

-:49: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'type__' may be better as '(type__)' to avoid precedence issues
#49: FILE: include/linux/iosys-map.h:367:
+#define __iosys_map_wr_sys(val__, vaddr__, type__) ({				\
+	compiletime_assert(sizeof(type__) <= sizeof(u64),			\
+			   "Unsupported access size for __iosys_map_wr_sys()"); \
+	WRITE_ONCE(*((type__ *)vaddr__), val__);				\
+})

-:55: CHECK:LINE_SPACING: Please don't use multiple blank lines
#55: FILE: include/linux/iosys-map.h:373:
+
+

-:72: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'map__' - possible side-effects?
#72: FILE: include/linux/iosys-map.h:410:
+#define iosys_map_wr(map__, offset__, type__, val__) ({				\
+	type__ val = (val__);							\
+	if ((map__)->is_iomem) {						\
+		__iosys_map_wr_io(val, (map__)->vaddr_iomem + (offset__), type__);\
+	} else {								\
+		__iosys_map_wr_sys(val, (map__)->vaddr + (offset__), type__);	\
+	}									\
 })

-:72: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'offset__' - possible side-effects?
#72: FILE: include/linux/iosys-map.h:410:
+#define iosys_map_wr(map__, offset__, type__, val__) ({				\
+	type__ val = (val__);							\
+	if ((map__)->is_iomem) {						\
+		__iosys_map_wr_io(val, (map__)->vaddr_iomem + (offset__), type__);\
+	} else {								\
+		__iosys_map_wr_sys(val, (map__)->vaddr + (offset__), type__);	\
+	}									\
 })

-:72: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'type__' - possible side-effects?
#72: FILE: include/linux/iosys-map.h:410:
+#define iosys_map_wr(map__, offset__, type__, val__) ({				\
+	type__ val = (val__);							\
+	if ((map__)->is_iomem) {						\
+		__iosys_map_wr_io(val, (map__)->vaddr_iomem + (offset__), type__);\
+	} else {								\
+		__iosys_map_wr_sys(val, (map__)->vaddr + (offset__), type__);	\
+	}									\
 })

total: 5 errors, 5 warnings, 8 checks, 70 lines checked


