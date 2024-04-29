Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DD4F8B5A56
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2024 15:43:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28CAF10FEC1;
	Mon, 29 Apr 2024 13:43:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB92410FEC1;
 Mon, 29 Apr 2024 13:43:00 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Panel_replay_selecti?=
 =?utf-8?q?ve_update_support_=28rev9=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Apr 2024 13:43:00 -0000
Message-ID: <171439818089.1757642.2977591834149475831@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240429120755.3990652-1-jouni.hogander@intel.com>
In-Reply-To: <20240429120755.3990652-1-jouni.hogander@intel.com>
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

Series: Panel replay selective update support (rev9)
URL   : https://patchwork.freedesktop.org/series/128193/
State : warning

== Summary ==

Error: dim checkpatch failed
9bb430152399 drm/i915/psr: Rename has_psr2 as has_sel_update
-:31: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#31: FILE: drivers/gpu/drm/i915/display/intel_crtc_state_dump.c:255:
+		drm_printf(&p, "psr: %s, selective update: %s, panel replay: %s, selective fetch: %s\n",
+			    str_enabled_disabled(pipe_config->has_psr),

total: 0 errors, 0 warnings, 1 checks, 88 lines checked
8ef3cd76835e drm/i915/dp: Use always vsc revision 0x6 for Panel Replay
7b514a1f4574 drm/i915/psr: Rename psr2_enabled as sel_update_enabled
0937c4291a83 drm/panelreplay: dpcd register definition for panelreplay SU
0df0cd345e84 drm/i915/psr: Detect panel replay selective update support
66b27bb1fa50 drm/i915/psr: Modify intel_dp_get_su_granularity to support panel replay
c517635fafcf drm/i915/psr: Panel replay uses SRD_STATUS to track it's status
a4b90fdd0406 drm/i915/psr: Do not apply workarounds in case of panel replay
09af34d837c0 drm/i915/psr: Update PSR module parameter descriptions
c7a55ec2d438 drm/i915/psr: Split intel_psr2_config_valid for panel replay
130abeaddc5d drm/i915/psr: Add panel replay sel update support to debugfs interface
-:13: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#13: 
Sink support: PSR = no, Panel Replay = yes, Panel Replay Selective Update = yes

total: 0 errors, 1 warnings, 0 checks, 22 lines checked


