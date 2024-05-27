Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D8A78CFE0C
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2024 12:25:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE97E10EDA0;
	Mon, 27 May 2024 10:25:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC22A10EDA0;
 Mon, 27 May 2024 10:25:49 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Panel_Replay_eDP_sup?=
 =?utf-8?q?port_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 27 May 2024 10:25:49 -0000
Message-ID: <171680554969.2211934.3062894058089723061@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240527072220.3294769-1-jouni.hogander@intel.com>
In-Reply-To: <20240527072220.3294769-1-jouni.hogander@intel.com>
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

Series: Panel Replay eDP support (rev4)
URL   : https://patchwork.freedesktop.org/series/133684/
State : warning

== Summary ==

Error: dim checkpatch failed
68a6d15a8e6f drm/i915/psr: Store pr_dpcd in intel_dp
684085ce69fe drm/panel replay: Add edp1.5 Panel Replay bits and register
01046192951a drm/i915/psr: Move printing sink PSR support to own function
51f208eee6a8 drm/i915/psr: Move printing PSR mode to own function
c449e768240c drm/i915/psr: modify psr status debugfs to support eDP Panel Replay
e1cb7e69404a drm/i915/psr: Add Panel Replay support to intel_psr2_config_et_valid
654f1f8c0aab drm/i915/psr: Add Early Transport into psr debugfs interface
-:27: WARNING:PREFER_SEQ_PUTS: Prefer seq_puts to seq_printf
#27: FILE: drivers/gpu/drm/i915/display/intel_psr.c:3607:
+		seq_printf(m, " (Early Transport)");

-:33: WARNING:PREFER_SEQ_PUTS: Prefer seq_puts to seq_printf
#33: FILE: drivers/gpu/drm/i915/display/intel_psr.c:3612:
+		seq_printf(m, " (Early Transport)");

-:34: WARNING:PREFER_SEQ_PUTS: Prefer seq_puts to seq_printf
#34: FILE: drivers/gpu/drm/i915/display/intel_psr.c:3613:
+	seq_printf(m, "\n");

total: 0 errors, 3 warnings, 0 checks, 53 lines checked
bae4516c0597 drm/display: Add missing aux less alpm wake related bits
93fde08b0da4 drm/i915/psr: Check panel ALPM capability for eDP Panel Replay
d2a846c30381 drm/i915/psr: Inform Panel Replay source support on eDP as well
8aa90bd1a985 drm/i915/psr: enable sink for eDP1.5 Panel Replay
7c7de2e17608 drm/i915/psr: Check panel Early Transport capability for eDP PR
37d33cddf55d drm/i915/psr: Perfrom psr2 checks related to ALPM for Panel Replay
17c0601a7dba drm/i915/psr: Add Panel Replay compute_config helper
1e4dc0faeb9c drm/i915/psr: 128b/132b Panel Replay is not supported on eDP
2d74aa76770a drm/i915/psr: HW will not allow PR on eDP when HDCP enabled
839083e5eb75 drm/i915/psr: Check Early Transport for Panel Replay as well
fbd267a8a00f drm/i915/psr: Modify dg2_activate_panel_replay to support eDP
00a6ddb59576 drm/i915/psr: Add new debug bit to disable Panel Replay
e645124cfa70 Revert "drm/i915/psr: Disable early transport by default"


