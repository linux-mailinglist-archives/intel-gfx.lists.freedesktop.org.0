Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 413323B9501
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jul 2021 18:58:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70C346EB60;
	Thu,  1 Jul 2021 16:58:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A98E6EB60;
 Thu,  1 Jul 2021 16:58:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10032"; a="208525578"
X-IronPort-AV: E=Sophos;i="5.83,315,1616482800"; d="scan'208";a="208525578"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 09:58:00 -0700
X-IronPort-AV: E=Sophos;i="5.83,315,1616482800"; d="scan'208";a="644504641"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 09:58:00 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Thu,  1 Jul 2021 10:15:43 -0700
Message-Id: <20210701171550.49353-1-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/7] CT changes required for GuC submission
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

As part of enabling GuC submission discussed in [1], [2], and [3] we
need optimize and update the CT code as this is now in the critical
path of submission. This series includes the patches to do that which is
the first 7 patches from [3]. The patches should have addressed all the
feedback in [3] and should be ready to merge once CI returns a we get a
few more RBs.

v2: Fix checkpatch warning, address a couple of Michal's comments

Signed-off-by: Matthew Brost <matthew.brost@intel.com>

[1] https://patchwork.freedesktop.org/series/89844/
[2] https://patchwork.freedesktop.org/series/91417/
[3] https://patchwork.freedesktop.org/series/91840/

John Harrison (1):
  drm/i915/guc: Module load failure test for CT buffer creation

Matthew Brost (6):
  drm/i915/guc: Relax CTB response timeout
  drm/i915/guc: Improve error message for unsolicited CT response
  drm/i915/guc: Increase size of CTB buffers
  drm/i915/guc: Add non blocking CTB send function
  drm/i915/guc: Add stall timer to non blocking CTB send function
  drm/i915/guc: Optimize CTB writes and reads

 .../gt/uc/abi/guc_communication_ctb_abi.h     |   3 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  11 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     | 250 +++++++++++++++---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h     |  14 +-
 4 files changed, 232 insertions(+), 46 deletions(-)

-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
