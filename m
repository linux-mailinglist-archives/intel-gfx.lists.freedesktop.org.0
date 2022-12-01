Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B91663E9F8
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Dec 2022 07:44:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65D8D10E0E0;
	Thu,  1 Dec 2022 06:44:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5878710E0E0
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Dec 2022 06:44:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669877068; x=1701413068;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1O/htO3CBwuGhA/VV/0Wa85TiG/YGMYqSb5mrc1sXYw=;
 b=mMWtjMae+5ENyO6GZDKw60G40pYNx9iZbhUllpz5MfEbvwoR6/MgvJig
 PDaRgBj9ShHGc0ny8xiumFK69rJSKjLRDmoShps7FokdePKtcZx/KOFXd
 3vWiwCoKQoKXL/08tMirqYYncKmkC5aBG8nxUKSh7eIjH+abW3UJHNx5Y
 XnXRRNSCE7Qdviokbt89Hmgsm5hyHpmoY8XAYDqsoVi9j23yLuqYXO6f9
 Cg/JJBbwqmQCc8fql+Ka4hg+9IVmMpHnWW3I7Uo0+oQT9SNn62ubS3eUD
 LCjUYsOsm1DPh/GlTwB65yISvTMDQkdt6KLConeVbwY2EmArA5vfPVuy4 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="315625160"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="315625160"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 22:44:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="707950610"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="707950610"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmsmga008.fm.intel.com with ESMTP; 30 Nov 2022 22:44:25 -0800
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org, ville.syrjala@linux.intel.com,
 jani.nikula@intel.com, imre.deak@intel.com
Date: Thu,  1 Dec 2022 12:14:37 +0530
Message-Id: <20221201064437.4180130-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221124070925.3834910-1-arun.r.murthy@intel.com>
References: <20221124070925.3834910-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCHv2] drm/i915/dp: Change aux_ctl reg read to
 polling read
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
timeout period and then after timeout reads the register for BUSY set
and fails.
Instead replace interrupt with polling so as to read the AUX CTL
register often before the timeout period.

v2: replace interrupt with polling read

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux.c | 24 ++++++++++++---------
 1 file changed, 14 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 664bebdecea7..22c0a59850df 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -40,20 +40,24 @@ intel_dp_aux_wait_done(struct intel_dp *intel_dp)
 	i915_reg_t ch_ctl = intel_dp->aux_ch_ctl_reg(intel_dp);
 	const unsigned int timeout_ms = 10;
 	u32 status;
-	bool done;
-
-#define C (((status = intel_uncore_read_notrace(&i915->uncore, ch_ctl)) & DP_AUX_CH_CTL_SEND_BUSY) == 0)
-	done = wait_event_timeout(i915->display.gmbus.wait_queue, C,
-				  msecs_to_jiffies_timeout(timeout_ms));
+	int try;
 
+	for (try = 0; try < 10; try++) {
+		status = intel_uncore_read_notrace(&i915->uncore, ch_ctl);
+		if ((status & DP_AUX_CH_CTL_SEND_BUSY) == 0)
+			break;
+		msleep(1);
+	}
 	/* just trace the final value */
 	trace_i915_reg_rw(false, ch_ctl, status, sizeof(status), true);
 
-	if (!done)
-		drm_err(&i915->drm,
-			"%s: did not complete or timeout within %ums (status 0x%08x)\n",
-			intel_dp->aux.name, timeout_ms, status);
-#undef C
+	if (try == 3) {
+		status = intel_uncore_read_notrace(&i915->uncore, ch_ctl);
+		if ((status & DP_AUX_CH_CTL_SEND_BUSY) != 0)
+			drm_err(&i915->drm,
+				"%s: did not complete or timeout within %ums (status 0x%08x)\n",
+				intel_dp->aux.name, timeout_ms, status);
+	}
 
 	return status;
 }
-- 
2.25.1

