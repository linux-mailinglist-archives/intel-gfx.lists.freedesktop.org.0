Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56BB4BDC6CB
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 06:09:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2AE210E745;
	Wed, 15 Oct 2025 04:09:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FY8vrP+b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A76810E743;
 Wed, 15 Oct 2025 04:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760501373; x=1792037373;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Z6bK4jfIUm7Gp18zOlerMfbXsjKcFYWW4FvasH1t2NM=;
 b=FY8vrP+bnZJHkvFEtYSpHl7RkFwsXFgp8XowPpVidBfz37BW+1Cj+VIq
 sUSrWiOxTG7UH4gpPrN62sEJ59F5XF6mJVYWe7vbibP/Kc6DkY1p1nqPg
 lp4hrgELMRExReTmO+VShEnCIN0Q8jeCQK12ypGq7xYqanO9AUmxkQphT
 hfgng9+h9h8DVsFCpJZ7W+O9JCJZ/v9rpMltYi6410rESfTCOIuKjtBeV
 MUYW16kYuWqs0u2JM044Lt0AxlyrDYF4GTfqKk+QkmgQWqGNzL2aXuz0m
 wViSyYa5BSpvN2BIYoGsPxie/O6pLkrRnpnak2+xSjBlM0+1RgaYJkcgW g==;
X-CSE-ConnectionGUID: TP+B+ttlRX6OxKYBbkH2WA==
X-CSE-MsgGUID: xihid+iURpOYs5cZZZlZFA==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="66319007"
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208,223";a="66319007"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 21:09:33 -0700
X-CSE-ConnectionGUID: IBwN21OoQJC/OxtbojuPNQ==
X-CSE-MsgGUID: iMx118fjRHi3JIsQL0SsmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; 
 d="scan'208,223";a="219196333"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa001.jf.intel.com with ESMTP; 14 Oct 2025 21:09:31 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, uma.shankar@intel.com,
 gustavo.sousa@intel.com, lucas.demarchi@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 23/25] drm/i915/display: Aux Enable and Display powerwell
 timeouts
Date: Wed, 15 Oct 2025 09:38:15 +0530
Message-Id: <20251015040817.3431297-24-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251015040817.3431297-1-suraj.kandpal@intel.com>
References: <20251015040817.3431297-1-suraj.kandpal@intel.com>
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
 .../i915/display/intel_display_power_well.c   | 23 +++++++++++++++++--
 1 file changed, 21 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 5e88b930f5aa..1fc2e9450f03 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -1864,18 +1864,37 @@ static void xelpdp_aux_power_well_enable(struct intel_display *display,
 	 * expected to just wait a fixed 600us after raising the request
 	 * bit.
 	 */
-	usleep_range(600, 1200);
+
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

