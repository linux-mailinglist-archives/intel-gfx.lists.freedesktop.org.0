Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47BE255BDF1
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jun 2022 06:05:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BA0810F886;
	Tue, 28 Jun 2022 04:05:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7DC1F10F886;
 Tue, 28 Jun 2022 04:05:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 737F2A77A5;
 Tue, 28 Jun 2022 04:05:28 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Tue, 28 Jun 2022 04:05:28 -0000
Message-ID: <165638912843.14503.13774732629902203482@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220627224751.3627465-1-lucas.demarchi@intel.com>
In-Reply-To: <20220627224751.3627465-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C1/2=5D_iosys-map=3A_Add_per-wo?=
 =?utf-8?q?rd_read?=
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

Series: series starting with [CI,1/2] iosys-map: Add per-word read
URL   : https://patchwork.freedesktop.org/series/105692/
State : warning

== Summary ==

Error: dim checkpatch failed
e6ff19d2ffd3 iosys-map: Add per-word read
-:88: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#88: FILE: include/linux/iosys-map.h:339:
+	u64: val_ = readq(vaddr_iomem_)
 	   ^

-:88: WARNING:INDENTED_LABEL: labels should not be indented
#88: FILE: include/linux/iosys-map.h:339:
+	u64: val_ = readq(vaddr_iomem_)

-:91: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#91: FILE: include/linux/iosys-map.h:342:
+	u64: memcpy_fromio(&(val_), vaddr_iomem_, sizeof(u64))
 	   ^

-:91: WARNING:INDENTED_LABEL: labels should not be indented
#91: FILE: include/linux/iosys-map.h:342:
+	u64: memcpy_fromio(&(val_), vaddr_iomem_, sizeof(u64))

-:94: CHECK:CAMELCASE: Avoid CamelCase: <_Generic>
#94: FILE: include/linux/iosys-map.h:345:
+#define __iosys_map_rd_io(val__, vaddr_iomem__, type__) _Generic(val__,		\

-:94: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'val__' - possible side-effects?
#94: FILE: include/linux/iosys-map.h:345:
+#define __iosys_map_rd_io(val__, vaddr_iomem__, type__) _Generic(val__,		\
+	u8: val__ = readb(vaddr_iomem__),					\
+	u16: val__ = readw(vaddr_iomem__),					\
+	u32: val__ = readl(vaddr_iomem__),					\
+	__iosys_map_rd_io_u64_case(val__, vaddr_iomem__))

-:94: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'vaddr_iomem__' - possible side-effects?
#94: FILE: include/linux/iosys-map.h:345:
+#define __iosys_map_rd_io(val__, vaddr_iomem__, type__) _Generic(val__,		\
+	u8: val__ = readb(vaddr_iomem__),					\
+	u16: val__ = readw(vaddr_iomem__),					\
+	u32: val__ = readl(vaddr_iomem__),					\
+	__iosys_map_rd_io_u64_case(val__, vaddr_iomem__))

-:95: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#95: FILE: include/linux/iosys-map.h:346:
+	u8: val__ = readb(vaddr_iomem__),					\
 	  ^

-:95: WARNING:INDENTED_LABEL: labels should not be indented
#95: FILE: include/linux/iosys-map.h:346:
+	u8: val__ = readb(vaddr_iomem__),					\

-:96: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#96: FILE: include/linux/iosys-map.h:347:
+	u16: val__ = readw(vaddr_iomem__),					\
 	   ^

-:96: WARNING:INDENTED_LABEL: labels should not be indented
#96: FILE: include/linux/iosys-map.h:347:
+	u16: val__ = readw(vaddr_iomem__),					\

-:97: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#97: FILE: include/linux/iosys-map.h:348:
+	u32: val__ = readl(vaddr_iomem__),					\
 	   ^

-:97: WARNING:INDENTED_LABEL: labels should not be indented
#97: FILE: include/linux/iosys-map.h:348:
+	u32: val__ = readl(vaddr_iomem__),					\

-:100: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'type__' may be better as '(type__)' to avoid precedence issues
#100: FILE: include/linux/iosys-map.h:351:
+#define __iosys_map_rd_sys(val__, vaddr__, type__) ({				\
+	compiletime_assert(sizeof(type__) <= sizeof(u64),			\
+			   "Unsupported access size for __iosys_map_rd_sys()");	\
+	val__ = READ_ONCE(*((type__ *)vaddr__));				\
+})

-:126: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'map__' - possible side-effects?
#126: FILE: include/linux/iosys-map.h:371:
+#define iosys_map_rd(map__, offset__, type__) ({				\
+	type__ val;								\
+	if ((map__)->is_iomem) {						\
+		__iosys_map_rd_io(val, (map__)->vaddr_iomem + (offset__), type__);\
+	} else {								\
+		__iosys_map_rd_sys(val, (map__)->vaddr + (offset__), type__);	\
+	}									\
+	val;									\
 })

-:126: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'offset__' - possible side-effects?
#126: FILE: include/linux/iosys-map.h:371:
+#define iosys_map_rd(map__, offset__, type__) ({				\
+	type__ val;								\
+	if ((map__)->is_iomem) {						\
+		__iosys_map_rd_io(val, (map__)->vaddr_iomem + (offset__), type__);\
+	} else {								\
+		__iosys_map_rd_sys(val, (map__)->vaddr + (offset__), type__);	\
+	}									\
+	val;									\
 })

