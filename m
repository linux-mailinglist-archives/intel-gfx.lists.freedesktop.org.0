Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E593069C9CB
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Feb 2023 12:25:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F225410E68D;
	Mon, 20 Feb 2023 11:25:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3DDC010E68D;
 Mon, 20 Feb 2023 11:25:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 266EAA0BCB;
 Mon, 20 Feb 2023 11:25:39 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Date: Mon, 20 Feb 2023 11:25:39 -0000
Message-ID: <167689233913.31318.15799338182415763813@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230220111232.3383820-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20230220111232.3383820-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBI?=
 =?utf-8?q?andle_BPC_for_HDMI2=2E1_PCON_without_DSC1=2E2_sink_and_other_fi?=
 =?utf-8?q?xes_=28rev9=29?=
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

Series: Handle BPC for HDMI2.1 PCON without DSC1.2 sink and other fixes (rev9)
URL   : https://patchwork.freedesktop.org/series/107550/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/107550/revisions/9/mbox/ not applied
Applying: drm/i915/display: Add new member to configure PCON color conversion
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/icl_dsi.c
M	drivers/gpu/drm/i915/display/intel_crt.c
M	drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
M	drivers/gpu/drm/i915/display/intel_display.c
M	drivers/gpu/drm/i915/display/intel_display_types.h
M	drivers/gpu/drm/i915/display/intel_dp.c
M	drivers/gpu/drm/i915/display/intel_dp_mst.c
M	drivers/gpu/drm/i915/display/intel_dvo.c
M	drivers/gpu/drm/i915/display/intel_hdmi.c
M	drivers/gpu/drm/i915/display/intel_lvds.c
M	drivers/gpu/drm/i915/display/intel_tv.c
M	drivers/gpu/drm/i915/display/vlv_dsi.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/display/vlv_dsi.c
Auto-merging drivers/gpu/drm/i915/display/intel_tv.c
Auto-merging drivers/gpu/drm/i915/display/intel_lvds.c
Auto-merging drivers/gpu/drm/i915/display/intel_hdmi.c
Auto-merging drivers/gpu/drm/i915/display/intel_dvo.c
Auto-merging drivers/gpu/drm/i915/display/intel_dp_mst.c
Auto-merging drivers/gpu/drm/i915/display/intel_dp.c
Auto-merging drivers/gpu/drm/i915/display/intel_display_types.h
Auto-merging drivers/gpu/drm/i915/display/intel_display.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_display.c
Auto-merging drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
Auto-merging drivers/gpu/drm/i915/display/intel_crt.c
Auto-merging drivers/gpu/drm/i915/display/icl_dsi.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/i915/display: Add new member to configure PCON color conversion
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


