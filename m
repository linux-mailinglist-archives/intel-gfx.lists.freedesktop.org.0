Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC0E652BD0
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Dec 2022 04:32:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2337810E027;
	Wed, 21 Dec 2022 03:31:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9A2010E027
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Dec 2022 03:31:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671593511; x=1703129511;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=42lkFem5FucW3NpNCfixdeW91hrsW69XOkb+Tss6Zzk=;
 b=NhkD23c6j561hJBUXYQFgUv3He7SqNevW5xusx4Vw0DPc3OzLjU8gDL8
 RdaK98xXdXhdL2UFmIBfuD89HuG+HdUYJVb2R6tqrjzgRvB4flJRSYqM+
 9e8gUhL6HWBenMslZmhnwalPpZgH8jBNHy68inmd3JA4ED/VIcRxX21et
 RqgVqHIvD/qSrw9ZxAoi81BfEcJwP/FFIoUI09anPhQcz/r6TPYQAuLi5
 AuKRVC5AbtZzp3wz69vwb2t8Xb3ei6nr1QXiwXtHgD5BhFca6UxG2irZG
 aNajtrYuVWaX6hsNfRAn0jWBvocnQwAbxgH/HzVEGjyUOr6j8ZP/dpvj4 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="384121266"
X-IronPort-AV: E=Sophos;i="5.96,261,1665471600"; d="scan'208";a="384121266"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 19:31:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="793545960"
X-IronPort-AV: E=Sophos;i="5.96,261,1665471600"; d="scan'208";a="793545960"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmsmga001.fm.intel.com with ESMTP; 20 Dec 2022 19:31:49 -0800
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org, ville.syrjala@linux.intel.com,
 jani.nikula@intel.com, imre.deak@intel.com
Date: Wed, 21 Dec 2022 09:02:09 +0530
Message-Id: <20221221033209.1284435-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221124070925.3834910-1-arun.r.murthy@intel.com>
References: <20221124070925.3834910-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCHv7] drm/i915/dp: change aux_ctl reg read to
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
v7: using default 2us for intel_de_wait_for_register

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux.c | 14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 91c93c93e5fc..5a176bfb10a2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -41,20 +41,16 @@ intel_dp_aux_wait_done(struct intel_dp *intel_dp)
 	i915_reg_t ch_ctl = intel_dp->aux_ch_ctl_reg(intel_dp);
 	const unsigned int timeout_ms = 10;
 	u32 status;
-	bool done;
-
-#define C (((status = intel_de_read_notrace(i915, ch_ctl)) & DP_AUX_CH_CTL_SEND_BUSY) == 0)
-	done = wait_event_timeout(i915->display.gmbus.wait_queue, C,
-				  msecs_to_jiffies_timeout(timeout_ms));
+	int ret;
 
-	/* just trace the final value */
-	trace_i915_reg_rw(false, ch_ctl, status, sizeof(status), true);
+	ret = __intel_de_wait_for_register(i915, ch_ctl,
+					   DP_AUX_CH_CTL_SEND_BUSY, 0,
+					   2, timeout_ms, &status);
 
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

