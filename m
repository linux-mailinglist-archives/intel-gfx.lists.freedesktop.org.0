Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 133893FDFDC
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Sep 2021 18:26:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1642D898EE;
	Wed,  1 Sep 2021 16:26:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B7BE89870
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Sep 2021 16:26:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10094"; a="282512561"
X-IronPort-AV: E=Sophos;i="5.84,369,1620716400"; d="scan'208";a="282512561"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2021 09:26:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,369,1620716400"; d="scan'208";a="688431264"
Received: from amanna.iind.intel.com ([10.223.74.76])
 by fmsmga006.fm.intel.com with ESMTP; 01 Sep 2021 09:26:42 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>, Imre Deak <imre.deak@intel.com>,
 Animesh Manna <animesh.manna@intel.com>
Date: Wed,  1 Sep 2021 21:34:01 +0530
Message-Id: <20210901160402.24816-5-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20210901160402.24816-1-animesh.manna@intel.com>
References: <20210901160402.24816-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/5] drm/i915/dp: fix DG1 and RKL max source
 rates
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

From: Jani Nikula <jani.nikula@intel.com>

Combo phy is limited to 5.4 GHz on low-voltage SKUs, but both eDP and DP
can do 8.1 GHz on combo phy.

Bspec: 49182, 49205, 49202

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
Reviewed-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 5aabd8ec1015..3fe1158706d5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -325,6 +325,18 @@ static int ehl_max_source_rate(struct intel_dp *intel_dp)
 	return 810000;
 }
 
+static int dg1_max_source_rate(struct intel_dp *intel_dp)
+{
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
+
+	if (intel_phy_is_combo(i915, phy) && is_low_voltage_sku(i915, phy))
+		return 540000;
+
+	return 810000;
+}
+
 static void
 intel_dp_set_source_rates(struct intel_dp *intel_dp)
 {
@@ -360,6 +372,8 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
 		size = ARRAY_SIZE(icl_rates);
 		if (IS_DG2(dev_priv))
 			max_rate = dg2_max_source_rate(intel_dp);
+		else if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))
+			max_rate = dg1_max_source_rate(intel_dp);
 		else if (IS_JSL_EHL(dev_priv))
 			max_rate = ehl_max_source_rate(intel_dp);
 		else
-- 
2.29.0

