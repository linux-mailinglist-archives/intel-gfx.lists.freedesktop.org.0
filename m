Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA54464C2C6
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Dec 2022 04:30:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7D2410E20C;
	Wed, 14 Dec 2022 03:29:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9092F10E20C
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Dec 2022 03:29:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670988579; x=1702524579;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9kKonBRUEfKaKLEvGHbCQZ1JylOzRGvM3yMVMWPT7Go=;
 b=IftyD6vCF65Rf2vmiUbrh8URtHcrUSzI7D83LO59B9UTldT/jksOMS8/
 QBEpPxRlgwZbwN4Qi3DJynvu3vxVfw3ZubNHCBKcpyS5VRBhSYNOMZ1OX
 2G3Q6LNXMV9vpQQjqaf31xQrd2xUMTiIbiQt3Z9USGi8CRz9ZfAmK/XsJ
 dhafSpqzkbEIVQRCophhaOHpG2w+K3Nc5HzyfgPs7D4Yze7S6UfckgELA
 jZ+Us/REXyqkeEuYPkTamQB33VB6EUYW5x0La2KIAB53a+VX2+HtV9jHw
 +IlMJaAHnyso0aSNdLDEQLRR6l+vawv630KMA3uCt1ki0vVzhezRmrzwN g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="298649328"
X-IronPort-AV: E=Sophos;i="5.96,243,1665471600"; d="scan'208";a="298649328"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 19:29:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="755748818"
X-IronPort-AV: E=Sophos;i="5.96,243,1665471600"; d="scan'208";a="755748818"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmsmga002.fm.intel.com with ESMTP; 13 Dec 2022 19:29:37 -0800
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org, ville.syrjala@linux.intel.com,
 jani.nikula@intel.com, imre.deak@intel.com
Date: Wed, 14 Dec 2022 08:59:55 +0530
Message-Id: <20221214032955.963806-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221124070925.3834910-1-arun.r.murthy@intel.com>
References: <20221124070925.3834910-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCHv4] drm/i915/dp: change aux_ctl reg read to
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

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 91c93c93e5fc..fe5ed432a66a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -41,20 +41,20 @@ intel_dp_aux_wait_done(struct intel_dp *intel_dp)
 	i915_reg_t ch_ctl = intel_dp->aux_ch_ctl_reg(intel_dp);
 	const unsigned int timeout_ms = 10;
 	u32 status;
-	bool done;
 
-#define C (((status = intel_de_read_notrace(i915, ch_ctl)) & DP_AUX_CH_CTL_SEND_BUSY) == 0)
-	done = wait_event_timeout(i915->display.gmbus.wait_queue, C,
-				  msecs_to_jiffies_timeout(timeout_ms));
+	__intel_wait_for_register(&i915->uncore, ch_ctl,
+				  DP_AUX_CH_CTL_SEND_BUSY,
+				  DP_AUX_CH_CTL_SEND_BUSY,
+				  500, timeout_ms, &status);
 
-	/* just trace the final value */
-	trace_i915_reg_rw(false, ch_ctl, status, sizeof(status), true);
-
-	if (!done)
+	status = intel_uncore_read_notrace(&i915->uncore, ch_ctl);
+	if ((status & DP_AUX_CH_CTL_SEND_BUSY) != 0)
 		drm_err(&i915->drm,
 			"%s: did not complete or timeout within %ums (status 0x%08x)\n",
 			intel_dp->aux.name, timeout_ms, status);
-#undef C
+
+	/* just trace the final value */
+	trace_i915_reg_rw(false, ch_ctl, status, sizeof(status), true);
 
 	return status;
 }
-- 
2.25.1

