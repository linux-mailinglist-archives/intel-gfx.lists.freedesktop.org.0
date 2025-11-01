Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67AD6C27659
	for <lists+intel-gfx@lfdr.de>; Sat, 01 Nov 2025 04:05:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED2C310EC30;
	Sat,  1 Nov 2025 03:05:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K5iZ8axf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D99C10EC2F;
 Sat,  1 Nov 2025 03:05:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761966347; x=1793502347;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MOBo3sKdSAFU1a0EvuvVOA0npo0GZKBh1LyRGoGrsBc=;
 b=K5iZ8axfTu0u37up5RUpuDthGBp4wIoHlqkJbyKAwom1FsigNPjiWFOf
 Uf+N+0i1cDf59SnG5sMUrrv3W8s7CpkXGVbjxWxpkqbpEYBNGwKJVAVDh
 XoDmxyaz2xkZCddmmuHlGRlMo/7+iKrKuULuRcQ85lAqTcdHY0uwyCrCh
 luv5wPFnd5bhWWtNe+J1Y/Xc7gloqFBrZtJqjwcHlqVy7DtpR6aUc+T4I
 rT2V3SB2YKIAkOAQRci3edywydoPTbd6ch56CicSErahOORIgNEf7ZQ//
 84SDwIttUi2Evi8p3KX4rpVwaiI7lxJGhjyd0LxwLNoZdc82lyMGuiSqS g==;
X-CSE-ConnectionGUID: Q6aN0iW1TVipzz3ZW6M1DA==
X-CSE-MsgGUID: ozPZY6ZxQBuNLODT1dPWfw==
X-IronPort-AV: E=McAfee;i="6800,10657,11599"; a="81759554"
X-IronPort-AV: E=Sophos;i="6.19,271,1754982000"; d="scan'208,223";a="81759554"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 20:05:47 -0700
X-CSE-ConnectionGUID: S90YNcxZS2yxAzRAOAwjpw==
X-CSE-MsgGUID: LjDo2F8DRJWqrLR1AkDSQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,271,1754982000"; 
 d="scan'208,223";a="217222832"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa001.fm.intel.com with ESMTP; 31 Oct 2025 20:05:42 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, uma.shankar@intel.com,
 gustavo.sousa@intel.com, lucas.demarchi@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v4 24/25] drm/i915/display: Aux Enable and Display powerwell
 timeouts
Date: Sat,  1 Nov 2025 08:34:33 +0530
Message-Id: <20251101030434.4159839-25-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251101030434.4159839-1-suraj.kandpal@intel.com>
References: <20251101030434.4159839-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

From XE3P we can now poll if the AUX power is up or down define the
timeouts for each respectively.

Bspec: 68967
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
V1 -> V2:
-Remove the extra blank line added (Arun)

 .../i915/display/intel_display_power_well.c   | 22 +++++++++++++++++--
 1 file changed, 20 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index d1b70a117d73..eab7019f2252 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -1866,18 +1866,36 @@ static void xelpdp_aux_power_well_enable(struct intel_display *display,
 	 * expected to just wait a fixed 600us after raising the request
 	 * bit.
 	 */
-	usleep_range(600, 1200);
+	if (DISPLAY_VER(display) >= 35) {
+		if (intel_de_wait_for_set(display, XELPDP_DP_AUX_CH_CTL(display, aux_ch),
+					  XELPDP_DP_AUX_CH_CTL_POWER_STATUS, 2))
+			drm_warn(display->drm,
+				 "Timeout waiting for PHY %c AUX channel power to be up\n",
+				 phy_name(phy));
+	} else {
+		usleep_range(600, 1200);
+	}
 }
 
 static void xelpdp_aux_power_well_disable(struct intel_display *display,
 					  struct i915_power_well *power_well)
 {
 	enum aux_ch aux_ch = i915_power_well_instance(power_well)->xelpdp.aux_ch;
+	enum phy phy = icl_aux_pw_to_phy(display, power_well);
 
 	intel_de_rmw(display, XELPDP_DP_AUX_CH_CTL(display, aux_ch),
 		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST,
 		     0);
-	usleep_range(10, 30);
+
+	if (DISPLAY_VER(display) >= 35) {
+		if (intel_de_wait_for_clear(display, XELPDP_DP_AUX_CH_CTL(display, aux_ch),
+					    XELPDP_DP_AUX_CH_CTL_POWER_STATUS, 1))
+			drm_warn(display->drm,
+				 "Timeout waiting for PHY %c AUX channel to powerdown\n",
+				 phy_name(phy));
+	} else {
+		usleep_range(10, 30);
+	}
 }
 
 static bool xelpdp_aux_power_well_enabled(struct intel_display *display,
-- 
2.34.1

