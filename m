Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B0064CDE1
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Dec 2022 17:21:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E93A10E42D;
	Wed, 14 Dec 2022 16:21:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BE6310E429
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Dec 2022 16:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671034865; x=1702570865;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ivg3AnuTpbjWBPbl60HfdOx8+wyJEdRp2DjT5XqgxnE=;
 b=cyZvruifDiynv0oNlGf7Az911PbTNDajHRVPpwm0JyjKiOr7x2ysT4q9
 As1/uwwCHXvUBipMnuWu7SBJkZKltPpaQS740X8FPD4lt5ieh/Wu4GEcH
 oFpoSrejsesCbFTyWVSkY8oUKoEosE9afwvHk8aSh5SuWnHrJ0TnohRf2
 jHR38r2sgUPyYpfdqBP+IeDdg2AkAJ9tRGNLSPqzyoFRGpWagOSYBGBSi
 MKDM5QrqKhyx9VybVeDa6YSykNz6PY8LwHSqvs3nEXBgxuFL2aD7yjooY
 9PpItZkhSHx2othw0GM2o+7Hwvq/sTXndqFXgVr3eAUeNMl0tHYceJKh/ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="301861204"
X-IronPort-AV: E=Sophos;i="5.96,244,1665471600"; d="scan'208";a="301861204"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2022 08:21:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="649082546"
X-IronPort-AV: E=Sophos;i="5.96,244,1665471600"; d="scan'208";a="649082546"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orsmga002.jf.intel.com with ESMTP; 14 Dec 2022 08:21:01 -0800
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org, ville.syrjala@linux.intel.com,
 jani.nikula@intel.com, imre.deak@intel.com
Date: Wed, 14 Dec 2022 21:51:12 +0530
Message-Id: <20221214162112.1036757-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221124070925.3834910-1-arun.r.murthy@intel.com>
References: <20221124070925.3834910-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCHv5] drm/i915/dp: change aux_ctl reg read to
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
timeout period and then after timeout reads the register for BUSY or
Success.
Instead replace interrupt with polling so as to read the AUX CTL
register often before the timeout period. Looks like there might be some
issue with interrupt-on-read. Hence changing the logic to polling read.

v2: replace interrupt with polling read
v3: use usleep_rang instead of msleep, updated commit msg
v4: use intel_wait_for_regiter internal function
v5: use __intel_de_wait_for_register with 500us slow and 10ms fast timeout

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux.c | 35 ++++++---------------
 1 file changed, 9 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 91c93c93e5fc..772da38b451f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -34,31 +34,6 @@ static void intel_dp_aux_unpack(u32 src, u8 *dst, int dst_bytes)
 		dst[i] = src >> ((3 - i) * 8);
 }
 
-static u32
-intel_dp_aux_wait_done(struct intel_dp *intel_dp)
-{
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
-	i915_reg_t ch_ctl = intel_dp->aux_ch_ctl_reg(intel_dp);
-	const unsigned int timeout_ms = 10;
-	u32 status;
-	bool done;
-
-#define C (((status = intel_de_read_notrace(i915, ch_ctl)) & DP_AUX_CH_CTL_SEND_BUSY) == 0)
-	done = wait_event_timeout(i915->display.gmbus.wait_queue, C,
-				  msecs_to_jiffies_timeout(timeout_ms));
-
-	/* just trace the final value */
-	trace_i915_reg_rw(false, ch_ctl, status, sizeof(status), true);
-
-	if (!done)
-		drm_err(&i915->drm,
-			"%s: did not complete or timeout within %ums (status 0x%08x)\n",
-			intel_dp->aux.name, timeout_ms, status);
-#undef C
-
-	return status;
-}
-
 static u32 g4x_get_aux_clock_divider(struct intel_dp *intel_dp, int index)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
@@ -264,6 +239,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 	}
 
 	while ((aux_clock_divider = intel_dp->get_aux_clock_divider(intel_dp, clock++))) {
+		u32 timeout_ms = 10;
 		u32 send_ctl = intel_dp->get_aux_send_ctl(intel_dp,
 							  send_bytes,
 							  aux_clock_divider);
@@ -281,7 +257,14 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 			/* Send the command and wait for it to complete */
 			intel_de_write(i915, ch_ctl, send_ctl);
 
-			status = intel_dp_aux_wait_done(intel_dp);
+			__intel_de_wait_for_register(i915, ch_ctl,
+						     DP_AUX_CH_CTL_SEND_BUSY, 0,
+						     500, timeout_ms, &status);
+
+			if ((status & DP_AUX_CH_CTL_SEND_BUSY) != 0)
+				drm_err(&i915->drm,
+					"%s: did not complete or timeout within %ums (status 0x%08x)\n",
+					intel_dp->aux.name, timeout_ms, status);
 
 			/* Clear done status and any errors */
 			intel_de_write(i915, ch_ctl,
-- 
2.25.1

