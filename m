Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F2ABD3F5F44
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Aug 2021 15:34:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E0136E03C;
	Tue, 24 Aug 2021 13:34:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F32D06E03C
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Aug 2021 13:34:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10085"; a="197557457"
X-IronPort-AV: E=Sophos;i="5.84,347,1620716400"; d="scan'208";a="197557457"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2021 06:34:47 -0700
X-IronPort-AV: E=Sophos;i="5.84,347,1620716400"; d="scan'208";a="455448192"
Received: from romerosa-mobl.amr.corp.intel.com (HELO localhost)
 ([10.249.44.170])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2021 06:34:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Tue, 24 Aug 2021 16:34:15 +0300
Message-Id: <070a13bc155cef4bc6aa6f70c09179279e31484f.1629811722.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1629811722.git.jani.nikula@intel.com>
References: <cover.1629811722.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/7] drm/i915/bios: use dp max link rate
 directly from child data
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

Avoid extra caching of the data.

Cc: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 28 ++++++++++++++---------
 drivers/gpu/drm/i915/i915_drv.h           |  2 --
 2 files changed, 17 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 253a528ba61a..10b2beddc121 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1815,6 +1815,17 @@ static int parse_bdb_216_dp_max_link_rate(const int vbt_max_link_rate)
 	}
 }
 
+static int _intel_bios_dp_max_link_rate(const struct intel_bios_encoder_data *devdata)
+{
+	if (!devdata || devdata->i915->vbt.version < 216)
+		return 0;
+
+	if (devdata->i915->vbt.version >= 230)
+		return parse_bdb_230_dp_max_link_rate(devdata->child.dp_max_link_rate);
+	else
+		return parse_bdb_216_dp_max_link_rate(devdata->child.dp_max_link_rate);
+}
+
 static void sanitize_device_type(struct intel_bios_encoder_data *devdata,
 				 enum port port)
 {
@@ -1913,7 +1924,7 @@ static void parse_ddi_port(struct drm_i915_private *i915,
 	const struct child_device_config *child = &devdata->child;
 	struct ddi_vbt_port_info *info;
 	bool is_dvi, is_hdmi, is_dp, is_edp, is_crt, supports_typec_usb, supports_tbt;
-	int dp_boost_level, hdmi_boost_level, hdmi_level_shift, max_tmds_clock;
+	int dp_boost_level, dp_max_link_rate, hdmi_boost_level, hdmi_level_shift, max_tmds_clock;
 	enum port port;
 
 	port = dvo_port_to_port(i915, child->dvo_port);
@@ -2001,17 +2012,11 @@ static void parse_ddi_port(struct drm_i915_private *i915,
 			    "Port %c VBT HDMI boost level: %d\n",
 			    port_name(port), hdmi_boost_level);
 
-	/* DP max link rate for GLK+ */
-	if (i915->vbt.version >= 216) {
-		if (i915->vbt.version >= 230)
-			info->dp_max_link_rate = parse_bdb_230_dp_max_link_rate(child->dp_max_link_rate);
-		else
-			info->dp_max_link_rate = parse_bdb_216_dp_max_link_rate(child->dp_max_link_rate);
-
+	dp_max_link_rate = _intel_bios_dp_max_link_rate(devdata);
+	if (dp_max_link_rate)
 		drm_dbg_kms(&i915->drm,
 			    "Port %c VBT DP max link rate: %d\n",
-			    port_name(port), info->dp_max_link_rate);
-	}
+			    port_name(port), dp_max_link_rate);
 
 	info->devdata = devdata;
 }
@@ -2982,8 +2987,9 @@ int intel_bios_encoder_hdmi_boost_level(const struct intel_bios_encoder_data *de
 int intel_bios_dp_max_link_rate(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	const struct intel_bios_encoder_data *devdata = i915->vbt.ddi_port_info[encoder->port].devdata;
 
-	return i915->vbt.ddi_port_info[encoder->port].dp_max_link_rate;
+	return _intel_bios_dp_max_link_rate(devdata);
 }
 
 int intel_bios_alternate_ddc_pin(struct intel_encoder *encoder)
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 973b899dbf36..a0dead9f9222 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -642,8 +642,6 @@ struct ddi_vbt_port_info {
 
 	u8 alternate_aux_channel;
 	u8 alternate_ddc_pin;
-
-	int dp_max_link_rate;		/* 0 for not limited by VBT */
 };
 
 enum psr_lines_to_wait {
-- 
2.20.1

