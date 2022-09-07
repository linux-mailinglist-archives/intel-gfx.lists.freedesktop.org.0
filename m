Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B07B5B035D
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Sep 2022 13:48:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A82D10E5C9;
	Wed,  7 Sep 2022 11:48:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 265F510E45E;
 Wed,  7 Sep 2022 11:48:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 17545A8830;
 Wed,  7 Sep 2022 11:48:48 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 07 Sep 2022 11:48:48 -0000
Message-ID: <166255132806.19837.8958482616841744066@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220907091057.11572-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220907091057.11572-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Make_fastset_not_suck_and_allow_seamless_M/N_ch?=
 =?utf-8?q?anges_=28rev7=29?=
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

Series: drm/i915: Make fastset not suck and allow seamless M/N changes (rev7)
URL   : https://patchwork.freedesktop.org/series/103491/
State : warning

== Summary ==

Error: dim checkpatch failed
fc068ba78c19 drm/i915: Relocate intel_crtc_dotclock()
21a52257a3d5 drm/i915: Shuffle some PLL code around
c98adf166f76 drm/i915: Extract HAS_DOUBLE_BUFFERED_M_N()
-:53: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#53: FILE: drivers/gpu/drm/i915/i915_drv.h:871:
+#define HAS_DOUBLE_BUFFERED_M_N(dev_priv)	(DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv))

-:53: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#53: FILE: drivers/gpu/drm/i915/i915_drv.h:871:
+#define HAS_DOUBLE_BUFFERED_M_N(dev_priv)	(DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv))

total: 0 errors, 1 warnings, 1 checks, 25 lines checked
3b92e000702a drm/i915/dsi: Extract {vlv, bxt}_get_pclk()
bb595ece9630 drm/i915: Do .crtc_compute_clock() earlier
915847ac09ba drm/i915: Reassign DPLLs only for crtcs going throug .compute_config()
c611a1bf92c2 drm/i915: Feed the DPLL output freq back into crtc_state
07578c0aebe6 drm/i915: Compute clocks earlier
fad8836005f0 drm/i915: Make M/N checks non-fuzzy
951939e868fe drm/i915: Make all clock checks non-fuzzy
f85fb3730e57 drm/i915: Set active dpll early for icl+
b6814d247c3f drm/i915: Nuke fastet state copy hacks
3cad35b9065e drm/i915: Skip intel_modeset_pipe_config_late() if the pipe is not enabled
24cfad91c112 drm/i915: Add intel_panel_highest_mode()
84ff5137845b drm/i915: Allow M/N change during fastset on bdw+
8206cbd75216 drm/i915: Use a fixed N value always
5cff60f330cb drm/i915: Round TMDS clock to nearest


