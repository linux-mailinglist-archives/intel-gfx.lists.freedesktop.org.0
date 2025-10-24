Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B2FFC0582E
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 12:08:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EB6510EA4B;
	Fri, 24 Oct 2025 10:08:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d6g1Sgji";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 295BE10EA45;
 Fri, 24 Oct 2025 10:08:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761300508; x=1792836508;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hX7gWUuqWGUYweANl90TTEi18JMfCw+JEMyen6lWchs=;
 b=d6g1Sgjiid8PW3HYQVhothVO80dQYJKfxzNj598IH3koLbLcece2BKp6
 VxEK8EpSPkjjBnN9VMynjUiTOgcgx2cNN8p2IdFbIcumJBjzHT685ydXY
 3FTdivcj2cTGKs3X3BPFpwKyHATsiFjFk9GZzANvyUKSRZOvN+pPx4Q5c
 WObWn/glTVzyvpo3I6EboL/IUEf6TgZhkX0W8AKeQPQRl2Biw3cQiPajj
 bvupmQ6Usyzy7P8usdDL+uYmKdAujZd2Uw6GR6rFM5dbOP43I2vbcZCPG
 rKfBUalpJztCjWPmLxZjIQ/0I2N01UrYsnaxHnAVjoGM5r/Uf+FtyAImd w==;
X-CSE-ConnectionGUID: qyNUTuz4RH6tF9StKfWpAg==
X-CSE-MsgGUID: ulEf3BhvS7yOyvs4+RhkdQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="67346869"
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208,223";a="67346869"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 03:08:28 -0700
X-CSE-ConnectionGUID: XGmLNXNtSj2vuWFOR79fEQ==
X-CSE-MsgGUID: 1hy7q690T9OjIL1rqN5/sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; 
 d="scan'208,223";a="208039340"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa002.fm.intel.com with ESMTP; 24 Oct 2025 03:08:25 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, uma.shankar@intel.com,
 gustavo.sousa@intel.com, lucas.demarchi@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 24/26] drm/i915/display: Aux Enable and Display powerwell
 timeouts
Date: Fri, 24 Oct 2025 15:37:10 +0530
Message-Id: <20251024100712.3776261-25-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251024100712.3776261-1-suraj.kandpal@intel.com>
References: <20251024100712.3776261-1-suraj.kandpal@intel.com>
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
---
V1 -> V2: Remove the extra blank line added (Arun)
---
 .../i915/display/intel_display_power_well.c   | 22 +++++++++++++++++--
 1 file changed, 20 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 5e88b930f5aa..e1d45ef0eedd 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -1864,18 +1864,36 @@ static void xelpdp_aux_power_well_enable(struct intel_display *display,
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

