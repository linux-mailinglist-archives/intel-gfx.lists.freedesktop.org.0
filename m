Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B1C82428A
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 14:14:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C615B10E45F;
	Thu,  4 Jan 2024 13:14:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DB7110E34D;
 Thu,  4 Jan 2024 13:14:51 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Panel_replay_selecti?=
 =?utf-8?q?ve_update_support?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Date: Thu, 04 Jan 2024 13:14:51 -0000
Message-ID: <170437409158.20654.4879502077622016885@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240104104821.1822988-1-jouni.hogander@intel.com>
In-Reply-To: <20240104104821.1822988-1-jouni.hogander@intel.com>
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

Series: Panel replay selective update support
URL   : https://patchwork.freedesktop.org/series/128193/
State : warning

== Summary ==

Error: dim checkpatch failed
e2d183d50b55 drm/i915/psr: Disable panel replay for now
7fed1cae811a drm/i915/psr: Do not check alpm on DP or capability change for panel replay
9f58f97516e1 drm/i915/psr: Unify panel replay enable sink
fe7338ddcddd drm/i915/psr: Rename has_psr2 as has_sel_update
f8bafda881aa drm/i915/psr: Rename psr2_enabled as sel_update_enabled
8344d535a9e7 drm/i915/psr: Add some documentation of variables used in psr code
e88c8d0d6b88 drm/i915/psr: Add sink_panel_replay_su_support to intel_psr
8965efbb8e49 drm/i915/psr: Detect panel replay selective update support
49fc7a420d66 drm/i915/psr: Split intel_psr2_config_valid for panel replay
0107a1534991 drm/panelreplay: dpcd register definition for panelreplay SU
1c777a411274 drm/i915/psr: Modify intel_dp_get_su_granularity to support panel replay
0fdd29acdd86 drm/i915/psr: Add panel replay sel update support to debugfs interface
-:13: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#13: 
Sink support: PSR = no, Panel Replay = yes, Panel Replay Selective Update = yes

total: 0 errors, 1 warnings, 0 checks, 22 lines checked


