Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 481F44F9FC0
	for <lists+intel-gfx@lfdr.de>; Sat,  9 Apr 2022 00:48:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 837B910E0E3;
	Fri,  8 Apr 2022 22:48:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C285310E0E3
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Apr 2022 22:48:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649458112; x=1680994112;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=/MrN3moGqo2T5x7y/8mu4fOOR4y/vo0MRypTfmBaZqQ=;
 b=S/afWLnJqK5GTS6s29eAhfCr0JtdOj+zzftfv4eeotqBnmQea+S8/Bu4
 oPUB1g3umJMjgwo8Z/Qz55hNR9mMvGmgHmiCxeXGeCOMHpr0n2F5ZJJ54
 4OWVf74PCdmg4e/2dIG8yp+yo+scoD8l7gGdVsHadsqj6CLa17f0OrDTy
 w/ygruiEyjwJZwNr6LOsXnH2ALRK26oUnFIyGGu+lIdpBSjKWbSXIheWc
 LDH36AR8dRWwTS6ceXoMuxOdKBHXv+bGzvP2PZJ9O9Wcc8jTFqn7X3zhI
 MNjEtLAEvWKyu2kwzTNsDmGLrekR1M8M0H0xBMaBhcaq/c3Z722uidGJ5 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10311"; a="241648642"
X-IronPort-AV: E=Sophos;i="5.90,246,1643702400"; d="scan'208";a="241648642"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2022 15:48:32 -0700
X-IronPort-AV: E=Sophos;i="5.90,246,1643702400"; d="scan'208";a="796505353"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2022 15:48:31 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  9 Apr 2022 01:46:29 +0300
Message-Id: <20220408224629.845887-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220408172154.807900-2-imre.deak@intel.com>
References: <20220408172154.807900-2-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/2] drm/i915/dp: Add workaround for spurious
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

v2: Keep DPCD read-out working on non-LTTPR platforms.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 33 ++++++++++---------
 1 file changed, 17 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 26f9e2b748e40..9feaf1a589f38 100644
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
@@ -197,13 +186,25 @@ static int intel_dp_init_lttpr(struct intel_dp *intel_dp, const u8 dpcd[DP_RECEI
  */
 int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp)
 {
-	u8 dpcd[DP_RECEIVER_CAP_SIZE];
-	int lttpr_count;
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	int lttpr_count = 0;
 
-	if (drm_dp_read_dpcd_caps(&intel_dp->aux, dpcd))
-		return -EIO;
+	/*
+	 * Detecting LTTPRs must be avoided on platforms with an AUX timeout
+	 * period < 3.2ms. (see DP Standard v2.0, 2.11.2, 3.6.6.1).
+	 */
+	if (!intel_dp_is_edp(intel_dp) &&
+	    (DISPLAY_VER(i915) >= 10 && !IS_GEMINILAKE(i915))) {
+		u8 dpcd[DP_RECEIVER_CAP_SIZE];
 
-	lttpr_count = intel_dp_init_lttpr(intel_dp, dpcd);
+		if (drm_dp_dpcd_probe(&intel_dp->aux, DP_LT_TUNABLE_PHY_REPEATER_FIELD_DATA_STRUCTURE_REV))
+			return -EIO;
+
+		if (drm_dp_read_dpcd_caps(&intel_dp->aux, dpcd))
+			return -EIO;
+
+		lttpr_count = intel_dp_init_lttpr(intel_dp, dpcd);
+	}
 
 	/*
 	 * The DPTX shall read the DPRX caps after LTTPR detection, so re-read
-- 
2.30.2

