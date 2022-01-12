Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A87BF48C2C2
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jan 2022 12:03:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04D3A113E98;
	Wed, 12 Jan 2022 11:03:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D0A9113E98
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jan 2022 11:03:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641985417; x=1673521417;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5KEdP+AdJoClEdkwa9+I2yVOFf2Mi3JZOhrpXBTGl2s=;
 b=cfKtcvVjWrVKooXjS2Q1KbTYc80CQ1I8wtorvfyw2E9EVJD53msFeNzM
 ESJ+CSTD2VXdV1o4zJ4ymp2FgXfnjTnPt8+/q91XpjeBzgPyGo3uNJBE2
 cQWUGU6LWJGtoQSsbDwuLfPpPCmYt+SH2o7qC4qv3G1wH4DG1NhhGT9wO
 UlZAvhDLQkzCw/32kmzRojNdXUPkw5iNMDOs7n8RqkbdvBHH/mUjhG4Ie
 evTUClUIrO6zHgpC+LxtOt2GJRKMWLMO81DTRMeXSpQ9vJpjJbhEhLqm2
 etNntk/jOrQSMW024XFudq7T1H00v6GK1Muvy8L2lO/NvvyD5JwGxSHVi A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10224"; a="231051685"
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="231051685"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 03:03:36 -0800
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="691346385"
Received: from pmasonx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.13.224])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 03:03:35 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Jan 2022 13:03:16 +0200
Message-Id: <20220112110319.1172110-4-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220112110319.1172110-1-jani.nikula@intel.com>
References: <20220112110319.1172110-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH RESEND 4/7] drm/i915/mst: abstract handling of
 link status in DP MST
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We'll want to expand on this, so abstract it to a separate function
first. Improve debug logging while at it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 23 ++++++++++++++++++-----
 1 file changed, 18 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6de39056e2f8..5a7976768b06 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3639,6 +3639,21 @@ intel_dp_mst_hpd_irq(struct intel_dp *intel_dp, u8 *esi, bool *handled)
 	}
 }
 
+static bool intel_dp_mst_link_status(struct intel_dp *intel_dp, u8 *esi)
+{
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	if (!drm_dp_channel_eq_ok(&esi[10], intel_dp->lane_count)) {
+		drm_dbg_kms(&i915->drm,
+			    "[ENCODER:%d:%s] channel EQ not ok, retraining\n",
+			    encoder->base.base.id, encoder->base.name);
+		return false;
+	}
+
+	return true;
+}
+
 /**
  * intel_dp_check_mst_status - service any pending MST interrupts, check link status
  * @intel_dp: Intel DP struct
@@ -3686,11 +3701,9 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 		drm_dbg_kms(&i915->drm, "DPRX ESI: %4ph\n", esi);
 
 		/* check link status - esi[10] = 0x200c */
-		if (intel_dp->active_mst_links > 0 && link_ok &&
-		    !drm_dp_channel_eq_ok(&esi[10], intel_dp->lane_count)) {
-			drm_dbg_kms(&i915->drm,
-				    "channel EQ not ok, retraining\n");
-			link_ok = false;
+		if (intel_dp->active_mst_links > 0 && link_ok) {
+			if (!intel_dp_mst_link_status(intel_dp, esi))
+				link_ok = false;
 		}
 
 		intel_dp_mst_hpd_irq(intel_dp, esi, &handled);
-- 
2.30.2

