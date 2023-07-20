Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D688975AA69
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jul 2023 11:14:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A95110E58C;
	Thu, 20 Jul 2023 09:14:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CD0A10E58A
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jul 2023 09:14:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689844472; x=1721380472;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=TkxSVJ6y+07yQveAwa3H9of16TbXTnPCCa/XGt9X7nQ=;
 b=aqlq/9PdUJFnEEyuKngdDWmnvKEbeSNpA4Fc/rt0eNC+aOPDZr1BqjHo
 Cwk8y8TyraM/PVUQgw+SzoXnkgEGQFNd1vBdeUxdvozrewWspP5MXllQG
 C7HjR0aWC0F5l21pxZlsHtAP83oZGdkHsyd4jazzPJj9V9ZxhpywFOAos
 SHIZd3keugWHJJynXCtU832yBiNuEb1L2m289PrmiH+6boXGOWL5kXxGJ
 xJSd5S3S+TSUtpkGvm/cBMyW7waKl1CNa2IojS5qmffcWff9QNTsupB3V
 5JsR4EI2UTnIMrWkM+1up/WfiJ4gVKm4K4D2bE2L46GitcWHenpfzrAoF Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="364140618"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="364140618"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 02:14:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="970981913"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="970981913"
Received: from ssauty-mobl1.ger.corp.intel.com (HELO hazy.ger.corp.intel.com)
 ([10.252.56.229])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 02:14:30 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Jul 2023 12:14:11 +0300
Message-Id: <20230720091411.347654-5-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230720091411.347654-1-luciano.coelho@intel.com>
References: <20230720091411.347654-1-luciano.coelho@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/4] drm/i915/tc: remove "fia" from
 intel_tc_port_fia_max_lane_count()
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

It is irrelevant for the caller that the max lane count is being
derived from a FIA register, so having "fia" in the function name is
irrelevant.  Rename the function accordingly.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 2 +-
 drivers/gpu/drm/i915/display/intel_dp.c      | 4 ++--
 drivers/gpu/drm/i915/display/intel_tc.c      | 4 ++--
 drivers/gpu/drm/i915/display/intel_tc.h      | 2 +-
 4 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 1b00ef2c6185..6d4f7b20ce85 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2534,7 +2534,7 @@ static void intel_cx0_phy_lane_reset(struct drm_i915_private *i915,
 {
 	enum port port = encoder->port;
 	enum phy phy = intel_port_to_phy(i915, port);
-	bool both_lanes =  intel_tc_port_fia_max_lane_count(enc_to_dig_port(encoder)) > 2;
+	bool both_lanes =  intel_tc_port_max_lane_count(enc_to_dig_port(encoder)) > 2;
 	u8 lane_mask = lane_reversal ? INTEL_CX0_LANE1 :
 				  INTEL_CX0_LANE0;
 	u32 lane_pipe_reset = both_lanes ?
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 03675620e3ea..b974af839acb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -306,13 +306,13 @@ static int intel_dp_max_common_lane_count(struct intel_dp *intel_dp)
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	int source_max = intel_dp_max_source_lane_count(dig_port);
 	int sink_max = intel_dp->max_sink_lane_count;
-	int fia_max = intel_tc_port_fia_max_lane_count(dig_port);
+	int port_max = intel_tc_port_max_lane_count(dig_port);
 	int lttpr_max = drm_dp_lttpr_max_lane_count(intel_dp->lttpr_common_caps);
 
 	if (lttpr_max)
 		sink_max = min(sink_max, lttpr_max);
 
-	return min3(source_max, sink_max, fia_max);
+	return min3(source_max, sink_max, port_max);
 }
 
 int intel_dp_max_lane_count(struct intel_dp *intel_dp)
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 43b8eeba26f8..3c94bbcb5497 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -337,7 +337,7 @@ static int intel_tc_port_get_max_lane_count(struct intel_digital_port *dig_port)
 	}
 }
 
-int intel_tc_port_fia_max_lane_count(struct intel_digital_port *dig_port)
+int intel_tc_port_max_lane_count(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	struct intel_tc_port *tc = to_tc_port(dig_port);
@@ -589,7 +589,7 @@ static bool tc_phy_verify_legacy_or_dp_alt_mode(struct intel_tc_port *tc,
 	struct intel_digital_port *dig_port = tc->dig_port;
 	int max_lanes;
 
-	max_lanes = intel_tc_port_fia_max_lane_count(dig_port);
+	max_lanes = intel_tc_port_max_lane_count(dig_port);
 	if (tc->mode == TC_PORT_LEGACY) {
 		drm_WARN_ON(&i915->drm, max_lanes != 4);
 		return true;
diff --git a/drivers/gpu/drm/i915/display/intel_tc.h b/drivers/gpu/drm/i915/display/intel_tc.h
index ffc0e2a74e43..80a61e52850e 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.h
+++ b/drivers/gpu/drm/i915/display/intel_tc.h
@@ -20,7 +20,7 @@ bool intel_tc_port_connected(struct intel_encoder *encoder);
 bool intel_tc_port_connected_locked(struct intel_encoder *encoder);
 
 u32 intel_tc_port_get_pin_assignment_mask(struct intel_digital_port *dig_port);
-int intel_tc_port_fia_max_lane_count(struct intel_digital_port *dig_port);
+int intel_tc_port_max_lane_count(struct intel_digital_port *dig_port);
 void intel_tc_port_set_fia_lane_count(struct intel_digital_port *dig_port,
 				      int required_lanes);
 
-- 
2.39.2

