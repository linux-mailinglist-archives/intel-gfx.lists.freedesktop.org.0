Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D73F4095B2
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Sep 2021 16:45:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A1666ECAB;
	Mon, 13 Sep 2021 14:45:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89D006ECBB
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Sep 2021 14:45:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10105"; a="218514202"
X-IronPort-AV: E=Sophos;i="5.85,290,1624345200"; d="scan'208";a="218514202"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2021 07:45:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,290,1624345200"; d="scan'208";a="609011261"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 13 Sep 2021 07:45:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 13 Sep 2021 17:45:21 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Sep 2021 17:44:38 +0300
Message-Id: <20210913144440.23008-15-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210913144440.23008-1-ville.syrjala@linux.intel.com>
References: <20210913144440.23008-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 14/16] drm/i915: Perform correct cpu_transcoder
 readout for bigjoiner
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

Read out cpu_transcoder correctly for the bigjoiner slave pipes.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 66 ++++++++++++++++++++
 1 file changed, 66 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 4e659a103984..25ae9e4f6b66 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5581,6 +5581,16 @@ static bool ilk_get_pipe_config(struct intel_crtc *crtc,
 	return ret;
 }
 
+static u8 bigjoiner_pipes(struct drm_i915_private *i915)
+{
+	if (DISPLAY_VER(i915) >= 12)
+		return BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D);
+	else if (DISPLAY_VER(i915) >= 11)
+		return BIT(PIPE_B) | BIT(PIPE_C);
+	else
+		return 0;
+}
+
 static bool transcoder_ddi_func_is_enabled(struct drm_i915_private *dev_priv,
 					   enum transcoder cpu_transcoder)
 {
@@ -5596,6 +5606,54 @@ static bool transcoder_ddi_func_is_enabled(struct drm_i915_private *dev_priv,
 	return tmp & TRANS_DDI_FUNC_ENABLE;
 }
 
+static u8 enabled_bigjoiner_pipes(struct drm_i915_private *dev_priv)
+{
+	u8 master_pipes = 0, slave_pipes = 0;
+	struct intel_crtc *crtc;
+
+	for_each_intel_crtc(&dev_priv->drm, crtc) {
+		enum intel_display_power_domain power_domain;
+		enum pipe pipe = crtc->pipe;
+		intel_wakeref_t wakeref;
+
+		if ((bigjoiner_pipes(dev_priv) & BIT(pipe)) == 0)
+			continue;
+
+		power_domain = intel_dsc_power_domain(crtc, (enum transcoder) pipe);
+		with_intel_display_power_if_enabled(dev_priv, power_domain, wakeref) {
+			u32 tmp = intel_de_read(dev_priv, ICL_PIPE_DSS_CTL1(pipe));
+
+			if (!(tmp & BIG_JOINER_ENABLE))
+				continue;
+
+			if (tmp & MASTER_BIG_JOINER_ENABLE)
+				master_pipes |= BIT(pipe);
+			else
+				slave_pipes |= BIT(pipe);
+		}
+
+		if (DISPLAY_VER(dev_priv) < 13)
+			continue;
+
+		power_domain = POWER_DOMAIN_PIPE(pipe);
+		with_intel_display_power_if_enabled(dev_priv, power_domain, wakeref) {
+			u32 tmp = intel_de_read(dev_priv, ICL_PIPE_DSS_CTL1(pipe));
+
+			if (tmp & UNCOMPRESSED_JOINER_MASTER)
+				master_pipes |= BIT(pipe);
+			if (tmp & UNCOMPRESSED_JOINER_SLAVE)
+				slave_pipes |= BIT(pipe);
+		}
+	}
+
+	/* Bigjoiner pipes should always be consecutive master and slave */
+	drm_WARN(&dev_priv->drm, slave_pipes != master_pipes << 1,
+		 "Bigjoiner misconfigured (master pipes 0x%x, slave pipes 0x%x)\n",
+		 master_pipes, slave_pipes);
+
+	return slave_pipes;
+}
+
 static u8 hsw_panel_transcoders(struct drm_i915_private *i915)
 {
 	u8 panel_transcoder_mask = BIT(TRANSCODER_EDP);
@@ -5657,10 +5715,18 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
 			enabled_transcoders |= BIT(cpu_transcoder);
 	}
 
+	/* single pipe or bigjoiner master */
 	cpu_transcoder = (enum transcoder) crtc->pipe;
 	if (transcoder_ddi_func_is_enabled(dev_priv, cpu_transcoder))
 		enabled_transcoders |= BIT(cpu_transcoder);
 
+	/* bigjoiner slave -> consider the master pipe's transcoder as well */
+	if (enabled_bigjoiner_pipes(dev_priv) & BIT(crtc->pipe)) {
+		cpu_transcoder = (enum transcoder) crtc->pipe - 1;
+		if (transcoder_ddi_func_is_enabled(dev_priv, cpu_transcoder))
+			enabled_transcoders |= BIT(cpu_transcoder);
+	}
+
 	return enabled_transcoders;
 }
 
-- 
2.32.0

