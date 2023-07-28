Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C399766E98
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jul 2023 15:40:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4547110E11B;
	Fri, 28 Jul 2023 13:40:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 844B110E11B;
 Fri, 28 Jul 2023 13:40:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 67955AADE8;
 Fri, 28 Jul 2023 13:40:45 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Animesh Manna" <animesh.manna@intel.com>
Date: Fri, 28 Jul 2023 13:40:45 -0000
Message-ID: <169055164539.19730.208832575831726590@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230728124609.2911830-1-animesh.manna@intel.com>
In-Reply-To: <20230728124609.2911830-1-animesh.manna@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Panel_replay_phase1_implementation_=28rev5=29?=
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

Series: Panel replay phase1 implementation (rev5)
URL   : https://patchwork.freedesktop.org/series/94470/
State : warning

== Summary ==

Error: dim checkpatch failed
445e87b0b6b4 drm/panelreplay: dpcd register definition for panelreplay
81963673fe7c drm/i915/panelreplay: Added HAS_PANEL_REPLAY() macro
d9b9bdca76bf drm/i915/psr: Move psr specific dpcd init into own function
-:55: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'intel_dp->psr_dpcd[0] == DP_PSR2_WITH_Y_COORD_IS_SUPPORTED'
#55: FILE: drivers/gpu/drm/i915/display/intel_psr.c:499:
+	if (DISPLAY_VER(i915) >= 9 &&
 	    (intel_dp->psr_dpcd[0] == DP_PSR2_WITH_Y_COORD_IS_SUPPORTED)) {

total: 0 errors, 0 warnings, 1 checks, 70 lines checked
d7981359cc4e drm/i915/panelreplay: Initializaton and compute config for panel replay
-:17: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#17: 
- Set source_panel_replay_support flag under HAS_PNEL_REPLAY() check. [Jouni]

-:58: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'intel_dp' - possible side-effects?
#58: FILE: drivers/gpu/drm/i915/display/intel_display_types.h:1989:
+#define CAN_PANEL_REPLAY(intel_dp) ((intel_dp)->psr.sink_panel_replay_support && \
+			  (intel_dp)->psr.source_panel_replay_support)

total: 0 errors, 1 warnings, 1 checks, 240 lines checked
53b797e67556 drm/i915/panelreplay: Enable panel replay dpcd initialization for DP
7c40fcb0136b drm/i915/panelreplay: enable/disable panel replay


