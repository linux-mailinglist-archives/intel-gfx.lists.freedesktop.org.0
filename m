Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE625526FC
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jun 2022 00:32:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FFF710F948;
	Mon, 20 Jun 2022 22:32:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7F78110F94C;
 Mon, 20 Jun 2022 22:32:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 74D09AADD9;
 Mon, 20 Jun 2022 22:32:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Mon, 20 Jun 2022 22:32:11 -0000
Message-ID: <165576433144.12732.13318358950410139967@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220620175210.28788-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220620175210.28788-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Make_fastset_not_suck_and_allow_seamless_M/N_ch?=
 =?utf-8?q?anges_=28rev6=29?=
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

Series: drm/i915: Make fastset not suck and allow seamless M/N changes (rev6)
URL   : https://patchwork.freedesktop.org/series/103491/
State : warning

== Summary ==

Error: dim checkpatch failed
0cf5770ce11c drm/i915: Relocate intel_crtc_dotclock()
8e214039c42f drm/i915: Shuffle some PLL code around
0a40c0aea05b drm/i915: Extract HAS_DOUBLE_BUFFERED_M_N()
-:53: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#53: FILE: drivers/gpu/drm/i915/i915_drv.h:1255:
+#define HAS_DOUBLE_BUFFERED_M_N(dev_priv)	(DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv))

-:53: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#53: FILE: drivers/gpu/drm/i915/i915_drv.h:1255:
+#define HAS_DOUBLE_BUFFERED_M_N(dev_priv)	(DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv))

total: 0 errors, 1 warnings, 1 checks, 25 lines checked
d135effc011e drm/i915/dsi: Extract {vlv, bxt}_get_pclk()
4cd472892736 drm/i915: Do .crtc_compute_clock() earlier
3f4eddf2ca58 drm/i915: Reassign DPLLs only for crtcs going throug .compute_config()
4cae9fa84b8b drm/i915: Feed the DPLL output freq back into crtc_state
27da5a8db7b3 drm/i915: Compute clocks earlier
edee938717df drm/i915: Make M/N checks non-fuzzy
0358bca96699 drm/i915: Make all clock checks non-fuzzy
e399283bacc7 drm/i915: Set active dpll early for icl+
320064a4eba6 drm/i915: Nuke fastet state copy hacks
e46e10fbf5a6 drm/i915: Skip intel_modeset_pipe_config_late() if the pipe is not enabled
311d51a7485d drm/i915: Add intel_panel_highest_mode()
ce21626434d0 drm/i915: Allow M/N change during fastset on bdw+
e27993638185 drm/i915: Use a fixed N value always
c87c710ada27 drm/i915: Round TMDS clock to nearest


