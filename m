Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 81CB4318DA3
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Feb 2021 15:52:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDBE26EE3C;
	Thu, 11 Feb 2021 14:52:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C5FC6EE3C
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Feb 2021 14:52:52 +0000 (UTC)
IronPort-SDR: cF5DWO7SY0uRjDVSruBmkQchXliJYbaTB8KAmtJSVg8OCQTvuQRManO7vstHODc9FWDPhZ0sua
 ciHBMBaW8+YQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="182321428"
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="182321428"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 06:52:51 -0800
IronPort-SDR: xUtG1Z/TZceo0yZ/lkivCCb/CkJXxpeQj4MjOo9llnUMMD2wNt1gVB/U4UGmqLUt9ivz4PohSm
 UP/QkwbfaCDQ==
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="490387334"
Received: from hblancoa-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.99])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 06:52:49 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Feb 2021 16:52:14 +0200
Message-Id: <24ef61574e5af12cd86d5b85afbfbd4ac2f9de25.1613054234.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1613054234.git.jani.nikula@intel.com>
References: <cover.1613054234.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 4/9] drm/i915/edp: read sink MSO
 configuration for eDP 1.4+
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
anything with the information yet besides logging.

FIXME: The pixel overlap is present in DisplayID 2.0, but we don't have
parsing for that. Assume zero for now. We could also add quirks for
non-zero pixel overlap before DisplayID 2.0 parsing.

v3: Add placeholder for pixel overlap.

v2: Rename intel_dp_mso_init -> intel_edp_mso_init

Cc: Nischal Varide <nischal.varide@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  2 ++
 drivers/gpu/drm/i915/display/intel_dp.c       | 33 +++++++++++++++++++
 2 files changed, 35 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index ebaa9d0ed376..71611b596c88 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1487,6 +1487,8 @@ struct intel_dp {
 	int max_link_lane_count;
 	/* Max rate for the current link */
 	int max_link_rate;
+	int mso_link_count;
+	int mso_pixel_overlap;
 	/* sink or branch descriptor */
 	struct drm_dp_desc desc;
 	struct drm_dp_aux aux;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 8d7ca03453e5..48e65b9a967a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3516,6 +3516,37 @@ static void intel_dp_get_dsc_sink_cap(struct intel_dp *intel_dp)
 	}
 }
 
+static void intel_edp_mso_init(struct intel_dp *intel_dp)
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
+		drm_err(&i915->drm, "No source MSO support, disabling\n");
+		mso = 0;
+	}
+
+	intel_dp->mso_link_count = mso;
+	intel_dp->mso_pixel_overlap = 0; /* FIXME: read from DisplayID v2.0 */
+}
+
 static bool
 intel_edp_init_dpcd(struct intel_dp *intel_dp)
 {
@@ -3599,6 +3630,8 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp)
 	 */
 	intel_edp_init_source_oui(intel_dp, true);
 
+	intel_edp_mso_init(intel_dp);
+
 	return true;
 }
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
