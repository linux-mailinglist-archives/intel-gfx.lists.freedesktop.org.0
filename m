Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20BBF484712
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jan 2022 18:40:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60F73890E9;
	Tue,  4 Jan 2022 17:40:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1A91890E9
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jan 2022 17:40:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641318009; x=1672854009;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1EllEbGb6oXJbbJk72hpCli4VfoVcv5XsK/3CWd9Bvs=;
 b=nBhazt7+toYTZykZQSFYP9+6A3X1LIPZGn5Unb4V7yog99+23wyzVyJC
 0wMDe5D3ep2bMChTEaVgMV2HBHJrfhjf0/LkKK8nGNklCtp12Ek+TzsEB
 fa8Tvs8XbIpQggC5QjLRna+U3qPm/9LoiiXuspwsTwyJgx1ehl9E7Ptn0
 1WFZcXaSKlcJVfrIE3yh20nuh1kSdOCvJe0UxfsiZxculY2EhniaEqkeo
 ajaL35UPbKALZaSfU4XF1/+4lo1ZM+Bcu2qG0EQCRIGNJUcg6/Nc14srB
 rVoKFvMt71pcUW3uVfjyXxAWNdLdmJ9MBpRUScRHJ1W0MCgb0nbkFupEb w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10216"; a="229083842"
X-IronPort-AV: E=Sophos;i="5.88,261,1635231600"; d="scan'208";a="229083842"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2022 09:40:09 -0800
X-IronPort-AV: E=Sophos;i="5.88,261,1635231600"; d="scan'208";a="470235973"
Received: from gtobin-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.11.253])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2022 09:40:07 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Jan 2022 19:39:46 +0200
Message-Id: <1049e7188a76c421fab7797b5c4a6aa1b709f4c9.1641317930.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1641317930.git.jani.nikula@intel.com>
References: <cover.1641317930.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/7] drm/i915/mst: abstract
 intel_dp_ack_sink_irq_esi()
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Smaller functions make the thing easier to read. Debug log failures to
ack.

Note: Looks like we have the retry loop simply because of hysterical
raisins, dating back to the original DP MST enabling. Keep it, though I
have no idea why we have it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 25 +++++++++++++++----------
 1 file changed, 15 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 357c39e09bf6..ebf80a875a41 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2820,6 +2820,19 @@ intel_dp_get_sink_irq_esi(struct intel_dp *intel_dp, u8 *sink_irq_vector)
 		DP_DPRX_ESI_LEN;
 }
 
+static bool intel_dp_ack_sink_irq_esi(struct intel_dp *intel_dp, u8 esi[4])
+{
+	int retry;
+
+	for (retry = 0; retry < 3; retry++) {
+		if (drm_dp_dpcd_write(&intel_dp->aux, DP_SINK_COUNT_ESI + 1,
+				      &esi[1], 3) == 3)
+			return true;
+	}
+
+	return false;
+}
+
 bool
 intel_dp_needs_vsc_sdp(const struct intel_crtc_state *crtc_state,
 		       const struct drm_connector_state *conn_state)
@@ -3660,7 +3673,6 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 		 */
 		u8 esi[DP_DPRX_ESI_LEN+2] = {};
 		bool handled;
-		int retry;
 
 		if (!intel_dp_get_sink_irq_esi(intel_dp, esi)) {
 			drm_dbg_kms(&i915->drm,
@@ -3685,15 +3697,8 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 		if (!handled)
 			break;
 
-		for (retry = 0; retry < 3; retry++) {
-			int wret;
-
-			wret = drm_dp_dpcd_write(&intel_dp->aux,
-						 DP_SINK_COUNT_ESI+1,
-						 &esi[1], 3);
-			if (wret == 3)
-				break;
-		}
+		if (!intel_dp_ack_sink_irq_esi(intel_dp, esi))
+			drm_dbg_kms(&i915->drm, "Failed to ack ESI\n");
 	}
 
 	return link_ok;
-- 
2.30.2

