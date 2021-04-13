Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6509435D757
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Apr 2021 07:43:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10E5D89D5E;
	Tue, 13 Apr 2021 05:43:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8248989A60;
 Tue, 13 Apr 2021 05:43:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 760C2A0009;
 Tue, 13 Apr 2021 05:43:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Tue, 13 Apr 2021 05:43:44 -0000
Message-ID: <161829262445.8795.5289023599337976064@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210413051002.92589-1-lucas.demarchi@intel.com>
In-Reply-To: <20210413051002.92589-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Extend_GEN_renames_to_the_rest_of_the_driver_?=
 =?utf-8?b?KHJldjMp?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: Extend GEN renames to the rest of the driver (rev3)
URL   : https://patchwork.freedesktop.org/series/88825/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
8c34aa8e267d drm/i915/display: use DISPLAY_VER() on remaining users
7503616b85f4 drm/i915: rename display.version to display.ver
-:51: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'x' - possible side-effects?
#51: FILE: drivers/gpu/drm/i915/i915_pci.c:39:
+#define GEN(x) .gen = (x), .gen_mask = BIT((x) - 1), .display.ver = (x)

total: 0 errors, 0 warnings, 1 checks, 32 lines checked
a6f37e3b5ecd drm/i915/display: rename display version macros
-:1344: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#1344: FILE: drivers/gpu/drm/i915/i915_drv.h:1241:
+#define IS_DISPLAY_VER(i915, from, until) \
 	(DISPLAY_VER(i915) >= (from) && DISPLAY_VER(i915) <= (until))

total: 0 errors, 0 warnings, 1 checks, 1248 lines checked
87272d4c4a0b drm/i915: add macros for graphics and media versions
-:46: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#46: FILE: drivers/gpu/drm/i915/i915_drv.h:1246:
+#define IS_GRAPHICS_VER(i915, from, until) \
+	(GRAPHICS_VER(i915) >= (from) && GRAPHICS_VER(i915) <= (until))

-:50: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#50: FILE: drivers/gpu/drm/i915/i915_drv.h:1250:
+#define IS_MEDIA_VER(i915, from, until) \
+	(MEDIA_VER(i915) >= (from) && MEDIA_VER(i915) <= (until))

-:65: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'x' - possible side-effects?
#65: FILE: drivers/gpu/drm/i915/i915_pci.c:39:
+#define GEN(x) \
+	.gen_mask = BIT((x) - 1), \
+	.gen = (x), \
+	.graphics_ver = (x), \
+	.media_ver = (x), \
+	.display.ver = (x)

total: 0 errors, 0 warnings, 3 checks, 45 lines checked
da39207e3437 drm/i915/gt: replace gen use in intel_engine_cs
d41b73f73091 drm/i915/selftests: replace unused mask with simple version
155bdc7709bd drm/i915/selftests: eliminate use of gen_mask
ebc4cd343cf5 drm/i915: finish removal of gen_mask
9ca0c826016d drm/i915: eliminate remaining uses of intel_device_info->gen
5f54af83f769 drm/i915: finish removal of gen from intel_device_info
2a9ae3289b71 drm/i915: add media and display versions to device_info print
387aa72e151b drm/i915: split dgfx features from gen 12


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
