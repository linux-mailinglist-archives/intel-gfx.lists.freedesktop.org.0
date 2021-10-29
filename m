Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA02F43F8BE
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Oct 2021 10:22:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0D8989C96;
	Fri, 29 Oct 2021 08:22:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27F4088071;
 Fri, 29 Oct 2021 08:22:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10151"; a="230571119"
X-IronPort-AV: E=Sophos;i="5.87,192,1631602800"; d="scan'208";a="230571119"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2021 01:22:06 -0700
X-IronPort-AV: E=Sophos;i="5.87,192,1631602800"; d="scan'208";a="448038474"
Received: from ekolpasx-mobl.ccr.corp.intel.com (HELO
 thellstr-mobl1.intel.com) ([10.249.254.219])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2021 01:22:05 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Cc: maarten.lankhorst@linux.intel.com, matthew.auld@intel.com,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Fri, 29 Oct 2021 10:21:52 +0200
Message-Id: <20211029082156.194003-1-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 0/4] Prepare error capture for asynchronous
 migration
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patch series prepares error capture for asynchronous migration,
where the vma pages may not reflect the pages the GPU is currently
executing from but may be several migrations ahead.

The first patch deals with refcounting sg-list so that they don't
disappear under the capture code, which typically otherwise happens at
put_pages() time.

The second patch introduces vma state snapshots that record the vma state
at request submission time.
It also takes additional measures to make sure that
the capture list and request is not disappearing from under us while
capturing. The latter may otherwise happen if a heartbeat triggered parallel
capture is running during a manual reset which retires the request.

The third patch changes the allocation mode during capture to reflect that
capturing is typically done in the fence signalling critical path. More
details on the patch itself.

Finally the last patch is more of a POC patch and not strictly needed yet,
but will be (or at least something very similar) soon for async unbinding.
It will make sure that unbinding doesn't complete or signal completion
before capture is done. Async reuse of memory can't happen until unbinding
signals complete and without waiting for capture done, we might capture
contents of reused memory.
Before the last patch the vma active is instead still keeping the vma alive,
but that will not work with async unbinding anymore, and also it is still
not clear how we guarantee keeping the vma alive long enough to even
grab an active reference during capture.

v2:
- Mostly Fixes for selftests and rebinding. See patch 3. 
v3:
- Honor the unbind fence also when evicting for suspend on gen6.
- Cleanups on patch 1
- Minor cleanups on patch 3.
v4:
- Break out patch 3 from patch 2.
- Move a fix from patch 4 to patch 1.

Thomas Hellström (4):
  drm/i915: Introduce refcounted sg-tables
  drm/i915: Update error capture code to avoid using the current vma
    state
  drm/i915: Use GFP_NOWAIT in the capture code
  drm/i915: Initial introduction of vma resources

 drivers/gpu/drm/i915/Makefile                 |   1 +
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 137 ++++++++++--
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |  12 +-
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |   3 +-
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c     |  49 ++---
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c       | 186 +++++++++-------
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   8 +-
 .../drm/i915/gt/intel_execlists_submission.c  |   2 +-
 drivers/gpu/drm/i915/i915_gpu_error.c         | 180 ++++++++++-----
 drivers/gpu/drm/i915/i915_request.c           |  63 ++++--
 drivers/gpu/drm/i915/i915_request.h           |  18 +-
 drivers/gpu/drm/i915/i915_scatterlist.c       |  62 ++++--
 drivers/gpu/drm/i915/i915_scatterlist.h       |  76 ++++++-
 drivers/gpu/drm/i915/i915_vma.c               | 206 +++++++++++++++++-
 drivers/gpu/drm/i915/i915_vma.h               |  20 +-
 drivers/gpu/drm/i915/i915_vma_snapshot.c      | 131 +++++++++++
 drivers/gpu/drm/i915/i915_vma_snapshot.h      | 112 ++++++++++
 drivers/gpu/drm/i915/i915_vma_types.h         |   5 +
 drivers/gpu/drm/i915/intel_region_ttm.c       |  15 +-
 drivers/gpu/drm/i915/intel_region_ttm.h       |   5 +-
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c |  98 +++++----
 drivers/gpu/drm/i915/selftests/mock_region.c  |  12 +-
 22 files changed, 1111 insertions(+), 290 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/i915_vma_snapshot.c
 create mode 100644 drivers/gpu/drm/i915/i915_vma_snapshot.h

-- 
2.31.1

