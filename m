Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1ABA467D4D
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Dec 2021 19:33:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 627A77B4F8;
	Fri,  3 Dec 2021 18:33:41 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C99CB7B4F7;
 Fri,  3 Dec 2021 18:33:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10187"; a="234540246"
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="234540246"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2021 10:33:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="577578513"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by fmsmga004.fm.intel.com with ESMTP; 03 Dec 2021 10:33:39 -0800
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Fri,  3 Dec 2021 10:33:34 -0800
Message-Id: <20211203183339.3276250-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/5] Update to GuC version 69.0.0
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
Cc: DRI-Devel@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

Update to the latest GuC version. This includes a suite of interface
changes and new features with corresponding i915 side changes.

Also, fix/improve a bunch of other things while at it.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>



John Harrison (5):
  drm/i915/uc: Allow platforms to have GuC but not HuC
  drm/i915/guc: Increase GuC log size for CONFIG_DEBUG_GEM
  drm/i915/guc: Don't go bang in GuC log if no GuC
  drm/i915/guc: Update to GuC version 69.0.0
  drm/i915/guc: Improve GuC loading status check/error reports

 Documentation/gpu/i915.rst                    |   1 +
 .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |  80 +++++-----
 .../gpu/drm/i915/gt/uc/abi/guc_errors_abi.h   |  23 +++
 drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h |  82 ++++++++++
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        | 126 +++++++++++++---
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |   4 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c    |  45 +++++-
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     | 141 ++++++++++--------
 drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c     |  17 +--
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |  37 ++++-
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c    |  31 ++--
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.h    |   8 +-
 .../drm/i915/gt/uc/intel_guc_log_debugfs.c    |   4 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h    |   4 -
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  18 +++
 drivers/gpu/drm/i915/gt/uc/intel_huc.c        |   1 +
 drivers/gpu/drm/i915/gt/uc/intel_uc.c         |  31 ++--
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      |  93 ++++++++----
 18 files changed, 536 insertions(+), 210 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h

-- 
2.25.1

