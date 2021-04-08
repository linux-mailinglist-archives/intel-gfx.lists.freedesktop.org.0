Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D790357BBF
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Apr 2021 07:19:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AB926E17A;
	Thu,  8 Apr 2021 05:19:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 998216E174;
 Thu,  8 Apr 2021 05:19:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8EE7CA00FD;
 Thu,  8 Apr 2021 05:19:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Thu, 08 Apr 2021 05:19:11 -0000
Message-ID: <161785915155.10404.6198326634188488530@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210408045227.985408-1-lucas.demarchi@intel.com>
In-Reply-To: <20210408045227.985408-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Extend_GEN_renames_to_the_rest_of_the_driver_?=
 =?utf-8?b?KHJldjIp?=
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

Series: drm/i915: Extend GEN renames to the rest of the driver (rev2)
URL   : https://patchwork.freedesktop.org/series/88825/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
80f2d9b2707c drm/i915: rename display.version to display.ver
-:46: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'x' - possible side-effects?
#46: FILE: drivers/gpu/drm/i915/i915_pci.c:39:
+#define GEN(x) .gen = (x), .gen_mask = BIT((x) - 1), .display.ver = (x)

total: 0 errors, 0 warnings, 1 checks, 32 lines checked
ee9f103524db drm/i915: add macros for graphics and media versions
-:40: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#40: FILE: drivers/gpu/drm/i915/i915_drv.h:1246:
+#define IS_GRAPHICS_RANGE(i915, from, until) \
+	(GRAPHICS_VER(i915) >= (from) && GRAPHICS_VER(i915) <= (until))

-:45: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#45: FILE: drivers/gpu/drm/i915/i915_drv.h:1251:
+#define IS_MEDIA_RANGE(i915, from, until) \
+	(MEDIA_VER(i915) >= (from) && MEDIA_VER(i915) <= (until))

-:61: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'x' - possible side-effects?
#61: FILE: drivers/gpu/drm/i915/i915_pci.c:39:
+#define GEN(x) \
+	.gen_mask = BIT((x) - 1), \
+	.gen = (x), \
+	.graphics_ver = (x), \
+	.media_ver = (x), \
+	.display.ver = (x)

total: 0 errors, 0 warnings, 3 checks, 47 lines checked
6f23787ecba4 drm/i915/gt: replace gen use in intel_engine_cs
fe5e3e94c2b1 drm/i915/selftests: replace unused mask with simple version
e5492f832b05 drm/i915/selftests: eliminate use of gen_mask
cfbe5560528d drm/i915: finish removal of gen_mask
87f338a98fc3 drm/i915: eliminate remaining uses of intel_device_info->gen
bb6756e3a46d drm/i915: finish removal of gen from intel_device_info
b857f06983f3 drm/i915: add media and display versions to device_info print
3a85bfab0b35 drm/i915/display: use DISPLAY_VER() on remaining users
38c8ca70a088 drm/i915: replace IS_GEN and friends with IS_GRAPHICS_VER
-:2809: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#2809: FILE: drivers/gpu/drm/i915/gt/selftest_llc.c:47:
+			       intel_gpu_freq(rps, gpu_freq * (GRAPHICS_VER(i915) >= 9 ? GEN9_FREQ_SCALER : 1)),

-:2818: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#2818: FILE: drivers/gpu/drm/i915/gt/selftest_llc.c:57:
+			       intel_gpu_freq(rps, gpu_freq * (GRAPHICS_VER(i915) >= 9 ? GEN9_FREQ_SCALER : 1)),

-:3537: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#3537: FILE: drivers/gpu/drm/i915/i915_debugfs.c:489:
+			   (gt_perf_status & (GRAPHICS_VER(dev_priv) >= 9 ? 0x1ff00 : 0xff00)) >> 8);

total: 0 errors, 3 warnings, 0 checks, 4187 lines checked
e1b404b9b972 drm/i915: split dgfx features from gen 12


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
