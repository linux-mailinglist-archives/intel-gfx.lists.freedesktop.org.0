Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 973EB70FE83
	for <lists+intel-gfx@lfdr.de>; Wed, 24 May 2023 21:26:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C04C810E5FD;
	Wed, 24 May 2023 19:26:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BDC4510E5FC;
 Wed, 24 May 2023 19:25:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B2861AADE7;
 Wed, 24 May 2023 19:25:59 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Date: Wed, 24 May 2023 19:25:59 -0000
Message-ID: <168495635969.11320.6622189612461991065@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230524092150.11776-1-tzimmermann@suse.de>
In-Reply-To: <20230524092150.11776-1-tzimmermann@suse.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/fbdev=3A_Remove_DRM=27s_helpers_for_fbdev_I/O_=28rev4?=
 =?utf-8?q?=29?=
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

Series: drm/fbdev: Remove DRM's helpers for fbdev I/O (rev4)
URL   : https://patchwork.freedesktop.org/series/117671/
State : warning

== Summary ==

Error: dim checkpatch failed
53f77f7c19f8 fbdev: Add Kconfig options to select different fb_ops helpers
f6426b54c18e fbdev: Add initializer macros for struct fb_ops
-:39: ERROR:CODE_INDENT: code indent should use tabs where possible
#39: FILE: include/linux/fb.h:550:
+        .fb_fillrect^I= cfb_fillrect, \$

-:39: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#39: FILE: include/linux/fb.h:550:
+        .fb_fillrect^I= cfb_fillrect, \$

-:40: ERROR:CODE_INDENT: code indent should use tabs where possible
#40: FILE: include/linux/fb.h:551:
+        .fb_copyarea^I= cfb_copyarea, \$

-:40: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#40: FILE: include/linux/fb.h:551:
+        .fb_copyarea^I= cfb_copyarea, \$

-:41: ERROR:CODE_INDENT: code indent should use tabs where possible
#41: FILE: include/linux/fb.h:552:
+        .fb_imageblit^I= cfb_imageblit$

-:41: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#41: FILE: include/linux/fb.h:552:
+        .fb_imageblit^I= cfb_imageblit$

-:46: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#46: FILE: include/linux/fb.h:557:
+#define FB_DEFAULT_IO_OPS \
+	__FB_DEFAULT_IO_OPS_RDWR, \
+	__FB_DEFAULT_IO_OPS_DRAW, \
+	__FB_DEFAULT_IO_OPS_MMAP

-:71: ERROR:CODE_INDENT: code indent should use tabs where possible
#71: FILE: include/linux/fb.h:583:
+        .fb_fillrect^I= sys_fillrect, \$

-:71: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#71: FILE: include/linux/fb.h:583:
+        .fb_fillrect^I= sys_fillrect, \$

-:72: ERROR:CODE_INDENT: code indent should use tabs where possible
#72: FILE: include/linux/fb.h:584:
+        .fb_copyarea^I= sys_copyarea, \$

-:72: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#72: FILE: include/linux/fb.h:584:
+        .fb_copyarea^I= sys_copyarea, \$

-:73: ERROR:CODE_INDENT: code indent should use tabs where possible
#73: FILE: include/linux/fb.h:585:
+        .fb_imageblit^I= sys_imageblit$

-:73: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#73: FILE: include/linux/fb.h:585:
+        .fb_imageblit^I= sys_imageblit$

-:78: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#78: FILE: include/linux/fb.h:590:
+#define FB_DEFAULT_SYS_OPS \
+	__FB_DEFAULT_SYS_OPS_RDWR, \
+	__FB_DEFAULT_SYS_OPS_DRAW, \
+	__FB_DEFAULT_SYS_OPS_MMAP

-:110: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__damage_area' - possible side-effects?
#110: FILE: include/linux/fb.h:670:
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

-:130: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#130: FILE: include/linux/fb.h:690:
+#define FB_GEN_DEFAULT_DEFERRED_IO_OPS(__prefix, __damage_range, __damage_area) \
+	__FB_GEN_DEFAULT_DEFERRED_OPS_RDWR(__prefix, __damage_range, io) \
+	__FB_GEN_DEFAULT_DEFERRED_OPS_DRAW(__prefix, __damage_area, cfb)

