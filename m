Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C204E3FB5A6
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Aug 2021 14:09:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30BF489CBA;
	Mon, 30 Aug 2021 12:09:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4531D89CDD
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Aug 2021 12:09:53 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Date: Mon, 30 Aug 2021 14:09:47 +0200
Message-Id: <20210830121006.2978297-1-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/19] drm/i915: Short-term pinning and async
 eviction.
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

Remove some parts of the i915_vma api, ensure obj->vma always exists,
and finally force the object lock to be taken when calling i915_vma_unbind
is called.

With this, locking is a lot cleaner, and we no longer need all the if (!obj->vma) checks.
We kill off the locking around i915_vma->set/get pages, and kill off the short-term
pinning/unpinning in execbuf.

After this, we go 1 step further, populate obj->moving where required, and add support
for async eviction/clearing.

Maarten Lankhorst (19):
  drm/i915: Move __i915_gem_free_object to ttm_bo_destroy
  drm/i915: Remove unused bits of i915_vma/active api
  drm/i915: Slightly rework EXEC_OBJECT_CAPTURE handling
  drm/i915: Remove gen6_ppgtt_unpin_all
  drm/i915: Create a dummy object for gen6 ppgtt
  drm/i915: Create a full object for mock_ring
  drm/i915: vma is always backed by an object.
  drm/i915: Fix runtime pm handling in i915_gem_shrink
  drm/i915: Change shrink ordering to use locking around unbinding.
  Move CONTEXT_VALID_BIT check
  drm/i915: Remove resv from i915_vma
  drm/i915: Remove pages_mutex and intel_gtt->vma_ops.set/clear_pages
    members
  drm/i915: Take object lock in i915_ggtt_pin if ww is not set
  drm/i915: Add i915_vma_unbind_unlocked, and take obj lock for
    i915_vma_unbind
  drm/i915: Remove support for unlocked i915_vma unbind
  drm/i915: Remove short-term pins from execbuf
  drm/i915: Add functions to set/get moving fence
  drm/i915: Add support for asynchronous moving fence waiting
  drm/i915: Add accelerated migration to ttm

 drivers/gpu/drm/i915/display/intel_display.c  |   2 +-
 drivers/gpu/drm/i915/display/intel_dpt.c      |   2 -
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  94 ++--
 drivers/gpu/drm/i915/gem/i915_gem_internal.c  |  44 +-
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |  15 +
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |   6 +
 drivers/gpu/drm/i915/gem/i915_gem_pages.c     |  10 +
 drivers/gpu/drm/i915/gem/i915_gem_shrinker.c  |  63 ++-
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c       | 111 ++--
 .../gpu/drm/i915/gem/selftests/huge_pages.c   |   4 +-
 .../i915/gem/selftests/i915_gem_client_blt.c  |   2 +-
 .../drm/i915/gem/selftests/i915_gem_mman.c    |   6 +
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c          | 148 +++--
 drivers/gpu/drm/i915/gt/gen6_ppgtt.h          |   2 -
 drivers/gpu/drm/i915/gt/intel_context.c       |   2 +-
 drivers/gpu/drm/i915/gt/intel_engine_pm.c     |   5 +-
 drivers/gpu/drm/i915/gt/intel_ggtt.c          | 366 ++----------
 drivers/gpu/drm/i915/gt/intel_gtt.c           |  13 -
 drivers/gpu/drm/i915/gt/intel_gtt.h           |   7 -
 drivers/gpu/drm/i915/gt/intel_ppgtt.c         |  12 -
 .../gpu/drm/i915/gt/intel_ring_submission.c   |   2 +-
 drivers/gpu/drm/i915/gt/mock_engine.c         |  35 +-
 drivers/gpu/drm/i915/i915_active.c            |  28 +-
 drivers/gpu/drm/i915/i915_active.h            |  17 +-
 drivers/gpu/drm/i915/i915_drv.h               |  11 +-
 drivers/gpu/drm/i915/i915_gem.c               |  29 +-
 drivers/gpu/drm/i915/i915_gem_evict.c         |  74 ++-
 drivers/gpu/drm/i915/i915_gem_gtt.h           |   1 +
 drivers/gpu/drm/i915/i915_gpu_error.c         |   9 +-
 drivers/gpu/drm/i915/i915_request.c           |   9 +-
 drivers/gpu/drm/i915/i915_request.h           |   7 +-
 drivers/gpu/drm/i915/i915_vma.c               | 522 ++++++++++++++----
 drivers/gpu/drm/i915/i915_vma.h               |  15 +-
 drivers/gpu/drm/i915/i915_vma_types.h         |   2 -
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c |  34 +-
 drivers/gpu/drm/i915/selftests/i915_vma.c     |   2 +-
 drivers/gpu/drm/i915/selftests/mock_gtt.c     |   4 -
 37 files changed, 899 insertions(+), 816 deletions(-)

-- 
2.32.0

