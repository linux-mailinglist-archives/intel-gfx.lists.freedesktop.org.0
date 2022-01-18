Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA19492598
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jan 2022 13:20:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B02C110E36F;
	Tue, 18 Jan 2022 12:20:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C57EC10E5D7;
 Tue, 18 Jan 2022 12:20:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B3793A7DFB;
 Tue, 18 Jan 2022 12:20:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arunpravin" <arunpravin.paneerselvam@amd.com>
Date: Tue, 18 Jan 2022 12:20:11 -0000
Message-ID: <164250841171.25099.10947448277952541726@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220118104504.2349-1-Arunpravin.PaneerSelvam@amd.com>
In-Reply-To: <20220118104504.2349-1-Arunpravin.PaneerSelvam@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5Bv9=2C1/6=5D_drm=3A_move_the_buddy_alloca?=
 =?utf-8?q?tor_from_i915_into_common_drm?=
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

Series: series starting with [v9,1/6] drm: move the buddy allocator from i915 into common drm
URL   : https://patchwork.freedesktop.org/series/98979/
State : failure

== Summary ==

Applying: drm: move the buddy allocator from i915 into common drm
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/Makefile
M	drivers/gpu/drm/i915/i915_module.c
M	drivers/gpu/drm/i915/selftests/intel_memory_region.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/selftests/intel_memory_region.c
Removing drivers/gpu/drm/i915/selftests/i915_buddy.c
Auto-merging drivers/gpu/drm/i915/i915_module.c
Removing drivers/gpu/drm/i915/i915_buddy.h
Removing drivers/gpu/drm/i915/i915_buddy.c
Auto-merging drivers/gpu/drm/i915/Makefile
Applying: drm: improve drm_buddy_alloc function
Applying: drm: implement top-down allocation method
Applying: drm: implement a method to free unused pages
Applying: drm/amdgpu: move vram inline functions into a header
Applying: drm/amdgpu: add drm buddy support to amdgpu
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.h
M	drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c
Auto-merging drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.h
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0006 drm/amdgpu: add drm buddy support to amdgpu
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


