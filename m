Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EC7E8CAB74
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2024 12:05:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F94E10E237;
	Tue, 21 May 2024 10:05:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D59C110E3A6;
 Tue, 21 May 2024 10:05:31 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Panel_Replay_eDP_sup?=
 =?utf-8?q?port_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 21 May 2024 10:05:31 -0000
Message-ID: <171628593187.2162156.13724747673280612886@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240521084648.1987837-1-jouni.hogander@intel.com>
In-Reply-To: <20240521084648.1987837-1-jouni.hogander@intel.com>
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

Series: Panel Replay eDP support (rev2)
URL   : https://patchwork.freedesktop.org/series/133684/
State : warning

== Summary ==

Error: dim checkpatch failed
22a36bc8fa06 drm/i915/psr: Store pr_dpcd in intel_dp
94ec945b6ac3 drm/panel replay: Add edp1.5 Panel Replay bits and register
abe8921cc77d drm/i915/psr: Move printing sink PSR support to own function
841e39c797fe drm/i915/psr: Move printing PSR mode to own function
834d3ff0f2c7 drm/i915/psr: modify psr status debugfs to support eDP Panel Replay
2c9605c4ac6b drm/i915/psr: Add Panel Replay support to intel_psr2_config_et_valid
c500763be74d drm/i915/psr: Add Early Transport into psr debugfs interface
-:26: WARNING:PREFER_SEQ_PUTS: Prefer seq_puts to seq_printf
#26: FILE: drivers/gpu/drm/i915/display/intel_psr.c:3607:
+		seq_printf(m, " (Early Transport)");

-:32: WARNING:PREFER_SEQ_PUTS: Prefer seq_puts to seq_printf
#32: FILE: drivers/gpu/drm/i915/display/intel_psr.c:3612:
+		seq_printf(m, " (Early Transport)");

-:33: WARNING:PREFER_SEQ_PUTS: Prefer seq_puts to seq_printf
#33: FILE: drivers/gpu/drm/i915/display/intel_psr.c:3613:
+	seq_printf(m, "\n");

total: 0 errors, 3 warnings, 0 checks, 53 lines checked
ab1ba0d656b2 drm/display: Add missing aux less alpm wake related bits
11ab180277f6 drm/i915/psr: Check panel ALPM capability for eDP Panel Replay
11213744a0cf drm/i915/psr: Inform Panel Replay source support on eDP as well
659227a2a491 drm/i915/psr: enable sink for eDP1.5 Panel Replay
62685882b6d2 drm/i915/psr: Check panel Early Transport capability for eDP PR
1d17f314a4ec drm/i915/psr: Perfrom psr2 checks related to ALPM for Panel Replay
bc14b6644a01 drm/i915/psr: Check Early Transport for Panel Replay as well
096a14864d47 drm/i915/psr: Modify dg2_activate_panel_replay to support eDP
8b1898c1bfec drm/i915/psr: Add new debug bit to disable Panel Replay
adb1d33c655d Revert "drm/i915/psr: Disable early transport by default"


