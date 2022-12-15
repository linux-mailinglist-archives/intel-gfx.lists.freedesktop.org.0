Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C24B364D91D
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Dec 2022 10:55:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5BB9882AF;
	Thu, 15 Dec 2022 09:55:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4734882AF
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Dec 2022 09:55:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671098117; x=1702634117;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6Kpny/maEGEJMXKHMDg2diINcf1XKrC3khTw3imrjlw=;
 b=MVo42wwfhII3p8T5W2aqFifgestWNG6DYoS6Rd+FTaTmeR8xIhsnyVK6
 ESWCRqTn4oc1MmSQ5jMQspXCXxoA8lk0CbbHizwAdgHsVnGdUa2BQxtcQ
 uNauauypTVHVkdvxW5Ce+LSYrfX1QzXOooA7pz7mZnuTyIdLdO6VW9lm5
 K+O3Cccyimr4Te6IP7hlzx44EnihupVlLrbQHqctGcDtbTydk8P9WGlSH
 SApNxtccW2HX9jDECamfB+teZU+Ei7L6658peM3Gt0p+Bn5mk9CwjYGB8
 RgOTweMLoWq2D7bwP7it9YIUDq7QZGHSfdFg78eAK8NuOE/TOhm+U9M2u g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="298314581"
X-IronPort-AV: E=Sophos;i="5.96,247,1665471600"; d="scan'208";a="298314581"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 01:55:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="642855311"
X-IronPort-AV: E=Sophos;i="5.96,247,1665471600"; d="scan'208";a="642855311"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orsmga007.jf.intel.com with ESMTP; 15 Dec 2022 01:55:15 -0800
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org, ville.syrjala@linux.intel.com,
 jani.nikula@intel.com, imre.deak@intel.com
Date: Thu, 15 Dec 2022 15:25:33 +0530
Message-Id: <20221215095533.1073528-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221124070925.3834910-1-arun.r.murthy@intel.com>
References: <20221124070925.3834910-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCHv6] drm/i915/dp: change aux_ctl reg read to
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
v6: check return value of __intel_de_wait_for_register

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux.c | 15 +++++----------
 1 file changed, 5 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 91c93c93e5fc..dec88f41380e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -40,21 +40,16 @@ intel_dp_aux_wait_done(struct intel_dp *intel_dp)
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	i915_reg_t ch_ctl = intel_dp->aux_ch_ctl_reg(intel_dp);
 	const unsigned int timeout_ms = 10;
-	u32 status;
-	bool done;
-
-#define C (((status = intel_de_read_notrace(i915, ch_ctl)) & DP_AUX_CH_CTL_SEND_BUSY) == 0)
-	done = wait_event_timeout(i915->display.gmbus.wait_queue, C,
-				  msecs_to_jiffies_timeout(timeout_ms));
+	u32 status, ret;
 
-	/* just trace the final value */
-	trace_i915_reg_rw(false, ch_ctl, status, sizeof(status), true);
+	ret = __intel_de_wait_for_register(i915, ch_ctl,
+				     DP_AUX_CH_CTL_SEND_BUSY, 0,
+				     500, timeout_ms, &status);
 
-	if (!done)
+	if (ret == -ETIMEDOUT)
 		drm_err(&i915->drm,
 			"%s: did not complete or timeout within %ums (status 0x%08x)\n",
 			intel_dp->aux.name, timeout_ms, status);
-#undef C
 
 	return status;
 }
-- 
2.25.1

