Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57417489C7D
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jan 2022 16:45:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F37D10FB93;
	Mon, 10 Jan 2022 15:45:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBF6810FB93
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jan 2022 15:45:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641829550; x=1673365550;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3XUorWrzEJTMMfTNZ+17P0Bm4mVUKJm0uYexhzU2kkA=;
 b=HphcHcuRP0DcUxilfkQ/nV3BQd8a9mrMRJz9Kg9z+Xe4i5kPWQJYvcch
 Vz2wqzIWxK6TdrcQy9wDt48JYz4/2/6VddXi+ogQDfQHSj6PzQfFNI8mA
 1UmUtdedshBs3rr6pxDDQqOPdkm9s5mapYWaHebYbSGJC/2Cwx6Vz39Uk
 9yRGnjSb5DO9FsOI4Icmuppq/UQrfAN+Hhe85oce+Qs4kaPoEyNiHjfZ/
 GhuQlX6ve3fEf1GfzcJi6xvTzn3bTGgHUGsqukVObEg+bkmZuufKeGt5S
 DEPbqt10FA5ieC2dVzSwY4JzfmuJrgWFf2OAHvlBjFZ+CzCfoLC5tUNHm Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10222"; a="230592316"
X-IronPort-AV: E=Sophos;i="5.88,277,1635231600"; d="scan'208";a="230592316"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 07:45:49 -0800
X-IronPort-AV: E=Sophos;i="5.88,277,1635231600"; d="scan'208";a="622711272"
Received: from bdoyle2-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.26.184])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 07:45:47 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jan 2022 17:45:36 +0200
Message-Id: <cover.1641829428.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/6] drm/i915: clean up i915_drv.h, part 2
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

Next six patches from [1], chopping it up a bit.

BR,
Jani.

[1] https://patchwork.freedesktop.org/series/98515/


Jani Nikula (6):
  drm/i915: split out i915_gem.h declarations from i915_drv.h
  drm/i915: split out i915_gem_internal.h from i915_drv.h
  drm/i915: remove leftover i915_gem_pm.h declarations from i915_drv.h
  drm/i915: split out gem/i915_gem_dmabuf.h from i915_drv.h
  drm/i915: split out gem/i915_gem_create.h from i915_drv.h
  drm/i915: split out gem/i915_gem_domain.h from i915_drv.h

 drivers/gpu/drm/i915/display/intel_dpt.c      |  4 +-
 drivers/gpu/drm/i915/display/intel_dsb.c      |  2 +
 drivers/gpu/drm/i915/display/intel_fb_pin.c   |  1 +
 drivers/gpu/drm/i915/display/intel_overlay.c  |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_create.c    |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_create.h    | 17 ++++++
 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c    |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.h    | 18 ++++++
 drivers/gpu/drm/i915/gem/i915_gem_domain.c    |  5 +-
 drivers/gpu/drm/i915/gem/i915_gem_domain.h    | 15 +++++
 drivers/gpu/drm/i915/gem/i915_gem_internal.c  |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_internal.h  | 23 ++++++++
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |  2 +
 .../gpu/drm/i915/gem/selftests/huge_pages.c   |  3 +-
 .../drm/i915/gem/selftests/i915_gem_context.c |  1 +
 .../drm/i915/gem/selftests/i915_gem_mman.c    |  4 +-
 .../drm/i915/gem/selftests/igt_gem_utils.c    |  1 +
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c          |  2 +
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  1 +
 drivers/gpu/drm/i915/gt/intel_gt.c            |  7 ++-
 .../gpu/drm/i915/gt/intel_gt_buffer_pool.c    |  1 +
 drivers/gpu/drm/i915/gt/intel_gtt.c           |  1 +
 drivers/gpu/drm/i915/gt/intel_renderstate.c   |  2 +
 drivers/gpu/drm/i915/gt/intel_ring.c          |  1 +
 .../gpu/drm/i915/gt/intel_ring_submission.c   |  2 +
 drivers/gpu/drm/i915/gt/intel_timeline.c      |  3 +-
 drivers/gpu/drm/i915/gt/selftest_execlists.c  |  1 +
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c  |  1 +
 drivers/gpu/drm/i915/gt/selftest_lrc.c        |  2 +
 drivers/gpu/drm/i915/gt/selftest_migrate.c    |  2 +
 drivers/gpu/drm/i915/gt/selftest_rps.c        |  2 +
 .../gpu/drm/i915/gt/selftest_workarounds.c    |  1 +
 drivers/gpu/drm/i915/gvt/dmabuf.c             |  2 +
 drivers/gpu/drm/i915/i915_driver.c            |  2 +
 drivers/gpu/drm/i915/i915_drv.h               | 57 -------------------
 drivers/gpu/drm/i915/i915_gem.c               |  1 +
 drivers/gpu/drm/i915/i915_gem.h               | 36 ++++++++++++
 drivers/gpu/drm/i915/i915_perf.c              |  1 +
 drivers/gpu/drm/i915/selftests/i915_gem.c     |  3 +-
 .../gpu/drm/i915/selftests/i915_gem_evict.c   |  1 +
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c |  1 +
 drivers/gpu/drm/i915/selftests/i915_request.c |  1 +
 drivers/gpu/drm/i915/selftests/i915_vma.c     |  1 +
 drivers/gpu/drm/i915/selftests/igt_spinner.c  |  1 +
 44 files changed, 169 insertions(+), 67 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_create.h
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.h
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_domain.h
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_internal.h

-- 
2.30.2

