Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB6956D752C
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 09:20:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83F1210E02B;
	Wed,  5 Apr 2023 07:20:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CD4710E02B
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680679233; x=1712215233;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3vS+aNywQ/Z84D6WXbnyqTruGSErxkiNBWm+SDGLhgI=;
 b=JhI/ez8N80dFt9CMYvaW4QSfEKf759dcSJVYkClqEpymcSCf8no/5mkR
 2KjznEeGVBAQIrbPxO8nHHH8TObLAZo5di5xhFXw77cg613EDCM249HR3
 zkSYFr1MQ+twH7xzM2zthg4HyuYldxN0K7vg3gjnkG0xGsmfnEKdLFCzg
 QOBvbIjqosUiwHR2yn2xz+BKbauzd4eSKXRM5MkcHvELQii103BXC8POV
 CIXNMpTX/znG/piiKoiwldryo2NqUM8on7YReKKbIYEyy3vlQ068CEpsN
 d4fUXYXDxaHUZE0lG4n5dLke5uMk99OYU1ZiKL6hnq6u80F2HI/cybh7n g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="330989246"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="330989246"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2023 00:20:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="719212607"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="719212607"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga001.jf.intel.com with ESMTP; 05 Apr 2023 00:20:31 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Apr 2023 12:49:51 +0530
Message-Id: <20230405071951.1258132-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230403080154.1239873-1-suraj.kandpal@intel.com>
References: <20230403080154.1239873-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/display: Increase AUX timeout for
 Type-C
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

Type-C PHYs are taking longer than expected for Aux IO Power Enabling.
Workaround: Increase the timeout.

WA_14017248603: adlp
Bspec: 55480

---v2
-change style on how we mention WA [Ankit]
-fix bat error

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../i915/display/intel_display_power_well.c   | 30 ++++++++++++++++++-
 1 file changed, 29 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 62bafcbc7937..52f595929a18 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -489,6 +489,34 @@ static void icl_tc_cold_exit(struct drm_i915_private *i915)
 		    "succeeded");
 }
 
+static void
+adl_aux_wait_for_power_well_enable(struct drm_i915_private *i915,
+				   struct i915_power_well *power_well,
+				   bool timeout_expected)
+{
+	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
+	enum phy phy = icl_aux_pw_to_phy(i915, power_well);
+	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
+
+	/*
+	 * WA_14017248603: adlp
+	 * Type-C Phy are taking longer than expected for AUX IO Power Enabling.
+	 * Increase timeout to 500ms.
+	 */
+	if (IS_ALDERLAKE_P(i915) && intel_phy_is_tc(i915, phy)) {
+		if (intel_de_wait_for_set(i915, regs->driver,
+					  HSW_PWR_WELL_CTL_STATE(pw_idx), 500)) {
+			drm_dbg_kms(&i915->drm, "%s power well enable timeout\n",
+				    intel_power_well_name(power_well));
+
+			drm_WARN_ON(&i915->drm, !timeout_expected);
+		}
+		return;
+	}
+
+	hsw_wait_for_power_well_enable(i915, power_well, timeout_expected);
+}
+
 static void
 icl_tc_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
 				 struct i915_power_well *power_well)
@@ -517,7 +545,7 @@ icl_tc_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
 	if (DISPLAY_VER(dev_priv) == 11 && intel_tc_cold_requires_aux_pw(dig_port))
 		icl_tc_cold_exit(dev_priv);
 
-	hsw_wait_for_power_well_enable(dev_priv, power_well, timeout_expected);
+	adl_aux_wait_for_power_well_enable(dev_priv, power_well, timeout_expected);
 
 	if (DISPLAY_VER(dev_priv) >= 12 && !is_tbt) {
 		enum tc_port tc_port;
-- 
2.25.1