-:126: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'type__' - possible side-effects?
#126: FILE: include/linux/iosys-map.h:371:
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
444bfcd41d67 iosys-map: Add per-word write
-:31: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#31: FILE: include/linux/iosys-map.h:341:
+	u64: writeq(val_, vaddr_iomem_)
 	   ^

-:31: WARNING:INDENTED_LABEL: labels should not be indented
#31: FILE: include/linux/iosys-map.h:341:
+	u64: writeq(val_, vaddr_iomem_)

-:36: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#36: FILE: include/linux/iosys-map.h:346:
+	u64: memcpy_toio(vaddr_iomem_, &(val_), sizeof(u64))
 	   ^

-:36: WARNING:INDENTED_LABEL: labels should not be indented
#36: FILE: include/linux/iosys-map.h:346:
+	u64: memcpy_toio(vaddr_iomem_, &(val_), sizeof(u64))

-:44: CHECK:CAMELCASE: Avoid CamelCase: <_Generic>
#44: FILE: include/linux/iosys-map.h:361:
+#define __iosys_map_wr_io(val__, vaddr_iomem__, type__) _Generic(val__,		\

-:44: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'val__' - possible side-effects?
#44: FILE: include/linux/iosys-map.h:361:
+#define __iosys_map_wr_io(val__, vaddr_iomem__, type__) _Generic(val__,		\
+	u8: writeb(val__, vaddr_iomem__),					\
+	u16: writew(val__, vaddr_iomem__),					\
+	u32: writel(val__, vaddr_iomem__),					\
+	__iosys_map_wr_io_u64_case(val__, vaddr_iomem__))

-:44: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'vaddr_iomem__' - possible side-effects?
#44: FILE: include/linux/iosys-map.h:361:
+#define __iosys_map_wr_io(val__, vaddr_iomem__, type__) _Generic(val__,		\
+	u8: writeb(val__, vaddr_iomem__),					\
+	u16: writew(val__, vaddr_iomem__),					\
+	u32: writel(val__, vaddr_iomem__),					\
+	__iosys_map_wr_io_u64_case(val__, vaddr_iomem__))

-:45: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#45: FILE: include/linux/iosys-map.h:362:
+	u8: writeb(val__, vaddr_iomem__),					\
 	  ^

-:45: WARNING:INDENTED_LABEL: labels should not be indented
#45: FILE: include/linux/iosys-map.h:362:
+	u8: writeb(val__, vaddr_iomem__),					\

-:46: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#46: FILE: include/linux/iosys-map.h:363:
+	u16: writew(val__, vaddr_iomem__),					\
 	   ^

-:46: WARNING:INDENTED_LABEL: labels should not be indented
#46: FILE: include/linux/iosys-map.h:363:
+	u16: writew(val__, vaddr_iomem__),					\

-:47: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#47: FILE: include/linux/iosys-map.h:364:
+	u32: writel(val__, vaddr_iomem__),					\
 	   ^

-:47: WARNING:INDENTED_LABEL: labels should not be indented
#47: FILE: include/linux/iosys-map.h:364:
+	u32: writel(val__, vaddr_iomem__),					\

-:50: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'type__' may be better as '(type__)' to avoid precedence issues
#50: FILE: include/linux/iosys-map.h:367:
+#define __iosys_map_wr_sys(val__, vaddr__, type__) ({				\
+	compiletime_assert(sizeof(type__) <= sizeof(u64),			\
+			   "Unsupported access size for __iosys_map_wr_sys()"); \
+	WRITE_ONCE(*((type__ *)vaddr__), val__);				\
+})

-:56: CHECK:LINE_SPACING: Please don't use multiple blank lines
#56: FILE: include/linux/iosys-map.h:373:
+
+

-:73: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'map__' - possible side-effects?
#73: FILE: include/linux/iosys-map.h:410:
+#define iosys_map_wr(map__, offset__, type__, val__) ({				\
+	type__ val = (val__);							\
+	if ((map__)->is_iomem) {						\
+		__iosys_map_wr_io(val, (map__)->vaddr_iomem + (offset__), type__);\
+	} else {								\
+		__iosys_map_wr_sys(val, (map__)->vaddr + (offset__), type__);	\
+	}									\
 })

-:73: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'offset__' - possible side-effects?
#73: FILE: include/linux/iosys-map.h:410:
+#define iosys_map_wr(map__, offset__, type__, val__) ({				\
+	type__ val = (val__);							\
+	if ((map__)->is_iomem) {						\
+		__iosys_map_wr_io(val, (map__)->vaddr_iomem + (offset__), type__);\
+	} else {								\
+		__iosys_map_wr_sys(val, (map__)->vaddr + (offset__), type__);	\
+	}									\
 })

-:73: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'type__' - possible side-effects?
#73: FILE: include/linux/iosys-map.h:410:
+#define iosys_map_wr(map__, offset__, type__, val__) ({				\
+	type__ val = (val__);							\
+	if ((map__)->is_iomem) {						\
+		__iosys_map_wr_io(val, (map__)->vaddr_iomem + (offset__), type__);\
+	} else {								\
+		__iosys_map_wr_sys(val, (map__)->vaddr + (offset__), type__);	\
+	}									\
 })

total: 5 errors, 5 warnings, 8 checks, 70 lines checked


