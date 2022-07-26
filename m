Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B463580CC9
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jul 2022 09:23:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6772211B783;
	Tue, 26 Jul 2022 07:23:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90E4311B829
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jul 2022 07:23:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658820226; x=1690356226;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iJVLVfErW+mE9aAl/BBo/H7rq8vKHcusEb065Ie0GQw=;
 b=Z1c8JmPVk+35oG/74SKsmhVIFP4sitzkB3gfzVSFk9qkKK6UIf0kK6BF
 XQpj5NRIqK2EqaeodC3UoFTMl85j0GXRV36O6hNJLNGROKf+I2FyEsS6O
 xjiBlGbgEpLkaLA4yjv4fRXouX+m/6p3Jpe6Y4mSTOWWZQVhu1qvZyS0M
 BWsHLcMzgk4EMMhvOpGVuGKOi3pHt4AYw+9KwJyqEprrn550fATiNHcmv
 zly76Ud60+r3gWajwlLQDlUdIAD/EVxoLhQyOp1ujMkzO4+eU3Mtbt39K
 PD5xOQeOTF9eszCDtzPu/TcKbxST2+KO2q/AHMX4AJ7NZYABhrLEtSRIW Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10419"; a="287895039"
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="287895039"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 00:23:46 -0700
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="667799723"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 00:23:45 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Jul 2022 12:53:00 +0530
Message-Id: <20220726072300.3950338-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dp: Check for Low voltage IO only for
 eDP
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

The low voltage sku check can be ignored as OEMs need to consider that
when designing the board and then put any limits in VBT.

Due to this check many DP sink that can be run with higher link rate,
are run at lower link rate, thereby pruning the resolutions that are
intended to be working as per bspec.

However, some eDP panels are getting issues [1] with higher link rate.
So keep the low voltage check for eDP, but ignore for DP sinks.
[1] https://gitlab.freedesktop.org/drm/intel/-/issues/6205

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5272

v2: Added comment about eDP HBR2 restriction for JSL/EHL (Arun).

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 32292c0be2bd..e50bba14e8c5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -405,7 +405,8 @@ static int icl_max_source_rate(struct intel_dp *intel_dp)
 	enum phy phy = intel_port_to_phy(dev_priv, dig_port->base.port);
 
 	if (intel_phy_is_combo(dev_priv, phy) &&
-	    (is_low_voltage_sku(dev_priv, phy) || !intel_dp_is_edp(intel_dp)))
+	    intel_dp_is_edp(intel_dp) &&
+	    is_low_voltage_sku(dev_priv, phy))
 		return 540000;
 
 	return 810000;
@@ -413,11 +414,8 @@ static int icl_max_source_rate(struct intel_dp *intel_dp)
 
 static int ehl_max_source_rate(struct intel_dp *intel_dp)
 {
-	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
-	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
-	enum phy phy = intel_port_to_phy(dev_priv, dig_port->base.port);
-
-	if (intel_dp_is_edp(intel_dp) || is_low_voltage_sku(dev_priv, phy))
+	/* For JSL/EHL, eDP supports only HBR2 5.4 (SOC PHY restriction) */
+	if (intel_dp_is_edp(intel_dp))
 		return 540000;
 
 	return 810000;
@@ -429,7 +427,9 @@ static int dg1_max_source_rate(struct intel_dp *intel_dp)
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
 
-	if (intel_phy_is_combo(i915, phy) && is_low_voltage_sku(i915, phy))
+	if (intel_phy_is_combo(i915, phy) &&
+	    intel_dp_is_edp(intel_dp) &&
+	    is_low_voltage_sku(i915, phy))
 		return 540000;
 
 	return 810000;
-- 
2.25.1

