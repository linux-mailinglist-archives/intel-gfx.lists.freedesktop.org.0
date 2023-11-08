Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CFA97E51C4
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Nov 2023 09:16:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D806510E70F;
	Wed,  8 Nov 2023 08:16:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6A31810E704;
 Wed,  8 Nov 2023 08:16:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 504EAAADD1;
 Wed,  8 Nov 2023 08:16:46 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Animesh Manna" <animesh.manna@intel.com>
Date: Wed, 08 Nov 2023 08:16:46 -0000
Message-ID: <169943140632.24272.11336597960454067728@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231108072303.3414118-1-animesh.manna@intel.com>
In-Reply-To: <20231108072303.3414118-1-animesh.manna@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Panel_replay_phase1_implementation_=28rev11=29?=
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

Series: Panel replay phase1 implementation (rev11)
URL   : https://patchwork.freedesktop.org/series/94470/
State : warning

== Summary ==

Error: dim checkpatch failed
2b22edb04a4f drm/panelreplay: dpcd register definition for panelreplay
28d040b55117 drm/i915/psr: Move psr specific dpcd init into own function
a9fb5e04935c drm/i915/panelreplay: Initializaton and compute config for panel replay
-:354: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'intel_dp' - possible side-effects?
#354: FILE: drivers/gpu/drm/i915/display/intel_psr.h:24:
+#define CAN_PSR(intel_dp) ((intel_dp)->psr.sink_support && \
+			   (intel_dp)->psr.source_support)

-:357: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'intel_dp' - possible side-effects?
#357: FILE: drivers/gpu/drm/i915/display/intel_psr.h:27:
+#define CAN_PANEL_REPLAY(intel_dp) ((intel_dp)->psr.sink_panel_replay_support && \
+				    (intel_dp)->psr.source_panel_replay_support)

total: 0 errors, 0 warnings, 2 checks, 277 lines checked
404f70c7fca4 drm/i915/panelreplay: Enable panel replay dpcd initialization for DP
6a292424c331 drm/i915/panelreplay: enable/disable panel replay
64c2d179e55a drm/i915/panelreplay: Debugfs support for panel replay


