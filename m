Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D980C8C239D
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 13:35:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2445610E0BB;
	Fri, 10 May 2024 11:35:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7764D10E990;
 Fri, 10 May 2024 11:35:32 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Panel_replay_selecti?=
 =?utf-8?q?ve_update_support_=28rev11=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 10 May 2024 11:35:32 -0000
Message-ID: <171534093247.2056703.6245043065771478685@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240510093823.3146455-1-jouni.hogander@intel.com>
In-Reply-To: <20240510093823.3146455-1-jouni.hogander@intel.com>
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

Series: Panel replay selective update support (rev11)
URL   : https://patchwork.freedesktop.org/series/128193/
State : warning

== Summary ==

Error: dim checkpatch failed
4ce3205a70e0 drm/i915/psr: Rename has_psr2 as has_sel_update
2d9a71ec0767 drm/i915/display: Do not print "psr: enabled" for on Panel Replay
fd10a5f63290 drm/i915/dp: Use always vsc revision 0x6 for Panel Replay
5da53bb16ef9 drm/i915/psr: Rename psr2_enabled as sel_update_enabled
a750aa2295aa drm/panelreplay: dpcd register definition for panelreplay SU
899dcfa4aa4c drm/i915/psr: Detect panel replay selective update support
10f32fac4141 drm/i915/psr: Modify intel_dp_get_su_granularity to support panel replay
faeda725bae0 drm/i915/psr: Panel replay uses SRD_STATUS to track it's status
c7a19e73dbc5 drm/i915/psr: Do not apply workarounds in case of panel replay
a8852b585617 drm/i915/psr: Update PSR module parameter descriptions
3b4207204223 drm/i915/psr: Split intel_psr2_config_valid for panel replay
ae3d249115ce drm/i915/psr: Add panel replay sel update support to debugfs interface
-:13: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#13: 
Sink support: PSR = no, Panel Replay = yes, Panel Replay Selective Update = yes

total: 0 errors, 1 warnings, 0 checks, 22 lines checked


