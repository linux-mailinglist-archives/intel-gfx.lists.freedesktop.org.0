Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B6D8AAE9C
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Apr 2024 14:36:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BF7F10FEBA;
	Fri, 19 Apr 2024 12:36:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CD8010FEC6;
 Fri, 19 Apr 2024 12:36:47 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Panel_replay_selecti?=
 =?utf-8?q?ve_update_support_=28rev7=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Apr 2024 12:36:47 -0000
Message-ID: <171353020744.1520059.228851589266278685@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240419121141.2665945-1-jouni.hogander@intel.com>
In-Reply-To: <20240419121141.2665945-1-jouni.hogander@intel.com>
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

Series: Panel replay selective update support (rev7)
URL   : https://patchwork.freedesktop.org/series/128193/
State : warning

== Summary ==

Error: dim checkpatch failed
3122e5718521 drm/i915/psr: Rename has_psr2 as has_sel_update
-:31: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#31: FILE: drivers/gpu/drm/i915/display/intel_crtc_state_dump.c:255:
+		drm_printf(&p, "psr: %s, selective update: %s, panel replay: %s, selective fetch: %s\n",
+			    str_enabled_disabled(pipe_config->has_psr),

total: 0 errors, 0 warnings, 1 checks, 88 lines checked
53a7594c3aea drm/i915/dp: Use always vsc revision 0x6 for Panel Replay
ad9fbcbf8cff drm/i915/psr: Rename psr2_enabled as sel_update_enabled
83b0a46be2f6 drm/panelreplay: dpcd register definition for panelreplay SU
534a60ff10e2 drm/i915/psr: Detect panel replay selective update support
0a86229bdb3a drm/i915/psr: Modify intel_dp_get_su_granularity to support panel replay
c656c7225488 drm/i915/psr: Panel replay uses SRD_STATUS to track it's status
15ad371a67b1 drm/i915/psr: Do not apply workarounds in case of panel replay
80c002964bd2 drm/i915/psr: Update PSR module parameter descriptions
a5d39e6e4591 drm/i915/psr: Split intel_psr2_config_valid for panel replay
009954d1bc66 drm/i915/psr: Add panel replay sel update support to debugfs interface
-:13: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#13: 
Sink support: PSR = no, Panel Replay = yes, Panel Replay Selective Update = yes

total: 0 errors, 1 warnings, 0 checks, 22 lines checked


