Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A88C77AF19E
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Sep 2023 19:16:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2470E10E40B;
	Tue, 26 Sep 2023 17:16:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30B7710E411
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Sep 2023 17:16:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695748566; x=1727284566;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8Z7cf++iAUW/Xs+/qbBgoAw6A+taNlFxwXYdlH7c4qY=;
 b=jr9O8PujaF+OwGKTNfrUZ08ZrY0hzW/D9msB4MQ+Jzspz5i8R+XMbHWk
 xiRM7N8bBTGGPAAJk/L5xiKISbA9mxmpRT8A2pVhclKsDxfq718dY+HCv
 V9WG7K8Z4CoFxCN9H2h2coOsXEapICfv6lW/cffeZySjiNR4wf4HBacLR
 fQbzXq7wusTOwDIPNnBkqHrPqpqCGc7vWZJ6jERHZERzf6FRQINr/5M3I
 v1ULVOESmsmVoXxOO/2sCU3fVOEkarBx8pTKjZwd0/l09VwTAe79ziKzf
 26ZiDAuOSoUCK5DsK+6PEiU/vWv/+F6PXu4SKVQyFtfvRkAOtwv1BKd1F Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="378899715"
X-IronPort-AV: E=Sophos;i="6.03,178,1694761200"; d="scan'208";a="378899715"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 10:16:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="778207937"
X-IronPort-AV: E=Sophos;i="6.03,178,1694761200"; d="scan'208";a="778207937"
Received: from wagnert-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.52.202])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 10:15:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Sep 2023 20:15:42 +0300
Message-Id: <aa83c0debb9300076ab53bb214a01d54833965a7.1695747484.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1695747484.git.jani.nikula@intel.com>
References: <cover.1695747484.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 2/3] drm/i915/hdmi: drafting what struct
 intel_display usage would look like
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com, rodrigo.vivi@intel.com,
 matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index af4102e91769..f06d57b386c0 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -64,6 +64,11 @@ inline struct drm_i915_private *intel_hdmi_to_i915(struct intel_hdmi *intel_hdmi
 	return to_i915(hdmi_to_dig_port(intel_hdmi)->base.base.dev);
 }
 
+static inline struct intel_display *intel_hdmi_to_display(struct intel_hdmi *intel_hdmi)
+{
+	return to_intel_display(hdmi_to_dig_port(intel_hdmi)->base.base.dev);
+}
+
 static void
 assert_hdmi_port_disabled(struct intel_hdmi *intel_hdmi)
 {
@@ -1239,16 +1244,16 @@ static void hsw_set_infoframes(struct intel_encoder *encoder,
 
 void intel_dp_dual_mode_set_tmds_output(struct intel_hdmi *hdmi, bool enable)
 {
-	struct drm_i915_private *dev_priv = intel_hdmi_to_i915(hdmi);
+	struct intel_display *display = intel_hdmi_to_display(hdmi);
 	struct i2c_adapter *ddc = hdmi->attached_connector->base.ddc;
 
 	if (hdmi->dp_dual_mode.type < DRM_DP_DUAL_MODE_TYPE2_DVI)
 		return;
 
-	drm_dbg_kms(&dev_priv->drm, "%s DP dual mode adaptor TMDS output\n",
+	drm_dbg_kms(display->drm, "%s DP dual mode adaptor TMDS output\n",
 		    enable ? "Enabling" : "Disabling");
 
-	drm_dp_dual_mode_set_tmds_output(&dev_priv->drm,
+	drm_dp_dual_mode_set_tmds_output(display->drm,
 					 hdmi->dp_dual_mode.type, ddc, enable);
 }
 
-- 
2.39.2

