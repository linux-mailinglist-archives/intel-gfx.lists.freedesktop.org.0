Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A8C55F0FC
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jun 2022 00:28:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AF3711B62C;
	Tue, 28 Jun 2022 22:28:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 10DF411B62C;
 Tue, 28 Jun 2022 22:28:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 08D85A7DFC;
 Tue, 28 Jun 2022 22:28:10 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Tue, 28 Jun 2022 22:28:09 -0000
Message-ID: <165645528999.14503.14443329569135879240@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220628191016.3899428-1-lucas.demarchi@intel.com>
In-Reply-To: <20220628191016.3899428-1-lucas.demarchi@intel.com>
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
URL   : https://patchwork.freedesktop.org/series/105746/
State : warning

== Summary ==

Error: dim checkpatch failed
52de7a46693f iosys-map: Add per-word read
-:93: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#93: FILE: include/linux/iosys-map.h:339:
+	u64: val_ = readq(vaddr_iomem_)
 	   ^

-:93: WARNING:INDENTED_LABEL: labels should not be indented
#93: FILE: include/linux/iosys-map.h:339:
+	u64: val_ = readq(vaddr_iomem_)

-:96: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#96: FILE: include/linux/iosys-map.h:342:
+	u64: memcpy_fromio(&(val_), vaddr_iomem_, sizeof(u64))
 	   ^

-:96: WARNING:INDENTED_LABEL: labels should not be indented
#96: FILE: include/linux/iosys-map.h:342:
+	u64: memcpy_fromio(&(val_), vaddr_iomem_, sizeof(u64))

-:99: CHECK:CAMELCASE: Avoid CamelCase: <_Generic>
#99: FILE: include/linux/iosys-map.h:345:
+#define __iosys_map_rd_io(val__, vaddr_iomem__, type__) _Generic(val__,		\

-:99: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'val__' - possible side-effects?
#99: FILE: include/linux/iosys-map.h:345:
+#define __iosys_map_rd_io(val__, vaddr_iomem__, type__) _Generic(val__,		\
+	u8: val__ = readb(vaddr_iomem__),					\
+	u16: val__ = readw(vaddr_iomem__),					\
+	u32: val__ = readl(vaddr_iomem__),					\
+	__iosys_map_rd_io_u64_case(val__, vaddr_iomem__))

-:99: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'vaddr_iomem__' - possible side-effects?
#99: FILE: include/linux/iosys-map.h:345:
+#define __iosys_map_rd_io(val__, vaddr_iomem__, type__) _Generic(val__,		\
+	u8: val__ = readb(vaddr_iomem__),					\
+	u16: val__ = readw(vaddr_iomem__),					\
+	u32: val__ = readl(vaddr_iomem__),					\
+	__iosys_map_rd_io_u64_case(val__, vaddr_iomem__))

-:100: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#100: FILE: include/linux/iosys-map.h:346:
+	u8: val__ = readb(vaddr_iomem__),					\
 	  ^

-:100: WARNING:INDENTED_LABEL: labels should not be indented
#100: FILE: include/linux/iosys-map.h:346:
+	u8: val__ = readb(vaddr_iomem__),					\

-:101: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#101: FILE: include/linux/iosys-map.h:347:
+	u16: val__ = readw(vaddr_iomem__),					\
 	   ^

-:101: WARNING:INDENTED_LABEL: labels should not be indented
#101: FILE: include/linux/iosys-map.h:347:
+	u16: val__ = readw(vaddr_iomem__),					\

-:102: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#102: FILE: include/linux/iosys-map.h:348:
+	u32: val__ = readl(vaddr_iomem__),					\
 	   ^

-:102: WARNING:INDENTED_LABEL: labels should not be indented
#102: FILE: include/linux/iosys-map.h:348:
+	u32: val__ = readl(vaddr_iomem__),					\

-:105: ERROR:MULTISTATEMENT_MACRO_USE_DO_WHILE: Macros with multiple statements should be enclosed in a do - while loop
#105: FILE: include/linux/iosys-map.h:351:
+#define __iosys_map_rd_sys(val__, vaddr__, type__)				\
+	val__ = READ_ONCE(*(type__ *)(vaddr__));

-:105: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'type__' may be better as '(type__)' to avoid precedence issues
#105: FILE: include/linux/iosys-map.h:351:
+#define __iosys_map_rd_sys(val__, vaddr__, type__)				\
+	val__ = READ_ONCE(*(type__ *)(vaddr__));

-:105: WARNING:TRAILING_SEMICOLON: macros should not use a trailing semicolon
#105: FILE: include/linux/iosys-map.h:351:
+#define __iosys_map_rd_sys(val__, vaddr__, type__)				\
+	val__ = READ_ONCE(*(type__ *)(vaddr__));

-:128: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'map__' - possible side-effects?
#128: FILE: include/linux/iosys-map.h:368:
+#define iosys_map_rd(map__, offset__, type__) ({				\
+	type__ val;								\
+	if ((map__)->is_iomem) {						\
+		__iosys_map_rd_io(val, (map__)->vaddr_iomem + (offset__), type__);\
+	} else {								\
+		__iosys_map_rd_sys(val, (map__)->vaddr + (offset__), type__);	\
+	}									\
+	val;									\
 })

-:128: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'offset__' - possible side-effects?
#128: FILE: include/linux/iosys-map.h:368:
+#define iosys_map_rd(map__, offset__, type__) ({				\
+	type__ val;								\
+	if ((map__)->is_iomem) {						\
+		__iosys_map_rd_io(val, (map__)->vaddr_iomem + (offset__), type__);\
+	} else {								\
+		__iosys_map_rd_sys(val, (map__)->vaddr + (offset__), type__);	\
+	}									\
+	val;									\
 })

