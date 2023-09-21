Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B2EC7A9585
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 17:28:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 193A610E13C;
	Thu, 21 Sep 2023 15:28:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D002F10E122;
 Thu, 21 Sep 2023 15:28:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C75F8AADDC;
 Thu, 21 Sep 2023 15:28:17 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Animesh Manna" <animesh.manna@intel.com>
Date: Thu, 21 Sep 2023 15:28:17 -0000
Message-ID: <169531009781.7234.10425493647878770321@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230921061335.454818-1-animesh.manna@intel.com>
In-Reply-To: <20230921061335.454818-1-animesh.manna@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Panel_replay_phase1_implementation_=28rev8=29?=
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

Series: Panel replay phase1 implementation (rev8)
URL   : https://patchwork.freedesktop.org/series/94470/
State : warning

== Summary ==

Error: dim checkpatch failed
3f24c3c37948 drm/panelreplay: dpcd register definition for panelreplay
ee3fadb3d092 drm/i915/psr: Move psr specific dpcd init into own function
60cb906d4b15 drm/i915/panelreplay: Initializaton and compute config for panel replay
-:362: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'intel_dp' - possible side-effects?
#362: FILE: drivers/gpu/drm/i915/display/intel_psr.h:24:
+#define CAN_PSR(intel_dp) ((intel_dp)->psr.sink_support && \
+			   (intel_dp)->psr.source_support)

-:365: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'intel_dp' - possible side-effects?
#365: FILE: drivers/gpu/drm/i915/display/intel_psr.h:27:
+#define CAN_PANEL_REPLAY(intel_dp) ((intel_dp)->psr.sink_panel_replay_support && \
+				    (intel_dp)->psr.source_panel_replay_support)

total: 0 errors, 0 warnings, 2 checks, 289 lines checked
9c01392b57e2 drm/i915/panelreplay: Enable panel replay dpcd initialization for DP
6d9eeb8564ec drm/i915/panelreplay: enable/disable panel replay
00325858bfb9 drm/i915/panelreplay: Debugfs support for panel replay


