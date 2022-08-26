Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A1D85A329E
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Aug 2022 01:28:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 240DB10EA85;
	Fri, 26 Aug 2022 23:28:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1154D10EA85
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Aug 2022 23:28:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661556510; x=1693092510;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Qlnua8xIeYPsOSTpa8yt8xOqsigM6pCgSRohuYJcWV8=;
 b=DEYg166oCockUf1pj9iUGZwvouc4ZSIsvwDLSSlmP8mmIdPgTZ6COUcC
 /e5f93ARP0cLAYWpDqnqGqvm0at5L5qU+4w+QOhs/pYdyKCqbqsErYYQx
 mRfWGTxvyrUc41d3WXVjApgcq8x2QiomLAwbmN49oiKK6BVAGwVxx9aa1
 Mcrq1LxZI0KD04YatyKJ+QpoaHoy3mD2hWO6H4f4+HQ51UCQrNTmsk4Eq
 b1Occz8DgYQOd7lx1Jyuw25RqNE4P4OXI1HwTSsEeRxgiWcOfw/qA2IF2
 E1sZnIOYKow5D6iQp2uiOPYzIphRlUr9AMtD8J6ycSWXvbnFbK1LQDfbl Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10451"; a="380916583"
X-IronPort-AV: E=Sophos;i="5.93,266,1654585200"; d="scan'208";a="380916583"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2022 16:28:29 -0700
X-IronPort-AV: E=Sophos;i="5.93,266,1654585200"; d="scan'208";a="700005621"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2022 16:28:29 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 Aug 2022 23:28:24 +0000
Message-Id: <20220826232824.125153-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/guc: Cancel GuC engine busyness worker
 synchronously
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

The worker is canceled in gt_park path, but earlier it was assumed that
gt_park path cannot sleep and the cancel is asynchronous. This caused a
race with suspend flow where the worker runs after suspend and causes an
unclaimed register access warning. Cancel the worker synchronously since
the gt_park is indeed allowed to sleep.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 0d56b615bf78..e6275380b253 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1438,7 +1438,12 @@ void intel_guc_busyness_park(struct intel_gt *gt)
 	if (!guc_submission_initialized(guc))
 		return;
 
-	cancel_delayed_work(&guc->timestamp.work);
+	/*
+	 * There is a race with suspend flow where the worker runs after suspend
+	 * and causes an unclaimed register access warning. Cancel the worker
+	 * synchronously here.
+	 */
+	cancel_delayed_work_sync(&guc->timestamp.work);
 
 	/*
 	 * Before parking, we should sample engine busyness stats if we need to.
-- 
2.25.1

