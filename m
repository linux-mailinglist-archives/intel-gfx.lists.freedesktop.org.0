Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5E720A949
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2020 01:42:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7119F6E857;
	Thu, 25 Jun 2020 23:42:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3A156E857
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 23:42:17 +0000 (UTC)
IronPort-SDR: pf1Jj/aH0U1ImjV7U7Rd2xAf5TDXQz4zrGPLaRE0dp/+sXchKyrDhY6Q9WvgvXhEthNYQzqFZY
 1fjMKHAGmldQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9663"; a="143347183"
X-IronPort-AV: E=Sophos;i="5.75,280,1589266800"; d="scan'208";a="143347183"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2020 16:42:17 -0700
IronPort-SDR: r3pJOh2/cWQR6il5j7kLCs6XbyRTmLD8ph/TDumzRbJT282iOtGy9inMHBwfE+MYHb0pVuE3ef
 B8pR6Ivi8o6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,280,1589266800"; d="scan'208";a="299468339"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga007.jf.intel.com with ESMTP; 25 Jun 2020 16:42:17 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Jun 2020 16:42:05 -0700
Message-Id: <20200625234212.22811-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/7] Move some device capabilities under intel_gt
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Continuing our grouping of GT-related code under intel_gt, this series
moves some of the runtime-detected device capabilities. In particular,
the engine_mask and the sseu_info are placed under the gt structure,
inside a newly added struct intel_gt_info.
Error capture and info print at the intel_gt_info level have also been
added.

Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Andi Shyti <andi.shyti@intel.com>
Cc: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>

Daniele Ceraolo Spurio (6):
  drm/i915: Convert device_info to uncore/de_read
  drm/i915: Use the gt in HAS_ENGINE
  drm/i915: Move engine-related mmio init to engines_init_mmio
  drm/i915: Move the engine mask to intel_gt_info
  drm/i915: Introduce gt_init_mmio
  drm/i915/sseu: Move sseu detection and dump to intel_sseu

Venkata Sandeep Dhanalakota (1):
  drm/i915/sseu: Move sseu_info under gt_info

 drivers/gpu/drm/i915/gem/i915_gem_context.c   |   7 +-
 drivers/gpu/drm/i915/gem/i915_gem_context.h   |   2 +-
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |   3 +-
 .../drm/i915/gem/selftests/i915_gem_context.c |   5 +-
 drivers/gpu/drm/i915/gt/intel_context_sseu.c  |   2 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  87 ++-
 drivers/gpu/drm/i915/gt/intel_gt.c            |  16 +
 drivers/gpu/drm/i915/gt/intel_gt.h            |   5 +
 drivers/gpu/drm/i915/gt/intel_gt_irq.c        |   2 +-
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |  11 +
 drivers/gpu/drm/i915/gt/intel_lrc.c           |   2 +-
 drivers/gpu/drm/i915/gt/intel_reset.c         |   6 +-
 .../gpu/drm/i915/gt/intel_ring_submission.c   |   2 +-
 drivers/gpu/drm/i915/gt/intel_rps.c           |   3 +-
 drivers/gpu/drm/i915/gt/intel_sseu.c          | 592 +++++++++++++++-
 drivers/gpu/drm/i915/gt/intel_sseu.h          |  10 +-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |   8 +-
 drivers/gpu/drm/i915/gt/selftest_lrc.c        |   8 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c    |  10 +-
 drivers/gpu/drm/i915/gvt/handlers.c           |   4 +-
 drivers/gpu/drm/i915/gvt/interrupt.c          |   2 +-
 drivers/gpu/drm/i915/gvt/mmio_context.c       |   2 +-
 drivers/gpu/drm/i915/i915_debugfs.c           |  12 +-
 drivers/gpu/drm/i915/i915_drv.c               |   9 +-
 drivers/gpu/drm/i915/i915_drv.h               |  17 +-
 drivers/gpu/drm/i915/i915_getparam.c          |   2 +-
 drivers/gpu/drm/i915/i915_gpu_error.c         |  25 +-
 drivers/gpu/drm/i915/i915_gpu_error.h         |   3 +
 drivers/gpu/drm/i915/i915_pci.c               |  42 +-
 drivers/gpu/drm/i915/i915_perf.c              |   9 +-
 drivers/gpu/drm/i915/i915_query.c             |   2 +-
 drivers/gpu/drm/i915/intel_device_info.c      | 652 +-----------------
 drivers/gpu/drm/i915/intel_device_info.h      |  14 +-
 drivers/gpu/drm/i915/intel_pm.c               |   2 +-
 drivers/gpu/drm/i915/intel_uncore.c           |  16 +-
 drivers/gpu/drm/i915/intel_uncore.h           |   4 +-
 drivers/gpu/drm/i915/selftests/i915_request.c |   2 +-
 .../gpu/drm/i915/selftests/mock_gem_device.c  |   3 +-
 38 files changed, 835 insertions(+), 768 deletions(-)

-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
