Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D31C55A53DD
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Aug 2022 20:17:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7695C10EC8D;
	Mon, 29 Aug 2022 18:17:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2363510EC86;
 Mon, 29 Aug 2022 18:17:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 19F58A66C9;
 Mon, 29 Aug 2022 18:17:34 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 29 Aug 2022 18:17:34 -0000
Message-ID: <166179705407.11950.6013558069571067039@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1661779055.git.jani.nikula@intel.com>
In-Reply-To: <cover.1661779055.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_add_display_sub-struct_to_drm=5Fi915=5Fprivate_?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: add display sub-struct to drm_i915_private (rev3)
URL   : https://patchwork.freedesktop.org/series/107170/
State : warning

== Summary ==

Error: dim checkpatch failed
b9427de47e84 drm/i915: move and group hdcp under display.hdcp
38c5ef38c07f drm/i915: move and group max_bw and bw_obj under display.bw
188be8254ff5 drm/i915: move opregion to display.opregion
4a5d9830abcd drm/i915: move and group cdclk under display.cdclk
-:43: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#43: FILE: drivers/gpu/drm/i915/display/intel_audio.c:974:
+		get_aud_ts_cdclk_m_n(i915->display.cdclk.hw.ref, i915->display.cdclk.hw.cdclk, &aud_ts);

-:704: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#704: FILE: drivers/gpu/drm/i915/display/intel_cdclk.h:80:
+	to_intel_cdclk_state(intel_atomic_get_old_global_obj_state(state, &to_i915(state->base.dev)->display.cdclk.obj))

-:707: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#707: FILE: drivers/gpu/drm/i915/display/intel_cdclk.h:82:
+	to_intel_cdclk_state(intel_atomic_get_new_global_obj_state(state, &to_i915(state->base.dev)->display.cdclk.obj))

-:735: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#735: FILE: drivers/gpu/drm/i915/display/intel_display.c:8401:
+	cdclk_state->logical = cdclk_state->actual = i915->display.cdclk.hw;

total: 0 errors, 3 warnings, 1 checks, 815 lines checked
dc34d78592ca drm/i915: move backlight to display.backlight
0f8dc6218ed1 drm/i915: move mipi_mmio_base to display.dsi
5b04974fa687 drm/i915: move vbt to display.vbt
-:124: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#124: FILE: drivers/gpu/drm/i915/display/intel_bios.c:1157:
+		i915->display.vbt.override_afc_startup_val = general->afc_startup_config == 0x1 ? 0x0 : 0x7;

-:931: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#931: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:2773:
+		pll_state->div0 = TGL_DPLL0_DIV0_AFC_STARTUP(i915->display.vbt.override_afc_startup_val);

total: 0 errors, 2 warnings, 0 checks, 1031 lines checked
dde24b693f2b drm/i915: move fbc to display.fbc
ee6883528cb3 drm/i915: move and group power related members under display.power
-:388: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#388: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:1916:
+										      POWER_DOMAIN_INIT);

-:403: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#403: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:1942:
+					fetch_and_zero(&i915->display.power.domains.disable_wakeref));

-:448: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#448: FILE: drivers/gpu/drm/i915/display/intel_display_power.c:2063:
+					fetch_and_zero(&i915->display.power.domains.disable_wakeref));

total: 0 errors, 3 warnings, 0 checks, 685 lines checked
a10ed581da9a drm/i915: move and group fdi members under display.fdi
9ac4a6704fb4 drm/i915: move fb_tracking under display sub-struct
-:27: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#27: FILE: drivers/gpu/drm/i915/display/intel_display_core.h:124:
+	spinlock_t lock;

-:33: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#33: FILE: drivers/gpu/drm/i915/display/intel_display_core.h:130:
+	unsigned busy_bits;

-:34: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#34: FILE: drivers/gpu/drm/i915/display/intel_display_core.h:131:
+	unsigned flip_bits;

total: 0 errors, 2 warnings, 1 checks, 200 lines checked
cee54e8c5f62 drm/i915: move dbuf under display sub-struct
-:182: WARNING:LONG_LINE: line length of 118 exceeds 100 columns
#182: FILE: drivers/gpu/drm/i915/intel_pm.h:80:
+	to_intel_dbuf_state(intel_atomic_get_old_global_obj_state(state, &to_i915(state->base.dev)->display.dbuf.obj))

-:185: WARNING:LONG_LINE: line length of 118 exceeds 100 columns
#185: FILE: drivers/gpu/drm/i915/intel_pm.h:82:
+	to_intel_dbuf_state(intel_atomic_get_new_global_obj_state(state, &to_i915(state->base.dev)->display.dbuf.obj))

total: 0 errors, 2 warnings, 0 checks, 136 lines checked
d01d1ea53004 drm/i915: move and group modeset_wq and flip_wq under display.wq
649d16ff4f98 drm/i915/quirks: abstract checking for display quirks
-:40: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#40: FILE: drivers/gpu/drm/i915/display/intel_backlight.c:132:
+	    (dev_priv->params.invert_brightness == 0 && intel_has_quirk(dev_priv, QUIRK_INVERT_BRIGHTNESS)))

total: 0 errors, 1 warnings, 0 checks, 105 lines checked
18f3f330cd08 drm/i915/quirks: abstract quirks further by making quirk ids an enum
9cb21285a019 drm/i915: move quirks under display sub-struct
0b5f46827012 drm/i915: move atomic_helper under display sub-struct
69ef45caaf55 drm/i915: move and group properties under display.properties


