Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D3A7EE818
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Nov 2023 21:08:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA59310E2BD;
	Thu, 16 Nov 2023 20:08:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 33D0B10E2BF;
 Thu, 16 Nov 2023 20:08:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2DD84A47E9;
 Thu, 16 Nov 2023 20:08:05 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Date: Thu, 16 Nov 2023 20:08:05 -0000
Message-ID: <170016528515.3092.14933907562799159869@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231107041740.3718419-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20231107041740.3718419-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBE?=
 =?utf-8?q?P_DSC_min/max_src_bpc_fixes_=28rev4=29?=
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

Series: DP DSC min/max src bpc fixes (rev4)
URL   : https://patchwork.freedesktop.org/series/125571/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/125571/revisions/4/mbox/ not applied
Applying: drm/i915/dp: Simplify checks for helper intel_dp_dsc_max_src_input_bpc
Applying: drm/i915/dp: Fix the max DSC bpc supported by source
Applying: drm/i915/dp_mst: Use helpers to get dsc min/max input bpc
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_dp.c
M	drivers/gpu/drm/i915/display/intel_dp.h
M	drivers/gpu/drm/i915/display/intel_dp_mst.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/display/intel_dp_mst.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_dp_mst.c
Auto-merging drivers/gpu/drm/i915/display/intel_dp.h
Auto-merging drivers/gpu/drm/i915/display/intel_dp.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0003 drm/i915/dp_mst: Use helpers to get dsc min/max input bpc
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


