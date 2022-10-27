Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F213660F7DB
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Oct 2022 14:46:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D470A10E60B;
	Thu, 27 Oct 2022 12:46:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DFAB910E60A;
 Thu, 27 Oct 2022 12:46:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D94FAAADD7;
 Thu, 27 Oct 2022 12:46:50 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Somalapuram Amaranath" <amaranath.somalapuram@amd.com>
Date: Thu, 27 Oct 2022 12:46:50 -0000
Message-ID: <166687481086.4252.10232738753736873367@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221027091237.983582-1-Amaranath.Somalapuram@amd.com>
In-Reply-To: <20221027091237.983582-1-Amaranath.Somalapuram@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/ttm=3A_rework_on_ttm=5Fresource_to_use_size=5Ft_type_=28rev2?=
 =?utf-8?q?=29?=
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

Series: drm/ttm: rework on ttm_resource to use size_t type (rev2)
URL   : https://patchwork.freedesktop.org/series/110129/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/110129/revisions/2/mbox/ not applied
Applying: drm/ttm: rework on ttm_resource to use size_t type
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/amd/amdgpu/amdgpu_gtt_mgr.c
M	drivers/gpu/drm/amd/amdgpu/amdgpu_object.c
M	drivers/gpu/drm/amd/amdgpu/amdgpu_res_cursor.h
M	drivers/gpu/drm/amd/amdgpu/amdgpu_trace.h
M	drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
M	drivers/gpu/drm/amd/amdgpu/amdgpu_vram_mgr.c
M	drivers/gpu/drm/i915/gem/i915_gem_ttm.c
M	drivers/gpu/drm/i915/i915_scatterlist.c
M	drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
M	drivers/gpu/drm/i915/intel_region_ttm.c
M	drivers/gpu/drm/nouveau/nouveau_bo.c
M	drivers/gpu/drm/nouveau/nouveau_bo0039.c
M	drivers/gpu/drm/nouveau/nouveau_bo5039.c
M	drivers/gpu/drm/nouveau/nouveau_bo74c1.c
M	drivers/gpu/drm/nouveau/nouveau_bo85b5.c
M	drivers/gpu/drm/nouveau/nouveau_bo9039.c
M	drivers/gpu/drm/nouveau/nouveau_bo90b5.c
M	drivers/gpu/drm/nouveau/nouveau_boa0b5.c
M	drivers/gpu/drm/nouveau/nouveau_gem.c
M	drivers/gpu/drm/nouveau/nouveau_mem.c
M	drivers/gpu/drm/nouveau/nouveau_ttm.c
M	drivers/gpu/drm/radeon/radeon_cs.c
M	drivers/gpu/drm/radeon/radeon_object.c
M	drivers/gpu/drm/radeon/radeon_trace.h
M	drivers/gpu/drm/radeon/radeon_ttm.c
M	drivers/gpu/drm/ttm/ttm_bo.c
M	drivers/gpu/drm/ttm/ttm_bo_util.c
M	drivers/gpu/drm/ttm/ttm_bo_vm.c
M	drivers/gpu/drm/ttm/ttm_range_manager.c
M	drivers/gpu/drm/ttm/ttm_resource.c
M	drivers/gpu/drm/vmwgfx/vmwgfx_blit.c
M	drivers/gpu/drm/vmwgfx/vmwgfx_bo.c
M	drivers/gpu/drm/vmwgfx/vmwgfx_cotable.c
M	drivers/gpu/drm/vmwgfx/vmwgfx_execbuf.c
M	drivers/gpu/drm/vmwgfx/vmwgfx_gmrid_manager.c
M	drivers/gpu/drm/vmwgfx/vmwgfx_kms.c
M	drivers/gpu/drm/vmwgfx/vmwgfx_page_dirty.c
M	include/drm/ttm/ttm_resource.h
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/vmwgfx/vmwgfx_kms.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/vmwgfx/vmwgfx_kms.c
Auto-merging drivers/gpu/drm/vmwgfx/vmwgfx_execbuf.c
Auto-merging drivers/gpu/drm/vmwgfx/vmwgfx_cotable.c
Auto-merging drivers/gpu/drm/vmwgfx/vmwgfx_bo.c
Auto-merging drivers/gpu/drm/i915/gem/i915_gem_ttm.c
Auto-merging drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/ttm: rework on ttm_resource to use size_t type
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


