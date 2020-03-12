Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7357182686
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 02:17:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39FF26E9FF;
	Thu, 12 Mar 2020 01:17:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F5F16E9DE
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2020 01:17:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Mar 2020 18:17:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,542,1574150400"; d="scan'208";a="236479628"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga008.fm.intel.com with ESMTP; 11 Mar 2020 18:17:08 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Mar 2020 18:16:25 -0700
Message-Id: <20200312011631.15262-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/6] Re-org uC debugfs files and move them
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

Rebased on top of Andi's patch. Note that some discussion is still
ongoing on that patch.

Also dropped the patch that caused a const->non-const conversion and
fixed a couple of bugs:
- keep printing HUC_STATUS register
- correcly set permissions for writable debugfs files

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

 drivers/gpu/drm/i915/Makefile                |   7 +-
 drivers/gpu/drm/i915/gt/debugfs_engines.c    |   2 +-
 drivers/gpu/drm/i915/gt/debugfs_gt.c         |  15 +-
 drivers/gpu/drm/i915/gt/debugfs_gt.h         |   9 +-
 drivers/gpu/drm/i915/gt/debugfs_gt_pm.c      |  14 +-
 drivers/gpu/drm/i915/gt/intel_gt.c           |   3 +-
 drivers/gpu/drm/i915/gt/uc/debugfs_guc.c     |  42 +++
 drivers/gpu/drm/i915/gt/uc/debugfs_guc.h     |  14 +
 drivers/gpu/drm/i915/gt/uc/debugfs_guc_log.c | 124 ++++++++
 drivers/gpu/drm/i915/gt/uc/debugfs_guc_log.h |  15 +
 drivers/gpu/drm/i915/gt/uc/debugfs_huc.c     |  36 +++
 drivers/gpu/drm/i915/gt/uc/debugfs_huc.h     |  14 +
 drivers/gpu/drm/i915/gt/uc/debugfs_uc.c      |  31 ++
 drivers/gpu/drm/i915/gt/uc/debugfs_uc.h      |  14 +
 drivers/gpu/drm/i915/gt/uc/intel_guc.c       |  46 ++-
 drivers/gpu/drm/i915/gt/uc/intel_guc.h       |   7 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c    |  14 -
 drivers/gpu/drm/i915/gt/uc/intel_guc_fw.h    |   1 -
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c   |  97 ++++++-
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.h   |   4 +
 drivers/gpu/drm/i915/gt/uc/intel_huc.c       |  31 +-
 drivers/gpu/drm/i915/gt/uc/intel_huc.h       |   2 +
 drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c    |  17 --
 drivers/gpu/drm/i915/gt/uc/intel_huc_fw.h    |   1 -
 drivers/gpu/drm/i915/gt/uc/intel_uc.c        |   9 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc.h        |   1 +
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c     |  25 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h     |   3 +-
 drivers/gpu/drm/i915/i915_debugfs.c          | 289 -------------------
 29 files changed, 526 insertions(+), 361 deletions(-)
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
