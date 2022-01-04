Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A28B484719
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jan 2022 18:40:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E9D88901E;
	Tue,  4 Jan 2022 17:40:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5309989057
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jan 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641318053; x=1672854053;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4sLVGq0mpfjZ+FzbMIVKun0ZP6GXM6//KJIDR8oqgHI=;
 b=hwwnmof2gd0U2eKYjiknz2ZSJnBteikLKnGf2siPJR83G+4B5+Va052t
 VWSMansa/VDqNzsqQdBdIXfIyaTWpPktshXs3ePUafGBhMGw48GU1lYTx
 E0fOKzLhj7DYFrXmCTsfiIz9zG9RUsB6GQIt8jl7HxWRJ9h5DNA3Lbe5+
 nq5nm1WT/xffTynvyjvFBM8sMEGTwlq18ab0sTqddSYtbHb9rwxk3zZTE
 pf9AkPgroJx3+eBf+e1m0h9uPDxRc17gsQ49A+4E9FyUTAYfoz/ktNwMt
 l5Y/Nj6XwZPPNYP0w3zEiBW4ZqwXdRgvgWm/fNO6tudvJMNa6gJ8aMTQ8 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10216"; a="328609424"
X-IronPort-AV: E=Sophos;i="5.88,261,1635231600"; d="scan'208";a="328609424"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2022 09:40:33 -0800
X-IronPort-AV: E=Sophos;i="5.88,261,1635231600"; d="scan'208";a="556239299"
Received: from gtobin-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.11.253])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2022 09:40:31 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Jan 2022 19:39:51 +0200
Message-Id: <d828da66122b11d33ba80dbe6b6a742881a3ebcd.1641317930.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1641317930.git.jani.nikula@intel.com>
References: <cover.1641317930.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/7] drm/i915/mst: only ack the ESI we actually
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Seems odd that we clear all event status indicators if we've only
handled some. Only clear the ones we've handled.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 20 ++++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 82388112e062..ebceba6ffc4b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3624,13 +3624,17 @@ static void intel_dp_handle_test_request(struct intel_dp *intel_dp)
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
+		ack[1] |= DP_DOWN_REP_MSG_RDY | DP_UP_REQ_MSG_RDY;
 
 	if (esi[1] & DP_CP_IRQ) {
 		intel_hdcp_handle_cp_irq(intel_dp->attached_connector);
-		*handled = true;
+		ack[1] |= DP_CP_IRQ;
 	}
 }
 
@@ -3682,7 +3686,7 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 
 	for (;;) {
 		u8 esi[4] = {};
-		bool handled;
+		u8 ack[4] = {};
 
 		if (!intel_dp_get_sink_irq_esi(intel_dp, esi)) {
 			drm_dbg_kms(&i915->drm,
@@ -3698,15 +3702,15 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
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

