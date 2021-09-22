Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C152F4149D6
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Sep 2021 14:55:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E37516EB93;
	Wed, 22 Sep 2021 12:55:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DB6BF6EB93;
 Wed, 22 Sep 2021 12:55:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D7C26AA917;
 Wed, 22 Sep 2021 12:55:23 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Sep 2021 12:55:23 -0000
Message-ID: <163231532387.6942.10892011222041216458@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210922091044.2612-1-christian.koenig@amd.com>
In-Reply-To: <20210922091044.2612-1-christian.koenig@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5B01/26=5D_dma-buf=3A_add_dma=5Fresv=5Ffor?=
 =?utf-8?q?=5Feach=5Ffence=5Funlocked_v4?=
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

Series: series starting with [01/26] dma-buf: add dma_resv_for_each_fence_unlocked v4
URL   : https://patchwork.freedesktop.org/series/94943/
State : failure

== Summary ==

Applying: dma-buf: add dma_resv_for_each_fence_unlocked v4
Applying: dma-buf: add dma_resv_for_each_fence
Applying: dma-buf: use new iterator in dma_resv_copy_fences
Applying: dma-buf: use new iterator in dma_resv_get_fences v2
Applying: dma-buf: use new iterator in dma_resv_wait_timeout
Applying: dma-buf: use new iterator in dma_resv_test_signaled
Applying: drm/ttm: use the new iterator in ttm_bo_flush_all_fences
Applying: drm/amdgpu: use the new iterator in amdgpu_sync_resv
Applying: drm/amdgpu: use new iterator in amdgpu_ttm_bo_eviction_valuable
Applying: drm/msm: use new iterator in msm_gem_describe
Applying: drm/radeon: use new iterator in radeon_sync_resv
Applying: drm/scheduler: use new iterator in drm_sched_job_add_implicit_dependencies v2
Applying: drm/i915: use the new iterator in i915_gem_busy_ioctl
Applying: drm/i915: use the new iterator in i915_sw_fence_await_reservation v3
Applying: drm/i915: use the new iterator in i915_request_await_object v2
Applying: drm/i915: use new iterator in i915_gem_object_wait_reservation
Applying: drm/i915: use new iterator in i915_gem_object_wait_priority
Applying: drm/i915: use new iterator in i915_gem_object_last_write_engine
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/gem/i915_gem_object.h
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/gem/i915_gem_object.h
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gem/i915_gem_object.h
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0018 drm/i915: use new iterator in i915_gem_object_last_write_engine
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


