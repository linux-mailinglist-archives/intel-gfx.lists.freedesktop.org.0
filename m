Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D39C143ACA2
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Oct 2021 09:08:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E82CA6E3F5;
	Tue, 26 Oct 2021 07:07:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33ACA6E1F4;
 Tue, 26 Oct 2021 07:07:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10148"; a="253373691"
X-IronPort-AV: E=Sophos;i="5.87,182,1631602800"; d="scan'208";a="253373691"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 00:07:54 -0700
X-IronPort-AV: E=Sophos;i="5.87,182,1631602800"; d="scan'208";a="572263750"
Received: from fnygreen-mobl1.ger.corp.intel.com (HELO
 thellstr-mobl1.intel.com) ([10.249.254.182])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 00:07:52 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Cc: maarten.lankhorst@linux.intel.com, matthew.auld@intel.com,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Tue, 26 Oct 2021 09:07:41 +0200
Message-Id: <20211026070744.337554-1-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] Prepare error capture for asynchronous
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
at request submission time. It also updates the memory allocation mode to
reflect that error capture may and will happen in the dma-fence signalling
critical path, and finally takes additional measures to make sure that
the capture list and request is not disappearing from under us while
capturing. The latter may otherwise happen if a heartbeat triggered parallel
capture is running during a manual reset which retires the request.

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

Thomas Hellström (3):
  drm/i915: Introduce refcounted sg-tables
  drm/i915: Update error capture code to avoid using the current vma
    state
  drm/i915: Initial introduction of vma resources

 drivers/gpu/drm/i915/Makefile                 |   1 +
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 143 ++++++++++---
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |   4 +-
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |   3 +-
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c     |  16 +-
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c       | 188 ++++++++++-------
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   8 +-
 .../drm/i915/gt/intel_execlists_submission.c  |   2 +-
 drivers/gpu/drm/i915/i915_gpu_error.c         | 180 +++++++++++-----
 drivers/gpu/drm/i915/i915_request.c           |  63 ++++--
 drivers/gpu/drm/i915/i915_request.h           |  18 +-
 drivers/gpu/drm/i915/i915_scatterlist.c       |  62 ++++--
 drivers/gpu/drm/i915/i915_scatterlist.h       |  76 ++++++-
 drivers/gpu/drm/i915/i915_vma.c               | 192 +++++++++++++++++-
 drivers/gpu/drm/i915/i915_vma.h               |  15 +-
 drivers/gpu/drm/i915/i915_vma_snapshot.c      | 131 ++++++++++++
 drivers/gpu/drm/i915/i915_vma_snapshot.h      | 112 ++++++++++
 drivers/gpu/drm/i915/i915_vma_types.h         |   5 +
 drivers/gpu/drm/i915/intel_region_ttm.c       |  15 +-
 drivers/gpu/drm/i915/intel_region_ttm.h       |   5 +-
 drivers/gpu/drm/i915/selftests/mock_region.c  |  12 +-
 21 files changed, 1026 insertions(+), 225 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/i915_vma_snapshot.c
 create mode 100644 drivers/gpu/drm/i915/i915_vma_snapshot.h

-- 
2.31.1

