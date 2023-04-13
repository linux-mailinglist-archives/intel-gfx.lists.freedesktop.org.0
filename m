Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D4DD6E0D41
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 14:11:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E33210E13C;
	Thu, 13 Apr 2023 12:11:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5ED9510E138
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 12:11:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681387879; x=1712923879;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5K+9Lr07iDPNVNDTgoXsUwoILtknZa5kDkf4mfW9zg0=;
 b=mq+7GwesgwH7XyvgRXf0TVHOH2h4dkE7EZo/N0O4kFWlRg9Tqyi+5Joc
 RyITfHpiT/nrxqx7H/p5k1WUtEypaP82uEYpz2vdewhwmSO3MzbdVpDBw
 TCwHsYhS9tT9dv9QLxPPR4JQmyTg8TFpUTEIbBaSlA0Og1/34N5+xTaYC
 P/jjQN3Hg1EqveX3o5oBmtjQhozyT703kwHkTGKoJcy5Vl46CbOx7fEEx
 s8o+6IUWgOneAzbNepcqu4yQKeDTZu80j4G9ARpfguomQaoVa7egDnpfF
 ECLWqG5Oii4eQJEbI931/yvH78Wzz0dIk7Es/L/fN8eSuZIYiisX+0PHT A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="430451568"
X-IronPort-AV: E=Sophos;i="5.99,341,1677571200"; d="scan'208";a="430451568"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 05:11:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="1019158234"
X-IronPort-AV: E=Sophos;i="5.99,341,1677571200"; d="scan'208";a="1019158234"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 05:11:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Apr 2023 15:11:13 +0300
Message-Id: <20230413121113.1141052-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/aux: clean up aux name initialization
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Split intel_dp_aux_name() to a separate function to declutter
intel_dp_aux_init(), and only have the if ladder to pick the one
character instead of duplicating the whole kasprintf() call.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux.c | 32 ++++++++++++---------
 1 file changed, 18 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 705915d50565..2fee5b79c0b7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -718,12 +718,27 @@ void intel_dp_aux_fini(struct intel_dp *intel_dp)
 	kfree(intel_dp->aux.name);
 }
 
-void intel_dp_aux_init(struct intel_dp *intel_dp)
+static const char *intel_dp_aux_name(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct intel_encoder *encoder = &dig_port->base;
 	enum aux_ch aux_ch = dig_port->aux_ch;
+	char aux_char;
+
+	if (DISPLAY_VER(i915) >= 13 && aux_ch >= AUX_CH_D_XELPD)
+		aux_char = aux_ch_name(aux_ch - AUX_CH_D_XELPD + AUX_CH_D);
+	else if (DISPLAY_VER(i915) >= 12 && aux_ch >= AUX_CH_USBC1)
+		aux_char = aux_ch - AUX_CH_USBC1 + '1';
+	else
+		aux_char = aux_ch_name(aux_ch);
+
+	return kasprintf(GFP_KERNEL, "AUX %c/%s", aux_char, encoder->base.name);
+}
+
+void intel_dp_aux_init(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
 	if (DISPLAY_VER(dev_priv) >= 14) {
 		intel_dp->aux_ch_ctl_reg = xelpdp_aux_ctl_reg;
@@ -760,18 +775,7 @@ void intel_dp_aux_init(struct intel_dp *intel_dp)
 	drm_dp_aux_init(&intel_dp->aux);
 
 	/* Failure to allocate our preferred name is not critical */
-	if (DISPLAY_VER(dev_priv) >= 13 && aux_ch >= AUX_CH_D_XELPD)
-		intel_dp->aux.name = kasprintf(GFP_KERNEL, "AUX %c/%s",
-					       aux_ch_name(aux_ch - AUX_CH_D_XELPD + AUX_CH_D),
-					       encoder->base.name);
-	else if (DISPLAY_VER(dev_priv) >= 12 && aux_ch >= AUX_CH_USBC1)
-		intel_dp->aux.name = kasprintf(GFP_KERNEL, "AUX USBC%c/%s",
-					       aux_ch - AUX_CH_USBC1 + '1',
-					       encoder->base.name);
-	else
-		intel_dp->aux.name = kasprintf(GFP_KERNEL, "AUX %c/%s",
-					       aux_ch_name(aux_ch),
-					       encoder->base.name);
+	intel_dp->aux.name = intel_dp_aux_name(intel_dp);
 
 	intel_dp->aux.transfer = intel_dp_aux_transfer;
 	cpu_latency_qos_add_request(&intel_dp->pm_qos, PM_QOS_DEFAULT_VALUE);
-- 
2.39.2

