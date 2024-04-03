Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 043B7896AF9
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 11:46:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF581112951;
	Wed,  3 Apr 2024 09:46:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05AD0112951;
 Wed,  3 Apr 2024 09:46:23 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Panel_replay_selecti?=
 =?utf-8?q?ve_update_support_=28rev5=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 03 Apr 2024 09:46:23 -0000
Message-ID: <171213758302.1171321.1412976389426243929@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240403090013.54296-1-jouni.hogander@intel.com>
In-Reply-To: <20240403090013.54296-1-jouni.hogander@intel.com>
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

Series: Panel replay selective update support (rev5)
URL   : https://patchwork.freedesktop.org/series/128193/
State : warning

== Summary ==

Error: dim checkpatch failed
5a3e07fd5309 drm/i915/psr: Add some documentation of variables used in psr code
4159c7d17820 drm/i915/psr: Set intel_crtc_state->has_psr on panel replay as well
-:44: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#44: FILE: drivers/gpu/drm/i915/display/intel_psr.c:1636:
+		pipe_config->has_psr = pipe_config->has_panel_replay = true;

total: 0 errors, 0 warnings, 1 checks, 30 lines checked
9e455d375016 drm/i915/psr: Intel_psr_pause/resume needs to support panel replay
f65718d1b6c1 drm/i915/psr: Do not update phy power state in case of non-eDP panel replay
6bab644518e2 drm/i915/psr: Check possible errors for panel replay as well
f503a3613a81 drm/i915/psr: Do not write registers/bits not applicable for panel replay
fefe509a1d92 drm/i915/psr: Call intel_psr_init_dpcd in intel_dp_detect
9f436e8a958f drm/i915/psr: Unify panel replay enable/disable sink
b50ecdb43026 drm/i915/psr: Panel replay has to be enabled before link training
-:80: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'intel_dp' - possible side-effects?
#80: FILE: drivers/gpu/drm/i915/display/intel_psr.h:24:
+#define CAN_PANEL_REPLAY(intel_dp) ((intel_dp)->psr.sink_panel_replay_support && \
+				    (intel_dp)->psr.source_panel_replay_support)

total: 0 errors, 0 warnings, 1 checks, 50 lines checked
24296a2d8206 drm/i915/psr: Rename has_psr2 as has_sel_update
-:31: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#31: FILE: drivers/gpu/drm/i915/display/intel_crtc_state_dump.c:255:
+		drm_printf(&p, "psr: %s, selective update: %s, panel replay: %s, selective fetch: %s\n",
+			    str_enabled_disabled(pipe_config->has_psr),

total: 0 errors, 0 warnings, 1 checks, 88 lines checked
32e11f39cc83 drm/i915/psr: Rename psr2_enabled as sel_update_enabled
d7c814f050e2 drm/panelreplay: dpcd register definition for panelreplay SU
28196ed803ef drm/i915/psr: Detect panel replay selective update support
6bddceafa4ee drm/i915/psr: Modify intel_dp_get_su_granularity to support panel replay
3ca929ebbb2e drm/i915/psr: Panel replay uses SRD_STATUS to track it's status
0e3631f9f379 drm/i915/psr: Do not apply workarounds in case of panel replay
49e508e6b5f7 drm/i915/psr: Update PSR module parameter descriptions
a6e4f041331b drm/i915/psr: Split intel_psr2_config_valid for panel replay
79891835bbc8 drm/i915/psr: Add panel replay sel update support to debugfs interface
-:13: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#13: 
Sink support: PSR = no, Panel Replay = yes, Panel Replay Selective Update = yes

total: 0 errors, 1 warnings, 0 checks, 22 lines checked


