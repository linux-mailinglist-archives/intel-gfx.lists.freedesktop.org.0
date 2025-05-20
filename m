Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D3CABE1EB
	for <lists+intel-gfx@lfdr.de>; Tue, 20 May 2025 19:39:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDC2310E593;
	Tue, 20 May 2025 17:39:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3797410E51E;
 Tue, 20 May 2025 17:39:38 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Panel_Replay_+_Adapt?=
 =?utf-8?q?ive_sync_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 20 May 2025 17:39:38 -0000
Message-ID: <174776277815.6209.8575877896798839668@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250520165326.1631330-1-jouni.hogander@intel.com>
In-Reply-To: <20250520165326.1631330-1-jouni.hogander@intel.com>
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

Series: Panel Replay + Adaptive sync (rev2)
URL   : https://patchwork.freedesktop.org/series/148539/
State : warning

== Summary ==

Error: dim checkpatch failed
36f088ee5f96 drm/panelreplay: Panel Replay capability DPCD register definitions
b42c3c02d981 drm/dp: Add Panel Replay capability bits from DP2.1 specification
0afd61721ae5 drm/i915/psr: Read all Panel Replay capability registers from DPCD
a45d35c719f3 drm/i915/alpm: Add PR_ALPM_CTL register definitions
-:29: WARNING:LONG_LINE: line length of 126 exceeds 100 columns
#29: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:275:
+#define  PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_T1_OR_T2	REG_FIELD_PREP(PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_MASK, 0)

-:30: WARNING:LONG_LINE: line length of 126 exceeds 100 columns
#30: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:276:
+#define  PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_T1		REG_FIELD_PREP(PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_MASK, 1)

-:31: WARNING:LONG_LINE: line length of 126 exceeds 100 columns
#31: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:277:
+#define  PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_T2		REG_FIELD_PREP(PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_MASK, 2)

total: 0 errors, 3 warnings, 0 checks, 16 lines checked
d9cba8cc1314 drm/i915/alpm: Write PR_ALPM_CTL register
-:32: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#32: FILE: drivers/gpu/drm/i915/display/intel_alpm.c:357:
+			if (!(intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_CAPABILITY)] &

-:33: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#33: FILE: drivers/gpu/drm/i915/display/intel_alpm.c:358:
+						DP_PANEL_REPLAY_ASYNC_VIDEO_TIMING_NOT_SUPPORTED_IN_PR))

total: 0 errors, 2 warnings, 0 checks, 20 lines checked
20600167dea0 drm/i915/psr: Add interface to check if AUXLess ALPM is needed by PSR
836779ac7385 drm/i915/alpm: Add new interface to check if AUXLess ALPM is used
df60b861c0aa drm/i915/alpm: Move port alpm configuration
-:73: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#73: FILE: drivers/gpu/drm/i915/display/intel_alpm.c:407:
+			PORT_ALPM_CTL_SILENCE_PERIOD(

-:76: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#76: FILE: drivers/gpu/drm/i915/display/intel_alpm.c:410:
+			PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION(

-:78: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#78: FILE: drivers/gpu/drm/i915/display/intel_alpm.c:412:
+			PORT_ALPM_LFPS_CTL_FIRST_LFPS_HALF_CYCLE_DURATION(

-:80: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#80: FILE: drivers/gpu/drm/i915/display/intel_alpm.c:414:
+			PORT_ALPM_LFPS_CTL_LAST_LFPS_HALF_CYCLE_DURATION(

total: 0 errors, 0 warnings, 4 checks, 93 lines checked
80a9e585a009 drm/i915/display: Add PHY_CMN1_CONTROL register definitions
a0465d155c7b drm/i915/display: Add function to configure LFPS sending
2c69eba8e98a drm/i915/psr: Fix using wrong mask in REG_FIELD_PREP
-:25: WARNING:LONG_LINE: line length of 139 exceeds 100 columns
#25: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:338:
+#define  PORT_ALPM_LFPS_CTL_FIRST_LFPS_HALF_CYCLE_DURATION(val)	REG_FIELD_PREP(PORT_ALPM_LFPS_CTL_FIRST_LFPS_HALF_CYCLE_DURATION_MASK, val)

-:28: WARNING:LONG_LINE: line length of 138 exceeds 100 columns
#28: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:340:
+#define  PORT_ALPM_LFPS_CTL_LAST_LFPS_HALF_CYCLE_DURATION(val)	REG_FIELD_PREP(PORT_ALPM_LFPS_CTL_LAST_LFPS_HALF_CYCLE_DURATION_MASK, val)

total: 0 errors, 2 warnings, 0 checks, 10 lines checked
3228d48a93c0 drm/i915/psr: Do not disable Panel Replay in case VRR is enabled


