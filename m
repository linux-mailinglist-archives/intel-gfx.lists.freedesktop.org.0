Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED44647E30
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Dec 2022 08:02:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47ED610E0C7;
	Fri,  9 Dec 2022 07:02:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F397A10E0C7
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Dec 2022 07:02:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670569347; x=1702105347;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=o4xOm3rNKDZxsBLkEPcQCYGkHhWlaEXZEm6CdiSIdxw=;
 b=QqbysaPRSZmAoJNPk58+EUwQ05zCqsM7TDMhHkh9hlvBF4plYgcNhYMD
 PZy7Hfa84Znd8nT3NKt6ykj7nQqbMvIO0yjaPv4ujxr6WVEdQ+H2UWvFx
 6ybtYk7aMIG/oWbLepH1FzxPO2EQ6wL8Y/akvdvqWSECnsh5SJmfot/8f
 zs14ET6eVLFSvPa7Mu7XPxoK/TKMNymBGBUAjY6YEZ3qvMRLfISc9Xlkj
 rZSYIHfQcgLVXEnt6a60lvmy1Qt4xuCqIKHRqq6k71b0bgBEeRyNHK1/c
 +UhJj+QfZmKn2FmYjqrUf+mVFyFK2v91HEBghF9xzV1BJtB2MZ1UK7dHe g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="319260961"
X-IronPort-AV: E=Sophos;i="5.96,230,1665471600"; d="scan'208";a="319260961"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 23:02:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="649463362"
X-IronPort-AV: E=Sophos;i="5.96,230,1665471600"; d="scan'208";a="649463362"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmsmga007.fm.intel.com with ESMTP; 08 Dec 2022 23:02:24 -0800
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org, ville.syrjala@linux.intel.com,
 jani.nikula@intel.com, imre.deak@intel.com
Date: Fri,  9 Dec 2022 12:32:41 +0530
Message-Id: <20221209070241.472798-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221124070925.3834910-1-arun.r.murthy@intel.comt>
References: <20221124070925.3834910-1-arun.r.murthy@intel.comt>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCHv3] drm/i915/dp: Change aux_ctl reg read to
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

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux.c | 24 ++++++++++++---------
 1 file changed, 14 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 664bebdecea7..878452e6e37f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -40,21 +40,25 @@ intel_dp_aux_wait_done(struct intel_dp *intel_dp)
 	i915_reg_t ch_ctl = intel_dp->aux_ch_ctl_reg(intel_dp);
 	const unsigned int timeout_ms = 10;
 	u32 status;
-	bool done;
+	int try;
 
-#define C (((status = intel_uncore_read_notrace(&i915->uncore, ch_ctl)) & DP_AUX_CH_CTL_SEND_BUSY) == 0)
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

