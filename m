Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB98494C6C
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jan 2022 12:01:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBAD710E1EE;
	Thu, 20 Jan 2022 11:01:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A366310E1EE
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jan 2022 11:01:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642676470; x=1674212470;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ov8fjPJVa76xer2XckeTdIRyrQ/ixZRNDCTNlEoTnPI=;
 b=fRSQUXZbwimZpqkIUoDN3gDvZsQOeaW7qP/KyeUb8AuQoBJrv60g95JE
 g1sqipqJTuoy2jQk30lWBFEwxNATJJboHjOKLUXtcusREjAd2YjLEGqFQ
 yr6C4Ts+8PMj4MEkL/NDi0/Pdo0SfJGA1WNtW4L9ih+3EpcOI8WBcGurl
 7PE1YJIGS48htb19Uxjq6nwCUCb9MB5BQW7miYKYVXVBMT0BlNwc4qnnJ
 5bsuudjKYn4Fbn/ufds2XqPrOpNrONQ518kN5xDwuYMuFYe6bwK8Dk/EJ
 45Y20a3FxfFIINRFyFN4rbs/OdeU1YiEUSb/CecX35AAPYWF8eyPYPu/t w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10232"; a="245118609"
X-IronPort-AV: E=Sophos;i="5.88,302,1635231600"; d="scan'208";a="245118609"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 03:01:10 -0800
X-IronPort-AV: E=Sophos;i="5.88,302,1635231600"; d="scan'208";a="532727388"
Received: from davidfsc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.52.140])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 03:01:08 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>,
	intel-gfx@lists.freedesktop.org
Date: Thu, 20 Jan 2022 13:01:02 +0200
Message-Id: <20220120110102.3116218-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220112110319.1172110-7-jani.nikula@intel.com>
References: <20220112110319.1172110-7-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/mst: only ack the ESI we actually
 handled
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

Seems odd that we clear all event status indicators if we've only
handled some. Only clear the ones we've handled.

v2: ack DOWN_REP and UP_REQ only if they were set in esi (Ville)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 20 ++++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0960e6e3be77..cb726cee9e1d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3625,13 +3625,17 @@ static void intel_dp_handle_test_request(struct intel_dp *intel_dp)
 }
 
 static void
-intel_dp_mst_hpd_irq(struct intel_dp *intel_dp, u8 *esi, bool *handled)
+intel_dp_mst_hpd_irq(struct intel_dp *intel_dp, u8 *esi, u8 *ack)
 {
-	drm_dp_mst_hpd_irq(&intel_dp->mst_mgr, esi, handled);
+	bool handled = false;
+
+	drm_dp_mst_hpd_irq(&intel_dp->mst_mgr, esi, &handled);
+	if (handled)
+		ack[1] |= esi[1] & (DP_DOWN_REP_MSG_RDY | DP_UP_REQ_MSG_RDY);
 
 	if (esi[1] & DP_CP_IRQ) {
 		intel_hdcp_handle_cp_irq(intel_dp->attached_connector);
-		*handled = true;
+		ack[1] |= DP_CP_IRQ;
 	}
 }
 
@@ -3683,7 +3687,7 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 
 	for (;;) {
 		u8 esi[4] = {};
-		bool handled;
+		u8 ack[4] = {};
 
 		if (!intel_dp_get_sink_irq_esi(intel_dp, esi)) {
 			drm_dbg_kms(&i915->drm,
@@ -3699,15 +3703,15 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 		    esi[3] & LINK_STATUS_CHANGED) {
 			if (!intel_dp_mst_link_status(intel_dp))
 				link_ok = false;
-			handled = true;
+			ack[3] |= LINK_STATUS_CHANGED;
 		}
 
-		intel_dp_mst_hpd_irq(intel_dp, esi, &handled);
+		intel_dp_mst_hpd_irq(intel_dp, esi, ack);
 
-		if (!handled)
+		if (!memchr_inv(ack, 0, sizeof(ack)))
 			break;
 
-		if (!intel_dp_ack_sink_irq_esi(intel_dp, esi))
+		if (!intel_dp_ack_sink_irq_esi(intel_dp, ack))
 			drm_dbg_kms(&i915->drm, "Failed to ack ESI\n");
 	}
 
-- 
2.30.2

