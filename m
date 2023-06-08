Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F3AF3728239
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 16:06:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F28D210E196;
	Thu,  8 Jun 2023 14:06:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9D7610E0B1
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 14:06:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686233211; x=1717769211;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FO4DqDw8s4s9WWr1LX9Qx3qV8Npbk1XblwBbRpDKJzs=;
 b=AZhhVIyQJHO6SOfXxJnSgmm4LIvl5I8tZvyPT5fhEd2Vx/o6GnLASVcf
 Dgibv0dhEKtrSxRWSPv2NITcLXZnW2OPpbUnnhpZaPni+IgeDxFySmlw4
 CWNrunNL7Xt37aQhJdDzi8xn8ibuSMmRGGKklJxJ0yAXLY4f1O6rYo1kH
 1XyD+GRjXXE10MYBh27S8gs2Yz4kIJkTIUrubpC2k8RsLGVDAB7iqbUqh
 ZZLsk6AeMJBfvNX5Odarak2Z6SxY9QpdYpZebDGMQiJCOxopsvbDfR0H8
 HaIUYJWlZXsMIZrVjyg/i5FEdxh8+BhlcqDvQY5UeijQUiedoeJX8C0md A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="423176070"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="423176070"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 06:35:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="660379078"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="660379078"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 06:35:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Jun 2023 16:35:43 +0300
Message-Id: <cover.1686231190.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 0/3] drm/i915: implement internal workqueues
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
Cc: jani.nikula@intel.com, luciano.coelho@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is v6 of [1], creating i915->unordered_wq also for mock devices.

BR,
Jani.

[1] https://patchwork.freedesktop.org/series/118947/


Luca Coelho (3):
  drm/i915: use pointer to i915 instead of rpm in wakeref
  drm/i915: add a dedicated workqueue inside drm_i915_private
  drm/i915/selftests: add local workqueue for SW fence selftest

 drivers/gpu/drm/i915/display/intel_display.c  |  5 ++--
 .../drm/i915/display/intel_display_driver.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_dmc.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
 .../drm/i915/display/intel_dp_link_training.c |  3 ++-
 drivers/gpu/drm/i915/display/intel_drrs.c     |  4 +++-
 drivers/gpu/drm/i915/display/intel_fbc.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_fbdev.c    |  3 ++-
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 23 +++++++++++--------
 drivers/gpu/drm/i915/display/intel_hotplug.c  | 18 ++++++++++-----
 drivers/gpu/drm/i915/display/intel_opregion.c |  3 ++-
 drivers/gpu/drm/i915/display/intel_pps.c      |  4 +++-
 drivers/gpu/drm/i915/display/intel_psr.c      |  8 ++++---
 drivers/gpu/drm/i915/gt/intel_engine_pm.c     |  4 +---
 .../drm/i915/gt/intel_execlists_submission.c  |  5 ++--
 .../gpu/drm/i915/gt/intel_gt_buffer_pool.c    | 10 ++++----
 drivers/gpu/drm/i915/gt/intel_gt_irq.c        |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm.c         |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt_requests.c   | 10 ++++----
 drivers/gpu/drm/i915/gt/intel_reset.c         |  2 +-
 drivers/gpu/drm/i915/gt/intel_rps.c           | 20 ++++++++--------
 drivers/gpu/drm/i915/gt/selftest_engine_cs.c  |  2 +-
 drivers/gpu/drm/i915/i915_driver.c            | 13 +++++++++++
 drivers/gpu/drm/i915/i915_drv.h               | 10 ++++++++
 drivers/gpu/drm/i915/i915_request.c           |  2 +-
 drivers/gpu/drm/i915/intel_runtime_pm.c       |  2 +-
 drivers/gpu/drm/i915/intel_wakeref.c          | 22 ++++++++++--------
 drivers/gpu/drm/i915/intel_wakeref.h          | 12 +++++-----
 .../gpu/drm/i915/selftests/i915_sw_fence.c    | 16 ++++++++++---
 .../gpu/drm/i915/selftests/mock_gem_device.c  |  7 ++++++
 30 files changed, 143 insertions(+), 77 deletions(-)

-- 
2.39.2

