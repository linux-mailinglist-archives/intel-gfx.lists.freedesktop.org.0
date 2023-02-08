Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9873768E5A9
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Feb 2023 02:55:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAD2A10E692;
	Wed,  8 Feb 2023 01:55:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B06710E692
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Feb 2023 01:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675821333; x=1707357333;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=IP0gmM0/D9ytyDK6SOvgVyRPbtVDx5xRk0QMehFw8ok=;
 b=UeRIw1CXLyHyx5bET78xuGU8614eqkkREkX2muriIlNz1LguE1cLBWLd
 aZZkSqLpaOndj5En1OEeG+Uh5zpZmHQKisFEEeiE5Esm5K1J54SP4FTfJ
 0miJ+GfZT2vnrrj8/mf13wkh7wj4NFxTYEoeEFc+/nKhNec4enDr1kdZQ
 vCJstWOKaQHxoD0yPOz1H4ROtWZ5Ez7Cia46s244Rvms0NGjO8Z87tUWM
 JYRClBFjFnhNMfDgaFtOxy7KuIUcClNXqXicLpvXZhDNnwJxJY8+CK3xG
 E05aHnYDiSQkQdHlx6ubsV9+UUP5FFLm0AbcFdKk+yYZK4WKAi9exCB7x w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="330974363"
X-IronPort-AV: E=Sophos;i="5.97,279,1669104000"; d="scan'208";a="330974363"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 17:55:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="644672718"
X-IronPort-AV: E=Sophos;i="5.97,279,1669104000"; d="scan'208";a="644672718"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga006.jf.intel.com with SMTP; 07 Feb 2023 17:55:31 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 08 Feb 2023 03:55:30 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Feb 2023 03:55:05 +0200
Message-Id: <20230208015508.24824-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230208015508.24824-1-ville.syrjala@linux.intel.com>
References: <20230208015508.24824-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/10] drm/i915: Populate encoder->devdata for
 g4x+ DP/HDMI ports
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

Let's make encoder->devdata (the VBT informaiton for the port)
available on g4x+ platforms as well. Much easier when you can
just grab it there instead of trying to find it from some global
list array based on the port.

Note that (unlike DDI platforms) we don't currently require
that each DP/HDMI port is actually declared in VBT. Perhaps
in the future we may want to rethink that, but for now just
stick in a debug+FIXME as a reminder.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c   | 10 ++++++++++
 drivers/gpu/drm/i915/display/g4x_hdmi.c | 10 ++++++++++
 2 files changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index fa754038d669..0cc1531a03a3 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -1279,11 +1279,19 @@ static const struct drm_encoder_funcs intel_dp_enc_funcs = {
 bool g4x_dp_init(struct drm_i915_private *dev_priv,
 		 i915_reg_t output_reg, enum port port)
 {
+	const struct intel_bios_encoder_data *devdata;
 	struct intel_digital_port *dig_port;
 	struct intel_encoder *intel_encoder;
 	struct drm_encoder *encoder;
 	struct intel_connector *intel_connector;
 
+	devdata = intel_bios_encoder_data_lookup(dev_priv, port);
+
+	/* FIXME bail? */
+	if (!devdata)
+		drm_dbg_kms(&dev_priv->drm, "No VBT child device for DP-%c\n",
+			    port_name(port));
+
 	dig_port = kzalloc(sizeof(*dig_port), GFP_KERNEL);
 	if (!dig_port)
 		return false;
@@ -1295,6 +1303,8 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
 	intel_encoder = &dig_port->base;
 	encoder = &intel_encoder->base;
 
+	intel_encoder->devdata = devdata;
+
 	mutex_init(&dig_port->hdcp_mutex);
 
 	if (drm_encoder_init(&dev_priv->drm, &intel_encoder->base,
diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 64c3b3990702..e9ae4c67b8a4 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -548,10 +548,18 @@ intel_hdmi_hotplug(struct intel_encoder *encoder,
 void g4x_hdmi_init(struct drm_i915_private *dev_priv,
 		   i915_reg_t hdmi_reg, enum port port)
 {
+	const struct intel_bios_encoder_data *devdata;
 	struct intel_digital_port *dig_port;
 	struct intel_encoder *intel_encoder;
 	struct intel_connector *intel_connector;
 
+	devdata = intel_bios_encoder_data_lookup(dev_priv, port);
+
+	/* FIXME bail? */
+	if (!devdata)
+		drm_dbg_kms(&dev_priv->drm, "No VBT child device for HDMI-%c\n",
+			    port_name(port));
+
 	dig_port = kzalloc(sizeof(*dig_port), GFP_KERNEL);
 	if (!dig_port)
 		return;
@@ -564,6 +572,8 @@ void g4x_hdmi_init(struct drm_i915_private *dev_priv,
 
 	intel_encoder = &dig_port->base;
 
+	intel_encoder->devdata = devdata;
+
 	mutex_init(&dig_port->hdcp_mutex);
 
 	drm_encoder_init(&dev_priv->drm, &intel_encoder->base,
-- 
2.39.1

