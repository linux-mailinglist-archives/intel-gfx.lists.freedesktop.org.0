Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1061039936B
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jun 2021 21:20:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 714376EE19;
	Wed,  2 Jun 2021 19:20:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 14BB16EE13;
 Wed,  2 Jun 2021 19:20:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0CB82A47E9;
 Wed,  2 Jun 2021 19:20:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Wed, 02 Jun 2021 19:20:37 -0000
Message-ID: <162266163704.11229.2335138873285568901@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210602191148.3344574-1-lucas.demarchi@intel.com>
In-Reply-To: <20210602191148.3344574-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Finish_conversion_to_GRAPHICS=5FVER_=28rev2=29?=
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

Series: Finish conversion to GRAPHICS_VER (rev2)
URL   : https://patchwork.freedesktop.org/series/90693/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
6ec9c3d188bc drm/i915/gt: replace IS_GEN and friends with GRAPHICS_VER
-:2330: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#2330: FILE: drivers/gpu/drm/i915/gt/selftest_llc.c:47:
+			       intel_gpu_freq(rps, gpu_freq * (GRAPHICS_VER(i915) >= 9 ? GEN9_FREQ_SCALER : 1)),

-:2339: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#2339: FILE: drivers/gpu/drm/i915/gt/selftest_llc.c:57:
+			       intel_gpu_freq(rps, gpu_freq * (GRAPHICS_VER(i915) >= 9 ? GEN9_FREQ_SCALER : 1)),

total: 0 errors, 2 warnings, 0 checks, 2260 lines checked
01c557094c93 drm/i915/gt: Add remaining conversions to GRAPHICS_VER
dfbb5b2242e5 drm/i915/gem: replace IS_GEN and friends with GRAPHICS_VER
20ae50b78d4f drm/i915/gvt: replace IS_GEN and friends with GRAPHICS_VER
d643dfea6a80 drm/i915: replace IS_GEN and friends with GRAPHICS_VER
-:154: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#154: FILE: drivers/gpu/drm/i915/i915_debugfs.c:500:
+			   (gt_perf_status & (GRAPHICS_VER(dev_priv) >= 9 ? 0x1ff00 : 0xff00)) >> 8);

total: 0 errors, 1 warnings, 0 checks, 1352 lines checked
ec1b90386e0e drm/i915: Add remaining conversions to GRAPHICS_VER
-:24: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#24: FILE: drivers/gpu/drm/i915/i915_drv.h:1572:
+#define IS_GEN9_LP(dev_priv)	(GRAPHICS_VER(dev_priv) == 9 && IS_LP(dev_priv))

-:25: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#25: FILE: drivers/gpu/drm/i915/i915_drv.h:1573:
+#define IS_GEN9_BC(dev_priv)	(GRAPHICS_VER(dev_priv) == 9 && !IS_LP(dev_priv))

-:60: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#60: FILE: drivers/gpu/drm/i915/i915_drv.h:1640:
+#define HAS_GMBUS_BURST_READ(dev_priv) (GRAPHICS_VER(dev_priv) >= 10 || \
 					IS_GEMINILAKE(dev_priv) || \
 					IS_KABYLAKE(dev_priv))

-:70: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#70: FILE: drivers/gpu/drm/i915/i915_drv.h:1647:
+#define HAS_128_BYTE_Y_TILING(dev_priv) (GRAPHICS_VER(dev_priv) != 2 && \
+					 !(IS_I915G(dev_priv) || IS_I915GM(dev_priv)))

-:79: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#79: FILE: drivers/gpu/drm/i915/i915_drv.h:1654:
+#define HAS_CUR_FBC(dev_priv)	(!HAS_GMCH(dev_priv) && GRAPHICS_VER(dev_priv) >= 7)

total: 0 errors, 0 warnings, 5 checks, 207 lines checked
9b9588997cc1 drm/i915/display: replace IS_GEN() in commented code


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
