Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96168558F44
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jun 2022 05:47:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C450410E6BC;
	Fri, 24 Jun 2022 03:47:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B084E10E6BC
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jun 2022 03:47:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656042465; x=1687578465;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=e7tdwYbMfhYgx0dwAQhfNG0nv4qctKRntZToXw8Ljng=;
 b=gYwtWqD0hNIeQO8covFHPdIjg3mu9KSu+PPdSJzm5zeFtGhraPysSm+C
 bKSxTqa7sU4QdcmVXtxC1ZAe8FK1tu5NpcVP+KQeYf/jkYfPXGe+NY1uM
 V7LNyqkxqswKEZux9B6GMgRjL1xqJkx1Czdo4JoluEHr3J4ZWI3S6YsaO
 O9wUOrXz6tJEuifRkY4w3n/RcRiWJ1SgHscbn1C2Qe1HI9Fux0dBtkdyW
 ja2/FEyZ3ksk7PX9uYoXl8P4EqKSwJfHJN8JpEz+WMKf52G7ofN4M29bP
 76bG/lRK3ZRDfj1cBO4Br+hDFfr+x6ujy1IilWSJfD0+XbP5A+qIrNhwy g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10387"; a="281647113"
X-IronPort-AV: E=Sophos;i="5.92,217,1650956400"; d="scan'208";a="281647113"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2022 20:47:45 -0700
X-IronPort-AV: E=Sophos;i="5.92,217,1650956400"; d="scan'208";a="716088635"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2022 20:47:43 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jun 2022 09:16:31 +0530
Message-Id: <20220624034631.533690-1-ankit.k.nautiyal@intel.com>
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

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 32292c0be2bd..c31ea2b418cf 100644
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
@@ -413,11 +414,7 @@ static int icl_max_source_rate(struct intel_dp *intel_dp)
 
 static int ehl_max_source_rate(struct intel_dp *intel_dp)
 {
-	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
-	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
-	enum phy phy = intel_port_to_phy(dev_priv, dig_port->base.port);
-
-	if (intel_dp_is_edp(intel_dp) || is_low_voltage_sku(dev_priv, phy))
+	if (intel_dp_is_edp(intel_dp))
 		return 540000;
 
 	return 810000;
@@ -429,7 +426,9 @@ static int dg1_max_source_rate(struct intel_dp *intel_dp)
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

