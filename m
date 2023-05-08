Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75B346FBB12
	for <lists+intel-gfx@lfdr.de>; Tue,  9 May 2023 00:28:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1498710E315;
	Mon,  8 May 2023 22:28:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5F8C10E313;
 Mon,  8 May 2023 22:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683584902; x=1715120902;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=47cdsgBsrcl70mNXWjdo97kb9cMzY7L8ZzATG7h/TOg=;
 b=UXJFTW0ojPDSk3CUwikJLc3viQ4hIAi/FXkIG7K2V2u836cU3odObobn
 kCMx+zKwJpqNGgm7EzyMZgA+PNSAj6L/JZhAvOEnm73V+bAtlNKTFntyU
 JAddIsSxIb5xSaHXVt9ytCBvX+zWZJ8DLi15yNyVQAWQg9MvePnRiZLHc
 DuaAZvZS9RzSksJtKdzte1aRPJpK9NDJ38kPfB2Df2/6+3KkwQh1iGTyi
 OynNjIMfQQo82tuWrwPculJ6mVw4FPLFx5HKSMqxK7wj4C0CPzjTJtX70
 zBbm6ajNxHh5TWS4+XP4LG4e60UC6/lgTA4x9aCQq0XRTgyChqszRqyLw g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="413032809"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="413032809"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2023 15:28:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="872947002"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="872947002"
Received: from fyang16-desk.jf.intel.com ([10.24.96.243])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2023 15:28:18 -0700
From: fei.yang@intel.com
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 May 2023 15:29:11 -0700
Message-Id: <20230508222913.3946355-1-fei.yang@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 0/2] drm/i915: use pat_index instead of
 cache_level
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Fei Yang <fei.yang@intel.com>

This patch set was posted at
https://patchwork.freedesktop.org/series/116868/
Change title since the PTE patch was merged separately.

These patches are extracted from series
https://patchwork.freedesktop.org/series/115980/

This series refactor the cache policy programming so that the PTE
encode functions can be unified across all GEN12 platforms. This
refactor is also important in implementing the design which allows
uerspace to directly set cache policy for each Buffer Object.

v2: drop one patch that was merged separately
    341ad0e8e254 drm/i915/mtl: Add PTE encode function
v3: disable {get, set}_caching ioctl
v4: fix missing unlock introduced in v3, and
    solve a rebase conflict
v5: replace obj->cache_level with pat_set_by_user,
    fix i915_cache_level_str() for legacy platforms.
v6: squash the pte_encode patch because separating them causes
    bisect probelm. Also addressing some review comments from
    Tvrtko and Matt.

Fei Yang (2):
  drm/i915: preparation for using PAT index
  drm/i915: use pat_index instead of cache_level

 drivers/gpu/drm/i915/display/intel_dpt.c      | 12 +--
 drivers/gpu/drm/i915/gem/i915_gem_domain.c    | 58 +++++++++-----
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 15 +++-
 drivers/gpu/drm/i915/gem/i915_gem_mman.c      | 11 ++-
 drivers/gpu/drm/i915/gem/i915_gem_object.c    | 60 +++++++++++++-
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |  8 ++
 .../gpu/drm/i915/gem/i915_gem_object_types.h  | 51 +++++++++++-
 drivers/gpu/drm/i915/gem/i915_gem_shrinker.c  |  2 -
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c    |  4 +-
 drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c  |  8 +-
 .../gpu/drm/i915/gem/selftests/huge_pages.c   |  2 +-
 .../drm/i915/gem/selftests/i915_gem_migrate.c |  2 +-
 .../drm/i915/gem/selftests/i915_gem_mman.c    |  2 +-
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c          | 10 ++-
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c          | 78 +++++++++---------
 drivers/gpu/drm/i915/gt/gen8_ppgtt.h          |  3 +-
 drivers/gpu/drm/i915/gt/intel_ggtt.c          | 76 +++++++++---------
 drivers/gpu/drm/i915/gt/intel_gtt.h           | 18 ++---
 drivers/gpu/drm/i915/gt/intel_migrate.c       | 47 ++++++-----
 drivers/gpu/drm/i915/gt/intel_migrate.h       | 13 ++-
 drivers/gpu/drm/i915/gt/intel_ppgtt.c         |  4 +-
 drivers/gpu/drm/i915/gt/selftest_migrate.c    | 47 +++++------
 drivers/gpu/drm/i915/gt/selftest_reset.c      |  8 +-
 drivers/gpu/drm/i915/gt/selftest_timeline.c   |  2 +-
 drivers/gpu/drm/i915/gt/selftest_tlb.c        |  4 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      | 10 ++-
 drivers/gpu/drm/i915/i915_debugfs.c           | 52 +++++++++---
 drivers/gpu/drm/i915/i915_gem.c               | 27 ++++++-
 drivers/gpu/drm/i915/i915_gpu_error.c         |  8 +-
 drivers/gpu/drm/i915/i915_pci.c               | 79 ++++++++++++++++---
 drivers/gpu/drm/i915/i915_vma.c               | 16 ++--
 drivers/gpu/drm/i915/i915_vma.h               |  2 +-
 drivers/gpu/drm/i915/i915_vma_types.h         |  2 -
 drivers/gpu/drm/i915/intel_device_info.h      |  5 ++
 drivers/gpu/drm/i915/selftests/i915_gem.c     |  5 +-
 .../gpu/drm/i915/selftests/i915_gem_evict.c   |  4 +-
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c | 15 ++--
 .../drm/i915/selftests/intel_memory_region.c  |  4 +-
 .../gpu/drm/i915/selftests/mock_gem_device.c  |  9 +++
 drivers/gpu/drm/i915/selftests/mock_gtt.c     |  8 +-
 40 files changed, 554 insertions(+), 237 deletions(-)

-- 
2.25.1

