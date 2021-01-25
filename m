Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AF08302744
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 16:53:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCA0E6E135;
	Mon, 25 Jan 2021 15:53:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A9D26E135
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 15:53:12 +0000 (UTC)
IronPort-SDR: pVwGXtIio4TL7oxRoFwfy2Kh+pk9AFr0tz4eNh5ZXc2IGCA/CdNAf8TJ62CRMwywkMpEmkuYLb
 l5XcXdwqOBuA==
X-IronPort-AV: E=McAfee;i="6000,8403,9875"; a="264571504"
X-IronPort-AV: E=Sophos;i="5.79,373,1602572400"; d="scan'208";a="264571504"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 07:53:11 -0800
IronPort-SDR: 2qF4Yv/iuapjb6k+RWRwfBhUwCXQjqVOBIylzWsTvN1Gg7uMPmqdeeFiQ8CnDW4nWm1j2MWRGQ
 H+mRQkwArAvg==
X-IronPort-AV: E=Sophos;i="5.79,373,1602572400"; d="scan'208";a="353108398"
Received: from grassena-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.46.78])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 07:53:09 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Jan 2021 17:52:30 +0200
Message-Id: <b6ccb98170cae95a20e3a85b0df2873ba53ebeeb.1611589818.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1611589818.git.jani.nikula@intel.com>
References: <cover.1611589818.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/9] drm/i915/mso: add state readout for
 platforms that support it
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
Cc: jani.nikula@intel.com, Nischal Varide <nischal.varide@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add MSO configuration to crtc state, and read it where supported.

v2: Add warning for mso being enabled on pipes other than A.

Cc: Nischal Varide <nischal.varide@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      | 37 +++++++++++++++++++
 .../drm/i915/display/intel_display_types.h    |  7 ++++
 drivers/gpu/drm/i915/i915_drv.h               |  2 +
 3 files changed, 46 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index d4c09a1aa06e..4c441139bdb0 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3598,6 +3598,41 @@ static void intel_ddi_disable_fec_state(struct intel_encoder *encoder,
 	intel_de_posting_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
 }
 
+static void intel_ddi_mso_get_config(struct intel_encoder *encoder,
+				     struct intel_crtc_state *pipe_config)
+{
+	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	enum pipe pipe = crtc->pipe;
+	u32 dss1;
+
+	if (!HAS_MSO(i915))
+		return;
+
+	dss1 = intel_de_read(i915, ICL_PIPE_DSS_CTL1(pipe));
+
+	pipe_config->mso.enable = dss1 & SPLITTER_ENABLE;
+	if (!pipe_config->mso.enable)
+		return;
+
+	/* Splitter enable is supported for pipe A only. */
+	if (drm_WARN_ON(&i915->drm, pipe != PIPE_A)) {
+		pipe_config->mso.enable = false;
+		return;
+	}
+
+	switch (dss1 & SPLITTER_CONFIGURATION_MASK) {
+	case SPLITTER_CONFIGURATION_2_SEGMENT:
+		pipe_config->mso.link_count = 2;
+		break;
+	case SPLITTER_CONFIGURATION_4_SEGMENT:
+		pipe_config->mso.link_count = 4;
+		break;
+	}
+
+	pipe_config->mso.pixel_overlap = REG_FIELD_GET(OVERLAP_PIXELS_MASK, dss1);
+}
+
 static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 				  struct intel_encoder *encoder,
 				  const struct intel_crtc_state *crtc_state,
@@ -4672,6 +4707,8 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	u32 temp, flags = 0;
 
+	intel_ddi_mso_get_config(encoder, pipe_config);
+
 	temp = intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder));
 	if (temp & TRANS_DDI_PHSYNC)
 		flags |= DRM_MODE_FLAG_PHSYNC;
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 59fe86fe4e4d..9e73d6a2d43f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1151,6 +1151,13 @@ struct intel_crtc_state {
 	struct intel_dsb *dsb;
 
 	u32 psr2_man_track_ctl;
+
+	/* eDP MSO */
+	struct {
+		bool enable;
+		u8 link_count;
+		u8 pixel_overlap;
+	} mso;
 };
 
 enum intel_pipe_crc_source {
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 99cf861df92d..fa351bee5072 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1755,6 +1755,8 @@ tgl_stepping_get(struct drm_i915_private *dev_priv)
 
 #define HAS_CSR(dev_priv)	(INTEL_INFO(dev_priv)->display.has_csr)
 
+#define HAS_MSO(i915)		(INTEL_GEN(i915) >= 12)
+
 #define HAS_RUNTIME_PM(dev_priv) (INTEL_INFO(dev_priv)->has_runtime_pm)
 #define HAS_64BIT_RELOC(dev_priv) (INTEL_INFO(dev_priv)->has_64bit_reloc)
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
