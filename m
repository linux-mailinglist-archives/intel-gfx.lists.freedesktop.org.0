Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C4137302743
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 16:53:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C25D6E226;
	Mon, 25 Jan 2021 15:53:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 554756E226
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 15:53:02 +0000 (UTC)
IronPort-SDR: pol3TRW0AOBn3wjOeFrqYLo8za7mf7FEaYV/bu/RRG+uK+MhUqQdP2lLRy3Tya3JniLRoX7RqS
 zlHBYGWNe8AQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9875"; a="177176027"
X-IronPort-AV: E=Sophos;i="5.79,373,1602572400"; d="scan'208";a="177176027"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 07:53:01 -0800
IronPort-SDR: tGx5koDT/Wx2O3OhQd77Y5eU2QQYHztZpzlI1YAHL833dH9D94R1KpfIVtD61OlDwK7Q+iAe0u
 SZ2YHjLYj60w==
X-IronPort-AV: E=Sophos;i="5.79,373,1602572400"; d="scan'208";a="368719395"
Received: from grassena-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.46.78])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 07:52:59 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Jan 2021 17:52:28 +0200
Message-Id: <3d3a76fc54f0049f840abf7d364c9ffb423483a8.1611589818.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1611589818.git.jani.nikula@intel.com>
References: <cover.1611589818.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/9] drm/i915/edp: read sink MSO configuration
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
anything with the information yet besides logging.

v2: Rename intel_dp_mso_init -> intel_edp_mso_init

Cc: Nischal Varide <nischal.varide@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 32 +++++++++++++++++++
 2 files changed, 33 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 927a8aeae324..59fe86fe4e4d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1438,6 +1438,7 @@ struct intel_dp {
 	int max_link_lane_count;
 	/* Max rate for the current link */
 	int max_link_rate;
+	int mso_link_count;
 	/* sink or branch descriptor */
 	struct drm_dp_desc desc;
 	struct drm_dp_aux aux;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7b4dd55021dc..23f98e8dd7df 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3512,6 +3512,36 @@ static void intel_dp_get_dsc_sink_cap(struct intel_dp *intel_dp)
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
+}
+
 static bool
 intel_edp_init_dpcd(struct intel_dp *intel_dp)
 {
@@ -3595,6 +3625,8 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp)
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
