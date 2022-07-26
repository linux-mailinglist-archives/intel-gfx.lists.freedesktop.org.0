Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCB4C581B56
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jul 2022 22:51:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B551944DE;
	Tue, 26 Jul 2022 20:51:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 010D6A4E9E
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jul 2022 20:51:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658868685; x=1690404685;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7wiFPTLliHGBRXLQhl315EMftuQHRTkoejNyBC0zVMw=;
 b=hDI/h0hscpHnQ2sH12xcN503as6nrw2qpeQCwu7dZF5knRUkvYRn3O55
 lXIPI6f4GsWxDh127y3t/x/y0k9MEukI4xSCIXIonZCEmfILKpDkI6DET
 +Zm7LbH8+BIr08xvJHC0M9xQJTcZ6WmYnurFzvZzmc45/aQL/PgGa+8zW
 0xUqHivVvLap5mQhCs7Cw3MwS0RwOlPBVyyBTCC9yHsVb+1yiOYPDSYsT
 O0RYWNgfrQECuzYooDNJ00hYkoOLsGAQNr03kmoVE8p8m4V9dN+zsP5Gm
 AlAfx5pk1aTWeUwWrcFbbW3Chk3hwD7Al+SFsQzBbOpZsQRVLP5DvXxJD Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10420"; a="349757892"
X-IronPort-AV: E=Sophos;i="5.93,194,1654585200"; d="scan'208";a="349757892"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 13:51:24 -0700
X-IronPort-AV: E=Sophos;i="5.93,194,1654585200"; d="scan'208";a="628065127"
Received: from orsosgc001.jf.intel.com ([10.165.21.135])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 13:51:24 -0700
From: "Nerlige Ramappa, Umesh" <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Tue, 26 Jul 2022 13:51:16 -0700
Message-Id: <20220726205116.3148847-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
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
Fixes: 77cdd054dd2c ("drm/i915/pmu: Connect engine busyness stats from GuC to pmu")
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 76916aed897a..0b7a5ecb640a 100644
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
2.36.1

