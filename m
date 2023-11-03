Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 200257E0B57
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Nov 2023 23:58:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AF0110EAF2;
	Fri,  3 Nov 2023 22:58:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D3A1F10EAF2;
 Fri,  3 Nov 2023 22:58:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CB232AADF0;
 Fri,  3 Nov 2023 22:58:21 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manna, Animesh" <animesh.manna@intel.com>
Date: Fri, 03 Nov 2023 22:58:21 -0000
Message-ID: <169905230179.29108.18039732153338960860@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231103210035.3151502-1-animesh.manna@intel.com>
In-Reply-To: <20231103210035.3151502-1-animesh.manna@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Panel_replay_phase1_implementation_=28rev10=29?=
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

Series: Panel replay phase1 implementation (rev10)
URL   : https://patchwork.freedesktop.org/series/94470/
State : warning

== Summary ==

Error: dim checkpatch failed
f025bc5ed357 drm/panelreplay: dpcd register definition for panelreplay
a6ba947cd35c drm/i915/psr: Move psr specific dpcd init into own function
d0b4de45d90a drm/i915/panelreplay: Initializaton and compute config for panel replay
-:366: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'intel_dp' - possible side-effects?
#366: FILE: drivers/gpu/drm/i915/display/intel_psr.h:24:
+#define CAN_PSR(intel_dp) ((intel_dp)->psr.sink_support && \
+			   (intel_dp)->psr.source_support)

-:369: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'intel_dp' - possible side-effects?
#369: FILE: drivers/gpu/drm/i915/display/intel_psr.h:27:
+#define CAN_PANEL_REPLAY(intel_dp) ((intel_dp)->psr.sink_panel_replay_support && \
+				    (intel_dp)->psr.source_panel_replay_support)

total: 0 errors, 0 warnings, 2 checks, 289 lines checked
5225e39b90ad drm/i915/panelreplay: Enable panel replay dpcd initialization for DP
bf1255857ce0 drm/i915/panelreplay: enable/disable panel replay
96064a75ad28 drm/i915/panelreplay: Debugfs support for panel replay
-:111: ERROR:OPEN_BRACE: open brace '{' following function definitions go on the next line
#111: FILE: drivers/gpu/drm/i915/display/intel_psr.c:3239:
+static const char *psr_mode_str(struct intel_dp *intel_dp) {

-:114: ERROR:SPACING: space required before the open parenthesis '('
#114: FILE: drivers/gpu/drm/i915/display/intel_psr.c:3242:
+	else if(intel_dp->psr.enabled)

-:171: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 24)
#171: FILE: drivers/gpu/drm/i915/display/intel_psr.c:3300:
 	if (error_status & (DP_PSR_RFB_STORAGE_ERROR |
[...]
+			seq_puts(m, ":\n");

total: 2 errors, 1 warnings, 0 checks, 176 lines checked


