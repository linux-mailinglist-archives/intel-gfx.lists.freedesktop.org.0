Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76DFE48C03D
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jan 2022 09:51:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE17F112E2E;
	Wed, 12 Jan 2022 08:51:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B402112E2E
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jan 2022 08:51:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641977495; x=1673513495;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UuV0z5Y7qAfwudoEA166oln1N/opz427yiH0fNsLaJI=;
 b=MAO+W/xpP8ajM473MrGXzVPy3JzjQcOHmcOpFezh6o1U2Er6usNekuUx
 Uph+3hrCujPv3qlujJVu1DOBfKJWexTOc5ZYtIprNB0xVJ9CyFMP0B4lR
 i8UFf/64Aw4lcOKwqiv7pwI5CbZLjJc87F16OgBqOuUykBKHnUGtOxNRo
 y+o7QnnpqdMG0JzIc4zWXes+7ZCybAIt/iUk24Q1Oe7TvYhi+9/KwCj7Q
 ZvE/afUMbApzpNs4wpymFAVbvTHNMi1JaexTMsivd2kqIJO7NNfyAsTnV
 XOzSlO8UQ92q3RaqLENU4KRbRTddXg0Kl/c3Qe7bB6k9JiP4afJnGhIGo A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10224"; a="223672974"
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="223672974"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 00:51:34 -0800
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="474841543"
Received: from pmasonx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.13.224])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 00:51:33 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Jan 2022 10:51:23 +0200
Message-Id: <cover.1641977368.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/5] drm/i915: clean up i915_drv.h, part 2,
 take 2...
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

The previous attempt [1] started conflicting between drm-intel-next and
drm-intel-gt-next, so I dropped a patch to move things forward smoothly.

[1] https://patchwork.freedesktop.org/series/98691/

Jani Nikula (5):
  drm/i915: split out i915_gem_internal.h from i915_drv.h
  drm/i915: remove leftover i915_gem_pm.h declarations from i915_drv.h
  drm/i915: split out gem/i915_gem_dmabuf.h from i915_drv.h
  drm/i915: split out gem/i915_gem_create.h from i915_drv.h
  drm/i915: split out gem/i915_gem_domain.h from i915_drv.h

 drivers/gpu/drm/i915/display/intel_dpt.c      |  4 +++-
 drivers/gpu/drm/i915/display/intel_dsb.c      |  2 ++
 drivers/gpu/drm/i915/display/intel_fb_pin.c   |  1 +
 drivers/gpu/drm/i915/display/intel_overlay.c  |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_create.c    |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_create.h    | 17 +++++++++++++
 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c    |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.h    | 18 ++++++++++++++
 drivers/gpu/drm/i915/gem/i915_gem_domain.c    |  5 ++--
 drivers/gpu/drm/i915/gem/i915_gem_domain.h    | 15 ++++++++++++
 drivers/gpu/drm/i915/gem/i915_gem_internal.c  |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_internal.h  | 23 ++++++++++++++++++
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |  2 ++
 .../gpu/drm/i915/gem/selftests/huge_pages.c   |  3 ++-
 .../drm/i915/gem/selftests/i915_gem_context.c |  1 +
 .../drm/i915/gem/selftests/i915_gem_mman.c    |  4 +++-
 .../drm/i915/gem/selftests/igt_gem_utils.c    |  1 +
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c          |  2 ++
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  1 +
 drivers/gpu/drm/i915/gt/intel_gt.c            |  7 +++---
 .../gpu/drm/i915/gt/intel_gt_buffer_pool.c    |  1 +
 drivers/gpu/drm/i915/gt/intel_gtt.c           |  1 +
 drivers/gpu/drm/i915/gt/intel_renderstate.c   |  2 ++
 drivers/gpu/drm/i915/gt/intel_ring.c          |  1 +
 .../gpu/drm/i915/gt/intel_ring_submission.c   |  2 ++
 drivers/gpu/drm/i915/gt/intel_timeline.c      |  3 ++-
 drivers/gpu/drm/i915/gt/selftest_execlists.c  |  1 +
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c  |  1 +
 drivers/gpu/drm/i915/gt/selftest_lrc.c        |  2 ++
 drivers/gpu/drm/i915/gt/selftest_migrate.c    |  2 ++
 drivers/gpu/drm/i915/gt/selftest_rps.c        |  2 ++
 .../gpu/drm/i915/gt/selftest_workarounds.c    |  1 +
 drivers/gpu/drm/i915/gvt/dmabuf.c             |  2 ++
 drivers/gpu/drm/i915/i915_driver.c            |  2 ++
 drivers/gpu/drm/i915/i915_drv.h               | 24 -------------------
 drivers/gpu/drm/i915/i915_gem.c               |  1 +
 drivers/gpu/drm/i915/i915_perf.c              |  1 +
 drivers/gpu/drm/i915/selftests/i915_gem.c     |  3 ++-
 .../gpu/drm/i915/selftests/i915_gem_evict.c   |  1 +
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c |  1 +
 drivers/gpu/drm/i915/selftests/i915_request.c |  1 +
 drivers/gpu/drm/i915/selftests/i915_vma.c     |  1 +
 drivers/gpu/drm/i915/selftests/igt_spinner.c  |  1 +
 43 files changed, 133 insertions(+), 34 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_create.h
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.h
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_domain.h
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_internal.h

-- 
2.30.2

