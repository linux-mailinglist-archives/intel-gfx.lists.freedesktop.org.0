Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 42FE4455C1C
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Nov 2021 14:03:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEFEE6EB56;
	Thu, 18 Nov 2021 13:02:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E793A6EB40;
 Thu, 18 Nov 2021 13:02:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10171"; a="221058028"
X-IronPort-AV: E=Sophos;i="5.87,244,1631602800"; d="scan'208";a="221058028"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2021 05:02:43 -0800
X-IronPort-AV: E=Sophos;i="5.87,244,1631602800"; d="scan'208";a="455319539"
Received: from ntaiyeby-mobl1.ger.corp.intel.com (HELO
 thellstr-mobl1.intel.com) ([10.249.254.166])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2021 05:02:39 -0800
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 18 Nov 2021 14:02:24 +0100
Message-Id: <20211118130230.154988-1-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 0/6] drm/i915/ttm: Async migration
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 matthew.auld@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patch series deals with async migration and async vram management.
It still leaves an important part out, which is async unbinding which
will reduce latency further, at least when trying to migrate already active
objects.

Patches 1/6 deals with accessing and waiting for the TTM moving
fence from i915 GEM.
Patch 2 is pure code reorganization, no functional change.
Patch 3 breaks a refcounting loop involving the TTM moving fence.
Patch 4 makes the i915 TTM shinking code handle async moves.
Patch 5 uses TTM to implement the ttm move() callback async, it also
introduces a utility to collect dependencies and turn them into a
single dma_fence, which is needed for the intel_migrate code.
This also affects the gem object migrate code.
Patch 6 makes the object copy utility async as well, mainly for future
users since the only current user, suspend backup and restore, typically
will want to sync anyway.

v2:
- Fix a couple of SPARSE warnings.
v3:
- Fix a NULL pointer dereference.
v4:
- Squash what was previously patch 1 and 2 to patch1
- Ditch the moving fence waiting in i915_vma_pin_iomap()
- Rework how the refcounting loop is broken in patch 3. Drop region
  reference counting.
- Break what is now patch 4 out of patch 5. Add support for avoiding
  waiting for gpu when shrinking.
- A number of changes in patch 5. See the commit message for details.

Maarten Lankhorst (1):
  drm/i915: Add support for moving fence waiting

Thomas Hellström (5):
  drm/i915/ttm: Move the i915_gem_obj_copy_ttm() function
  drm/i915/ttm: Drop region reference counting
  drm/i915/ttm: Correctly handle waiting for gpu when shrinking
  drm/i915/ttm: Implement asynchronous TTM moves
  drm/i915/ttm: Update i915_gem_obj_copy_ttm() to be asynchronous

 drivers/gpu/drm/i915/gem/i915_gem_object.c    |  52 +++
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |   6 +
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |   1 +
 drivers/gpu/drm/i915/gem/i915_gem_pages.c     |   6 +
 drivers/gpu/drm/i915/gem/i915_gem_region.c    |   4 +-
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c     |   3 +-
 drivers/gpu/drm/i915/gem/i915_gem_shrinker.c  |   1 +
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c    |   6 +-
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c       |  89 ++--
 drivers/gpu/drm/i915/gem/i915_gem_ttm.h       |   6 +-
 drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c  | 405 ++++++++++++++++--
 drivers/gpu/drm/i915/gem/i915_gem_ttm_move.h  |  10 +-
 drivers/gpu/drm/i915/gem/i915_gem_ttm_pm.c    |   3 +
 drivers/gpu/drm/i915/gem/i915_gem_wait.c      |   4 +-
 .../gpu/drm/i915/gem/selftests/huge_pages.c   |   2 +-
 drivers/gpu/drm/i915/gt/intel_region_lmem.c   |  10 +-
 drivers/gpu/drm/i915/i915_vma.c               |  36 +-
 drivers/gpu/drm/i915/intel_memory_region.c    |  26 +-
 drivers/gpu/drm/i915/intel_memory_region.h    |   9 +-
 drivers/gpu/drm/i915/intel_region_ttm.c       |  35 +-
 drivers/gpu/drm/i915/intel_region_ttm.h       |   2 +-
 .../drm/i915/selftests/intel_memory_region.c  |   8 +-
 drivers/gpu/drm/i915/selftests/mock_region.c  |   7 +-
 23 files changed, 588 insertions(+), 143 deletions(-)

-- 
2.31.1

