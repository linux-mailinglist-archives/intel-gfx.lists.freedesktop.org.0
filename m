Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC55647F4F
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Dec 2022 09:35:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45A1310E4FA;
	Fri,  9 Dec 2022 08:35:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C09FE10E4FA
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Dec 2022 08:34:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670574896; x=1702110896;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ojuvjQknYk/gFghg1ma+YOxdSz+V2dZVzWNETUdwuis=;
 b=LeGUHOOyDU1xJ70/eOl34oo1bfgRToW31JhJLAXcttM+wrB/jTAeBx+X
 hEHOr7o2ypeKYMnlxTc6PZWr8YxFl4r+HWXxdBXi6qdwGxNotu2c6EEmr
 TrH6OgeNzoFsKw/iYr0k3uMupqgWMdwP1YHY/ZLaqpmXB0STcD4NhMdkO
 rPb4/37pTSx9/xynm8wBSaj5Wd6vGST6kRcCsBRA3xAb+UUBP7sVic5aL
 IKjCdu5VwW3EYZPuEOeEfTjH0hzBgR/JvO/nZA+gmOZIWRfeeQ6U9wIez
 BdAiNwaftDgNnX+huq0epeMi5Te+kBu2JjIvcQnLOdgYiwzwLdQMCqYGe Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="381721386"
X-IronPort-AV: E=Sophos;i="5.96,230,1665471600"; d="scan'208";a="381721386"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2022 00:34:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="597665898"
X-IronPort-AV: E=Sophos;i="5.96,230,1665471600"; d="scan'208";a="597665898"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orsmga003.jf.intel.com with ESMTP; 09 Dec 2022 00:34:54 -0800
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org, ville.syrjala@linux.intel.com,
 jani.nikula@intel.com, imre.deak@intel.com
Date: Fri,  9 Dec 2022 14:05:10 +0530
Message-Id: <20221209083510.475948-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221124070925.3834910-1-arun.r.murthy@intel.com>
References: <20221124070925.3834910-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RESEND PATCHv3] drm/i915/dp: Change aux_ctl reg read
 to polling read
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

The busy timeout logic checks for the AUX BUSY, then waits for the
timeout period and then after timeout reads the register for BUSY or
Success.
Instead replace interrupt with polling so as to read the AUX CTL
register often before the timeout period. Looks like there might be some
issue with interrupt-on-read. Hence changing the logic to polling read.

v2: replace interrupt with polling read
v3: use usleep_rang instead of msleep, updated commit msg

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux.c | 24 ++++++++++++---------
 1 file changed, 14 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 91c93c93e5fc..230f27d75846 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -41,21 +41,25 @@ intel_dp_aux_wait_done(struct intel_dp *intel_dp)
 	i915_reg_t ch_ctl = intel_dp->aux_ch_ctl_reg(intel_dp);
 	const unsigned int timeout_ms = 10;
 	u32 status;
-	bool done;
+	int try;
 
-#define C (((status = intel_de_read_notrace(i915, ch_ctl)) & DP_AUX_CH_CTL_SEND_BUSY) == 0)
-	done = wait_event_timeout(i915->display.gmbus.wait_queue, C,
-				  msecs_to_jiffies_timeout(timeout_ms));
+	for (try = 0; try < 10; try++) {
+		status = intel_uncore_read_notrace(&i915->uncore, ch_ctl);
+		if ((status & DP_AUX_CH_CTL_SEND_BUSY) == 0)
+			break;
+		usleep_range(400, 500);
+	}
+	if (try == 3) {
+		status = intel_uncore_read_notrace(&i915->uncore, ch_ctl);
+		if ((status & DP_AUX_CH_CTL_SEND_BUSY) != 0)
+			drm_err(&i915->drm,
+				"%s: did not complete or timeout within %ums (status 0x%08x)\n",
+				intel_dp->aux.name, timeout_ms, status);
+	}
 
 	/* just trace the final value */
 	trace_i915_reg_rw(false, ch_ctl, status, sizeof(status), true);
 
-	if (!done)
-		drm_err(&i915->drm,
-			"%s: did not complete or timeout within %ums (status 0x%08x)\n",
-			intel_dp->aux.name, timeout_ms, status);
-#undef C
-
 	return status;
 }
 
-- 
2.25.1

