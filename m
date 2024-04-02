Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A90BD89523D
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 13:58:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F48A10E153;
	Tue,  2 Apr 2024 11:58:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E884110E1A6;
 Tue,  2 Apr 2024 11:57:59 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Panel_replay_selecti?=
 =?utf-8?q?ve_update_support_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 02 Apr 2024 11:57:59 -0000
Message-ID: <171205907995.1154304.9728081419008620674@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240402095011.200558-1-jouni.hogander@intel.com>
In-Reply-To: <20240402095011.200558-1-jouni.hogander@intel.com>
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

Series: Panel replay selective update support (rev4)
URL   : https://patchwork.freedesktop.org/series/128193/
State : warning

== Summary ==

Error: dim checkpatch failed
a184a7194320 drm/i915/psr: Add some documentation of variables used in psr code
12561b72f253 drm/i915/psr: Set intel_crtc_state->has_psr on panel replay as well
-:44: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#44: FILE: drivers/gpu/drm/i915/display/intel_psr.c:1636:
+		pipe_config->has_psr = pipe_config->has_panel_replay = true;

total: 0 errors, 0 warnings, 1 checks, 30 lines checked
7304d962caba drm/i915/psr: Intel_psr_pause/resume needs to support panel replay
dd7d076b1442 drm/i915/psr: Do not update phy power state in case of non-eDP panel replay
0208990060a7 drm/i915/psr: Check possible errors for panel replay as well
cd41d72b9856 drm/i915/psr: Do not write registers/bits not applicable for panel replay
c25e2d87c349 drm/i915/psr: Call intel_psr_init_dpcd in intel_dp_detect
69422ffa4fcb drm/i915/psr: Unify panel replay enable/disable sink
f7a49ff77619 drm/i915/psr: Panel replay has to be enabled before link training
-:80: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'intel_dp' - possible side-effects?
#80: FILE: drivers/gpu/drm/i915/display/intel_psr.h:24:
+#define CAN_PANEL_REPLAY(intel_dp) ((intel_dp)->psr.sink_panel_replay_support && \
+				    (intel_dp)->psr.source_panel_replay_support)

total: 0 errors, 0 warnings, 1 checks, 50 lines checked
266b67bb093b drm/i915/psr: Rename has_psr2 as has_sel_update
-:31: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#31: FILE: drivers/gpu/drm/i915/display/intel_crtc_state_dump.c:255:
+		drm_printf(&p, "psr: %s, selective update: %s, panel replay: %s, selective fetch: %s\n",
+			    str_enabled_disabled(pipe_config->has_psr),

total: 0 errors, 0 warnings, 1 checks, 88 lines checked
bebf3b6bad60 drm/i915/psr: Rename psr2_enabled as sel_update_enabled
02e2a904e89c drm/panelreplay: dpcd register definition for panelreplay SU
4cb79990b2d9 drm/i915/psr: Detect panel replay selective update support
dec44ca620d4 drm/i915/psr: Modify intel_dp_get_su_granularity to support panel replay
187e243373bd drm/i915/psr: Panel replay uses SRD_STATUS to track it's status
392ed6e2b0c4 drm/i915/psr: Do not apply workarounds in case of panel replay
672703b16872 drm/i915/psr: Update PSR module parameter descriptions
c43f152fc02b drm/i915/psr: Split intel_psr2_config_valid for panel replay
97053ae0c227 drm/i915/psr: Add panel replay sel update support to debugfs interface
-:13: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#13: 
Sink support: PSR = no, Panel Replay = yes, Panel Replay Selective Update = yes

total: 0 errors, 1 warnings, 0 checks, 22 lines checked


