Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D5015A3309
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Aug 2022 02:21:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CE1B10EAC1;
	Sat, 27 Aug 2022 00:21:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EF5D10EAC1
 for <intel-gfx@lists.freedesktop.org>; Sat, 27 Aug 2022 00:21:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661559700; x=1693095700;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ntfS4yswSlBfU5p4iKL/shjM3owm7yEyiVov3FV99lY=;
 b=OMm7WhjiGnP/SHV5supq5kw+/LrJm7kG/M0u/v0RL9dOP6xC1AAAe3EB
 QnwzT5dy2EazXcwx0MhqKUcAYvNkphQPy4xH3YIyEtQtpkruJGJK0Ny3u
 jlgAUaK76WGMTG8HupyMFel15mzGlDoqmTjYcS2nw33RzSAblxTWaZ4eZ
 wtwA5K2JddR41x7L7Fu1MazlemfR8zjzGxaBNS0bdWom1FnNkFR8iMC3p
 NsHsOuQ9dGuPNG4StjGpCamKrOB7NtxtBq1rKZ9LoVAE2kyqCc2KOBxgz
 /r90h4E54yirt3DMPbQv5XCqRx2d54BWV6JpP7Yhiz6BXWJOxNM93VcEz w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10451"; a="320728557"
X-IronPort-AV: E=Sophos;i="5.93,266,1654585200"; d="scan'208";a="320728557"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2022 17:21:39 -0700
X-IronPort-AV: E=Sophos;i="5.93,266,1654585200"; d="scan'208";a="587487828"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2022 17:21:39 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 27 Aug 2022 00:21:35 +0000
Message-Id: <20220827002135.139349-1-umesh.nerlige.ramappa@intel.com>
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

v2: Fix author name and sign-off mismatch

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4419
Fixes: 77cdd054dd2c ("drm/i915/pmu: Connect engine busyness stats from GuC to pmu")
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

