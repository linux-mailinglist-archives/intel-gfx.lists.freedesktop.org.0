Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 117DC900589
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2024 15:49:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6158A10EC6A;
	Fri,  7 Jun 2024 13:49:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mYPIEroc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBA2910EC61
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2024 13:49:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717768187; x=1749304187;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oOxYXTvYLq7SA9aE7KQ+KdkrkC3FoMFjE/hBLtMlbi8=;
 b=mYPIErocdoO+PwBTKLuRn5BzSJsSWtA2+BLQ/OAFv3c8puqiKY/uTSU0
 AGTMWjDg+70GAXaoMmEnUuny0MX6qNTBey6H3h8r/8qzl76JnnbzaCs5Z
 LX3C8kNX+q/zv0vSEhXPMgiXyUNAqQDzPvnOiVhWNYjSbtoEcRtc3cK4h
 iBzBSf0V5IRM+NSuaCcSLwaO3qBnoK1sXwdMBuPRWEHUM4WQ0XobL5fKz
 RIbvqLw50dzQuvYfDSQSWeO/K5VN+C+MXo6L7thVdOc7Ina23z+WbfDBr
 6b9NhDbFFdMz/iLX3XIqmBjiTWSbzn/9T4wd489OtnW/Q+caIazBw4xY5 Q==;
X-CSE-ConnectionGUID: 671mFLQQST6phxpsXzt7bg==
X-CSE-MsgGUID: IPqLuGItSPmDFVgSzVqTZA==
X-IronPort-AV: E=McAfee;i="6600,9927,11096"; a="14331662"
X-IronPort-AV: E=Sophos;i="6.08,221,1712646000"; d="scan'208";a="14331662"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 06:49:47 -0700
X-CSE-ConnectionGUID: gUaGYHqIRnWxHlldkfoK4A==
X-CSE-MsgGUID: o4+l4XajScmcjBh8MDhwqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,221,1712646000"; d="scan'208";a="43459016"
Received: from lhorenst-mobl1.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.213.83])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 06:49:45 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 10/13] drm/i915/psr: Move vblank length check to separate
 function
Date: Fri,  7 Jun 2024 16:49:14 +0300
Message-Id: <20240607134917.1327574-11-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240607134917.1327574-1-jouni.hogander@intel.com>
References: <20240607134917.1327574-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

We are about to add more complexity to vblank length check. It makes sense
to move it to separate function for sake of clarity.

v2: change name to wake_lines_fit_into_vblank

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index a292c6c5de30..98b0018704f3 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1243,6 +1243,20 @@ static int intel_psr_entry_setup_frames(struct intel_dp *intel_dp,
 	return entry_setup_frames;
 }
 
+static bool wake_lines_fit_into_vblank(struct intel_dp *intel_dp,
+				       const struct intel_crtc_state *crtc_state)
+{
+	int vblank = crtc_state->hw.adjusted_mode.crtc_vblank_end -
+		crtc_state->hw.adjusted_mode.crtc_vblank_start;
+	int wake_lines = psr2_block_count_lines(intel_dp);
+
+	/* Vblank >= PSR2_CTL Block Count Number maximum line count */
+	if (vblank < wake_lines)
+		return false;
+
+	return true;
+}
+
 static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 				    struct intel_crtc_state *crtc_state)
 {
@@ -1333,9 +1347,7 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 	}
 
 	/* Vblank >= PSR2_CTL Block Count Number maximum line count */
-	if (crtc_state->hw.adjusted_mode.crtc_vblank_end -
-	    crtc_state->hw.adjusted_mode.crtc_vblank_start <
-	    psr2_block_count_lines(intel_dp)) {
+	if (!wake_lines_fit_into_vblank(intel_dp, crtc_state)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "PSR2 not enabled, too short vblank time\n");
 		return false;
-- 
2.34.1

