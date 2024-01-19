Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D09758328E2
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jan 2024 12:36:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5E8B10E9A5;
	Fri, 19 Jan 2024 11:36:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45C2910E9A5;
 Fri, 19 Jan 2024 11:36:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Panel_replay_selecti?=
 =?utf-8?q?ve_update_support_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Date: Fri, 19 Jan 2024 11:36:22 -0000
Message-ID: <170566418228.592636.13998318424569177639@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240119101024.1060812-1-jouni.hogander@intel.com>
In-Reply-To: <20240119101024.1060812-1-jouni.hogander@intel.com>
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

Series: Panel replay selective update support (rev3)
URL   : https://patchwork.freedesktop.org/series/128193/
State : warning

== Summary ==

Error: dim checkpatch failed
024bac5cc251 drm/i915/psr: Add some documentation of variables used in psr code
ff9290e61f6b drm/i915/psr: Set intel_crtc_state->has_psr on panel replay as well
-:43: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#43: FILE: drivers/gpu/drm/i915/display/intel_psr.c:1443:
+		pipe_config->has_psr = pipe_config->has_panel_replay = true;

total: 0 errors, 0 warnings, 1 checks, 30 lines checked
35345f77d4e3 drm/i915/psr: Intel_psr_pause/resume needs to support panel replay
63f9e063a416 drm/i915/psr: Rename intel_psr_enabled
93cbedb1374e drm/i915/psr: Do not update phy power state in case of panel replay
9c075f08e95c drm/i915/psr: Check possible errors for panel replay as well
2671160600c2 drm/i915/psr: Do not write registers/bits not applicable for panel replay
1f93c318a964 drm/i915/psr: Unify panel replay enable/disable sink
4805e61a988c drm/i915/psr: Panel replay has to be enabled before link training
-:79: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'intel_dp' - possible side-effects?
#79: FILE: drivers/gpu/drm/i915/display/intel_psr.h:24:
+#define CAN_PANEL_REPLAY(intel_dp) ((intel_dp)->psr.sink_panel_replay_support && \
+				    (intel_dp)->psr.source_panel_replay_support)

total: 0 errors, 0 warnings, 1 checks, 50 lines checked
858a9894c10d drm/i915/psr: Rename has_psr2 as has_sel_update
8c7b152a0a07 drm/i915/psr: Modify VSC SDP calculation to support panel replay + su
0ba693cc169a drm/i915/psr: Rename psr2_enabled as sel_update_enabled
ce8e3ea6b398 drm/panelreplay: dpcd register definition for panelreplay SU
ec65f6a9c8f4 drm/i915/psr: Detect panel replay selective update support
8ae142b40f6d drm/i915/psr: Modify intel_dp_get_su_granularity to support panel replay
0db819ecf6d6 drm/i915/psr: Ensure early transport is not enabled for panel replay
82319d5ba49b drm/i915/psr: Panel replay uses SRD_STATUS to track it's status
6e27abef4672 drm/i915/psr: Do not apply workarounds in case of panel replay
4f8a9796833a drm/i915/psr: Update PSR module parameter descriptions
7690dec7cafd drm/i915/psr: Split intel_psr2_config_valid for panel replay
34faa9fbc0aa drm/i915/psr: Add panel replay sel update support to debugfs interface
-:13: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#13: 
Sink support: PSR = no, Panel Replay = yes, Panel Replay Selective Update = yes

total: 0 errors, 1 warnings, 0 checks, 22 lines checked


