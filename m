Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6286D3EA508
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Aug 2021 15:00:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 597B56E3DB;
	Thu, 12 Aug 2021 13:00:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24A106E3DB
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Aug 2021 13:00:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10073"; a="202533821"
X-IronPort-AV: E=Sophos;i="5.84,315,1620716400"; d="scan'208";a="202533821"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2021 06:00:10 -0700
X-IronPort-AV: E=Sophos;i="5.84,315,1620716400"; d="scan'208";a="527812311"
Received: from linux-x299-aorus-gaming-3-pro.iind.intel.com ([10.223.34.130])
 by fmsmga002-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Aug 2021 06:00:06 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Swati Sharma <swati2.sharma@intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Uma Shankar <uma.shankar@intel.com>, Jani Nikula <jani.nikula@intel.com>,
 "Ville Syrj_l_" <ville.syrjala@linux.intel.com>,
 Imre Deak <imre.deak@intel.com>, Manasi Navare <manasi.d.navare@intel.com>,
 "Jos_ Roberto de Souza" <jose.souza@intel.com>,
 Sean Paul <seanpaul@chromium.org>, stable@vger.kernel.org
Date: Thu, 12 Aug 2021 18:41:07 +0530
Message-Id: <20210812131107.5531-1-swati2.sharma@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [v3][PATCH] drm/i915/display: Drop redundant debug print
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

drm_dp_dpcd_read/write already has debug error message.
Drop redundant error messages which gives false
status even if correct value is read in drm_dp_dpcd_read().

v2: -Added fixes tag (Ankit)
v3: -Fixed build error (CI)

Fixes: 9488a030ac91 ("drm/i915: Add support for enabling link status and recovery")
Cc: Swati Sharma <swati2.sharma@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com> (v2)
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: "Ville Syrj_l_" <ville.syrjala@linux.intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Cc: Manasi Navare <manasi.d.navare@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Cc: "Jos_ Roberto de Souza" <jose.souza@intel.com>
Cc: Sean Paul <seanpaul@chromium.org>
Cc: <stable@vger.kernel.org> # v5.12+

Link: https://patchwork.freedesktop.org/patch/msgid/20201218103723.30844-12-ankit.k.nautiyal@intel.com

Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index c386ef8eb200..2526c9c8c690 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3864,23 +3864,18 @@ static void intel_dp_check_device_service_irq(struct intel_dp *intel_dp)
 
 static void intel_dp_check_link_service_irq(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	u8 val;
 
 	if (intel_dp->dpcd[DP_DPCD_REV] < 0x11)
 		return;
 
 	if (drm_dp_dpcd_readb(&intel_dp->aux,
-			      DP_LINK_SERVICE_IRQ_VECTOR_ESI0, &val) != 1 || !val) {
-		drm_dbg_kms(&i915->drm, "Error in reading link service irq vector\n");
+			      DP_LINK_SERVICE_IRQ_VECTOR_ESI0, &val) != 1 || !val)
 		return;
-	}
 
 	if (drm_dp_dpcd_writeb(&intel_dp->aux,
-			       DP_LINK_SERVICE_IRQ_VECTOR_ESI0, val) != 1) {
-		drm_dbg_kms(&i915->drm, "Error in writing link service irq vector\n");
+			       DP_LINK_SERVICE_IRQ_VECTOR_ESI0, val) != 1)
 		return;
-	}
 
 	if (val & HDMI_LINK_STATUS_CHANGED)
 		intel_dp_handle_hdmi_link_status_change(intel_dp);
-- 
2.25.1

