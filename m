Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB45A3D974B
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jul 2021 23:12:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0321A6E8BA;
	Wed, 28 Jul 2021 21:12:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D6926E936;
 Wed, 28 Jul 2021 21:12:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10059"; a="210865453"
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="210865453"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 14:12:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="580995455"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by fmsmga001.fm.intel.com with ESMTP; 28 Jul 2021 14:12:10 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed, 28 Jul 2021 14:11:36 -0700
Message-Id: <20210728211144.15322-7-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20210728211144.15322-1-vinay.belgaumkar@intel.com>
References: <20210728211144.15322-1-vinay.belgaumkar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/14] drm/i915/guc/slpc: Remove BUG_ON in
 guc_submission_disable
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

The assumption when it was added was that GT would not be
holding any gt_pm references. However, uc_init is called
from gt_init_hw, which holds a forcewake ref. If SLPC
enable fails, we will still be holding this ref, which will
result in the BUG_ON.

Reviewed-by: Matthew Brost <matthew.brost@intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index b6338742a594..48cbd800ca54 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -2523,10 +2523,6 @@ void intel_guc_submission_enable(struct intel_guc *guc)
 
 void intel_guc_submission_disable(struct intel_guc *guc)
 {
-	struct intel_gt *gt = guc_to_gt(guc);
-
-	GEM_BUG_ON(gt->awake); /* GT should be parked first */
-
 	/* Note: By the time we're here, GuC may have already been reset */
 }
 
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
