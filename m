Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E45489006B3
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2024 16:31:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45C2510EC75;
	Fri,  7 Jun 2024 14:31:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a6498e030952 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C819010EC75;
 Fri,  7 Jun 2024 14:31:46 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Panel_Replay_eDP_pre?=
 =?utf-8?q?pare?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 07 Jun 2024 14:31:46 -0000
Message-ID: <171777070681.27130.10801484960949552268@a6498e030952>
X-Patchwork-Hint: ignore
References: <20240607134917.1327574-1-jouni.hogander@intel.com>
In-Reply-To: <20240607134917.1327574-1-jouni.hogander@intel.com>
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

Series: Panel Replay eDP prepare
URL   : https://patchwork.freedesktop.org/series/134613/
State : warning

== Summary ==

Error: dim checkpatch failed
d959caa6138e drm/i915/alpm: Do not use fast_wake_lines for aux less wake time
dd00e771f297 drm/i915/alpm: Write also AUX Less Wake lines into ALPM_CTL
e325b91f5b45 drm/i915/display: Take panel replay into account in vsc sdp unpacking
42eca880ef27 drm/i915/display: Skip Panel Replay on pipe comparison if no active planes
6e96aae6bcd5 drm/display: Add missing Panel Replay Enable SU Region ET bit
323a7c958c4e drm/i915/psr: Split enabling sink for PSR and Panel Replay
-:31: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#31: FILE: drivers/gpu/drm/i915/display/intel_psr.c:690:
+static void _panel_replay_enable_sink(struct intel_dp *intel_dp,
+				     const struct intel_crtc_state *crtc_state)

-:57: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#57: FILE: drivers/gpu/drm/i915/display/intel_psr.c:708:
+static void _psr_enable_sink(struct intel_dp *intel_dp,
+			    const struct intel_crtc_state *crtc_state)

total: 0 errors, 0 warnings, 2 checks, 107 lines checked
a06c139bbff9 drm/i915/alpm: Share alpm support checks with PSR code
c13d05b1364c drm/i915/psr: Add Panel Replay support to intel_psr2_config_et_valid
8735a0f9028c drm/i915/psr: Print Panel Replay status instead of frame lock status
adda34610ff9 drm/i915/psr: Move vblank length check to separate function
948d8ca57b46 drm/i915/psr: Take into account SU SDP scanline indication in vblank check
-:13: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#13: 
PSR2_CTL[ SU SDP scanline indication ] = 0: (TRANS_VBLANK Vertical Blank End- TRANS_VBLANK Vertical Blank Start) > PSR2_CTL Block Count Number value in lines

total: 0 errors, 1 warnings, 0 checks, 9 lines checked
e90bd972720c drm/i915/psr: Check vblank against IO buffer wake time on Lunarlake
981b73bd7049 drm/i915/psr: Wake time is aux less wake time for Panel Replay


