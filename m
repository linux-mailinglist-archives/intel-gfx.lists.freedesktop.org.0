Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D8CB02A0CA5
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Oct 2020 18:43:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11C306E9CF;
	Fri, 30 Oct 2020 17:43:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DCFED6E9CF;
 Fri, 30 Oct 2020 17:43:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D5AFCA8830;
 Fri, 30 Oct 2020 17:43:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 30 Oct 2020 17:43:42 -0000
Message-ID: <160407982284.23389.8910744615946360705@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201030165045.5000-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20201030165045.5000-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_ilk+_wm_cleanups?=
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

Series: drm/i915: ilk+ wm cleanups
URL   : https://patchwork.freedesktop.org/series/83289/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
b3a6a0cd6f2b drm/i915: s/USHRT_MAX/U16_MAX/
0a33e58a3709 drm/i915: Shrink ilk-bdw wm storage by using u16
2fd87c0096c8 drm/i915: Rename ilk watermark structs/enums
4dfe713bb6f6 drm/i915: s/dev_priv->wm.hw/&dev_priv->wm.ilk/
e2474971c9a4 drm/i915: s/ilk_pipe_wm/ilk_wm_state/
8b27740a8cff drm/i915: Stash away the original SSKPD latency values
75df3bb251fb drm/i915: Remove gen6_check_mch_setup()
cd66098043f8 drm/i915: Add REG_GENMASK64() and REG_FIELD_GET64()
-:22: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__type' - possible side-effects?
#22: FILE: drivers/gpu/drm/i915/i915_reg.h:132:
+#define _REG_GENMASK(__type, __high, __low)				\
+	((__type)(GENMASK(__high, __low) +				\
+	       BUILD_BUG_ON_ZERO(__is_constexpr(__high) &&		\
+				 __is_constexpr(__low) &&		\
+				 ((__low) < 0 ||			\
+				  (__high) >= BITS_PER_TYPE(__type) ||	\
+				  (__low) > (__high)))))

-:22: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__high' - possible side-effects?
#22: FILE: drivers/gpu/drm/i915/i915_reg.h:132:
+#define _REG_GENMASK(__type, __high, __low)				\
+	((__type)(GENMASK(__high, __low) +				\
+	       BUILD_BUG_ON_ZERO(__is_constexpr(__high) &&		\
+				 __is_constexpr(__low) &&		\
+				 ((__low) < 0 ||			\
+				  (__high) >= BITS_PER_TYPE(__type) ||	\
+				  (__low) > (__high)))))

-:22: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__low' - possible side-effects?
#22: FILE: drivers/gpu/drm/i915/i915_reg.h:132:
+#define _REG_GENMASK(__type, __high, __low)				\
+	((__type)(GENMASK(__high, __low) +				\
+	       BUILD_BUG_ON_ZERO(__is_constexpr(__high) &&		\
+				 __is_constexpr(__low) &&		\
+				 ((__low) < 0 ||			\
+				  (__high) >= BITS_PER_TYPE(__type) ||	\
+				  (__low) > (__high)))))

total: 0 errors, 0 warnings, 3 checks, 65 lines checked
b4636d40be70 drm/i915: Clean up SSKPD/MLTR defines
edaa7edda21c drm/i915: Polish ilk+ wm regidster bits


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
