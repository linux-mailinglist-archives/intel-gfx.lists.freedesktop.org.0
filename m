Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B568FCFB5
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2024 15:42:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53A7510E0DA;
	Wed,  5 Jun 2024 13:42:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a6498e030952 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EF0910E0DA;
 Wed,  5 Jun 2024 13:42:38 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Panel_Replay_eDP_sup?=
 =?utf-8?q?port_=28rev7=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 05 Jun 2024 13:42:38 -0000
Message-ID: <171759495864.79.12128753878518526380@a6498e030952>
X-Patchwork-Hint: ignore
References: <20240605102553.187309-1-jouni.hogander@intel.com>
In-Reply-To: <20240605102553.187309-1-jouni.hogander@intel.com>
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

Series: Panel Replay eDP support (rev7)
URL   : https://patchwork.freedesktop.org/series/133684/
State : warning

== Summary ==

Error: dim checkpatch failed
58d77df5a406 drm/i915/alpm: Do not use fast_wake_lines for aux less wake time
c88c51ffc880 drm/i915/alpm: Write also AUX Less Wake lines into ALPM_CTL
8a6da99681bf drm/i915/display: Take panel replay into account in vsc sdp unpacking
d30d994293ae drm/i915/display: Skip Panel Replay on pipe comparison if no active planes
dbeae5c71686 drm/display: Add missing Panel Replay Enable SU Region ET bit
08d039c5fae8 drm/i915/psr: Split enabling sink for PSR and Panel Replay
-:30: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#30: FILE: drivers/gpu/drm/i915/display/intel_psr.c:690:
+static void _panel_replay_enable_sink(struct intel_dp *intel_dp,
+				     const struct intel_crtc_state *crtc_state)

-:56: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#56: FILE: drivers/gpu/drm/i915/display/intel_psr.c:708:
+static void _psr_enable_sink(struct intel_dp *intel_dp,
+			    const struct intel_crtc_state *crtc_state)

total: 0 errors, 0 warnings, 2 checks, 107 lines checked
aa55db234d5a drm/i915/alpm: Make alpm support checks non-static
6508138be2bb drm/i915/psr: Use intel_alpm_aux_wake_supported instead of local variable
781f9c969607 drm/i915/psr: Add Panel Replay support to intel_psr2_config_et_valid
3a3ff5d7aacd drm/i915/psr: Print Panel Replay status instead of frame lock status
93a47fc8f4c6 drm/i915/psr: Move vblank length check to separate function
cdbb50bbd2c4 drm/i915/psr: Take into account SU SDP scanline indication in vblank check
-:13: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#13: 
PSR2_CTL[ SU SDP scanline indication ] = 0: (TRANS_VBLANK Vertical Blank End- TRANS_VBLANK Vertical Blank Start) > PSR2_CTL Block Count Number value in lines

total: 0 errors, 1 warnings, 0 checks, 9 lines checked
0528a2f1ae66 drm/i915/psr: Check vblank against IO buffer wake time on Lunarlake
6c7064b1eae4 dmr/i915/psr: Wake time is aux less wake time for Panel Replay
eb51bbcf2f64 drm/i915/psr: Check panel ALPM capability for eDP Panel Replay
9fc7c1222152 drm/i915/psr: Inform Panel Replay source support on eDP as well
0b76eb0066f2 drm/i915/psr: enable sink for eDP1.5 Panel Replay
1171daebc2e8 drm/i915/psr: Check panel Early Transport capability for eDP PR
d3edd4407ff8 drm/i915/psr: Perfrom psr2 checks related to ALPM for Panel Replay
e452c662970e drm/i915/psr: Add Panel Replay compute_config helper
6e181aaea9f3 drm/i915/psr: 128b/132b Panel Replay is not supported on eDP
6b139f7228ad drm/i915/psr: HW will not allow PR on eDP when HDCP enabled
a316167dae81 drm/i915/psr: Check Early Transport for Panel Replay as well
22ac33c073dc drm/i915/psr: Modify dg2_activate_panel_replay to support eDP
0514724f5b34 drm/i915/psr: Add new debug bit to disable Panel Replay
f89f919cb3aa Revert "drm/i915/psr: Disable early transport by default"


