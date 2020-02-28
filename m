Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF36172ED0
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 03:29:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 844A66E118;
	Fri, 28 Feb 2020 02:29:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2AEA6E118
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 02:29:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 18:29:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,493,1574150400"; d="scan'208";a="227392631"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga007.jf.intel.com with ESMTP; 27 Feb 2020 18:29:31 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Feb 2020 18:28:37 -0800
Message-Id: <20200228022843.1936-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/6] Re-org uC debugfs files and move them under
 GT
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

Move printing functions to their respective feature files, squash the 2
guc status debugfs files (load_status and info) and move them under the
gt/ folder. A fix for keeping the log error around, to be dumped in
debugfs after a wedge, is also included at the end.

Cc: Andi Shyti <andi.shyti@intel.com>
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>

Daniele Ceraolo Spurio (6):
  drm/i915/guc: drop stage_pool debugfs
  drm/i915/uc: mark structure passed to checker functions as const
  drm/i915/huc: make "support huc" reflect HW capabilities
  drm/i915/debugfs: move uC printers and update debugfs file names
  drm/i915/uc: Move uC debugfs to its own folder under GT
  drm/i915/uc: do not free err log on uc_fini

 drivers/gpu/drm/i915/Makefile                 |   7 +-
 drivers/gpu/drm/i915/gt/debugfs_gt.c          |   3 +
 drivers/gpu/drm/i915/gt/intel_gt.c            |   3 +-
 drivers/gpu/drm/i915/gt/intel_gt.h            |   6 +-
 drivers/gpu/drm/i915/gt/uc/debugfs_guc.c      |  42 +++
 drivers/gpu/drm/i915/gt/uc/debugfs_guc.h      |  14 +
 drivers/gpu/drm/i915/gt/uc/debugfs_guc_log.c  | 123 ++++++++
 drivers/gpu/drm/i915/gt/uc/debugfs_guc_log.h  |  14 +
 drivers/gpu/drm/i915/gt/uc/debugfs_huc.c      |  36 +++
 drivers/gpu/drm/i915/gt/uc/debugfs_huc.h      |  14 +
 drivers/gpu/drm/i915/gt/uc/debugfs_uc.c       |  31 ++
 drivers/gpu/drm/i915/gt/uc/debugfs_uc.h       |  43 +++
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  46 ++-
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  17 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h     |   2 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c     |  14 -
 drivers/gpu/drm/i915/gt/uc/intel_guc_fw.h     |   1 -
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c    |  97 +++++-
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.h    |   4 +
 .../gpu/drm/i915/gt/uc/intel_guc_submission.h |   6 +-
 drivers/gpu/drm/i915/gt/uc/intel_huc.c        |  31 +-
 drivers/gpu/drm/i915/gt/uc/intel_huc.h        |  10 +-
 drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c     |  17 --
 drivers/gpu/drm/i915/gt/uc/intel_huc_fw.h     |   1 -
 drivers/gpu/drm/i915/gt/uc/intel_uc.c         |   9 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc.h         |   3 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      |  25 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h      |  21 +-
 drivers/gpu/drm/i915/i915_debugfs.c           | 289 ------------------
 29 files changed, 559 insertions(+), 370 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gt/uc/debugfs_guc.c
 create mode 100644 drivers/gpu/drm/i915/gt/uc/debugfs_guc.h
 create mode 100644 drivers/gpu/drm/i915/gt/uc/debugfs_guc_log.c
 create mode 100644 drivers/gpu/drm/i915/gt/uc/debugfs_guc_log.h
 create mode 100644 drivers/gpu/drm/i915/gt/uc/debugfs_huc.c
 create mode 100644 drivers/gpu/drm/i915/gt/uc/debugfs_huc.h
 create mode 100644 drivers/gpu/drm/i915/gt/uc/debugfs_uc.c
 create mode 100644 drivers/gpu/drm/i915/gt/uc/debugfs_uc.h

-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
