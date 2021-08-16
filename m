Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6561F3ECDD3
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Aug 2021 06:56:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8ED189BDB;
	Mon, 16 Aug 2021 04:56:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F31D18995F
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Aug 2021 04:55:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10077"; a="215823995"
X-IronPort-AV: E=Sophos;i="5.84,324,1620716400"; d="scan'208";a="215823995"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2021 21:55:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,324,1620716400"; d="scan'208";a="422739337"
Received: from ayazahma-nuc8i7beh.iind.intel.com ([10.145.162.59])
 by orsmga006.jf.intel.com with ESMTP; 15 Aug 2021 21:55:39 -0700
From: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
Date: Mon, 16 Aug 2021 10:22:24 +0530
Message-Id: <20210816045229.423234-1-ayaz.siddiqui@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH V2 0/5] drm/i915/gt: Initialize unused MOCS
 entries to L3_WB
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

Gen >= 12 onwards MOCS table doesn't have a setting for PTE
so I915_MOCS_PTE is not a valid index and it will have different
MOCS values based on the platform.

To detect these kinds of misprogramming, all the unspecified and
reserved MOCS indexes are set to WB_L3.

This series also contains patches to program BLIT_CCTL and
CMD_CCTL registers to UC.

Since we are quite late to update MOCS table for TGL so added
a new MOCS table for ADL family.

V2:
  1. Added CMD_CCTL to GUC regset list so that it can be restored
     after engine reset.
  2. Checkpatch warning removal.

Apoorva Singh (1):
  drm/i915/gt: Set BLIT_CCTL reg to un-cached

Ayaz A Siddiqui (3):
  drm/i915/gt: Add support of mocs propagation
  drm/i915/gt: Initialize unused MOCS entries with device specific
    values
  drm/i95/adl: Define MOCS table for Alderlake

Srinivasan Shanmugam (1):
  drm/i915/gt: Use cmd_cctl override for platforms >= gen12

 drivers/gpu/drm/i915/gt/intel_gt_types.h   |   4 +
 drivers/gpu/drm/i915/gt/intel_mocs.c       | 198 +++++++++++++++++++--
 drivers/gpu/drm/i915/gt/selftest_mocs.c    |  49 +++++
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c |   1 +
 drivers/gpu/drm/i915/i915_reg.h            |  23 +++
 5 files changed, 256 insertions(+), 19 deletions(-)

-- 
2.26.2

