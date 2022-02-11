Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0852A4B2ADD
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Feb 2022 17:48:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0B2A10E220;
	Fri, 11 Feb 2022 16:47:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BE43010E220;
 Fri, 11 Feb 2022 16:47:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B98EAA0169;
 Fri, 11 Feb 2022 16:47:58 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 11 Feb 2022 16:47:58 -0000
Message-ID: <164459807872.25610.17369714041460014287@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220211090629.15555-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220211090629.15555-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Plane/wm_cleanups?=
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

Series: drm/i915: Plane/wm cleanups
URL   : https://patchwork.freedesktop.org/series/100020/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
b7734111702f drm/i915: Move intel_plane_atomic_calc_changes() & co. out
7bcf657c95c4 drm/i915: Introduce intel_arm_planes_on_crtc()
be72ec97a233 drm/i915: Introduce scaled_planes bitmask
58f9b823c9b0 drm/i915: Use {active, scaled}_planes to compute ilk watermarks
1cebc2ca3c27 drm/i915: Remove gen6_check_mch_setup()
24286ee8c4ca drm/i915: Add REG_GENMASK64() and REG_FIELD_GET64()
-:22: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__type' - possible side-effects?
#22: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:25:
+#define _REG_GENMASK(__type, __high, __low)				\
+	((__type)(GENMASK(__high, __low) +				\
+	       BUILD_BUG_ON_ZERO(__is_constexpr(__high) &&		\
+				 __is_constexpr(__low) &&		\
+				 ((__low) < 0 ||			\
+				  (__high) >= BITS_PER_TYPE(__type) ||	\
+				  (__low) > (__high)))))

-:22: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__high' - possible side-effects?
#22: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:25:
+#define _REG_GENMASK(__type, __high, __low)				\
+	((__type)(GENMASK(__high, __low) +				\
+	       BUILD_BUG_ON_ZERO(__is_constexpr(__high) &&		\
+				 __is_constexpr(__low) &&		\
+				 ((__low) < 0 ||			\
+				  (__high) >= BITS_PER_TYPE(__type) ||	\
+				  (__low) > (__high)))))

-:22: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__low' - possible side-effects?
#22: FILE: drivers/gpu/drm/i915/i915_reg_defs.h:25:
+#define _REG_GENMASK(__type, __high, __low)				\
+	((__type)(GENMASK(__high, __low) +				\
+	       BUILD_BUG_ON_ZERO(__is_constexpr(__high) &&		\
+				 __is_constexpr(__low) &&		\
+				 ((__low) < 0 ||			\
+				  (__high) >= BITS_PER_TYPE(__type) ||	\
+				  (__low) > (__high)))))

total: 0 errors, 0 warnings, 3 checks, 65 lines checked
6c5be20fcbcc drm/i915: Clean up SSKPD/MLTR defines
0798afa629f9 drm/i915: Polish ilk+ wm register bits
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


