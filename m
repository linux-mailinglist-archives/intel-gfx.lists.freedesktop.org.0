Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAA1C8D81B0
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2024 13:55:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B25B410E315;
	Mon,  3 Jun 2024 11:55:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21D4610E315;
 Mon,  3 Jun 2024 11:55:21 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Ultrajoiner_basic_fu?=
 =?utf-8?q?nctionality_series_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 03 Jun 2024 11:55:21 -0000
Message-ID: <171741572110.2261818.4004578528125265587@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240603112551.6481-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20240603112551.6481-1-stanislav.lisovskiy@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Ultrajoiner basic functionality series (rev2)
URL   : https://patchwork.freedesktop.org/series/133800/
State : warning

== Summary ==

Error: dim checkpatch failed
e7e2b28e489e drm/i915: Rename all bigjoiner to joiner
-:200: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#200: FILE: drivers/gpu/drm/i915/display/intel_display.c:2322:
+static void intel_joiner_adjust_timings(const struct intel_crtc_state *crtc_state,
 					   struct drm_display_mode *mode)

-:299: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#299: FILE: drivers/gpu/drm/i915/display/intel_display.c:3498:
+static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
 				    u8 *master_pipes, u8 *slave_pipes)

-:415: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#415: FILE: drivers/gpu/drm/i915/display/intel_display.c:4484:
+copy_joiner_crtc_state_nomodeset(struct intel_atomic_state *state,
 				    struct intel_crtc *slave_crtc)

-:424: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#424: FILE: drivers/gpu/drm/i915/display/intel_display.c:4504:
+copy_joiner_crtc_state_modeset(struct intel_atomic_state *state,
 				  struct intel_crtc *slave_crtc)

-:471: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#471: FILE: drivers/gpu/drm/i915/display/intel_display.c:5750:
+static int intel_crtc_add_joiner_planes(struct intel_atomic_state *state,
 					   struct intel_crtc *crtc,

-:514: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#514: FILE: drivers/gpu/drm/i915/display/intel_display.c:5906:
+static int intel_atomic_check_joiner(struct intel_atomic_state *state,
 					struct intel_crtc *master_crtc)

-:577: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#577: FILE: drivers/gpu/drm/i915/display/intel_display.c:5977:
+static void kill_joiner_slave(struct intel_atomic_state *state,
 				 struct intel_crtc *master_crtc)

-:971: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#971: FILE: drivers/gpu/drm/i915/display/intel_dp.c:1212:
+bool intel_dp_need_joiner(struct intel_dp *intel_dp,
 			     struct intel_connector *connector,

-:1001: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1001: FILE: drivers/gpu/drm/i915/display/intel_dp.c:1260:
+	if (intel_dp_need_joiner(intel_dp, connector,
 				    mode->hdisplay, target_clock)) {

-:1073: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1073: FILE: drivers/gpu/drm/i915/display/intel_dp.c:2437:
+	if (intel_dp_need_joiner(intel_dp, connector,
 				    adjusted_mode->crtc_hdisplay,

-:1122: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1122: FILE: drivers/gpu/drm/i915/display/intel_dp.h:154:
+bool intel_dp_need_joiner(struct intel_dp *intel_dp,
 			     struct intel_connector *connector,

-:1144: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1144: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:571:
+	if (intel_dp_need_joiner(intel_dp, connector,
 				    adjusted_mode->crtc_hdisplay,

-:1173: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1173: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:1422:
+	if (intel_dp_need_joiner(intel_dp, intel_connector,
 				    mode->hdisplay, target_clock)) {

-:1313: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1313: FILE: drivers/gpu/drm/i915/display/intel_modeset_setup.c:278:
+	joiner_slaves_mask = get_joiner_slave_pipes(i915,
 							  portsync_master_mask |

-:1372: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#1372: FILE: drivers/gpu/drm/i915/display/intel_modeset_setup.c:739:
+								 intel_crtc_joiner_slave_pipes(crtc_state)) {

total: 0 errors, 1 warnings, 14 checks, 1283 lines checked
1e79a2293464 drm/i915: Rename bigjoiner master/slave to bigjoiner primary/secondary
-:615: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#615: FILE: drivers/gpu/drm/i915/display/intel_display.c:5977:
+static void kill_joiner_secondary(struct intel_atomic_state *state,
+				 struct intel_crtc *primary_crtc)

-:842: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#842: FILE: drivers/gpu/drm/i915/display/intel_modeset_setup.c:248:
+	*secondary_pipes_mask = get_transcoder_pipes(i915, primary_crtc_state->sync_mode_slaves_mask);

-:876: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#876: FILE: drivers/gpu/drm/i915/display/intel_modeset_setup.c:278:
+	joiner_secondarys_mask = get_joiner_secondary_pipes(i915,
 							  portsync_master_mask |

-:933: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#933: FILE: drivers/gpu/drm/i915/display/intel_modeset_setup.c:739:
+								 intel_crtc_joiner_secondary_pipes(crtc_state)) {

-:938: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#938: FILE: drivers/gpu/drm/i915/display/intel_modeset_setup.c:742:
+					secondary_crtc_state = to_intel_crtc_state(secondary_crtc->base.state);

total: 0 errors, 3 warnings, 2 checks, 910 lines checked
aec71c580051 drm/i915: Add some essential functionality for joiners
-:61: ERROR:OPEN_BRACE: that open brace { should be on the previous line
#61: FILE: drivers/gpu/drm/i915/display/intel_display.c:276:
+	for (i = lsb; i < msb; i += 4)
+	{

total: 1 errors, 0 warnings, 0 checks, 160 lines checked


