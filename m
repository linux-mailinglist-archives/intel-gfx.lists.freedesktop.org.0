Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2F269C8EB8
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2024 16:52:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 459C810E811;
	Thu, 14 Nov 2024 15:52:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VZUsTZm/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20F9B10E811;
 Thu, 14 Nov 2024 15:52:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731599549; x=1763135549;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yU7wHhfpK+qN/3gOAFGnIxJ7S86G0zZG7WQ4DPVh35c=;
 b=VZUsTZm/1PFiPeMbcv5lG5vrfFeeb3Z6/MrrJCEtkdPQuUyxEtLH11PJ
 hQogMrN6Y9RoLq6UWBChiT7znz0p0nEaOjDcZGST0wT5u5eV5cLth/to0
 HFtBqZpaGJXy1SWj7ct2PjKnD+L/HoAS77g9Ri7b03eiQmQYo5G4NAiZl
 0ZDxuHmqNfg007SDNyyIAsZ+AIteYr5obtbQNgfKM5YcGcYumpr6KTC+n
 hKkKqK0uqRTBWl7WwLlnL7OfiBlERmbxcX31mbz2lpTXfzgHpereuriaE
 d+saSllwxlV/hdqItGfJZcbr0d9DkAI9yZs+ORusq+4uQ+ft06EBw1oqK w==;
X-CSE-ConnectionGUID: zLZX7K6YQdWUi/0ZyK0aUw==
X-CSE-MsgGUID: aIXmFs0DQsSEJrtlOEhWIA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="35269707"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="35269707"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2024 07:52:29 -0800
X-CSE-ConnectionGUID: 9yQDpwbNS+eR4Dx1ctmlAQ==
X-CSE-MsgGUID: SK8HWRMETaqVIbR1q/gp1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,154,1728975600"; d="scan'208";a="88646045"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2024 07:52:26 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Sergey Senozhatsky <senozhatsky@chromium.org>,
 Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: [PATCH 1/3] drm/i915/hdmi: propagate errors from
 intel_hdmi_init_connector()
Date: Thu, 14 Nov 2024 17:52:15 +0200
Message-Id: <342de4fc7d6a99d65cf841d4761c2489934d0725.1731599468.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1731599468.git.jani.nikula@intel.com>
References: <cover.1731599468.git.jani.nikula@intel.com>
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
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 10 ++++++----
 drivers/gpu/drm/i915/display/intel_hdmi.h |  4 ++--
 2 files changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 23c270a8c4aa..57d53107c2bd 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -3042,7 +3042,7 @@ void intel_infoframe_init(struct intel_digital_port *dig_port)
 	}
 }
 
-void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
+bool intel_hdmi_init_connector(struct intel_digital_port *dig_port,
 			       struct intel_connector *intel_connector)
 {
 	struct intel_display *display = to_intel_display(dig_port);
@@ -3059,17 +3059,17 @@ void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
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
@@ -3114,6 +3114,8 @@ void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
 					   &conn_info);
 	if (!intel_hdmi->cec_notifier)
 		drm_dbg_kms(display->drm, "CEC notifier get failed\n");
+
+	return true;
 }
 
 /*
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h b/drivers/gpu/drm/i915/display/intel_hdmi.h
index 466f48df8a74..ef91457bed42 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.h
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
@@ -22,8 +22,8 @@ struct intel_encoder;
 struct intel_hdmi;
 union hdmi_infoframe;
 
-void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
-			       struct intel_connector *intel_connector);
+bool intel_hdmi_init_connector(struct intel_digital_port *dig_port,
+			      struct intel_connector *intel_connector);
 bool intel_hdmi_compute_has_hdmi_sink(struct intel_encoder *encoder,
 				      const struct intel_crtc_state *crtc_state,
 				      const struct drm_connector_state *conn_state);
-- 
2.39.5

