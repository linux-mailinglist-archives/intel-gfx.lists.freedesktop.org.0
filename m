Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AACF792C46
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Sep 2023 19:16:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC1FE10E21B;
	Tue,  5 Sep 2023 17:16:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A48D710E21B
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Sep 2023 17:16:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693934210; x=1725470210;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=js+kW4aE7M4Mv+niafosjXiUwI0jyElo380rNIW1DoM=;
 b=VxWGdveOZhOwNWK4DkyomOprisPNymL+lss9yiJQ7nixcYqtpNLhg/GG
 xFtCiDBh6Yjd+AMXIYSUYo4KX2sqQwVDxC9Ugf7ehAnpww9V1RJeHNi78
 zDxV/EzgT/uO4WEJP50YpPnIe34HbQlPa9cjKqgxM8OHyk8CCxql+ECOZ
 3czJ4ZrJoDLARgHU4vq+M9SV3l/xBvxCcV1yHCx0I3h3pzU7ql4E7U5FK
 oaQu/E8UDt2feXNbf78wG/d3VpMH/Lxn0o/dMorV7Nkwl02zz1GnHUHN7
 v/AQkGyLAQ3HhzJ9sUDC5CLTrv+bUIXamPzuccaW+CKHsei4eWWbnUNjF w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="407846527"
X-IronPort-AV: E=Sophos;i="6.02,229,1688454000"; d="scan'208";a="407846527"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2023 10:14:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="744343809"
X-IronPort-AV: E=Sophos;i="6.02,229,1688454000"; d="scan'208";a="744343809"
Received: from amyachev-mobl3.ccr.corp.intel.com (HELO localhost)
 ([10.252.60.152])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2023 10:11:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Sep 2023 20:11:22 +0300
Message-Id: <4d08c0f63c4975cc8cd01b0f82845c989bf13dd0.1693933849.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1693933849.git.jani.nikula@intel.com>
References: <cover.1693933849.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/8] drm/i915/dsc: have intel_dsc_pps_read()
 return the value
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

Register read functions usually return the value instead of passing via
pointer parameters. Return the multiple register verification results
via a pointer parameter, which can also be NULL to skip the extra
checks.

Make the name conform to existing style better while at it.

Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 32 ++++++++++++++---------
 1 file changed, 19 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index abb2c4370231..b0be6615a865 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -809,13 +809,14 @@ void intel_dsc_disable(const struct intel_crtc_state *old_crtc_state)
 	}
 }
 
-static bool intel_dsc_read_pps_reg(struct intel_crtc_state *crtc_state,
-				   int pps, u32 *pps_val)
+static u32 intel_dsc_pps_read(struct intel_crtc_state *crtc_state, int pps,
+			      bool *check_equal)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	i915_reg_t dsc_reg[2];
 	int i, vdsc_per_pipe, dsc_reg_num;
+	u32 val = 0;
 
 	vdsc_per_pipe = intel_dsc_get_vdsc_per_pipe(crtc_state);
 	dsc_reg_num = min_t(int, ARRAY_SIZE(dsc_reg), vdsc_per_pipe);
@@ -824,20 +825,25 @@ static bool intel_dsc_read_pps_reg(struct intel_crtc_state *crtc_state,
 
 	intel_dsc_get_pps_reg(crtc_state, pps, dsc_reg, dsc_reg_num);
 
-	*pps_val = 0;
+	if (check_equal)
+		*check_equal = true;
 
 	for (i = 0; i < dsc_reg_num; i++) {
-		u32 pps_temp;
+		u32 tmp;
 
-		pps_temp = intel_de_read(i915, dsc_reg[i]);
+		tmp = intel_de_read(i915, dsc_reg[i]);
 
-		if (i == 0)
-			*pps_val = pps_temp;
-		else if (pps_temp != *pps_val)
-			return false;
+		if (i == 0) {
+			val = tmp;
+		} else if (check_equal && tmp != val) {
+			*check_equal = false;
+			break;
+		} else if (!check_equal) {
+			break;
+		}
 	}
 
-	return true;
+	return val;
 }
 
 static u32 intel_dsc_pps_read_and_verify(struct intel_crtc_state *crtc_state, int pps)
@@ -845,10 +851,10 @@ static u32 intel_dsc_pps_read_and_verify(struct intel_crtc_state *crtc_state, in
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	u32 val;
-	int ret;
+	bool all_equal;
 
-	ret = intel_dsc_read_pps_reg(crtc_state, pps, &val);
-	drm_WARN_ON(&i915->drm, !ret);
+	val = intel_dsc_pps_read(crtc_state, pps, &all_equal);
+	drm_WARN_ON(&i915->drm, !all_equal);
 
 	return val;
 }
-- 
2.39.2

