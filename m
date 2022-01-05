Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 318D0485996
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jan 2022 20:56:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69F8210E31F;
	Wed,  5 Jan 2022 19:56:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66D9210E31F
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jan 2022 19:56:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641412604; x=1672948604;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=w6PkU71tYDdByDBe5zRg4gVu9pI3dpOCDlE/dk4jHcw=;
 b=hOy1Rx8lDLFZu66sHQ6tjzot/GH7w8cI9bJoENcszWdQkXp4KYLuIZPD
 ilwQ5AXmnp9J6l/6CApVIVUwA4EBMvYjADGzATkcYJbpRwsOBBNha9Oz5
 E7PLAlxTLzgMbvfYCwNUurNW4TrRm1m2BIF80otRmv9NjVhh6xiRRbmRC
 U8M1rxeBw9ZLTgQxqlcK6q1kZZoKirQTUFPGwoy7avG7xWtaS+FiFEqjm
 CHn39uLwDB0KOUC3vZU0E2ocdariFtm5h7F0yeJgPTTQB1KAYmmaxqUuX
 8u5cxYm69UFERLyZkPcX92qiKwWsCr7k2PaAD0I+wHxLcSnwqvEQdrJjK w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="229849540"
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; d="scan'208";a="229849540"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 11:56:43 -0800
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; d="scan'208";a="472623335"
Received: from menright-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.25.244])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 11:56:41 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Jan 2022 21:56:16 +0200
Message-Id: <cover.1641411696.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/21] drm/i915: clean up i915_drv.h
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In a long overdue cleanup, split out a bunch of headers and declarations
out of i915_drv.h, and reduce includes all over the place.

I feel pretty strongly that declarations for functions in some_file.c
need to be placed in some_file.h. This does not generally seem to be the
case in gem/gt land. I create a number of such files here to place the
declarations extracted from i915_drv.h in them. I limit myself to
i915_drv.h cleanup here, and leave further cleanup for follow-up.

i915_drv.h is a painful file to deal with. Due to the massive amount of
headers it includes, and the massive amount of files it gets included
from, it basically causes the entire driver to be rebuilt whenever
almost any header gets changed in include/linux, include/drm, or i915
itself. Just build and sparse testing each commit takes eons.

This series is far from fixing everything, but it moves things forward a
few strides.


BR,
Jani.


