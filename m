Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AFC7B7A56D5
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Sep 2023 03:11:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69D2310E0C0;
	Tue, 19 Sep 2023 01:11:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DD87110E0C0;
 Tue, 19 Sep 2023 01:11:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CA84DAADE4;
 Tue, 19 Sep 2023 01:11:43 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Tue, 19 Sep 2023 01:11:43 -0000
Message-ID: <169508590379.3666.12601507523532931749@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230914192659.757475-1-imre.deak@intel.com>
In-Reply-To: <20230914192659.757475-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_Improve_BW_management_on_shared_display_links_=28rev?=
 =?utf-8?q?9=29?=
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

Series: drm/i915: Improve BW management on shared display links (rev9)
URL   : https://patchwork.freedesktop.org/series/122589/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/122589/revisions/9/mbox/ not applied
Applying: drm/i915/dp: Factor out helpers to compute the link limits
Applying: drm/i915/dp: Track the pipe and link bpp limits separately
Applying: drm/i915/dp: Skip computing a non-DSC link config if DSC is needed
Applying: drm/i915/dp: Update the link bpp limits for DSC mode
Applying: drm/i915/dp: Limit the output link bpp in DSC mode
Applying: drm/i915: Add helper to modeset a set of pipes
Applying: drm/i915: Rename intel_modeset_all_pipes() to intel_modeset_all_pipes_late()
Applying: drm/i915: Factor out a helper to check/compute all the CRTC states
Applying: drm/i915: Add helpers for BW management on shared display links
Applying: drm/i915/fdi: Improve FDI BW sharing between pipe B and C
Applying: drm/i915/fdi: Recompute state for affected CRTCs on FDI links
Applying: drm/dp_mst: Fix fractional DSC bpp handling
Applying: drm/dp_mst: Add a way to calculate PBN values with FEC overhead
Applying: drm/dp_mst: Add helper to determine if an MST port is downstream of another port
Applying: drm/dp_mst: Factor out a helper to check the atomic state of a topology manager
Applying: drm/dp_mst: Swap the order of checking root vs. non-root port BW limitations
Applying: drm/i915/dp_mst: Fix PBN calculation with FEC overhead
Applying: drm/i915/dp_mst: Add atomic state for all streams on pre-tgl platforms
Applying: drm/i915/dp_mst: Program the DSC PPS SDP for each stream
Applying: drm/i915/dp: Make sure the DSC PPS SDP is disabled whenever DSC is disabled
Applying: drm/i915/dp_mst: Enable DSC decompression if any stream needs this
Applying: drm/i915/dp_mst: Add missing DSC compression disabling
Applying: drm/i915/dp_mst: Allow DSC only for sink ports of the first branch device
Applying: drm/i915/dp_mst: Improve BW sharing between MST streams
error: sha1 information is lacking or useless (drivers/gpu/drm/i915/display/intel_display.c).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0024 drm/i915/dp_mst: Improve BW sharing between MST streams
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


