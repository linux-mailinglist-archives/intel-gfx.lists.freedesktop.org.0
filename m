Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 323458C745F
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2024 12:06:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99A1B10E199;
	Thu, 16 May 2024 10:06:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 870EE10E199;
 Thu, 16 May 2024 10:06:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Panel_Replay_eDP_sup?=
 =?utf-8?q?port?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 16 May 2024 10:06:22 -0000
Message-ID: <171585398254.2120342.11744908123298062829@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240516084957.1557028-1-jouni.hogander@intel.com>
In-Reply-To: <20240516084957.1557028-1-jouni.hogander@intel.com>
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

Series: Panel Replay eDP support
URL   : https://patchwork.freedesktop.org/series/133684/
State : warning

== Summary ==

Error: dim checkpatch failed
74d66f8eab6a drm/i915/psr: Store pr_dpcd in intel_dp
a88dca068e21 drm/panel replay: Add edp1.5 Panel Replay bits and register
911a40e9ccde drm/i915/psr: Move printing sink PSR support to own function
83bb4807fcba drm/i915/psr: Move printing PSR mode to own function
eb3f74614200 drm/i915/psr: modify psr status debugfs to support eDP Panel Replay
ec35f0ea9cde drm/i915/psr: Add Panel Replay support to intel_psr2_config_et_valid
3f91f111d9f7 drm/i915/psr: Add Early Transport into psr debugfs interface
-:23: WARNING:PREFER_SEQ_PUTS: Prefer seq_puts to seq_printf
#23: FILE: drivers/gpu/drm/i915/display/intel_psr.c:3604:
+		seq_printf(m, " (Early Transport)");

-:29: WARNING:PREFER_SEQ_PUTS: Prefer seq_puts to seq_printf
#29: FILE: drivers/gpu/drm/i915/display/intel_psr.c:3609:
+		seq_printf(m, " (Early Transport)");

-:30: WARNING:PREFER_SEQ_PUTS: Prefer seq_puts to seq_printf
#30: FILE: drivers/gpu/drm/i915/display/intel_psr.c:3610:
+	seq_printf(m, "\n");

total: 0 errors, 3 warnings, 0 checks, 53 lines checked
24e1aca960e0 drm/display: Add missing aux less alpm wake related bits
711ae2456e0b drm/i915/psr: Check panel ALPM capability for eDP Panel Replay
a8ce90091600 drm/i915/psr: Inform Panel Replay source support on eDP as well
a7397853f8d5 drm/i915/psr: enable sink for eDP1.5 Panel Replay
98bea674499d drm/i915/psr: Check panel Early Transport capability for eDP PR
e1698cf902cb drm/i915/psr: Perfrom psr2 checks related to ALPM for Panel Replay
51d464ca5155 drm/i915/psr: Check Early Transport for Panel Replay as well
d73c8ce6cc42 drm/i915/psr: Modify dg2_activate_panel_replay to support eDP
6f98f7b3bfbf drm/i915/psr: Add new debug bit to disable Panel Replay
dcfccabf987a Revert "drm/i915/psr: Disable early transport by default"


