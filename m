Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8486EC24826
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Oct 2025 11:37:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14D8610EB2F;
	Fri, 31 Oct 2025 10:37:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XGxkH+pU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0061E10EB34;
 Fri, 31 Oct 2025 10:37:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761907075; x=1793443075;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EfY0r6kzaWdztcKHGPY5haHhathDiTMf7RbNMF0/lnw=;
 b=XGxkH+pUC4KuwUiyxy/GE4JJlxXQgI0KBiBcRV5F97gzgeWQIiT/PCAC
 dD8aAozHPAmRniCXnOJH2Tg+P/KUbonFvRaWh3YBzOibSsu04Mg2MSh64
 pRivsIkPvPxePP5qa3JTa2chM+5f0LFuN7YuODQw/wEaw/wGd8REvzQt9
 auOzf3Kg2E0rNFn+KX9lJYFcrEKak2rOltnPEv8ZcdmHSDLJbHwP0Ua0j
 uM722+BQMlsPxFQEhx8w1PmwysGgTJdPly8f1+HFkRb2SS+N+vR4HgaI7
 F3UzuQ3kWxqQmIy3uG2sGUgtSItChRwA5t6KsUryj4BdoD7cFCk6LH4RQ Q==;
X-CSE-ConnectionGUID: fyFlh7XlRQ+2Qr27kvgIlw==
X-CSE-MsgGUID: XjwayDugQumPOlClJEvC0Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="86690906"
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208,223";a="86690906"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 03:37:54 -0700
X-CSE-ConnectionGUID: mu30UjXKSBOiojxQtWRz8g==
X-CSE-MsgGUID: aZPj9dFvT5iOtp6zTJUOwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; 
 d="scan'208,223";a="190554760"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa005.fm.intel.com with ESMTP; 31 Oct 2025 03:37:51 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, uma.shankar@intel.com,
 gustavo.sousa@intel.com, lucas.demarchi@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v3 24/25] drm/i915/display: Aux Enable and Display powerwell
 timeouts
Date: Fri, 31 Oct 2025 16:06:42 +0530
Message-Id: <20251031103643.4147868-25-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251031103643.4147868-1-suraj.kandpal@intel.com>
References: <20251031103643.4147868-1-suraj.kandpal@intel.com>
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

