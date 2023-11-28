Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 828EF7FB9B3
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Nov 2023 12:52:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C422210E4ED;
	Tue, 28 Nov 2023 11:52:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3D9C10E4ED
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Nov 2023 11:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701172319; x=1732708319;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=DOHr/YXhnEKdnrhFv2qa0iQjUrb5xE/CWQG12BOOyNU=;
 b=Wc/cY2eWPGCoFJfNn0QpUVr3trAbb/8EF1oKwYijiaejBW0hoLgZrbJf
 vD1YPC5DVtafpfAeJUYQCf5rR/pkVGryl4frbgSgRm3HS79gfpA454o1R
 l1N4vb5gVQLYj7R2EHvvDERvedhCNOwh48YG+oeIRTpT8gdTG0xRpuzJx
 tFdvPWJYDY2xdV3zttNR2ZJnLo++hxChh0oXfNxqSe6tBnh48ArR3CQPp
 MCf60ZfZH95FoRZAefv6g2n3w6n9VmKJIydynVdFUAQiSYCX4L0HERZyi
 QQh6SiFm/Xw+80YREnEbMCRTB97vKSjIJiTbFnp7nDcjgb8kd5UZP7Qtq Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="459411609"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="459411609"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 03:51:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="761907455"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="761907455"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 28 Nov 2023 03:51:57 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 Nov 2023 13:51:57 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Nov 2023 13:51:36 +0200
Message-ID: <20231128115138.13238-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231128115138.13238-1-ville.syrjala@linux.intel.com>
References: <20231128115138.13238-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/8] drm/i915: Split
 intel_ddi_compute_min_voltage_level() into platform variants
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

The mess inside intel_ddi_compute_min_voltage_level() is illegible.
Clean it up a bit by splitting the internals into per-platform
functions.

TODO: make it a vfunc?

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 37 +++++++++++++++++++-----
 1 file changed, 30 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 38f28c480b38..bcfcd7e789f0 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3672,16 +3672,39 @@ static bool intel_ddi_is_audio_enabled(struct drm_i915_private *dev_priv,
 		AUDIO_OUTPUT_ENABLE(cpu_transcoder);
 }
 
+static int tgl_ddi_min_voltage_level(const struct intel_crtc_state *crtc_state)
+{
+	if (crtc_state->port_clock > 594000)
+		return 2;
+	else
+		return 0;
+}
+
+static int jsl_ddi_min_voltage_level(const struct intel_crtc_state *crtc_state)
+{
+	if (crtc_state->port_clock > 594000)
+		return 3;
+	else
+		return 0;
+}
+
+static int icl_ddi_min_voltage_level(const struct intel_crtc_state *crtc_state)
+{
+	if (crtc_state->port_clock > 594000)
+		return 1;
+	else
+		return 0;
+}
+
 void intel_ddi_compute_min_voltage_level(struct drm_i915_private *dev_priv,
 					 struct intel_crtc_state *crtc_state)
 {
-	if (DISPLAY_VER(dev_priv) >= 12 && crtc_state->port_clock > 594000)
-		crtc_state->min_voltage_level = 2;
-	else if ((IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) &&
-		 crtc_state->port_clock > 594000)
-		crtc_state->min_voltage_level = 3;
-	else if (DISPLAY_VER(dev_priv) >= 11 && crtc_state->port_clock > 594000)
-		crtc_state->min_voltage_level = 1;
+	if (DISPLAY_VER(dev_priv) >= 12)
+		crtc_state->min_voltage_level = tgl_ddi_min_voltage_level(crtc_state);
+	else if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv))
+		crtc_state->min_voltage_level = jsl_ddi_min_voltage_level(crtc_state);
+	else if (DISPLAY_VER(dev_priv) >= 11)
+		crtc_state->min_voltage_level = icl_ddi_min_voltage_level(crtc_state);
 }
 
 static enum transcoder bdw_transcoder_master_readout(struct drm_i915_private *dev_priv,
-- 
2.41.0

