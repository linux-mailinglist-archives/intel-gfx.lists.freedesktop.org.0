Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3170B9FE6E5
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2024 15:15:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF8FC10E4E8;
	Mon, 30 Dec 2024 14:15:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OqCnyK1B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E0F510E4E5;
 Mon, 30 Dec 2024 14:15:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735568102; x=1767104102;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yikOEufNeMqGvbhr9PY8zRVM+4oOZ1MKcUkamLQ4CcQ=;
 b=OqCnyK1Bd6IHqXfIN5nDmmvB2jEtsRVF8JGcVifPTXTLo98UjDi31RLN
 SLwkwJ6HWyw05H7UfE59sxGBvnRdZII59GMyZDTN1AQcaq4o99VNL3wYm
 6xU8zvP9Png+YoljA+9ThynvpvrKteiS/n70R/0qjkswXv76ZW3bM8FxX
 EkLSRVT1Qjj3q5ZULuwUbkkIXN1j43ZVJnxUZj5l8hpI5Pi1UYwihiqzy
 oAv3kshZ/RtUzHZfJX9Epr/+3lDzymZUbNm3SOksr7BnTQQNIZcVDkHeG
 hL4WgJUIIUsk10mGm2YJTppImQJ3PGP90ErubbEuP9NqL10b+e5CRyu8h Q==;
X-CSE-ConnectionGUID: jBAxSzLJQgynda+OP4sSsA==
X-CSE-MsgGUID: SAJk1790RcGU51D8t/c/hw==
X-IronPort-AV: E=McAfee;i="6700,10204,11301"; a="39538307"
X-IronPort-AV: E=Sophos;i="6.12,276,1728975600"; d="scan'208";a="39538307"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2024 06:15:02 -0800
X-CSE-ConnectionGUID: IvbVE74PT6uyxzPy+JVDsw==
X-CSE-MsgGUID: Ir720CHZSHiLEAk41Kym+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,276,1728975600"; d="scan'208";a="101215253"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.167])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2024 06:15:01 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Sergey Senozhatsky <senozhatsky@chromium.org>,
 Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: [CI v3 2/6] drm/i915/hdmi: propagate errors from
 intel_hdmi_init_connector()
Date: Mon, 30 Dec 2024 16:14:41 +0200
Message-Id: <cdaf9e32cc4880c46e120933438c37b4d87be12e.1735568047.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1735568047.git.jani.nikula@intel.com>
References: <cover.1735568047.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Propagate errors from intel_hdmi_init_connector() to be able to handle
them at callers. This is similar to intel_dp_init_connector().

Cc: Sergey Senozhatsky <senozhatsky@chromium.org>
Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Reported-and-tested-by: Sergey Senozhatsky <senozhatsky@chromium.org>
Closes: https://lore.kernel.org/r/20241031105145.2140590-1-senozhatsky@chromium.org
Reviewed-by: Sergey Senozhatsky <senozhatsky@chromium.org>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 10 ++++++----
 drivers/gpu/drm/i915/display/intel_hdmi.h |  2 +-
 2 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index f7b1768b279c..ed29dd0ccef0 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -3039,7 +3039,7 @@ void intel_infoframe_init(struct intel_digital_port *dig_port)
 	}
 }
 
-void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
+bool intel_hdmi_init_connector(struct intel_digital_port *dig_port,
 			       struct intel_connector *intel_connector)
 {
 	struct intel_display *display = to_intel_display(dig_port);
@@ -3056,17 +3056,17 @@ void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
 		    intel_encoder->base.base.id, intel_encoder->base.name);
 
 	if (DISPLAY_VER(display) < 12 && drm_WARN_ON(dev, port == PORT_A))
-		return;
+		return false;
 
 	if (drm_WARN(dev, dig_port->max_lanes < 4,
 		     "Not enough lanes (%d) for HDMI on [ENCODER:%d:%s]\n",
 		     dig_port->max_lanes, intel_encoder->base.base.id,
 		     intel_encoder->base.name))
-		return;
+		return false;
 
 	ddc_pin = intel_hdmi_ddc_pin(intel_encoder);
 	if (!ddc_pin)
-		return;
+		return false;
 
 	drm_connector_init_with_ddc(dev, connector,
 				    &intel_hdmi_connector_funcs,
@@ -3111,6 +3111,8 @@ void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
 					   &conn_info);
 	if (!intel_hdmi->cec_notifier)
 		drm_dbg_kms(display->drm, "CEC notifier get failed\n");
+
+	return true;
 }
 
 /*
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h b/drivers/gpu/drm/i915/display/intel_hdmi.h
index 466f48df8a74..38deaeb302a2 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.h
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
@@ -22,7 +22,7 @@ struct intel_encoder;
 struct intel_hdmi;
 union hdmi_infoframe;
 
-void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
+bool intel_hdmi_init_connector(struct intel_digital_port *dig_port,
 			       struct intel_connector *intel_connector);
 bool intel_hdmi_compute_has_hdmi_sink(struct intel_encoder *encoder,
 				      const struct intel_crtc_state *crtc_state,
-- 
2.39.5

