Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52BA34313BA
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Oct 2021 11:42:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 082FB6E9C4;
	Mon, 18 Oct 2021 09:42:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECD1B6E9C4
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Oct 2021 09:42:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10140"; a="208315983"
X-IronPort-AV: E=Sophos;i="5.85,381,1624345200"; d="scan'208";a="208315983"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2021 02:42:12 -0700
X-IronPort-AV: E=Sophos;i="5.85,381,1624345200"; d="scan'208";a="493516758"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2021 02:42:05 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Date: Mon, 18 Oct 2021 12:41:53 +0300
Message-Id: <20211018094154.1407705-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20211018094154.1407705-1-imre.deak@intel.com>
References: <20211018094154.1407705-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/6] drm/i915/dp: Sanitize sink rate DPCD
 register values
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

If the DPCD sink rate values read from the sink are invalid, the
driver will sanitize this in intel_dp_set_common_rates(), by setting a
default 162000 link rate in common rates and printing a WARN().

WARN()s should only be triggered by bugs in the code and not by external
factors like the above (an invalid DPCD injected maliciously or read from a
buggy monitor). So fixup the invalid DPCD sink rate values already and print
an error in this case (since it's still a user visible problem).

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 21 ++++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f7711779df132..f8082eb8e7263 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -127,7 +127,7 @@ static void intel_dp_set_default_sink_rates(struct intel_dp *intel_dp)
 }
 
 /* update sink rates from dpcd */
-static void intel_dp_set_sink_rates(struct intel_dp *intel_dp)
+static void intel_dp_set_dpcd_sink_rates(struct intel_dp *intel_dp)
 {
 	static const int dp_rates[] = {
 		162000, 270000, 540000, 810000
@@ -197,6 +197,25 @@ static void intel_dp_set_sink_rates(struct intel_dp *intel_dp)
 	intel_dp->num_sink_rates = i;
 }
 
+static void intel_dp_set_sink_rates(struct intel_dp *intel_dp)
+{
+	struct intel_connector *connector = intel_dp->attached_connector;
+	struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
+	struct intel_encoder *encoder = &intel_dig_port->base;
+
+	intel_dp_set_dpcd_sink_rates(intel_dp);
+
+	if (intel_dp->num_sink_rates)
+		return;
+
+	drm_err(&dp_to_i915(intel_dp)->drm,
+		"[CONNECTOR:%d:%s][ENCODER:%d:%s] Invalid DPCD with no link rates, using defaults\n",
+		connector->base.base.id, connector->base.name,
+		encoder->base.base.id, encoder->base.name);
+
+	intel_dp_set_default_sink_rates(intel_dp);
+}
+
 static void intel_dp_set_default_max_sink_lane_count(struct intel_dp *intel_dp)
 {
 	intel_dp->max_sink_lane_count = 1;
-- 
2.27.0

