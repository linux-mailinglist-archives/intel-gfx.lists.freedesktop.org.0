Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCD5C70F1D0
	for <lists+intel-gfx@lfdr.de>; Wed, 24 May 2023 11:09:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C083210E5C4;
	Wed, 24 May 2023 09:09:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1717D10E5BD
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 May 2023 09:09:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684919362; x=1716455362;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cPMFMmBJGg7Y5ArcctLZJRGS9F+Hk9KlxCIAN5aAgk8=;
 b=HaSuoJo5SIYagB6+LeJco6cZhgGDtvNgCsMQvie1018gVRYAMGJzNtN7
 k4bRijZwdjn+DWEuVfcTvMzeulxxuU+MWFCJyNsmkFtoIy8Ts8q2YqImL
 DYQDpyW3ZkhRA6tFtjst0Ck0o8sc2EjH9Ujot05rz0D5YBI3tBrkWI3cP
 29Z0Ju9fVVCUJFe3sp2HM4MQ6E2iHAi8iQXS+yZ7gCw+Jg5sez4KG+Hql
 EuUgqY7+F09W2WFFCjLoOIsPa2SnRSfdP+6xFnDQSHXx4m+LVGXNlvKD9
 CwyS91BRguQOK3xXr4vtb/l7YIgDukxkHKOj4kRhssl3+Pso+YsCtYzxF Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="439862994"
X-IronPort-AV: E=Sophos;i="6.00,188,1681196400"; d="scan'208";a="439862994"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2023 02:09:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="681821449"
X-IronPort-AV: E=Sophos;i="6.00,188,1681196400"; d="scan'208";a="681821449"
Received: from johnbyrn-mobl1.ger.corp.intel.com (HELO
 hazy.ger.corp.intel.com) ([10.249.39.102])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2023 02:05:41 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 May 2023 12:05:18 +0300
Message-Id: <20230524090521.596399-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/3] drm/i915: implement internal workqueues
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

In v2:
   * Removed per-engine workqueue and wakeref-specific queue;
   * Renamed the workqueue name from "i915-wq" to "unordered_wq";
   * Added comment about when the new workqueue should be used;
   * Changed wakeref structs to store i915 instead of rpm;

As discussed, we can either take Tetsuo's implementation first, which
uses a module-global workqueue, and then my series on top of that, to
change the implementation to per-device workqueues, or apply my series
directly.  And a third option would be to keep the workqueue as
module-global.  I'm fine with any of this options.  It's up to the
maintainers to decide which one to take.

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
 drivers/gpu/drm/i915/i915_driver.c            | 11 +++++++++
 drivers/gpu/drm/i915/i915_drv.h               |  9 +++++++-
 drivers/gpu/drm/i915/i915_request.c           |  2 +-
 drivers/gpu/drm/i915/intel_runtime_pm.c       |  2 +-
 drivers/gpu/drm/i915/intel_wakeref.c          | 22 ++++++++++--------
 drivers/gpu/drm/i915/intel_wakeref.h          | 12 +++++-----
 .../gpu/drm/i915/selftests/i915_sw_fence.c    | 16 ++++++++++---
 29 files changed, 132 insertions(+), 78 deletions(-)

-- 
2.39.2

