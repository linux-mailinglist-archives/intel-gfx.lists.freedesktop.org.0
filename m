Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 85CF84B2D03
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Feb 2022 19:34:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD3D010EAD3;
	Fri, 11 Feb 2022 18:33:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 50CAE10EAD3;
 Fri, 11 Feb 2022 18:33:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4DF1FA0BCB;
 Fri, 11 Feb 2022 18:33:57 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 11 Feb 2022 18:33:57 -0000
Message-ID: <164460443729.25606.10678685887636925795@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220211090629.15555-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220211090629.15555-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Plane/wm_cleanups_=28rev2=29?=
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

Series: drm/i915: Plane/wm cleanups (rev2)
URL   : https://patchwork.freedesktop.org/series/100020/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
cfff3831dee5 drm/i915: Move intel_plane_atomic_calc_changes() & co. out
3260cfa17939 drm/i915: Introduce intel_arm_planes_on_crtc()
477c56b8741c drm/i915: Introduce scaled_planes bitmask
69cbcbb18c8c drm/i915: Use {active, scaled}_planes to compute ilk watermarks
a3504cd2f6fa drm/i915: Remove gen6_check_mch_setup()
6d5f50c4f287 drm/i915: Add REG_GENMASK64() and REG_FIELD_GET64()
-:33: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__high' - possible side-effects?
#33: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:49:
+#define REG_GENMASK64(__high, __low)					\
+	((u64)(GENMASK_ULL(__high, __low) +				\
+	       BUILD_BUG_ON_ZERO(__is_constexpr(__high) &&		\
+				 __is_constexpr(__low) &&		\
+				 ((__low) < 0 || (__high) > 63 || (__low) > (__high)))))

-:33: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__low' - possible side-effects?
#33: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:49:
+#define REG_GENMASK64(__high, __low)					\
+	((u64)(GENMASK_ULL(__high, __low) +				\
+	       BUILD_BUG_ON_ZERO(__is_constexpr(__high) &&		\
+				 __is_constexpr(__low) &&		\
+				 ((__low) < 0 || (__high) > 63 || (__low) > (__high)))))

total: 0 errors, 0 warnings, 2 checks, 39 lines checked
355d61122f71 drm/i915: Clean up SSKPD/MLTR defines
-:16: WARNING:BAD_SIGN_OFF: Duplicate signature
#16: 
Reported-by: kernel test robot <lkp@intel.com>

-:17: WARNING:BAD_SIGN_OFF: Duplicate signature
#17: 
Reported-by: kernel test robot <lkp@intel.com>

total: 0 errors, 2 warnings, 0 checks, 80 lines checked
c781e8686282 drm/i915: Polish ilk+ wm register bits
-:194: WARNING:LONG_LINE: line length of 124 exceeds 100 columns
#194: FILE: drivers/gpu/drm/i915/intel_pm.c:7185:
+	intel_uncore_write(&dev_priv->uncore, WM3_LP_ILK, intel_uncore_read(&dev_priv->uncore, WM3_LP_ILK) & ~WM_LP_ENABLE);

-:195: WARNING:LONG_LINE: line length of 124 exceeds 100 columns
#195: FILE: drivers/gpu/drm/i915/intel_pm.c:7186:
+	intel_uncore_write(&dev_priv->uncore, WM2_LP_ILK, intel_uncore_read(&dev_priv->uncore, WM2_LP_ILK) & ~WM_LP_ENABLE);

-:196: WARNING:LONG_LINE: line length of 124 exceeds 100 columns
#196: FILE: drivers/gpu/drm/i915/intel_pm.c:7187:
+	intel_uncore_write(&dev_priv->uncore, WM1_LP_ILK, intel_uncore_read(&dev_priv->uncore, WM1_LP_ILK) & ~WM_LP_ENABLE);

total: 0 errors, 3 warnings, 0 checks, 172 lines checked


