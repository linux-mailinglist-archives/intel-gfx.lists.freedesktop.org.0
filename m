Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86BF4AA72DD
	for <lists+intel-gfx@lfdr.de>; Fri,  2 May 2025 15:08:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECC2410E919;
	Fri,  2 May 2025 13:08:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from c664b1dc75d1 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9913B10E914;
 Fri,  2 May 2025 13:08:27 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Panel_Replay_+_Adapt?=
 =?utf-8?q?ive_sync?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 02 May 2025 13:08:27 -0000
Message-ID: <174619130761.35577.10838652350468923263@c664b1dc75d1>
X-Patchwork-Hint: ignore
References: <20250502085902.154740-1-jouni.hogander@intel.com>
In-Reply-To: <20250502085902.154740-1-jouni.hogander@intel.com>
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

Series: Panel Replay + Adaptive sync
URL   : https://patchwork.freedesktop.org/series/148539/
State : warning

== Summary ==

Error: dim checkpatch failed
2fb125469e9e drm/dp: Add Panel Replay capability bits from DP2.1 specification
c882d05090c7 drm/i915/psr: Read both Panel Replay capability registers from DPCD
64c11e0b0388 drm/i915/alpm: Add PR_ALPM_CTL register definitions
-:28: WARNING:LONG_LINE: line length of 126 exceeds 100 columns
#28: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:275:
+#define  PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_T1_OR_T2	REG_FIELD_PREP(PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_MASK, 0)

-:29: WARNING:LONG_LINE: line length of 126 exceeds 100 columns
#29: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:276:
+#define  PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_T1		REG_FIELD_PREP(PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_MASK, 1)

-:30: WARNING:LONG_LINE: line length of 126 exceeds 100 columns
#30: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:277:
+#define  PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_T2		REG_FIELD_PREP(PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_MASK, 2)

total: 0 errors, 3 warnings, 0 checks, 16 lines checked
ecd3ed005310 drm/i915/alpm: Write PR_ALPM_CTL register
-:26: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#26: FILE: drivers/gpu/drm/i915/display/intel_alpm.c:354:
+			if (intel_dp->pr_dpcd[1] & DP_PANEL_REPLAY_LINK_OFF_SUPPORTED_IN_PR_AFTER_ADAPTIVE_SYNC_SDP)

-:28: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#28: FILE: drivers/gpu/drm/i915/display/intel_alpm.c:356:
+			if (!(intel_dp->pr_dpcd[1] & DP_PANEL_REPLAY_ASYNC_VIDEO_TIMING_NOT_SUPPORTED_IN_PR))

total: 0 errors, 2 warnings, 0 checks, 18 lines checked
ddb7db6a0cd9 drm/i915/psr: Add interface to check if AUXLess ALPM is needed by PSR
b89a3d9b1fa6 drm/i915/alpm: Add new interface to check if AUXLess ALPM is used
cd1da4b4beae drm/i915/alpm: Move port alpm configuration
-:74: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#74: FILE: drivers/gpu/drm/i915/display/intel_alpm.c:418:
+			PORT_ALPM_CTL_SILENCE_PERIOD(

-:77: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#77: FILE: drivers/gpu/drm/i915/display/intel_alpm.c:421:
+			PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION(

-:79: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#79: FILE: drivers/gpu/drm/i915/display/intel_alpm.c:423:
+			PORT_ALPM_LFPS_CTL_FIRST_LFPS_HALF_CYCLE_DURATION(

-:81: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#81: FILE: drivers/gpu/drm/i915/display/intel_alpm.c:425:
+			PORT_ALPM_LFPS_CTL_LAST_LFPS_HALF_CYCLE_DURATION(

total: 0 errors, 0 warnings, 4 checks, 98 lines checked
373bd6677560 drm/i915/display: Add PHY_CMN1_CONTROL register definitions
63ab9d3971a2 drm/i915/display: Add function to configure LFPS sending
2b67d7ccc498 drm/i915/psr: Fix using wrong mask in REG_FIELD_PREP
-:24: WARNING:LONG_LINE: line length of 139 exceeds 100 columns
#24: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:338:
+#define  PORT_ALPM_LFPS_CTL_FIRST_LFPS_HALF_CYCLE_DURATION(val)	REG_FIELD_PREP(PORT_ALPM_LFPS_CTL_FIRST_LFPS_HALF_CYCLE_DURATION_MASK, val)

-:27: WARNING:LONG_LINE: line length of 138 exceeds 100 columns
#27: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:340:
+#define  PORT_ALPM_LFPS_CTL_LAST_LFPS_HALF_CYCLE_DURATION(val)	REG_FIELD_PREP(PORT_ALPM_LFPS_CTL_LAST_LFPS_HALF_CYCLE_DURATION_MASK, val)

total: 0 errors, 2 warnings, 0 checks, 10 lines checked
2ea4bc98f9ec drm/i915/psr: Do not disable Panel Replay in case VRR is enabled