Jani Nikula (21):
  drm/i915: split out i915_getparam.h from i915_drv.h
  drm/i915: split out i915_cmd_parser.h from i915_drv.h
  drm/i915: split out i915_gem_evict.h from i915_drv.h
  drm/i915: split out gem/i915_gem_userptr.h from i915_drv.h
  drm/i915: split out gem/i915_gem_tiling.h from i915_drv.h
  drm/i915: split out i915_gem.h declarations from i915_drv.h
  drm/i915: split out i915_gem_internal.h from i915_drv.h
  drm/i915: remove leftover i915_gem_pm.h declarations from i915_drv.h
  drm/i915: split out gem/i915_gem_dmabuf.h from i915_drv.h
  drm/i915: split out gem/i915_gem_create.h from i915_drv.h
  drm/i915: split out gem/i915_gem_domain.h from i915_drv.h
  drm/i915: move i915_cache_level_str() static in i915_debugfs.c
  drm/i915: move i915_gem_vm_lookup() where it's used
  drm/i915: move i915_reset_count()/i915_reset_engine_count() out of
    i915_drv.h
  drm/i915: split out i915_file_private.h from i915_drv.h
  drm/i915: don't include drm_cache.h in i915_drv.h
  drm/i915: include shmem_fs.h only where needed
  drm/i915: include some drm headers only where needed
  drm/i915: axe lots of unnecessary includes from i915_drv.h
  drm/i915: fix drm_i915.h include grouping and sorting
  drm/i915: group drm_i915.h forward declarations together

 drivers/gpu/drm/i915/display/intel_dpt.c      |   4 +-
 drivers/gpu/drm/i915/display/intel_dsb.c      |   2 +
 drivers/gpu/drm/i915/display/intel_fb_pin.c   |   1 +
 drivers/gpu/drm/i915/display/intel_overlay.c  |   1 +
 drivers/gpu/drm/i915/gem/i915_gem_clflush.c   |   2 +
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |  17 +
 drivers/gpu/drm/i915/gem/i915_gem_create.c    |   3 +
 drivers/gpu/drm/i915/gem/i915_gem_create.h    |  17 +
 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c    |   1 +
 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.h    |  18 ++
 drivers/gpu/drm/i915/gem/i915_gem_domain.c    |   5 +-
 drivers/gpu/drm/i915/gem/i915_gem_domain.h    |  15 +
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |   3 +
 drivers/gpu/drm/i915/gem/i915_gem_internal.c  |   1 +
 drivers/gpu/drm/i915/gem/i915_gem_internal.h  |  23 ++
 drivers/gpu/drm/i915/gem/i915_gem_mman.c      |   2 +
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |   5 +
 drivers/gpu/drm/i915/gem/i915_gem_pages.c     |   2 +
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c     |   3 +
 drivers/gpu/drm/i915/gem/i915_gem_throttle.c  |   1 +
 drivers/gpu/drm/i915/gem/i915_gem_tiling.c    |   1 +
 drivers/gpu/drm/i915/gem/i915_gem_tiling.h    |  18 ++
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c       |   2 +
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c   |   1 +
 drivers/gpu/drm/i915/gem/i915_gem_userptr.h   |  14 +
 .../gpu/drm/i915/gem/selftests/huge_pages.c   |   3 +-
 .../drm/i915/gem/selftests/i915_gem_context.c |   1 +
 .../drm/i915/gem/selftests/i915_gem_mman.c    |   4 +-
 .../drm/i915/gem/selftests/igt_gem_utils.c    |   1 +
 .../gpu/drm/i915/gem/selftests/mock_context.c |   1 +
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c          |   2 +
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  14 +-
 drivers/gpu/drm/i915/gt/intel_gt.c            |   7 +-
 .../gpu/drm/i915/gt/intel_gt_buffer_pool.c    |   1 +
 drivers/gpu/drm/i915/gt/intel_gtt.c           |   1 +
 drivers/gpu/drm/i915/gt/intel_renderstate.c   |   2 +
 drivers/gpu/drm/i915/gt/intel_reset.c         |   1 +
 drivers/gpu/drm/i915/gt/intel_ring.c          |   1 +
 .../gpu/drm/i915/gt/intel_ring_submission.c   |   4 +
 drivers/gpu/drm/i915/gt/intel_timeline.c      |   5 +-
 drivers/gpu/drm/i915/gt/selftest_execlists.c  |   1 +
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c  |   2 +
 drivers/gpu/drm/i915/gt/selftest_lrc.c        |   2 +
 drivers/gpu/drm/i915/gt/selftest_migrate.c    |   2 +
 drivers/gpu/drm/i915/gt/selftest_rps.c        |   2 +
 .../gpu/drm/i915/gt/selftest_workarounds.c    |   1 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   |   2 +
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      |   2 +
 drivers/gpu/drm/i915/gvt/dmabuf.c             |   5 +
 drivers/gpu/drm/i915/i915_cmd_parser.c        |   3 +
 drivers/gpu/drm/i915/i915_cmd_parser.h        |  26 ++
 drivers/gpu/drm/i915/i915_debugfs.c           |  11 +
 drivers/gpu/drm/i915/i915_driver.c            |   4 +
 drivers/gpu/drm/i915/i915_drv.h               | 297 ++----------------
 drivers/gpu/drm/i915/i915_file_private.h      | 108 +++++++
 drivers/gpu/drm/i915/i915_gem.c               |   8 +-
 drivers/gpu/drm/i915/i915_gem.h               |  36 +++
 drivers/gpu/drm/i915/i915_gem_evict.c         |   1 +
 drivers/gpu/drm/i915/i915_gem_evict.h         |  24 ++
 drivers/gpu/drm/i915/i915_gem_gtt.c           |   1 +
 drivers/gpu/drm/i915/i915_getparam.c          |   2 +
 drivers/gpu/drm/i915/i915_getparam.h          |  15 +
 drivers/gpu/drm/i915/i915_gpu_error.c         |   1 +
 drivers/gpu/drm/i915/i915_gpu_error.h         |  11 +
 drivers/gpu/drm/i915/i915_ioc32.c             |   1 +
 drivers/gpu/drm/i915/i915_pci.c               |   1 +
 drivers/gpu/drm/i915/i915_perf.c              |   2 +
 drivers/gpu/drm/i915/i915_vma.c               |   3 +-
 drivers/gpu/drm/i915/selftests/i915_gem.c     |   3 +-
 .../gpu/drm/i915/selftests/i915_gem_evict.c   |   1 +
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c |   1 +
 drivers/gpu/drm/i915/selftests/i915_request.c |   1 +
 drivers/gpu/drm/i915/selftests/i915_vma.c     |   1 +
 drivers/gpu/drm/i915/selftests/igt_spinner.c  |   1 +
 74 files changed, 498 insertions(+), 294 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_create.h
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.h
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_domain.h
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_internal.h
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_tiling.h
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_userptr.h
 create mode 100644 drivers/gpu/drm/i915/i915_cmd_parser.h
 create mode 100644 drivers/gpu/drm/i915/i915_file_private.h
 create mode 100644 drivers/gpu/drm/i915/i915_gem_evict.h
 create mode 100644 drivers/gpu/drm/i915/i915_getparam.h

-- 
2.30.2

