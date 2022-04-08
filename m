Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C6864F9B8E
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Apr 2022 19:22:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D62010E7C8;
	Fri,  8 Apr 2022 17:22:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF08610E7C3
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Apr 2022 17:22:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649438544; x=1680974544;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=TgD0Egd8WIjPCifwLkwj/17nV8y5mGJObsgJiNR/iR0=;
 b=bMRBtNbGvIg1Ho4+Ub1dlHg6kc/nWxvVR2ECbBGIv0st1oBOxIrMgzsY
 1JHlMUiEgR7IKghykF0VTl7xHZk++H2LswsEI5/nCWVj7jk6nHNtRskAp
 h7sQllN6kDiEuK13cp0LV3M2OlFs3hEpxPLkYsDiAKkVdRfCpMtA1asUh
 FpOIdUY9/gTVv7EbacPTitaxGgsSOykWwyXy3KMe59cxpDxkYwW3Kc6ob
 G7j29Fo9Ivfi+V/f3BorjrR7FPMOSSvA7I1SJFcuENlz7240rZjCX77hx
 XR4JxbXJk6iRDwrNVEVUlgSa3n8x1ex67aYLg69WXkaPcrSkgugHtmxKl w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10310"; a="241583356"
X-IronPort-AV: E=Sophos;i="5.90,245,1643702400"; d="scan'208";a="241583356"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2022 10:21:58 -0700
X-IronPort-AV: E=Sophos;i="5.90,245,1643702400"; d="scan'208";a="525458398"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2022 10:21:58 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Apr 2022 20:21:54 +0300
Message-Id: <20220408172154.807900-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220408172154.807900-1-imre.deak@intel.com>
References: <20220408172154.807900-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915/dp: Add workaround for spurious
 AUX timeouts/hotplugs on LTTPR links
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

Some ADLP DP link configuration at least with multiple LTTPRs expects
the first DPCD access during the LTTPR/DPCD detection after hotplug to
be a read from the LTTPR range starting with
DP_LT_TUNABLE_PHY_REPEATER_FIELD_DATA_STRUCTURE_REV. The side effect of
this read is to put each LTTPR into the LTTPR transparent or LTTPR
non-transparent mode.

The lack of the above read may leave some of the LTTPRs in non-LTTPR
mode, while other LTTPRs in LTTPR transparent or LTTPR non-transparent
mode (for instance LTTPRs after system suspend/resume that kept their
mode from before suspend). Due to the different AUX timeouts the
different modes imply, the DPCD access from a non-LTTPR range will
timeout and lead to an LTTPR generated hotplug towards the source (which
the LTTPR firmware uses to account for buggy TypeC adapters with a long
wake-up delay).

To avoid the above AUX timeout and subsequent hotplug interrupt, make
sure that the first DPCD access during detection is a read from an
LTTPR register.

VLK: SYSCROS-72939

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 25 +++++++++++--------
 1 file changed, 14 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 26f9e2b748e40..8f4f3b6637c81 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -82,19 +82,8 @@ static bool intel_dp_read_lttpr_common_caps(struct intel_dp *intel_dp,
 					    const u8 dpcd[DP_RECEIVER_CAP_SIZE])
 {
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	int ret;
 
-	if (intel_dp_is_edp(intel_dp))
-		return false;
-
-	/*
-	 * Detecting LTTPRs must be avoided on platforms with an AUX timeout
-	 * period < 3.2ms. (see DP Standard v2.0, 2.11.2, 3.6.6.1).
-	 */
-	if (DISPLAY_VER(i915) < 10 || IS_GEMINILAKE(i915))
-		return false;
-
 	ret = drm_dp_read_lttpr_common_caps(&intel_dp->aux, dpcd,
 					    intel_dp->lttpr_common_caps);
 	if (ret < 0)
@@ -197,12 +186,26 @@ static int intel_dp_init_lttpr(struct intel_dp *intel_dp, const u8 dpcd[DP_RECEI
  */
 int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp)
 {
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	/*
+	 * Detecting LTTPRs must be avoided on platforms with an AUX timeout
+	 * period < 3.2ms. (see DP Standard v2.0, 2.11.2, 3.6.6.1).
+	 */
+	bool init_lttpr = !intel_dp_is_edp(intel_dp) &&
+			  (DISPLAY_VER(i915) >= 10 && !IS_GEMINILAKE(i915));
 	u8 dpcd[DP_RECEIVER_CAP_SIZE];
 	int lttpr_count;
 
+	if (init_lttpr &&
+	    drm_dp_dpcd_probe(&intel_dp->aux, DP_LT_TUNABLE_PHY_REPEATER_FIELD_DATA_STRUCTURE_REV))
+		return -EIO;
+
 	if (drm_dp_read_dpcd_caps(&intel_dp->aux, dpcd))
 		return -EIO;
 
+	if (!init_lttpr)
+		return 0;
+
 	lttpr_count = intel_dp_init_lttpr(intel_dp, dpcd);
 
 	/*
-- 
2.30.2

