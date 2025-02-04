Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CF93A26A3C
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2025 03:47:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8EAF10E036;
	Tue,  4 Feb 2025 02:47:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U8qj55M5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C581810E036
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2025 02:47:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738637252; x=1770173252;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bOe6SLwrR7n1ifjU/JEGq1eXA90MAFxbmzPeQqNDgkk=;
 b=U8qj55M5Dba2Z+l6jbZ8d+Ibl2RHH6R0pLVmCBLju6mDCdBbONktecXy
 8yc4WAn5gqvqZTul7s9vxge0ILTuCuQ8Ec3HwAL4a42QO/jKPuAJkMxlS
 BQ851rfZ2o82HwbmKtHcaG9S4Ar24HPhSyMq3kGRIxEqbxOEr/hYf3UgS
 LKumDEsVE8nQSi1M/l8LlYld4W9bjEHhPcGiSkFj2hgQwn7zvRwIPzWhu
 0Z5VAUr4ilGfwKkQC0SFzy1HI+4/qbNY0idVqjg1X34/dB8KAOMhXufbq
 1VDkwARZbFzoSd5xvltZgyg7dqe9CX88PRoDq6AMdVYqJPRrZP/nTmohk A==;
X-CSE-ConnectionGUID: bnKFwn8iRT2vCLpsExD4fA==
X-CSE-MsgGUID: 9TrGODrDTzyMrBtuUBdcSA==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="39182216"
X-IronPort-AV: E=Sophos;i="6.13,257,1732608000"; d="scan'208";a="39182216"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 18:47:32 -0800
X-CSE-ConnectionGUID: Npqu5GE3S5yPwXDk4sz94g==
X-CSE-MsgGUID: 5G8Ai3mBQ6SL/mX9ZpaW6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,257,1732608000"; d="scan'208";a="110418182"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 18:47:31 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH topic/core-for-CI] scsi: use GFP_NOIO to avoid circular
 locking dependency
Date: Mon,  3 Feb 2025 18:47:18 -0800
Message-ID: <20250204024719.1336311-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

From: Rik van Riel <riel@surriel.com>

Filesystems can write to disk from page reclaim with __GFP_FS
set. Marc found a case where scsi_realloc_sdev_budget_map
ends up in page reclaim with GFP_KERNEL, where it could try
to take filesystem locks again, leading to a deadlock.

WARNING: possible circular locking dependency detected
6.13.0 #1 Not tainted
------------------------------------------------------
kswapd0/70 is trying to acquire lock:
ffff8881025d5d78 (&q->q_usage_counter(io)){++++}-{0:0}, at: blk_mq_submit_bio+0x461/0x6e0

but task is already holding lock:
ffffffff81ef5f40 (fs_reclaim){+.+.}-{0:0}, at: balance_pgdat+0x9f/0x760

The full lockdep splat can be found in Marc's report:

https://lkml.org/lkml/2025/1/24/1101

Avoid the potential deadlock by doing the allocation with GFP_NOIO,
which prevents both filesystem and block layer recursion.

Reported-by: Marc Aurèle La France <tsi@tuyoix.net>
Signed-off-by: Rik van Riel <riel@surriel.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/scsi/scsi_scan.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/scsi_scan.c b/drivers/scsi/scsi_scan.c
index 087fcbfc9aaa3..96d7e1a9a7c7a 100644
--- a/drivers/scsi/scsi_scan.c
+++ b/drivers/scsi/scsi_scan.c
@@ -246,7 +246,7 @@ static int scsi_realloc_sdev_budget_map(struct scsi_device *sdev,
 	}
 	ret = sbitmap_init_node(&sdev->budget_map,
 				scsi_device_max_queue_depth(sdev),
-				new_shift, GFP_KERNEL,
+				new_shift, GFP_NOIO,
 				sdev->request_queue->node, false, true);
 	if (!ret)
 		sbitmap_resize(&sdev->budget_map, depth);
-- 
2.48.1

