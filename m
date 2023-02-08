Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61C7C68E5AD
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Feb 2023 02:56:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD3E610E695;
	Wed,  8 Feb 2023 01:55:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CC8610E695
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Feb 2023 01:55:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675821356; x=1707357356;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=gcLUuqgZgT5wZxbqGazJ9dkNia+9K2Py+L4FMaloEHk=;
 b=SCuFkUz2UomolveoL4g4AGPipWMcQuyJ+THe5BbihWlnRLBO0YjAal9P
 brJ8h0BIJqQjkgcRyjrxbZ6Pywvhd0V+FvMrIqVxtxADRq/eHdhH2kQKE
 hDBcAZV2uw9Nx5ey+s7tEWvsiwwS3ndIMpO3yMVSazJpf82pN9DylIkZG
 Q+Y9oi3ykm2Wu6SOiQYmN9CeVQwYgXc6K6VcLcdPKVLfP5bpUTLoaNPPG
 mNN0cVd+qSR+ypEYPDEmfF9IYq0VuG/Pz+6Qt+ZzTQksdeP98gTVafgB+
 cn4YlCj3Le2mYw4xH+Rdq3at3IvAbyl0tm9OpvYtMsSz9zrK3a2dpCudw w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="330974377"
X-IronPort-AV: E=Sophos;i="5.97,279,1669104000"; d="scan'208";a="330974377"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 17:55:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="644672725"
X-IronPort-AV: E=Sophos;i="5.97,279,1669104000"; d="scan'208";a="644672725"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga006.jf.intel.com with SMTP; 07 Feb 2023 17:55:40 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 08 Feb 2023 03:55:40 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Feb 2023 03:55:08 +0200
Message-Id: <20230208015508.24824-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230208015508.24824-1-ville.syrjala@linux.intel.com>
References: <20230208015508.24824-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/10] drm/i915: Use encoder->devdata in eDP init
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

Since we now populate encoder->devdata for all DP capable
platforms we can consult it directly during the eDP
connector init instead of taking a detour via some global
list/array.

Unfortunately we can't quire get rid of
intel_dp_is_port_edp() since it's still used by the higher
level ilk/vlv/chv output setup code.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 17 +----------------
 drivers/gpu/drm/i915/display/intel_bios.h |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c   | 17 +++++++++++++----
 3 files changed, 15 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 1af175b48ae6..ec4544a8b333 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2584,7 +2584,7 @@ intel_bios_encoder_supports_dp(const struct intel_bios_encoder_data *devdata)
 	return devdata->child.device_type & DEVICE_TYPE_DISPLAYPORT_OUTPUT;
 }
 
-static bool
+bool
 intel_bios_encoder_supports_edp(const struct intel_bios_encoder_data *devdata)
 {
 	return intel_bios_encoder_supports_dp(devdata) &&
@@ -3413,21 +3413,6 @@ bool intel_bios_is_port_present(struct drm_i915_private *i915, enum port port)
 	return false;
 }
 
-/**
- * intel_bios_is_port_edp - is the device in given port eDP
- * @i915:	i915 device instance
- * @port:	port to check
- *
- * Return true if the device in %port is eDP.
- */
-bool intel_bios_is_port_edp(struct drm_i915_private *i915, enum port port)
-{
-	const struct intel_bios_encoder_data *devdata =
-		intel_bios_encoder_data_lookup(i915, port);
-
-	return devdata && intel_bios_encoder_supports_edp(devdata);
-}
-
 static bool intel_bios_encoder_supports_dp_dual_mode(const struct intel_bios_encoder_data *devdata)
 {
 	const struct child_device_config *child = &devdata->child;
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index eaff41256a9c..1a6ae38bd4f6 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -268,6 +268,7 @@ intel_bios_encoder_data_lookup(struct drm_i915_private *i915, enum port port);
 bool intel_bios_encoder_supports_dvi(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_supports_hdmi(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_supports_dp(const struct intel_bios_encoder_data *devdata);
+bool intel_bios_encoder_supports_edp(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_supports_typec_usb(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_is_lspcon(const struct intel_bios_encoder_data *devdata);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6b836afa0698..e4ea84b5d946 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5129,8 +5129,9 @@ intel_dp_hpd_pulse(struct intel_digital_port *dig_port, bool long_hpd)
 	return IRQ_HANDLED;
 }
 
-/* check the VBT to see whether the eDP is on another port */
-bool intel_dp_is_port_edp(struct drm_i915_private *dev_priv, enum port port)
+static bool _intel_dp_is_port_edp(struct drm_i915_private *dev_priv,
+				  const struct intel_bios_encoder_data *devdata,
+				  enum port port)
 {
 	/*
 	 * eDP not supported on g4x. so bail out early just
@@ -5142,7 +5143,15 @@ bool intel_dp_is_port_edp(struct drm_i915_private *dev_priv, enum port port)
 	if (DISPLAY_VER(dev_priv) < 9 && port == PORT_A)
 		return true;
 
-	return intel_bios_is_port_edp(dev_priv, port);
+	return devdata && intel_bios_encoder_supports_edp(devdata);
+}
+
+bool intel_dp_is_port_edp(struct drm_i915_private *i915, enum port port)
+{
+	const struct intel_bios_encoder_data *devdata =
+		intel_bios_encoder_data_lookup(i915, port);
+
+	return _intel_dp_is_port_edp(i915, devdata, port);
 }
 
 static bool
@@ -5415,7 +5424,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 	intel_dp->DP = intel_de_read(dev_priv, intel_dp->output_reg);
 	intel_dp->attached_connector = intel_connector;
 
-	if (intel_dp_is_port_edp(dev_priv, port)) {
+	if (_intel_dp_is_port_edp(dev_priv, intel_encoder->devdata, port)) {
 		/*
 		 * Currently we don't support eDP on TypeC ports, although in
 		 * theory it could work on TypeC legacy ports.
-- 
2.39.1

