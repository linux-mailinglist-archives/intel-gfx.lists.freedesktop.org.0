Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E83F4425193
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 12:57:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DA1A6F400;
	Thu,  7 Oct 2021 10:57:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D5986F400
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Oct 2021 10:57:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10129"; a="226173004"
X-IronPort-AV: E=Sophos;i="5.85,354,1624345200"; d="scan'208";a="226173004"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 03:57:33 -0700
X-IronPort-AV: E=Sophos;i="5.85,354,1624345200"; d="scan'208";a="478518554"
Received: from roliveir-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.41.10])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 03:57:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Date: Thu,  7 Oct 2021 13:57:27 +0300
Message-Id: <20211007105727.18439-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dp: take LTTPR into account in
 128b/132b rates
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

Limit the supported UHBR rates based on the repeater support, if there
are repeaters.

This should be done in DP helper level, but that requires an overhaul of
the LTTPR handling, as the max rate is not enough to represent how
128b/132b rates may be masked along the way.

Curiously, the spec says:

* Shall be cleared to 00h when operating in 8b/10b Link Layer.

* Each LTTPR on the way back to the DPTX shall clear the bits that do
  not correspond to the LTTPR's current bit rate.

It's rather vague if we can reliably use the field at this time due to
the wording "operating" and "current". But it would seem bizarre to have
to wait until trying to operate a 128b/132b link layer at a certain bit
rate to figure this out.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 74a657ae131a..5824b7d9f4a8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -140,6 +140,9 @@ static void intel_dp_set_sink_rates(struct intel_dp *intel_dp)
 		return;
 	}
 
+	/*
+	 * Sink rates for 8b/10b.
+	 */
 	max_rate = drm_dp_bw_code_to_link_rate(intel_dp->dpcd[DP_MAX_LINK_RATE]);
 	max_lttpr_rate = drm_dp_lttpr_max_link_rate(intel_dp->lttpr_common_caps);
 	if (max_lttpr_rate)
@@ -163,6 +166,20 @@ static void intel_dp_set_sink_rates(struct intel_dp *intel_dp)
 		drm_dp_dpcd_readb(&intel_dp->aux,
 				  DP_128B132B_SUPPORTED_LINK_RATES, &uhbr_rates);
 
+		if (drm_dp_lttpr_count(intel_dp->lttpr_common_caps)) {
+			/* We have a repeater */
+			if (intel_dp->lttpr_common_caps[0] >= 0x20 &&
+			    intel_dp->lttpr_common_caps[DP_MAIN_LINK_CHANNEL_CODING_PHY_REPEATER -
+							DP_LT_TUNABLE_PHY_REPEATER_FIELD_DATA_STRUCTURE_REV] &
+			    DP_PHY_REPEATER_128B132B_SUPPORTED) {
+				/* Repeater supports 128b/132b, valid UHBR rates */
+				uhbr_rates &= intel_dp->lttpr_common_caps[DP_PHY_REPEATER_128B132B_RATES - DP_LT_TUNABLE_PHY_REPEATER_FIELD_DATA_STRUCTURE_REV];
+			} else {
+				/* Does not support 128b/132b */
+				uhbr_rates = 0;
+			}
+		}
+
 		if (uhbr_rates & DP_UHBR10)
 			intel_dp->sink_rates[i++] = 1000000;
 		if (uhbr_rates & DP_UHBR13_5)
-- 
2.30.2