-:130: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__prefix' - possible side-effects?
#130: FILE: include/linux/fb.h:690:
+#define FB_GEN_DEFAULT_DEFERRED_IO_OPS(__prefix, __damage_range, __damage_area) \
+	__FB_GEN_DEFAULT_DEFERRED_OPS_RDWR(__prefix, __damage_range, io) \
+	__FB_GEN_DEFAULT_DEFERRED_OPS_DRAW(__prefix, __damage_area, cfb)

-:134: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#134: FILE: include/linux/fb.h:694:
+#define FB_GEN_DEFAULT_DEFERRED_SYS_OPS(__prefix, __damage_range, __damage_area) \
+	__FB_GEN_DEFAULT_DEFERRED_OPS_RDWR(__prefix, __damage_range, sys) \
+	__FB_GEN_DEFAULT_DEFERRED_OPS_DRAW(__prefix, __damage_area, sys)

-:134: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__prefix' - possible side-effects?
#134: FILE: include/linux/fb.h:694:
+#define FB_GEN_DEFAULT_DEFERRED_SYS_OPS(__prefix, __damage_range, __damage_area) \
+	__FB_GEN_DEFAULT_DEFERRED_OPS_RDWR(__prefix, __damage_range, sys) \
+	__FB_GEN_DEFAULT_DEFERRED_OPS_DRAW(__prefix, __damage_area, sys)

-:147: ERROR:CODE_INDENT: code indent should use tabs where possible
#147: FILE: include/linux/fb.h:707:
+        .fb_fillrect^I= __prefix ## _defio_fillrect, \$

-:147: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#147: FILE: include/linux/fb.h:707:
+        .fb_fillrect^I= __prefix ## _defio_fillrect, \$

-:148: ERROR:CODE_INDENT: code indent should use tabs where possible
#148: FILE: include/linux/fb.h:708:
+        .fb_copyarea^I= __prefix ## _defio_copyarea, \$

-:148: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#148: FILE: include/linux/fb.h:708:
+        .fb_copyarea^I= __prefix ## _defio_copyarea, \$

-:149: ERROR:CODE_INDENT: code indent should use tabs where possible
#149: FILE: include/linux/fb.h:709:
+        .fb_imageblit^I= __prefix ## _defio_imageblit$

-:149: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#149: FILE: include/linux/fb.h:709:
+        .fb_imageblit^I= __prefix ## _defio_imageblit$

-:154: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#154: FILE: include/linux/fb.h:714:
+#define FB_DEFAULT_DEFERRED_OPS(__prefix) \
+	__FB_DEFAULT_DEFERRED_OPS_RDWR(__prefix), \
+	__FB_DEFAULT_DEFERRED_OPS_DRAW(__prefix), \
+	__FB_DEFAULT_DEFERRED_OPS_MMAP(__prefix)

-:154: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__prefix' - possible side-effects?
#154: FILE: include/linux/fb.h:714:
+#define FB_DEFAULT_DEFERRED_OPS(__prefix) \
+	__FB_DEFAULT_DEFERRED_OPS_RDWR(__prefix), \
+	__FB_DEFAULT_DEFERRED_OPS_DRAW(__prefix), \
+	__FB_DEFAULT_DEFERRED_OPS_MMAP(__prefix)

total: 14 errors, 9 warnings, 4 checks, 133 lines checked
e493182c2236 drm/armada: Use regular fbdev I/O helpers
159bd857408f drm/exynos: Use regular fbdev I/O helpers
20551d544e87 drm/gma500: Use regular fbdev I/O helpers
57890b1e6124 drm/radeon: Use regular fbdev I/O helpers
1b166fa5fddd drm/fbdev-dma: Use regular fbdev I/O helpers
3958db34e25d drm/msm: Use regular fbdev I/O helpers
8a56657d53d6 drm/omapdrm: Use regular fbdev I/O helpers
8e7526c5fda2 drm/tegra: Use regular fbdev I/O helpers
71087dc6b386 drm/fb-helper: Export helpers for marking damage areas
89322e558595 drm/fbdev-generic: Implement dedicated fbdev I/O helpers
6429f9d4c336 drm/i915: Implement dedicated fbdev I/O helpers


