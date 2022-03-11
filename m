Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE98A4D6782
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 18:24:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 441BF10E5A7;
	Fri, 11 Mar 2022 17:24:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E056D10E66B
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 17:24:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647019483; x=1678555483;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=2e3cRHsC4nMhPwfqgrBpYLtgXTWnVmKybpxYL53ck6I=;
 b=HT1cvueHWkS17uQ23C+6dlUpJSk8Y1aKj6Y/ROatuWotvJWPMQL6wmKT
 o/h9vlSLFn1MxZSVRuNIciKqQpis+3PQX486bufmJjTxMuQUNzNQK9P+g
 bKTa9wOAjW6QTBWBu7+H4NjerOsKVNjTz5M86drjXU2xgVYc09DhSsFzw
 MWUmmboHTxlfCXJrEJBygukq1/njSIYtHYhdWuXZwK05RqyzBklSjEHcv
 0F4MGXnYvx9ZObN/ZakUcBZcscvN5H7i8Eoog/ZvVg2ZBRYZa2vgt7F1Y
 kTv52G+n0JuNEtaKhsGgABy+dNdbl34NpSrKPQdwTcj78ORRd/Ge1baR0 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10283"; a="253177842"
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="253177842"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 09:24:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="514571292"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga006.jf.intel.com with SMTP; 11 Mar 2022 09:24:41 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Mar 2022 19:24:40 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Mar 2022 19:24:16 +0200
Message-Id: <20220311172428.14685-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220311172428.14685-1-ville.syrjala@linux.intel.com>
References: <20220311172428.14685-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 04/16] drm/i915: Simplify intel_panel_info()
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

No need for all this connector type special casing. If the
connector has a fixed mode just print it, otherwise don't.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 24 +++++++------------
 1 file changed, 9 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 798bf233a60f..e511500ee26a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -544,11 +544,15 @@ static void intel_encoder_info(struct seq_file *m,
 	drm_connector_list_iter_end(&conn_iter);
 }
 
-static void intel_panel_info(struct seq_file *m, struct intel_panel *panel)
+static void intel_panel_info(struct seq_file *m,
+			     struct intel_connector *connector)
 {
-	const struct drm_display_mode *mode = panel->fixed_mode;
+	const struct drm_display_mode *fixed_mode = connector->panel.fixed_mode;
 
-	seq_printf(m, "\tfixed mode: " DRM_MODE_FMT "\n", DRM_MODE_ARG(mode));
+	if (!fixed_mode)
+		return;
+
+	seq_printf(m, "\tfixed mode: " DRM_MODE_FMT "\n", DRM_MODE_ARG(fixed_mode));
 }
 
 static void intel_hdcp_info(struct seq_file *m,
@@ -586,8 +590,6 @@ static void intel_dp_info(struct seq_file *m,
 	seq_printf(m, "\tDPCD rev: %x\n", intel_dp->dpcd[DP_DPCD_REV]);
 	seq_printf(m, "\taudio support: %s\n",
 		   str_yes_no(intel_dp->has_audio));
-	if (intel_connector->base.connector_type == DRM_MODE_CONNECTOR_eDP)
-		intel_panel_info(m, &intel_connector->panel);
 
 	drm_dp_downstream_debug(m, intel_dp->dpcd, intel_dp->downstream_ports,
 				edid ? edid->data : NULL, &intel_dp->aux);
@@ -611,12 +613,6 @@ static void intel_hdmi_info(struct seq_file *m,
 		   str_yes_no(intel_hdmi->has_audio));
 }
 
-static void intel_lvds_info(struct seq_file *m,
-			    struct intel_connector *intel_connector)
-{
-	intel_panel_info(m, &intel_connector->panel);
-}
-
 static void intel_connector_info(struct seq_file *m,
 				 struct drm_connector *connector)
 {
@@ -651,10 +647,6 @@ static void intel_connector_info(struct seq_file *m,
 		else
 			intel_dp_info(m, intel_connector);
 		break;
-	case DRM_MODE_CONNECTOR_LVDS:
-		if (encoder->type == INTEL_OUTPUT_LVDS)
-			intel_lvds_info(m, intel_connector);
-		break;
 	case DRM_MODE_CONNECTOR_HDMIA:
 		if (encoder->type == INTEL_OUTPUT_HDMI ||
 		    encoder->type == INTEL_OUTPUT_DDI)
@@ -667,6 +659,8 @@ static void intel_connector_info(struct seq_file *m,
 	seq_puts(m, "\tHDCP version: ");
 	intel_hdcp_info(m, intel_connector);
 
+	intel_panel_info(m, intel_connector);
+
 	seq_printf(m, "\tmodes:\n");
 	list_for_each_entry(mode, &connector->modes, head)
 		intel_seq_print_mode(m, 2, mode);
-- 
2.34.1

