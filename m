Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F0C3194628
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2020 19:11:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 894316E8F7;
	Thu, 26 Mar 2020 18:11:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 417B56E8F7
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2020 18:11:54 +0000 (UTC)
IronPort-SDR: cfMYLlba6C/n2YI1waUlrQbKXkAw7DPUshKumENJRrDNsP/U4hbPahRJsrUP+tMunKkGvZu0hj
 5vL7XtfbXiuQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2020 11:11:53 -0700
IronPort-SDR: WTNhZzHQXLEU6Tpzzkx1zbTku3cKvnP4E7E4cMgQbMRZ5clYChdI2ltmHzhf+VsBV+RJOz66+1
 TvfeVB4K590g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,309,1580803200"; d="scan'208";a="265955949"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga002.jf.intel.com with ESMTP; 26 Mar 2020 11:11:53 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Mar 2020 11:11:15 -0700
Message-Id: <20200326181121.16869-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 0/6] Re-org uC debugfs files and move them
 under GT
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

Minor changes applied to patch 5, which is the only one missing a
review.

As multiple people have noted, intel_gt_debugfs_register_files is
now generic enough to be pulled out of gt/. Andi has patches for that
and will follow up after this series is merged.

Cc: Andi Shyti <andi.shyti@intel.com>
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>

Andi Shyti (1):
  drm/i915/gt: allow setting generic data pointer

Daniele Ceraolo Spurio (5):
  drm/i915/guc: drop stage_pool debugfs
  drm/i915/huc: make "support huc" reflect HW capabilities
  drm/i915/debugfs: move uC printers and update debugfs file names
  drm/i915/uc: Move uC debugfs to its own folder under GT
  drm/i915/uc: do not free err log on uc_fini

 drivers/gpu/drm/i915/Makefile                 |   4 +
 drivers/gpu/drm/i915/gt/debugfs_engines.c     |   2 +-
 drivers/gpu/drm/i915/gt/debugfs_gt.c          |  15 +-
 drivers/gpu/drm/i915/gt/debugfs_gt.h          |   9 +-
 drivers/gpu/drm/i915/gt/debugfs_gt_pm.c       |  14 +-
 drivers/gpu/drm/i915/gt/intel_gt.c            |   3 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  46 ++-
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |   7 +
 .../gpu/drm/i915/gt/uc/intel_guc_debugfs.c    |  42 +++
 .../gpu/drm/i915/gt/uc/intel_guc_debugfs.h    |  14 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c     |  14 -
 drivers/gpu/drm/i915/gt/uc/intel_guc_fw.h     |   1 -
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c    |  97 +++++-
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.h    |   4 +
 .../drm/i915/gt/uc/intel_guc_log_debugfs.c    | 124 ++++++++
 .../drm/i915/gt/uc/intel_guc_log_debugfs.h    |  15 +
 drivers/gpu/drm/i915/gt/uc/intel_huc.c        |  31 +-
 drivers/gpu/drm/i915/gt/uc/intel_huc.h        |   2 +
 .../gpu/drm/i915/gt/uc/intel_huc_debugfs.c    |  36 +++
 .../gpu/drm/i915/gt/uc/intel_huc_debugfs.h    |  14 +
 drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c     |  17 --
 drivers/gpu/drm/i915/gt/uc/intel_huc_fw.h     |   1 -
 drivers/gpu/drm/i915/gt/uc/intel_uc.c         |   9 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc.h         |   1 +
 drivers/gpu/drm/i915/gt/uc/intel_uc_debugfs.c |  30 ++
 drivers/gpu/drm/i915/gt/uc/intel_uc_debugfs.h |  14 +
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      |  25 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h      |   3 +-
 drivers/gpu/drm/i915/i915_debugfs.c           | 289 ------------------
 29 files changed, 523 insertions(+), 360 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.h
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_guc_log_debugfs.c
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_guc_log_debugfs.h
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_huc_debugfs.c
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_huc_debugfs.h
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_uc_debugfs.c
 create mode 100644 drivers/gpu/drm/i915/gt/uc/intel_uc_debugfs.h

-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
