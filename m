Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F5C0140C7F
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 15:30:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D44E6F5AE;
	Fri, 17 Jan 2020 14:30:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76ED56F5AE
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 14:30:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jan 2020 06:30:02 -0800
X-IronPort-AV: E=Sophos;i="5.70,330,1574150400"; d="scan'208";a="226359186"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jan 2020 06:30:01 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jan 2020 16:29:25 +0200
Message-Id: <8c30e1183afdd469c95b01f64ca0458b9e832404.1579270868.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1579270868.git.jani.nikula@intel.com>
References: <cover.1579270868.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 5/9] drm/i915/bios: add
 intel_bios_dp_max_link_rate()
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Don't access i915->vbt.ddi_port_info[] directly.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 7 +++++++
 drivers/gpu/drm/i915/display/intel_bios.h | 1 +
 drivers/gpu/drm/i915/display/intel_dp.c   | 6 +++---
 3 files changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 5882ffc1b2a6..dd3968456aea 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2592,3 +2592,10 @@ int intel_bios_hdmi_boost_level(struct intel_encoder *encoder)
 
 	return i915->vbt.ddi_port_info[encoder->port].hdmi_boost_level;
 }
+
+int intel_bios_dp_max_link_rate(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	return i915->vbt.ddi_port_info[encoder->port].dp_max_link_rate;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index b1c11b9bea41..179d2eb49d7e 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -251,5 +251,6 @@ int intel_bios_max_tmds_clock(struct intel_encoder *encoder);
 int intel_bios_hdmi_level_shift(struct intel_encoder *encoder);
 int intel_bios_dp_boost_level(struct intel_encoder *encoder);
 int intel_bios_hdmi_boost_level(struct intel_encoder *encoder);
+int intel_bios_dp_max_link_rate(struct intel_encoder *encoder);
 
 #endif /* _INTEL_BIOS_H_ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4074d83b1a5f..8718f079b0d4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -323,11 +323,10 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
 		162000, 270000
 	};
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
+	struct intel_encoder *encoder = &dig_port->base;
 	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
-	const struct ddi_vbt_port_info *info =
-		&dev_priv->vbt.ddi_port_info[dig_port->base.port];
 	const int *source_rates;
-	int size, max_rate = 0, vbt_max_rate = info->dp_max_link_rate;
+	int size, max_rate = 0, vbt_max_rate;
 
 	/* This should only be done once */
 	WARN_ON(intel_dp->source_rates || intel_dp->num_source_rates);
@@ -354,6 +353,7 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
 		size = ARRAY_SIZE(g4x_rates);
 	}
 
+	vbt_max_rate = intel_bios_dp_max_link_rate(encoder);
 	if (max_rate && vbt_max_rate)
 		max_rate = min(max_rate, vbt_max_rate);
 	else if (vbt_max_rate)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
