Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 105A087F1D4
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Mar 2024 22:12:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7651310E430;
	Mon, 18 Mar 2024 21:12:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCA6010EA3D;
 Mon, 18 Mar 2024 21:12:18 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_Enable_Adaptive_Sync_SDP_?=
 =?utf-8?q?Support_for_DP_=28rev19=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mitul Golani" <mitulkumar.ajitkumar.golani@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Mar 2024 21:12:18 -0000
Message-ID: <171079633883.886732.18146907695689667268@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240311094238.3320888-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20240311094238.3320888-1-mitulkumar.ajitkumar.golani@intel.com>
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

Series: Enable Adaptive Sync SDP Support for DP (rev19)
URL   : https://patchwork.freedesktop.org/series/126829/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/126829/revisions/19/mbox/ not applied
Applying: drm/dp: Add support to indicate if sink supports AS SDP
Applying: drm: Add Adaptive Sync SDP logging
Applying: drm/i915/display: Add crtc state dump for Adaptive Sync SDP
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
M	drivers/gpu/drm/i915/display/intel_display_types.h
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/display/intel_display_types.h
Auto-merging drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0003 drm/i915/display: Add crtc state dump for Adaptive Sync SDP
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


