Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DC8A3A6EE8
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Jun 2021 21:25:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22AFC6E12A;
	Mon, 14 Jun 2021 19:25:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A15966E07F;
 Mon, 14 Jun 2021 19:25:06 +0000 (UTC)
IronPort-SDR: 4Gx4f6T3CRDE9NuuwSOF7SgJzT42FwYRsrNUDm2cBysrDica5zoQWTiLct2sdNkh2iw04QZMKt
 KL/5f2I89zbQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10015"; a="186239226"
X-IronPort-AV: E=Sophos;i="5.83,273,1616482800"; d="scan'208";a="186239226"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2021 12:25:06 -0700
IronPort-SDR: 0SnSfpxThQkYenaTGKoBf7SBvfo/cOgb0JA087FkQ3xD5S1PKjH0/pXd2H07PqkPsCAE1MhDjS
 E+Y0apI2QsUg==
X-IronPort-AV: E=Sophos;i="5.83,273,1616482800"; d="scan'208";a="639448206"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2021 12:25:06 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Mon, 14 Jun 2021 12:42:50 -0700
Message-Id: <20210614194253.16192-1-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/3] Update firmware to v62.0.0
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

As part of enabling GuC submission [1] we need to update to the latest
and greatest firmware. This series does that. All backwards
compatibility breaking changes squashed into a single patch #2. Same
series sent to trybot [2] forcing GuC to be enabled to ensure we haven't
broke something.

v2: Address comments, looking for remaning RBs so patches can be
squashed and sent for CI
v3: Delete a few unused defines, squash patches

Signed-off-by: Matthew Brost <matthew.brost@intel.com>

[1] https://patchwork.freedesktop.org/series/89844
[2] https://patchwork.freedesktop.org/series/91341 

Michal Wajdeczko (3):
  drm/i915/guc: Introduce unified HXG messages
  drm/i915/guc: Update firmware to v62.0.0
  drm/i915/doc: Include GuC ABI documentation

 Documentation/gpu/i915.rst                    |   8 +
 .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  | 107 ++++++
 .../gt/uc/abi/guc_communication_ctb_abi.h     | 120 ++++--
 .../gt/uc/abi/guc_communication_mmio_abi.h    |  65 ++--
 .../gpu/drm/i915/gt/uc/abi/guc_messages_abi.h | 213 +++++++++++
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        | 107 ++++--
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c    |  45 +--
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     | 356 +++++++++---------
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h     |   6 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |  75 +---
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c    |  29 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.h    |   6 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      |  26 +-
 13 files changed, 742 insertions(+), 421 deletions(-)

-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
