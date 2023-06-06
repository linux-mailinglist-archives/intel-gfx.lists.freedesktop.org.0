Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E737248F8
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 18:23:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A41910E379;
	Tue,  6 Jun 2023 16:23:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB92410E379
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jun 2023 16:23:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686068632; x=1717604632;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bTe3Pg5dV04PYFCIpAL+XT/8jFwhZQfSf71hUs0mJ7k=;
 b=hTqDpEAKtL1dMj1lKRXD9gUHC4rVyQzQRtD/Ue6p0re/YRfvC1eWH8dD
 t5pe3u2fWu9HIq6Ui8FUnZVxqFnENJc8pJLcKbXCgu01E7JTpLY/7WoY8
 fSkFK6Ds273+vH+RGVZn3NzOuIsZVEBFXfNgpIpvrttLu1phJ4tFhJ/Ze
 EGkroSxax6Cpi2NyR9rNDd7CGq5CGyTb5Gh1ZFTsXTxiZdgHBNAx+zXuG
 Ybzv86sWPjiIQMHUdSNx3oI4v9n5CW9REleLRCUQUU94s3inpGh8+w+Fi
 onIVJDVEbLBGD0nT2/anItk9Fr67yB+lOxTPB+n+AjjYUF5OUqsjBAVDo g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="355582688"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="355582688"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 09:23:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="833302076"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="833302076"
Received: from tburszty-mobl2.ger.corp.intel.com (HELO
 hazy.ger.corp.intel.com) ([10.251.210.244])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 09:23:49 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Jun 2023 19:23:29 +0300
Message-Id: <20230606162332.312409-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 0/3] drm/i915: implement internal workqueues
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
Cc: rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

This series implements internal workqueues in the i915 driver in order
to avoid using the system queue.  We add one generic workqueue in the
drm_i915_private structure, one specific for wake references and one
in a self-test.

This is based on Tetsuo's work[1] and is required to get rid of the
flush_scheduled_work() usage.

As discussed, we can either take Tetsuo's implementation first, which
uses a module-global workqueue, and then my series on top of that, to
change the implementation to per-device workqueues, or apply my series
directly.  And a third option would be to keep the workqueue as
module-global.  I'm fine with any of this options.  It's up to the
maintainers to decide which one to take.

In v2:
   * Removed per-engine workqueue and wakeref-specific queue;
   * Renamed the workqueue name from "i915-wq" to "unordered_wq";
   * Added comment about when the new workqueue should be used;
   * Changed wakeref structs to store i915 instead of rpm;

In v3:
   * Fixed queue to destroy in the init error path;
   * Improved the new queue's description a bit;
   * Removed stray empty-line removal;

In v4:
   * Fixed the queue used in __intel_wakeref_put_last(), we were
     accidentally using the ordered workqueue.  Thanks, Tvrtko!

Please review.

[1] https://patchwork.freedesktop.org/series/114608/

Cheers,
Luca.


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
 29 files changed, 136 insertions(+), 77 deletions(-)

-- 
2.39.2

