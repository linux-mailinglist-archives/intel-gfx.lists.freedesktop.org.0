Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F87B52CDE
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Sep 2025 11:17:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A56D10EA62;
	Thu, 11 Sep 2025 09:17:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jPh6ddCV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C408210EA5F
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Sep 2025 09:17:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757582266; x=1789118266;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=L2iQi5ZHxXHeLU6+j0RvcZ+o6e+EvBXE0Gwj4ElBjxU=;
 b=jPh6ddCVd6xoiUsEQ4UwBW7OKbzhIEKhdVm56trGJ4Wn2HLGqw8CrC/y
 kGixIdnGiall6M2tgrhEDWFr5Wqneqx/+Hr6Ks4NaLX34tUBT/odyYuy+
 6m/OWQ8/MtI7Od1ctSie7t9//Guls6BEN7ptRAie22bXc2IRixPJk1C/b
 z24xWFX9pcQpEr6ccOW2b9CjXUAMe5yY9deVLT4lcKs50NSczjmPEOWLO
 ObD0P19f7JQ91/SfDSQTFQDhqLFWkuzEkSS0WvC9Vl5MHQAiYSbbqVB3y
 4VMqfBGj1hj2QkiSHTn5sbdLN6AlSB1yfd1FQmpuGmzZU/FaBBDIFJP/X Q==;
X-CSE-ConnectionGUID: OsY4KICUQIuxwFX9yj6WZA==
X-CSE-MsgGUID: TB+DbjB+RQSI/E5yteQAoA==
X-IronPort-AV: E=McAfee;i="6800,10657,11549"; a="47480497"
X-IronPort-AV: E=Sophos;i="6.18,256,1751266800"; d="scan'208";a="47480497"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2025 02:17:45 -0700
X-CSE-ConnectionGUID: vNrztT7BSNCX1uFzx/yK9Q==
X-CSE-MsgGUID: PEJGmwfjRr6os1XmSwJJrw==
X-ExtLoop1: 1
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.136])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2025 02:17:44 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [CI 0/4] drm/i915: clean up i915_utils.h
Date: Thu, 11 Sep 2025 12:17:36 +0300
Message-ID: <cover.1757582214.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

[1] for CI with patch 1 dropped.



[1] https://lore.kernel.org/r/cover.1757340520.git.jani.nikula@intel.com


Jani Nikula (4):
  drm/i915: split out i915_ptr_util.h
  drm/i915: split out i915_timer_util.[ch]
  drm/i915: split out i915_list_util.h
  drm/i915: split out i915_wait_util.h

 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/gt/intel_context_types.h |   1 -
 .../drm/i915/gt/intel_execlists_submission.c  |   6 +-
 .../gpu/drm/i915/gt/intel_gt_buffer_pool.c    |   1 +
 drivers/gpu/drm/i915/gt/intel_gt_mcr.c        |   1 +
 drivers/gpu/drm/i915/gt/intel_reset.c         |   7 +-
 .../gpu/drm/i915/gt/intel_ring_submission.c   |   7 +-
 drivers/gpu/drm/i915/gt/intel_rps.c           |   2 +
 drivers/gpu/drm/i915/gt/intel_timeline.h      |   1 +
 drivers/gpu/drm/i915/gt/selftest_tlb.c        |   6 +-
 drivers/gpu/drm/i915/gt/sysfs_engines.c       |   1 +
 drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c  |   6 +-
 .../i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c |   2 +
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        |   8 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |   3 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c     |   4 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   |  13 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  10 +-
 drivers/gpu/drm/i915/gvt/mmio_context.c       |   6 +-
 drivers/gpu/drm/i915/i915_debugfs.c           |   3 +-
 drivers/gpu/drm/i915/i915_list_util.h         |  23 +++
 drivers/gpu/drm/i915/i915_ptr_util.h          |  66 ++++++
 drivers/gpu/drm/i915/i915_request.h           |   5 +-
 drivers/gpu/drm/i915/i915_timer_util.c        |  36 ++++
 drivers/gpu/drm/i915/i915_timer_util.h        |  23 +++
 drivers/gpu/drm/i915/i915_utils.c             |  30 ---
 drivers/gpu/drm/i915/i915_utils.h             | 191 ------------------
 drivers/gpu/drm/i915/i915_vma.h               |   6 +-
 drivers/gpu/drm/i915/i915_wait_util.h         | 119 +++++++++++
 drivers/gpu/drm/i915/intel_pcode.c            |   1 +
 drivers/gpu/drm/i915/intel_uncore.c           |   7 +-
 drivers/gpu/drm/i915/pxp/intel_pxp.c          |   4 +-
 drivers/gpu/drm/i915/selftests/i915_request.c |   5 +-
 .../gpu/drm/i915/selftests/i915_selftest.c    |   2 +-
 drivers/gpu/drm/i915/selftests/igt_spinner.c  |   5 +-
 drivers/gpu/drm/i915/vlv_suspend.c            |   5 +-
 36 files changed, 345 insertions(+), 272 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/i915_list_util.h
 create mode 100644 drivers/gpu/drm/i915/i915_ptr_util.h
 create mode 100644 drivers/gpu/drm/i915/i915_timer_util.c
 create mode 100644 drivers/gpu/drm/i915/i915_timer_util.h
 create mode 100644 drivers/gpu/drm/i915/i915_wait_util.h

-- 
2.47.3