-:128: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'type__' - possible side-effects?
#128: FILE: include/linux/iosys-map.h:368:
+#define iosys_map_rd(map__, offset__, type__) ({				\
+	type__ val;								\
+	if ((map__)->is_iomem) {						\
+		__iosys_map_rd_io(val, (map__)->vaddr_iomem + (offset__), type__);\
+	} else {								\
+		__iosys_map_rd_sys(val, (map__)->vaddr + (offset__), type__);	\
+	}									\
+	val;									\
 })

total: 6 errors, 6 warnings, 7 checks, 70 lines checked
0a1be70e6733 iosys-map: Add per-word write
-:36: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#36: FILE: include/linux/iosys-map.h:341:
+	u64: writeq(val_, vaddr_iomem_)
 	   ^

-:36: WARNING:INDENTED_LABEL: labels should not be indented
#36: FILE: include/linux/iosys-map.h:341:
+	u64: writeq(val_, vaddr_iomem_)

-:41: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#41: FILE: include/linux/iosys-map.h:346:
+	u64: memcpy_toio(vaddr_iomem_, &(val_), sizeof(u64))
 	   ^

-:41: WARNING:INDENTED_LABEL: labels should not be indented
#41: FILE: include/linux/iosys-map.h:346:
+	u64: memcpy_toio(vaddr_iomem_, &(val_), sizeof(u64))

-:49: CHECK:CAMELCASE: Avoid CamelCase: <_Generic>
#49: FILE: include/linux/iosys-map.h:358:
+#define __iosys_map_wr_io(val__, vaddr_iomem__, type__) _Generic(val__,		\

-:49: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'val__' - possible side-effects?
#49: FILE: include/linux/iosys-map.h:358:
+#define __iosys_map_wr_io(val__, vaddr_iomem__, type__) _Generic(val__,		\
+	u8: writeb(val__, vaddr_iomem__),					\
+	u16: writew(val__, vaddr_iomem__),					\
+	u32: writel(val__, vaddr_iomem__),					\
+	__iosys_map_wr_io_u64_case(val__, vaddr_iomem__))

-:49: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'vaddr_iomem__' - possible side-effects?
#49: FILE: include/linux/iosys-map.h:358:
+#define __iosys_map_wr_io(val__, vaddr_iomem__, type__) _Generic(val__,		\
+	u8: writeb(val__, vaddr_iomem__),					\
+	u16: writew(val__, vaddr_iomem__),					\
+	u32: writel(val__, vaddr_iomem__),					\
+	__iosys_map_wr_io_u64_case(val__, vaddr_iomem__))

-:50: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#50: FILE: include/linux/iosys-map.h:359:
+	u8: writeb(val__, vaddr_iomem__),					\
 	  ^

-:50: WARNING:INDENTED_LABEL: labels should not be indented
#50: FILE: include/linux/iosys-map.h:359:
+	u8: writeb(val__, vaddr_iomem__),					\

-:51: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#51: FILE: include/linux/iosys-map.h:360:
+	u16: writew(val__, vaddr_iomem__),					\
 	   ^

-:51: WARNING:INDENTED_LABEL: labels should not be indented
#51: FILE: include/linux/iosys-map.h:360:
+	u16: writew(val__, vaddr_iomem__),					\

-:52: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#52: FILE: include/linux/iosys-map.h:361:
+	u32: writel(val__, vaddr_iomem__),					\
 	   ^

-:52: WARNING:INDENTED_LABEL: labels should not be indented
#52: FILE: include/linux/iosys-map.h:361:
+	u32: writel(val__, vaddr_iomem__),					\

-:55: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'type__' may be better as '(type__)' to avoid precedence issues
#55: FILE: include/linux/iosys-map.h:364:
+#define __iosys_map_wr_sys(val__, vaddr__, type__)				\
+	WRITE_ONCE(*(type__ *)(vaddr__), val__);

-:55: WARNING:TRAILING_SEMICOLON: macros should not use a trailing semicolon
#55: FILE: include/linux/iosys-map.h:364:
+#define __iosys_map_wr_sys(val__, vaddr__, type__)				\
+	WRITE_ONCE(*(type__ *)(vaddr__), val__);

-:74: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'map__' - possible side-effects?
#74: FILE: include/linux/iosys-map.h:403:
+#define iosys_map_wr(map__, offset__, type__, val__) ({				\
+	type__ val = (val__);							\
+	if ((map__)->is_iomem) {						\
+		__iosys_map_wr_io(val, (map__)->vaddr_iomem + (offset__), type__);\
+	} else {								\
+		__iosys_map_wr_sys(val, (map__)->vaddr + (offset__), type__);	\
+	}									\
 })

-:74: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'offset__' - possible side-effects?
#74: FILE: include/linux/iosys-map.h:403:
+#define iosys_map_wr(map__, offset__, type__, val__) ({				\
+	type__ val = (val__);							\
+	if ((map__)->is_iomem) {						\
+		__iosys_map_wr_io(val, (map__)->vaddr_iomem + (offset__), type__);\
+	} else {								\
+		__iosys_map_wr_sys(val, (map__)->vaddr + (offset__), type__);	\
+	}									\
 })

-:74: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'type__' - possible side-effects?
#74: FILE: include/linux/iosys-map.h:403:
+#define iosys_map_wr(map__, offset__, type__, val__) ({				\
+	type__ val = (val__);							\
+	if ((map__)->is_iomem) {						\
+		__iosys_map_wr_io(val, (map__)->vaddr_iomem + (offset__), type__);\
+	} else {								\
+		__iosys_map_wr_sys(val, (map__)->vaddr + (offset__), type__);	\
+	}									\
 })

total: 5 errors, 6 warnings, 7 checks, 66 lines checked


