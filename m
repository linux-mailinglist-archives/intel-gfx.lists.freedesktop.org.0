Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E4C7717793
	for <lists+intel-gfx@lfdr.de>; Wed, 31 May 2023 09:13:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 871D710E48C;
	Wed, 31 May 2023 07:12:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E946C10E48A;
 Wed, 31 May 2023 07:12:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E4534A0BA8;
 Wed, 31 May 2023 07:12:55 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Date: Wed, 31 May 2023 07:12:55 -0000
Message-ID: <168551717591.17617.13547499244751534904@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230530150253.22758-1-tzimmermann@suse.de>
In-Reply-To: <20230530150253.22758-1-tzimmermann@suse.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv5=2C01/13=5D_fbdev=3A_Add_Kconfig_?=
 =?utf-8?q?options_to_select_different_fb=5Fops_helpers?=
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

Series: series starting with [v5,01/13] fbdev: Add Kconfig options to select different fb_ops helpers
URL   : https://patchwork.freedesktop.org/series/118574/
State : warning

== Summary ==

Error: dim checkpatch failed
d99c025b8fad fbdev: Add Kconfig options to select different fb_ops helpers
305b772ca6c4 fbdev: Add initializer macros for struct fb_ops
-:50: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#50: FILE: include/linux/fb.h:557:
+#define FB_DEFAULT_IO_OPS \
+	__FB_DEFAULT_IO_OPS_RDWR, \
+	__FB_DEFAULT_IO_OPS_DRAW, \
+	__FB_DEFAULT_IO_OPS_MMAP

-:82: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#82: FILE: include/linux/fb.h:590:
+#define FB_DEFAULT_SYS_OPS \
+	__FB_DEFAULT_SYS_OPS_RDWR, \
+	__FB_DEFAULT_SYS_OPS_DRAW, \
+	__FB_DEFAULT_SYS_OPS_MMAP

-:114: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__damage_area' - possible side-effects?
#114: FILE: include/linux/fb.h:670:
+#define __FB_GEN_DEFAULT_DEFERRED_OPS_DRAW(__prefix, __damage_area, __mode) \
+	static void __prefix ## _defio_fillrect(struct fb_info *info, \
+						const struct fb_fillrect *rect) \
+	{ \
+		__mode ## _fillrect(info, rect); \
+		__damage_area(info, rect->dx, rect->dy, rect->width, rect->height); \
+	} \
+	static void __prefix ## _defio_copyarea(struct fb_info *info, \
+						const struct fb_copyarea *area) \
+	{ \
+		__mode ## _copyarea(info, area); \
+		__damage_area(info, area->dx, area->dy, area->width, area->height); \
+	} \
+	static void __prefix ## _defio_imageblit(struct fb_info *info, \
+						 const struct fb_image *image) \
+	{ \
+		__mode ## _imageblit(info, image); \
+		__damage_area(info, image->dx, image->dy, image->width, image->height); \
+	}

-:134: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#134: FILE: include/linux/fb.h:690:
+#define FB_GEN_DEFAULT_DEFERRED_IO_OPS(__prefix, __damage_range, __damage_area) \
+	__FB_GEN_DEFAULT_DEFERRED_OPS_RDWR(__prefix, __damage_range, io) \
+	__FB_GEN_DEFAULT_DEFERRED_OPS_DRAW(__prefix, __damage_area, cfb)

-:134: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__prefix' - possible side-effects?
#134: FILE: include/linux/fb.h:690:
+#define FB_GEN_DEFAULT_DEFERRED_IO_OPS(__prefix, __damage_range, __damage_area) \
+	__FB_GEN_DEFAULT_DEFERRED_OPS_RDWR(__prefix, __damage_range, io) \
+	__FB_GEN_DEFAULT_DEFERRED_OPS_DRAW(__prefix, __damage_area, cfb)

-:138: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#138: FILE: include/linux/fb.h:694:
+#define FB_GEN_DEFAULT_DEFERRED_SYS_OPS(__prefix, __damage_range, __damage_area) \
+	__FB_GEN_DEFAULT_DEFERRED_OPS_RDWR(__prefix, __damage_range, sys) \
+	__FB_GEN_DEFAULT_DEFERRED_OPS_DRAW(__prefix, __damage_area, sys)

-:138: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__prefix' - possible side-effects?
#138: FILE: include/linux/fb.h:694:
+#define FB_GEN_DEFAULT_DEFERRED_SYS_OPS(__prefix, __damage_range, __damage_area) \
+	__FB_GEN_DEFAULT_DEFERRED_OPS_RDWR(__prefix, __damage_range, sys) \
+	__FB_GEN_DEFAULT_DEFERRED_OPS_DRAW(__prefix, __damage_area, sys)

-:158: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#158: FILE: include/linux/fb.h:714:
+#define FB_DEFAULT_DEFERRED_OPS(__prefix) \
+	__FB_DEFAULT_DEFERRED_OPS_RDWR(__prefix), \
+	__FB_DEFAULT_DEFERRED_OPS_DRAW(__prefix), \
+	__FB_DEFAULT_DEFERRED_OPS_MMAP(__prefix)

-:158: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__prefix' - possible side-effects?
#158: FILE: include/linux/fb.h:714:
+#define FB_DEFAULT_DEFERRED_OPS(__prefix) \
+	__FB_DEFAULT_DEFERRED_OPS_RDWR(__prefix), \
+	__FB_DEFAULT_DEFERRED_OPS_DRAW(__prefix), \
+	__FB_DEFAULT_DEFERRED_OPS_MMAP(__prefix)

total: 5 errors, 0 warnings, 4 checks, 133 lines checked
8cf81153d9be drm/armada: Use regular fbdev I/O helpers
ae8753bfd372 drm/exynos: Use regular fbdev I/O helpers
85594d867943 drm/gma500: Use regular fbdev I/O helpers
580f4398003e drm/radeon: Use regular fbdev I/O helpers
b93785cdb74b drm/fbdev-dma: Use regular fbdev I/O helpers
f2d84d66e5d2 drm/omapdrm: Use regular fbdev I/O helpers
dc9598d0aa4a drm/tegra: Use regular fbdev I/O helpers
641517a16a6d drm/fb-helper: Export helpers for marking damage areas
aea558947b7a drm/msm: Use regular fbdev I/O helpers
8632dc90593a drm/fbdev-generic: Implement dedicated fbdev I/O helpers
f7a0a9d697f2 drm/i915: Implement dedicated fbdev I/O helpers


