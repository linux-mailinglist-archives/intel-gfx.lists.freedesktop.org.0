Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B9642162A9
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jul 2020 01:57:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 903606E49F;
	Mon,  6 Jul 2020 23:57:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C91F86E49F
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jul 2020 23:57:55 +0000 (UTC)
IronPort-SDR: 1tt3/fiEX0hOAh6ZChH+TIVQnZJ4dmL9MrOEshdAIZ1pL0y5TcM6STsLped1skZ62wiyHuZRA0
 9CyBF481GANg==
X-IronPort-AV: E=McAfee;i="6000,8403,9674"; a="147528447"
X-IronPort-AV: E=Sophos;i="5.75,321,1589266800"; d="scan'208";a="147528447"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2020 16:57:54 -0700
IronPort-SDR: Wd1F2p3YohdScoAx4qUqqMwiMUtNFSyhMnV0Dh6cLUDVhsDxM0wgQ0tTl2MRprkGSKT6iBE6NM
 9vHH6dgLVvmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,321,1589266800"; d="scan'208";a="357606849"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga001.jf.intel.com with ESMTP; 06 Jul 2020 16:57:54 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Jul 2020 16:57:48 -0700
Message-Id: <20200706235757.1020-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/9] Move some device capabilities under
 intel_gt
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

Compared to v1 I've fixed the selftest failure, addressed the comments
from Tvrtko and moved the sseu debugfs under gt/ as suggested.

Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Andi Shyti <andi.shyti@intel.com>
Cc: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>

Daniele Ceraolo Spurio (8):
  drm/i915: Convert device_info to uncore/de_read
  drm/i915: Use the gt in HAS_ENGINE
  drm/i915: Move engine-related mmio init to engines_init_mmio
  drm/i915: Move the engine mask to intel_gt_info
  drm/i915: Introduce gt_init_mmio
  drm/i915/sseu: Move sseu detection and dump to intel_sseu
  drm/i915: gt-fy sseu debugfs
  drm/i915: Move sseu debugfs under gt/

Venkata Sandeep Dhanalakota (1):
  drm/i915/sseu: Move sseu_info under gt_info

 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |   7 +-
 drivers/gpu/drm/i915/gem/i915_gem_context.h   |   2 +-
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |   3 +-
 .../drm/i915/gem/selftests/i915_gem_context.c |   5 +-
 drivers/gpu/drm/i915/gt/debugfs_gt.c          |   2 +
 drivers/gpu/drm/i915/gt/intel_context_sseu.c  |   2 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  91 ++-
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
 drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c  | 303 ++++++++
 drivers/gpu/drm/i915/gt/intel_sseu_debugfs.h  |  17 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |   8 +-
 drivers/gpu/drm/i915/gt/selftest_lrc.c        |   8 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c    |  10 +-
 drivers/gpu/drm/i915/gvt/handlers.c           |   4 +-
 drivers/gpu/drm/i915/gvt/interrupt.c          |   2 +-
 drivers/gpu/drm/i915/gvt/mmio_context.c       |   2 +-
 drivers/gpu/drm/i915/i915_debugfs.c           | 268 +------
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
 42 files changed, 1161 insertions(+), 1025 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c
 create mode 100644 drivers/gpu/drm/i915/gt/intel_sseu_debugfs.h

-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
