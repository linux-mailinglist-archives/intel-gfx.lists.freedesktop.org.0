Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC2F4547051
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Jun 2022 01:59:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CBDF10E22F;
	Fri, 10 Jun 2022 23:59:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F020E10E101;
 Fri, 10 Jun 2022 23:59:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E945CA73C7;
 Fri, 10 Jun 2022 23:59:32 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Fri, 10 Jun 2022 23:59:32 -0000
Message-ID: <165490557292.16746.293782910648705711@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220610232130.2865479-1-lucas.demarchi@intel.com>
In-Reply-To: <20220610232130.2865479-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/3=5D_iosys-map=3A_Add_per-word_re?=
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

Series: series starting with [1/3] iosys-map: Add per-word read
URL   : https://patchwork.freedesktop.org/series/105011/
State : warning

== Summary ==

Error: dim checkpatch failed
553952dee006 iosys-map: Add per-word read
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

total: 6 errors, 4 warnings, 7 checks, 38 lines checked
977a62b00c03 iosys-map: Add per-word write
-:20: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#20: FILE: include/linux/iosys-map.h:340:
+	u64: writeq(val_, vaddr_iomem_),
 	   ^

-:20: WARNING:INDENTED_LABEL: labels should not be indented
#20: FILE: include/linux/iosys-map.h:340:
+	u64: writeq(val_, vaddr_iomem_),

-:31: CHECK:CAMELCASE: Avoid CamelCase: <_Generic>
#31: FILE: include/linux/iosys-map.h:353:
+#define __iosys_map_wr_io(val__, vaddr_iomem__, type__) _Generic(val__,	\

-:31: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'val__' - possible side-effects?
#31: FILE: include/linux/iosys-map.h:353:
+#define __iosys_map_wr_io(val__, vaddr_iomem__, type__) _Generic(val__,	\
+	u8: writeb(val__, vaddr_iomem__),				\
+	u16: writew(val__, vaddr_iomem__),				\
+	u32: writel(val__, vaddr_iomem__),				\
+	__iosys_map_wr_io_u64_case(val__, vaddr_iomem__)		\
+	default: memcpy_toio(vaddr_iomem__, &val, sizeof(val)))

-:31: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'vaddr_iomem__' - possible side-effects?
#31: FILE: include/linux/iosys-map.h:353:
+#define __iosys_map_wr_io(val__, vaddr_iomem__, type__) _Generic(val__,	\
+	u8: writeb(val__, vaddr_iomem__),				\
+	u16: writew(val__, vaddr_iomem__),				\
+	u32: writel(val__, vaddr_iomem__),				\
+	__iosys_map_wr_io_u64_case(val__, vaddr_iomem__)		\
+	default: memcpy_toio(vaddr_iomem__, &val, sizeof(val)))

-:32: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#32: FILE: include/linux/iosys-map.h:354:
+	u8: writeb(val__, vaddr_iomem__),				\
 	  ^

-:32: WARNING:INDENTED_LABEL: labels should not be indented
#32: FILE: include/linux/iosys-map.h:354:
+	u8: writeb(val__, vaddr_iomem__),				\

-:33: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#33: FILE: include/linux/iosys-map.h:355:
+	u16: writew(val__, vaddr_iomem__),				\
 	   ^

-:33: WARNING:INDENTED_LABEL: labels should not be indented
#33: FILE: include/linux/iosys-map.h:355:
+	u16: writew(val__, vaddr_iomem__),				\

-:34: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#34: FILE: include/linux/iosys-map.h:356:
+	u32: writel(val__, vaddr_iomem__),				\
 	   ^

-:34: WARNING:INDENTED_LABEL: labels should not be indented
#34: FILE: include/linux/iosys-map.h:356:
+	u32: writel(val__, vaddr_iomem__),				\

-:36: ERROR:SPACING: spaces required around that ':' (ctx:VxW)
#36: FILE: include/linux/iosys-map.h:358:
+	default: memcpy_toio(vaddr_iomem__, &val, sizeof(val)))
 	       ^

-:36: ERROR:TRAILING_STATEMENTS: trailing statements should be on next line
#36: FILE: include/linux/iosys-map.h:358:
+	default: memcpy_toio(vaddr_iomem__, &val, sizeof(val)))

-:48: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'map__' - possible side-effects?
#48: FILE: include/linux/iosys-map.h:394:
+#define iosys_map_wr(map__, offset__, type__, val__) ({				\
+	type__ val = (val__);							\
+	if ((map__)->is_iomem) {						\
+		__iosys_map_wr_io(val, (map__)->vaddr_iomem + offset__, type__);\
+	} else {								\
+		memcpy((map__)->vaddr + offset__, &val, sizeof(val));		\
+	}									\
 })

-:48: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'offset__' - possible side-effects?
#48: FILE: include/linux/iosys-map.h:394:
+#define iosys_map_wr(map__, offset__, type__, val__) ({				\
+	type__ val = (val__);							\
+	if ((map__)->is_iomem) {						\
+		__iosys_map_wr_io(val, (map__)->vaddr_iomem + offset__, type__);\
+	} else {								\
+		memcpy((map__)->vaddr + offset__, &val, sizeof(val));		\
+	}									\
 })

-:48: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'offset__' may be better as '(offset__)' to avoid precedence issues
#48: FILE: include/linux/iosys-map.h:394:
+#define iosys_map_wr(map__, offset__, type__, val__) ({				\
+	type__ val = (val__);							\
+	if ((map__)->is_iomem) {						\
+		__iosys_map_wr_io(val, (map__)->vaddr_iomem + offset__, type__);\
+	} else {								\
+		memcpy((map__)->vaddr + offset__, &val, sizeof(val));		\
+	}									\
 })

-:48: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'type__' - possible side-effects?
#48: FILE: include/linux/iosys-map.h:394:
+#define iosys_map_wr(map__, offset__, type__, val__) ({				\
+	type__ val = (val__);							\
+	if ((map__)->is_iomem) {						\
+		__iosys_map_wr_io(val, (map__)->vaddr_iomem + offset__, type__);\
+	} else {								\
+		memcpy((map__)->vaddr + offset__, &val, sizeof(val));		\
+	}									\
 })

total: 6 errors, 4 warnings, 7 checks, 40 lines checked
a823cb121a12 iosys-map: Fix typo in documentation


