Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 984CFC276C3
	for <lists+intel-gfx@lfdr.de>; Sat, 01 Nov 2025 04:26:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F7E710EC6D;
	Sat,  1 Nov 2025 03:26:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MC9naxK2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A139510EC6C;
 Sat,  1 Nov 2025 03:26:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761967563; x=1793503563;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tPO+WYoYud5BcRQca20kMwitDVVIThbWn9p6w2tcwxU=;
 b=MC9naxK2zvcmmk1NUZDwq1ho9F+W+CcWA0KDECnebqsfORUOib1swfIj
 6bVka8nY4l7PfNO4uVp8AM54o2vzp6b5/6S8tVd+Eil0Jximva0r5k5qP
 gwKVl7wQp1643c8oW8Ig7Jog/dGZDuUIsdd0WYLS69HKChgzqKmwiL8M6
 akdfn7rAcR/ZT49RE5yeueEwJNh1EJ9sc0J1CoNbQ1PDm2SIE5aCBNJkq
 nGSHFP+5xtwsktKKhFCrgW/PVt1fGrMVutupP+sCXXDb+iEavV9Q/Bbzm
 JYTRa39v/CYPR1lqcKTHidyiYhIlEdS0sow1HxDcf2CwveItNuLU/vae5 g==;
X-CSE-ConnectionGUID: pV1WIlhvT5WD7rJh7r3kkA==
X-CSE-MsgGUID: oi5AJ6dbRiay3XLD4aM3Kg==
X-IronPort-AV: E=McAfee;i="6800,10657,11599"; a="64019882"
X-IronPort-AV: E=Sophos;i="6.19,271,1754982000"; d="scan'208,223";a="64019882"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 20:26:03 -0700
X-CSE-ConnectionGUID: 47/chT/IShGjp+iQ8X/K4A==
X-CSE-MsgGUID: TwyutGsZSRGCBha9KmnN7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,271,1754982000"; 
 d="scan'208,223";a="217038080"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa002.jf.intel.com with ESMTP; 31 Oct 2025 20:26:02 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH v5 24/25] drm/i915/display: Aux Enable and Display powerwell
 timeouts
Date: Sat,  1 Nov 2025 08:55:12 +0530
Message-Id: <20251101032513.4171255-25-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251101032513.4171255-1-suraj.kandpal@intel.com>
References: <20251101032513.4171255-1-suraj.kandpal@intel.com>
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

