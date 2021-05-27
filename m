Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 877523937EC
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 23:25:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A61436F4E8;
	Thu, 27 May 2021 21:25:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 00B486F4E8;
 Thu, 27 May 2021 21:25:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E3A8DA41FB;
 Thu, 27 May 2021 21:25:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Thu, 27 May 2021 21:25:51 -0000
Message-ID: <162215075190.12240.14496896454382533811@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210527181700.1676790-1-lucas.demarchi@intel.com>
In-Reply-To: <20210527181700.1676790-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Finish_conversion_to_GRAPHICS=5FVER?=
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

Series: Finish conversion to GRAPHICS_VER
URL   : https://patchwork.freedesktop.org/series/90693/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c7eb65fd23b6 drm/i915/gt: replace IS_GEN and friends with IS_GRAPHICS_VER
-:2316: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#2316: FILE: drivers/gpu/drm/i915/gt/selftest_llc.c:47:
+			       intel_gpu_freq(rps, gpu_freq * (GRAPHICS_VER(i915) >= 9 ? GEN9_FREQ_SCALER : 1)),

-:2325: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#2325: FILE: drivers/gpu/drm/i915/gt/selftest_llc.c:57:
+			       intel_gpu_freq(rps, gpu_freq * (GRAPHICS_VER(i915) >= 9 ? GEN9_FREQ_SCALER : 1)),

total: 0 errors, 2 warnings, 0 checks, 2252 lines checked
dc0babe0e3f4 drm/i915/gt: Add remaining conversions to GRAPHICS_VER
bf349477ef65 drm/i915/gem: replace IS_GEN and friends with IS_GRAPHICS_VER
5f5511830f0a drm/i915/gvt: replace IS_GEN and friends with IS_GRAPHICS_VER
e466a8d9d7b2 drm/i915: replace IS_GEN and friends with IS_GRAPHICS_VER
-:149: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#149: FILE: drivers/gpu/drm/i915/i915_debugfs.c:500:
+			   (gt_perf_status & (GRAPHICS_VER(dev_priv) >= 9 ? 0x1ff00 : 0xff00)) >> 8);

total: 0 errors, 1 warnings, 0 checks, 1352 lines checked
39f44ce0df3a drm/i915: Add remaining conversions to GRAPHICS_VER
-:23: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#23: FILE: drivers/gpu/drm/i915/i915_drv.h:1567:
+#define IS_GEN9_LP(dev_priv)	(GRAPHICS_VER(dev_priv) == 9 && IS_LP(dev_priv))

-:24: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#24: FILE: drivers/gpu/drm/i915/i915_drv.h:1568:
+#define IS_GEN9_BC(dev_priv)	(GRAPHICS_VER(dev_priv) == 9 && !IS_LP(dev_priv))

-:59: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#59: FILE: drivers/gpu/drm/i915/i915_drv.h:1635:
+#define HAS_GMBUS_BURST_READ(dev_priv) (GRAPHICS_VER(dev_priv) >= 10 || \
 					IS_GEMINILAKE(dev_priv) || \
 					IS_KABYLAKE(dev_priv))

-:69: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#69: FILE: drivers/gpu/drm/i915/i915_drv.h:1642:
+#define HAS_128_BYTE_Y_TILING(dev_priv) (GRAPHICS_VER(dev_priv) != 2 && \
+					 !(IS_I915G(dev_priv) || IS_I915GM(dev_priv)))

-:78: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#78: FILE: drivers/gpu/drm/i915/i915_drv.h:1649:
+#define HAS_CUR_FBC(dev_priv)	(!HAS_GMCH(dev_priv) && GRAPHICS_VER(dev_priv) >= 7)

total: 0 errors, 0 warnings, 5 checks, 207 lines checked
473d823e7205 drm/i915/display: replace IS_GEN() in commented code


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
