Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B949F2FB544
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 11:22:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE1C56E0F3;
	Tue, 19 Jan 2021 10:22:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4C4B6E0EF
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 10:22:20 +0000 (UTC)
IronPort-SDR: fC5GO1eSIa8O1peTNCtOodZMsPGyrkErCO0AxSO6WFceuAZygu6c4FAoX7r+4UUFDFwwdqMJI9
 KAy5QPN8s0Og==
X-IronPort-AV: E=McAfee;i="6000,8403,9868"; a="240445486"
X-IronPort-AV: E=Sophos;i="5.79,358,1602572400"; d="scan'208";a="240445486"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2021 02:22:16 -0800
IronPort-SDR: 557TPgi+1/OCV100kkIjvAshM3zkeGFRbq8C6crTZ1PJeQppLkDULR5k3CA4Ee1qJmcDVfYzOv
 dnG0tJGWMafQ==
X-IronPort-AV: E=Sophos;i="5.79,358,1602572400"; d="scan'208";a="355528779"
Received: from obaracos-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.252.44.192])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2021 02:22:14 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Jan 2021 12:22:01 +0200
Message-Id: <2732431ed79f1bd732b3e468a9f45eb960f27df0.1611051544.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1611051543.git.jani.nikula@intel.com>
References: <cover.1611051543.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/dp: read sink MSO configuration
 for eDP 1.4+
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
Cc: jani.nikula@intel.com, Nischal Varide <nischal.varide@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Read and debug log the eDP sink MSO configuration. Do not actually do
anything with the information yet besides logging, as there's no source
MSO implementation.

Cc: Nischal Varide <nischal.varide@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 29 +++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4a2945324e7c..70d3163a9f58 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4175,6 +4175,33 @@ static void intel_dp_get_dsc_sink_cap(struct intel_dp *intel_dp)
 	}
 }
 
+static void intel_dp_mso_init(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	u8 mso;
+
+	if (intel_dp->edp_dpcd[0] < DP_EDP_14)
+		return;
+
+	if (drm_dp_dpcd_readb(&intel_dp->aux, DP_EDP_MSO_LINK_CAPABILITIES, &mso) != 1) {
+		drm_err(&i915->drm, "Failed to read MSO cap\n");
+		return;
+	}
+
+	/* Valid configurations are SST or MSO 2x1, 2x2, 4x1 */
+	mso &= DP_EDP_MSO_NUMBER_OF_LINKS_MASK;
+	if (mso % 2 || mso > drm_dp_max_lane_count(intel_dp->dpcd)) {
+		drm_err(&i915->drm, "Invalid MSO link count cap %u\n", mso);
+		mso = 0;
+	}
+
+	if (mso) {
+		drm_dbg_kms(&i915->drm, "Sink MSO %ux%u configuration\n",
+			    mso, drm_dp_max_lane_count(intel_dp->dpcd) / mso);
+		drm_err(&i915->drm, "Sink uses MSO, no source support\n");
+	}
+}
+
 static bool
 intel_edp_init_dpcd(struct intel_dp *intel_dp)
 {
@@ -4258,6 +4285,8 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp)
 	 */
 	intel_edp_init_source_oui(intel_dp, true);
 
+	intel_dp_mso_init(intel_dp);
+
 	return true;
 }
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
