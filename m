Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5EB0B490DF
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 16:11:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65F9010E525;
	Mon,  8 Sep 2025 14:11:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZsFjXWpN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2730D10E525
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Sep 2025 14:11:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757340715; x=1788876715;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mtHSX7A0AwLgLx78wwP9OgEzX0iuRU+3vyOaFZikZrs=;
 b=ZsFjXWpNzWsthl3ckmtfOWODfHB8V+JXRpcJl8uJOW2ZN8iCoIuNGUqM
 UTzJR3Jh8y32ZvxB4bdUY9MCEuNI/TmWhQ0nee8MllA3y6FLMUo5/mrp0
 yjJK5VVeQ6BxijcX8TwTGNf6qKj2i54NCmMTA4301+Mc7AZtblEDYz6uI
 xRAG4LCc74w+fsmRO0lwiXGnQn4mGAhtAgJE+yCuFnl8XUATZjTla61qC
 fWcjzcHql53NWtrQ3vR0eoGV59LWDMCcc3NBdfStNN8yxbe1Fr1kn5QF5
 PrGuwv+y2PPrJfEF9u1eW7qyWXedULFQ+5EE2tRO1PCpJaNU2ES3vljgS A==;
X-CSE-ConnectionGUID: SYFHoB4qRmWPxJGcLh5buQ==
X-CSE-MsgGUID: roIC5gcjRGmWlfe6maEbKw==
X-IronPort-AV: E=McAfee;i="6800,10657,11547"; a="85044649"
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="85044649"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 07:11:54 -0700
X-CSE-ConnectionGUID: CH5MDI67RNyC5YoEEMIlcw==
X-CSE-MsgGUID: TEZNuRgNROmqbq94S7Iypw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="171973566"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.204])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 07:11:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/5] drm/i915: clean up i915_utils.h
Date: Mon,  8 Sep 2025 17:11:44 +0300
Message-ID: <cover.1757340520.git.jani.nikula@intel.com>
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

Split out functionality from i915_utils.h to not make it such a
catch-all header that all files depend on. The end goal is to eventually
remove the dependency on i915_utils.h from display/, but make the task
easier by chopping up i915_utils.h and reducing the dependencies on it
in core i915 first.

Whenever include lists need to be touched, group and sort them in a
uniform manner instead of doing that in separate patches.

BR,
Jani.


Jani Nikula (5):
  drm/i915: redundant i915_utils.h includes
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
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |   1 -
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |   3 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c     |   4 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   |  13 +-
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  10 +-
 drivers/gpu/drm/i915/gvt/mmio_context.c       |   6 +-
 drivers/gpu/drm/i915/i915_debugfs.c           |   3 +-
 drivers/gpu/drm/i915/i915_gem.h               |   2 -
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
 38 files changed, 345 insertions(+), 275 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/i915_list_util.h
 create mode 100644 drivers/gpu/drm/i915/i915_ptr_util.h
 create mode 100644 drivers/gpu/drm/i915/i915_timer_util.c
 create mode 100644 drivers/gpu/drm/i915/i915_timer_util.h
 create mode 100644 drivers/gpu/drm/i915/i915_wait_util.h

-- 
2.47.3

