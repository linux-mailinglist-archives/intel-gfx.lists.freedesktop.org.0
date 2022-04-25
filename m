Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C22550E122
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Apr 2022 15:05:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A89DB10E4D3;
	Mon, 25 Apr 2022 13:05:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 08C7710E547;
 Mon, 25 Apr 2022 13:05:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 079F4AADD1;
 Mon, 25 Apr 2022 13:05:49 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
Date: Mon, 25 Apr 2022 13:05:49 -0000
Message-ID: <165089194902.32283.1732118974557106885@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220407085946.744568-1-christian.koenig@amd.com>
In-Reply-To: <20220407085946.744568-1-christian.koenig@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5B01/15=5D_dma-buf=3A_add_enum_dma=5Fresv?=
 =?utf-8?q?=5Fusage_v4_=28rev2=29?=
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

Series: series starting with [01/15] dma-buf: add enum dma_resv_usage v4 (rev2)
URL   : https://patchwork.freedesktop.org/series/102340/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/102340/revisions/2/mbox/ not applied
Applying: dma-buf: add enum dma_resv_usage v4
Using index info to reconstruct a base tree...
M	drivers/dma-buf/dma-buf.c
M	drivers/dma-buf/dma-resv.c
M	drivers/dma-buf/st-dma-resv.c
M	drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c
M	drivers/gpu/drm/amd/amdgpu/amdgpu_display.c
M	drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c
M	drivers/gpu/drm/amd/amdgpu/amdgpu_ids.c
M	drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c
M	drivers/gpu/drm/amd/amdgpu/amdgpu_object.c
M	drivers/gpu/drm/amd/amdgpu/amdgpu_sync.c
M	drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
M	drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c
M	drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c
M	drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
M	drivers/gpu/drm/drm_gem.c
M	drivers/gpu/drm/drm_gem_atomic_helper.c
M	drivers/gpu/drm/etnaviv/etnaviv_gem.c
M	drivers/gpu/drm/i915/display/intel_atomic_plane.c
M	drivers/gpu/drm/i915/gem/i915_gem_busy.c
M	drivers/gpu/drm/i915/gem/i915_gem_lmem.c
M	drivers/gpu/drm/i915/gem/i915_gem_userptr.c
M	drivers/gpu/drm/i915/gem/i915_gem_wait.c
M	drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c
M	drivers/gpu/drm/i915/i915_request.c
M	drivers/gpu/drm/i915/i915_sw_fence.c
M	drivers/gpu/drm/msm/msm_gem.c
M	drivers/gpu/drm/nouveau/dispnv50/wndw.c
M	drivers/gpu/drm/nouveau/nouveau_bo.c
M	drivers/gpu/drm/nouveau/nouveau_fence.c
M	drivers/gpu/drm/nouveau/nouveau_gem.c
M	drivers/gpu/drm/panfrost/panfrost_drv.c
M	drivers/gpu/drm/qxl/qxl_debugfs.c
M	drivers/gpu/drm/radeon/radeon_display.c
M	drivers/gpu/drm/radeon/radeon_gem.c
M	drivers/gpu/drm/radeon/radeon_mn.c
M	drivers/gpu/drm/radeon/radeon_sync.c
M	drivers/gpu/drm/radeon/radeon_uvd.c
M	drivers/gpu/drm/scheduler/sched_main.c
M	drivers/gpu/drm/ttm/ttm_bo.c
M	drivers/gpu/drm/vgem/vgem_fence.c
M	drivers/gpu/drm/virtio/virtgpu_ioctl.c
M	drivers/gpu/drm/vmwgfx/vmwgfx_bo.c
M	drivers/gpu/drm/vmwgfx/vmwgfx_resource.c
M	drivers/infiniband/core/umem_dmabuf.c
M	include/linux/dma-buf.h
M	include/linux/dma-resv.h
Falling back to patching base and 3-way merge...
Auto-merging include/linux/dma-resv.h
CONFLICT (content): Merge conflict in include/linux/dma-resv.h
Auto-merging include/linux/dma-buf.h
Auto-merging drivers/infiniband/core/umem_dmabuf.c
CONFLICT (content): Merge conflict in drivers/infiniband/core/umem_dmabuf.c
Auto-merging drivers/gpu/drm/vmwgfx/vmwgfx_resource.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/vmwgfx/vmwgfx_resource.c
Auto-merging drivers/gpu/drm/vmwgfx/vmwgfx_bo.c
Auto-merging drivers/gpu/drm/vgem/vgem_fence.c
Auto-merging drivers/gpu/drm/ttm/ttm_bo.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/ttm/ttm_bo.c
Auto-merging drivers/gpu/drm/radeon/radeon_uvd.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/radeon/radeon_uvd.c
Auto-merging drivers/gpu/drm/radeon/radeon_sync.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/radeon/radeon_sync.c
Auto-merging drivers/gpu/drm/radeon/radeon_mn.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/radeon/radeon_mn.c
Auto-merging drivers/gpu/drm/radeon/radeon_gem.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/radeon/radeon_gem.c
Auto-merging drivers/gpu/drm/qxl/qxl_debugfs.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/qxl/qxl_debugfs.c
Auto-merging drivers/gpu/drm/nouveau/nouveau_fence.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/nouveau/nouveau_fence.c
Auto-merging drivers/gpu/drm/nouveau/nouveau_bo.c
Auto-merging drivers/gpu/drm/msm/msm_gem.c
Auto-merging drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c
Auto-merging drivers/gpu/drm/i915/gem/i915_gem_userptr.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gem/i915_gem_userptr.c
Auto-merging drivers/gpu/drm/i915/gem/i915_gem_lmem.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gem/i915_gem_lmem.c
Auto-merging drivers/gpu/drm/i915/gem/i915_gem_busy.c
Auto-merging drivers/gpu/drm/i915/display/intel_atomic_plane.c
Auto-merging drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
Auto-merging drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c
Auto-merging drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c
Auto-merging drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
Auto-merging drivers/gpu/drm/amd/amdgpu/amdgpu_sync.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/amd/amdgpu/amdgpu_sync.c
Auto-merging drivers/gpu/drm/amd/amdgpu/amdgpu_object.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/amd/amdgpu/amdgpu_object.c
Auto-merging drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c
Auto-merging drivers/gpu/drm/amd/amdgpu/amdgpu_ids.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/amd/amdgpu/amdgpu_ids.c
Auto-merging drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/amd/amdgpu/amdgpu_cs.c
Auto-merging drivers/dma-buf/st-dma-resv.c
CONFLICT (content): Merge conflict in drivers/dma-buf/st-dma-resv.c
Auto-merging drivers/dma-buf/dma-resv.c
CONFLICT (content): Merge conflict in drivers/dma-buf/dma-resv.c
Auto-merging drivers/dma-buf/dma-buf.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 dma-buf: add enum dma_resv_usage v4
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


