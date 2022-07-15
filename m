Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5308576F61
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Jul 2022 16:43:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27D1510F841;
	Sat, 16 Jul 2022 14:37:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA9D810E05A
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Jul 2022 20:21:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657916481; x=1689452481;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=kHudOhZJpg0qrTH9oO40Qvz1XNFvD1SFxaunTLyRm58=;
 b=kBn70pnJqjvyJCIMsTJF9jI27xMWq22LmcbYH8oqqIbn34ssMcmYNA6S
 YVJFWcIJFwE07ekzDZ90HFaxVQcihQX56HgFOpAftfSwQvs/+umK4qMbZ
 ZfNwTzyP3UvJKwzgC6y8MlTfRFouRE4f3RIup2HofLxC/g/ftPh4qy/d4
 /nWRl4rwGmZ0mC6QwY0zYsou015E2i09msDx2uUyUjDwioLzdtY2PdEZO
 U6+6rig4kRHVK6exOCJ17gnlYgWrInGG901E7m4rmE+NOt/u5ORSzbZzq
 04R7vtaCbDd+aWxMrm3V4b+lME/LE6rVsgPkDdbkVRWQZUpwRdhU6xeW9 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10409"; a="311560812"
X-IronPort-AV: E=Sophos;i="5.92,274,1650956400"; d="scan'208";a="311560812"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2022 13:21:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,274,1650956400"; d="scan'208";a="699333505"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.161])
 by fmsmga002.fm.intel.com with SMTP; 15 Jul 2022 13:21:19 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Jul 2022 23:21:19 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Jul 2022 23:20:44 +0300
Message-Id: <20220715202044.11153-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220715202044.11153-1-ville.syrjala@linux.intel.com>
References: <20220715202044.11153-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 12/12] drm/i915: Parse DP/eDP max lane count
 from VBT
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Limit the DP lane count based on the new VBT DP/eDP max
lane count field.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 16 ++++++++++++++++
 drivers/gpu/drm/i915/display/intel_bios.h |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c   | 13 ++++++++++++-
 3 files changed, 29 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index cd86b65055ef..d8063c329b3a 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2489,6 +2489,14 @@ static int _intel_bios_dp_max_link_rate(const struct intel_bios_encoder_data *de
 		return parse_bdb_216_dp_max_link_rate(devdata->child.dp_max_link_rate);
 }
 
+static int _intel_bios_dp_max_lane_count(const struct intel_bios_encoder_data *devdata)
+{
+	if (!devdata || devdata->i915->vbt.version < 244)
+		return 0;
+
+	return devdata->child.dp_max_lane_count + 1;
+}
+
 static void sanitize_device_type(struct intel_bios_encoder_data *devdata,
 				 enum port port)
 {
@@ -3674,6 +3682,14 @@ int intel_bios_dp_max_link_rate(struct intel_encoder *encoder)
 	return _intel_bios_dp_max_link_rate(devdata);
 }
 
+int intel_bios_dp_max_lane_count(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	const struct intel_bios_encoder_data *devdata = i915->vbt.ports[encoder->port];
+
+	return _intel_bios_dp_max_lane_count(devdata);
+}
+
 int intel_bios_alternate_ddc_pin(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index e47582b0de0a..e375405a7828 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -258,6 +258,7 @@ bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
 int intel_bios_max_tmds_clock(struct intel_encoder *encoder);
 int intel_bios_hdmi_level_shift(struct intel_encoder *encoder);
 int intel_bios_dp_max_link_rate(struct intel_encoder *encoder);
+int intel_bios_dp_max_lane_count(struct intel_encoder *encoder);
 int intel_bios_alternate_ddc_pin(struct intel_encoder *encoder);
 bool intel_bios_port_supports_typec_usb(struct drm_i915_private *i915, enum port port);
 bool intel_bios_port_supports_tbt(struct drm_i915_private *i915, enum port port);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 32292c0be2bd..0370c4c105dc 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -286,11 +286,22 @@ static int intel_dp_max_common_rate(struct intel_dp *intel_dp)
 	return intel_dp_common_rate(intel_dp, intel_dp->num_common_rates - 1);
 }
 
+static int intel_dp_max_source_lane_count(struct intel_digital_port *dig_port)
+{
+	int vbt_max_lanes = intel_bios_dp_max_lane_count(&dig_port->base);
+	int max_lanes = dig_port->max_lanes;
+
+	if (vbt_max_lanes)
+		max_lanes = min(max_lanes, vbt_max_lanes);
+
+	return max_lanes;
+}
+
 /* Theoretical max between source and sink */
 static int intel_dp_max_common_lane_count(struct intel_dp *intel_dp)
 {
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
-	int source_max = dig_port->max_lanes;
+	int source_max = intel_dp_max_source_lane_count(dig_port);
 	int sink_max = intel_dp->max_sink_lane_count;
 	int fia_max = intel_tc_port_fia_max_lane_count(dig_port);
 	int lttpr_max = drm_dp_lttpr_max_lane_count(intel_dp->lttpr_common_caps);
-- 
2.35.1

