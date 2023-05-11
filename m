Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C2F56FEDCA
	for <lists+intel-gfx@lfdr.de>; Thu, 11 May 2023 10:20:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3B8210E240;
	Thu, 11 May 2023 08:20:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DD7510E21D
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 May 2023 08:20:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683793231; x=1715329231;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PepCEQiuQDfd66GOEuevA7drbPGHa5LZrZ22pz9VTx4=;
 b=fLY33q7BiafNf0wVX286/u0QkQKdSU7xDHaJpNoI2aDl1E99JwzPYYdB
 lRrLA7xP1mcIjuHWIhHszJu0Z5xM3V/+g9gquaNAq1H9h8OV4KuDHQ/34
 RxqUh5T6+dbo9akMXOCSYnI/KaSC00D1/u+Pduybt1vLDVs8trUhYopbc
 IFgIPH11wGarfbMKDTnEkaAC38Y3I5sgNfnlQ6NAdpKv2iXhWerRqGREd
 i/SOV1Ni8c0HS0LtY3VGxDGNOyBI0v4py9aFwONEQ7zP5yUjUwAF9RIbJ
 dASLwCZr7TheZMxKUGBTsNbu/JXnYx80YijWJQSH1HwCijnMfFGD0gn8o Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="350465841"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="350465841"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 01:20:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="699624927"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="699624927"
Received: from okozlyk-mobl.ger.corp.intel.com (HELO hazy.ger.corp.intel.com)
 ([10.251.218.243])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 01:20:29 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 May 2023 11:20:10 +0300
Message-Id: <20230511082013.1313484-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] drm/i915: implement internal workqueues
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

Hi,

This series implements internal workqueues in the i915 driver in order
to avoid using the system queue.  We add one generic workqueue in the
drm_i915_private structure, one specific for wake references and one
in a self-test.

This is based on Tetsuo's work[1] and is required to get rid of the
flush_scheduled_work() usage.

Please review.

[1] https://patchwork.freedesktop.org/series/114608/

Cheers,
Luca.


Luca Coelho (3):
  drm/i915: add a dedicated workqueue inside drm_i915_private
  drm/i915/gt: create workqueue dedicated to wake references
  drm/i915/selftests: add local workqueue for SW fence selftest

 drivers/gpu/drm/i915/display/intel_display.c  |  5 ++--
 .../drm/i915/display/intel_display_driver.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_dmc.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
 .../drm/i915/display/intel_dp_link_training.c |  5 ++--
 drivers/gpu/drm/i915/display/intel_drrs.c     |  4 ++-
 drivers/gpu/drm/i915/display/intel_fbc.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_fbdev.c    |  3 ++-
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 23 ++++++++++-------
 drivers/gpu/drm/i915/display/intel_hotplug.c  | 18 ++++++++-----
 drivers/gpu/drm/i915/display/intel_opregion.c |  3 ++-
 drivers/gpu/drm/i915/display/intel_pps.c      |  4 ++-
 drivers/gpu/drm/i915/display/intel_psr.c      |  8 +++---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  7 +++++-
 drivers/gpu/drm/i915/gt/intel_engine_pm.c     | 15 +++++++++--
 drivers/gpu/drm/i915/gt/intel_engine_pm.h     |  3 ++-
 .../drm/i915/gt/intel_execlists_submission.c  |  5 ++--
 .../gpu/drm/i915/gt/intel_gt_buffer_pool.c    | 10 +++++---
 drivers/gpu/drm/i915/gt/intel_gt_irq.c        |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt_requests.c   | 10 ++++----
 drivers/gpu/drm/i915/gt/intel_reset.c         |  2 +-
 drivers/gpu/drm/i915/gt/intel_rps.c           | 20 ++++++++-------
 drivers/gpu/drm/i915/gt/mock_engine.c         |  8 +++++-
 drivers/gpu/drm/i915/gt/selftest_engine_cs.c  |  2 +-
 drivers/gpu/drm/i915/i915_driver.c            |  7 ++++++
 drivers/gpu/drm/i915/i915_drv.h               |  3 ++-
 drivers/gpu/drm/i915/i915_request.c           |  2 +-
 drivers/gpu/drm/i915/intel_wakeref.c          | 21 ++++++++++++----
 drivers/gpu/drm/i915/intel_wakeref.h          | 25 ++++++++++++-------
 .../gpu/drm/i915/selftests/i915_sw_fence.c    | 16 +++++++++---
 30 files changed, 162 insertions(+), 77 deletions(-)

-- 
2.39.2

