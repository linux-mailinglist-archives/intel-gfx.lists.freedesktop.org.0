Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 064821A0BFB
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 12:34:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03B6B6E820;
	Tue,  7 Apr 2020 10:34:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2749F6E81F
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 10:34:37 +0000 (UTC)
IronPort-SDR: uNv34Pc/6WaNdpn5pjJ0Ps6rwyKO1GGj2hlnI9LhQJCuzJBfI1KHS08G0iYc1Mb3daJ4F9Rp/v
 O3baWEMPCfeg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 03:34:36 -0700
IronPort-SDR: 4OdbkzqcyM99l1X03I7tJy9JuepDtVIiwe98FBXXFbpdss6WJ3qBNwJI6IMzD7FW8I46+egzbz
 I0JD85Kj8WeA==
X-IronPort-AV: E=Sophos;i="5.72,353,1580803200"; d="scan'208";a="397814437"
Received: from vogtstef-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.249.40.153])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 03:34:35 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Apr 2020 13:34:22 +0300
Message-Id: <20200407103422.28222-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200407103422.28222-1-jani.nikula@intel.com>
References: <20200407103422.28222-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: drop a bunch of superfluous
 inlines
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

Remove a number of inlines from .c files, and let the compiler decide
what's best.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c        |  8 +++----
 drivers/gpu/drm/i915/display/intel_ddi.c      |  7 +++---
 drivers/gpu/drm/i915/display/intel_display.c  | 10 ++++----
 .../drm/i915/display/intel_display_power.c    |  5 ++--
 drivers/gpu/drm/i915/display/intel_dp.c       |  6 ++---
 drivers/gpu/drm/i915/display/intel_dsb.c      |  6 ++---
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_gmbus.c    |  3 +--
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 23 ++++++++-----------
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  8 +++----
 drivers/gpu/drm/i915/display/intel_panel.c    | 14 +++++------
 drivers/gpu/drm/i915/intel_pm.c               |  7 +++---
 drivers/gpu/drm/i915/intel_sideband.c         |  4 ++--
 drivers/gpu/drm/i915/intel_wopcm.c            | 22 +++++++++---------
 14 files changed, 58 insertions(+), 67 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 99a25c0bb08f..a8d2daa214e6 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -36,15 +36,15 @@
 #include "intel_panel.h"
 #include "intel_vdsc.h"
 
-static inline int header_credits_available(struct drm_i915_private *dev_priv,
-					   enum transcoder dsi_trans)
+static int header_credits_available(struct drm_i915_private *dev_priv,
+				    enum transcoder dsi_trans)
 {
 	return (intel_de_read(dev_priv, DSI_CMD_TXCTL(dsi_trans)) & FREE_HEADER_CREDIT_MASK)
 		>> FREE_HEADER_CREDIT_SHIFT;
 }
 
-static inline int payload_credits_available(struct drm_i915_private *dev_priv,
-					    enum transcoder dsi_trans)
+static int payload_credits_available(struct drm_i915_private *dev_priv,
+				     enum transcoder dsi_trans)
 {
 	return (intel_de_read(dev_priv, DSI_CMD_TXCTL(dsi_trans)) & FREE_PLOAD_CREDIT_MASK)
 		>> FREE_PLOAD_CREDIT_SHIFT;
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index be6c61bcbc9c..d06e0044f29f 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -1927,7 +1927,7 @@ bool intel_ddi_get_hw_state(struct intel_encoder *encoder,
 	return true;
 }
 
-static inline enum intel_display_power_domain
+static enum intel_display_power_domain
 intel_ddi_main_link_aux_domain(struct intel_digital_port *dig_port)
 {
 	/* CNL+ HW requires corresponding AUX IOs to be powered up for PSR with
@@ -2712,9 +2712,8 @@ u32 ddi_signal_levels(struct intel_dp *intel_dp)
 	return DDI_BUF_TRANS_SELECT(level);
 }
 
-static inline
-u32 icl_dpclka_cfgcr0_clk_off(struct drm_i915_private *dev_priv,
-			      enum phy phy)
+static u32 icl_dpclka_cfgcr0_clk_off(struct drm_i915_private *dev_priv,
+				     enum phy phy)
 {
 	if (intel_phy_is_combo(dev_priv, phy)) {
 		return ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 70ec301fe6e3..c0fd98797274 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -238,9 +238,9 @@ static void intel_update_czclk(struct drm_i915_private *dev_priv)
 		dev_priv->czclk_freq);
 }
 
-static inline u32 /* units of 100MHz */
-intel_fdi_link_freq(struct drm_i915_private *dev_priv,
-		    const struct intel_crtc_state *pipe_config)
+/* units of 100MHz */
+static u32 intel_fdi_link_freq(struct drm_i915_private *dev_priv,
+			       const struct intel_crtc_state *pipe_config)
 {
 	if (HAS_DDI(dev_priv))
 		return pipe_config->port_clock; /* SPLL */
@@ -8122,7 +8122,7 @@ static void intel_panel_sanitize_ssc(struct drm_i915_private *dev_priv)
 	}
 }
 
-static inline bool intel_panel_use_ssc(struct drm_i915_private *dev_priv)
+static bool intel_panel_use_ssc(struct drm_i915_private *dev_priv)
 {
 	if (i915_modparams.panel_use_ssc >= 0)
 		return i915_modparams.panel_use_ssc != 0;
@@ -12815,7 +12815,7 @@ static void intel_dump_crtc_timings(struct drm_i915_private *i915,
 		    mode->type, mode->flags);
 }
 
-static inline void
+static void
 intel_dump_m_n_config(const struct intel_crtc_state *pipe_config,
 		      const char *id, unsigned int lane_count,
 		      const struct intel_link_m_n *m_n)
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 433e5a81dd4d..399da22426b5 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -4446,9 +4446,8 @@ static void intel_power_domains_sync_hw(struct drm_i915_private *dev_priv)
 	mutex_unlock(&power_domains->lock);
 }
 
-static inline
-bool intel_dbuf_slice_set(struct drm_i915_private *dev_priv,
-			  i915_reg_t reg, bool enable)
+static bool intel_dbuf_slice_set(struct drm_i915_private *dev_priv,
+				 i915_reg_t reg, bool enable)
 {
 	u32 val, status;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 25f0baafd6d0..83f085c83485 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6578,9 +6578,9 @@ static const struct hdcp2_dp_msg_data hdcp2_dp_msg_data[] = {
 	  0, 0 },
 };
 
-static inline
-int intel_dp_hdcp2_read_rx_status(struct intel_digital_port *intel_dig_port,
-				  u8 *rx_status)
+static int
+intel_dp_hdcp2_read_rx_status(struct intel_digital_port *intel_dig_port,
+			      u8 *rx_status)
 {
 	ssize_t ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index d7a6bf2277df..29fec6a92d17 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -34,7 +34,7 @@
 #define DSB_BYTE_EN_SHIFT		20
 #define DSB_REG_VALUE_MASK		0xfffff
 
-static inline bool is_dsb_busy(struct intel_dsb *dsb)
+static bool is_dsb_busy(struct intel_dsb *dsb)
 {
 	struct intel_crtc *crtc = container_of(dsb, typeof(*crtc), dsb);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
@@ -43,7 +43,7 @@ static inline bool is_dsb_busy(struct intel_dsb *dsb)
 	return DSB_STATUS & intel_de_read(dev_priv, DSB_CTRL(pipe, dsb->id));
 }
 
-static inline bool intel_dsb_enable_engine(struct intel_dsb *dsb)
+static bool intel_dsb_enable_engine(struct intel_dsb *dsb)
 {
 	struct intel_crtc *crtc = container_of(dsb, typeof(*crtc), dsb);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
@@ -63,7 +63,7 @@ static inline bool intel_dsb_enable_engine(struct intel_dsb *dsb)
 	return true;
 }
 
-static inline bool intel_dsb_disable_engine(struct intel_dsb *dsb)
+static bool intel_dsb_disable_engine(struct intel_dsb *dsb)
 {
 	struct intel_crtc *crtc = container_of(dsb, typeof(*crtc), dsb);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index 3c9c05478a03..eed037ec0b29 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -121,7 +121,7 @@ struct i2c_adapter_lookup {
 #define  ICL_GPIO_DDPA_CTRLCLK_2	8
 #define  ICL_GPIO_DDPA_CTRLDATA_2	9
 
-static inline enum port intel_dsi_seq_port_to_port(u8 port)
+static enum port intel_dsi_seq_port_to_port(u8 port)
 {
 	return port ? PORT_C : PORT_A;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index 1fd3a5a6296b..a8d119b6b45c 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -379,8 +379,7 @@ gmbus_wait_idle(struct drm_i915_private *dev_priv)
 	return ret;
 }
 
-static inline
-unsigned int gmbus_max_xfer_size(struct drm_i915_private *dev_priv)
+static unsigned int gmbus_max_xfer_size(struct drm_i915_private *dev_priv)
 {
 	return INTEL_GEN(dev_priv) >= 9 ? GEN9_GMBUS_BYTE_COUNT_MAX :
 	       GMBUS_BYTE_COUNT_MAX;
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index d3ad10653b2e..2cbc4619b4ce 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -109,18 +109,16 @@ bool intel_hdcp2_capable(struct intel_connector *connector)
 	return capable;
 }
 
-static inline
-bool intel_hdcp_in_use(struct drm_i915_private *dev_priv,
-		       enum transcoder cpu_transcoder, enum port port)
+static bool intel_hdcp_in_use(struct drm_i915_private *dev_priv,
+			      enum transcoder cpu_transcoder, enum port port)
 {
 	return intel_de_read(dev_priv,
 	                     HDCP_STATUS(dev_priv, cpu_transcoder, port)) &
 	       HDCP_STATUS_ENC;
 }
 
-static inline
-bool intel_hdcp2_in_use(struct drm_i915_private *dev_priv,
-			enum transcoder cpu_transcoder, enum port port)
+static bool intel_hdcp2_in_use(struct drm_i915_private *dev_priv,
+			       enum transcoder cpu_transcoder, enum port port)
 {
 	return intel_de_read(dev_priv,
 	                     HDCP2_STATUS(dev_priv, cpu_transcoder, port)) &
@@ -853,8 +851,7 @@ static int _intel_hdcp_enable(struct intel_connector *connector)
 	return ret;
 }
 
-static inline
-struct intel_connector *intel_hdcp_to_connector(struct intel_hdcp *hdcp)
+static struct intel_connector *intel_hdcp_to_connector(struct intel_hdcp *hdcp)
 {
 	return container_of(hdcp, struct intel_connector, hdcp);
 }
@@ -1856,8 +1853,7 @@ static const struct component_ops i915_hdcp_component_ops = {
 	.unbind = i915_hdcp_component_unbind,
 };
 
-static inline
-enum mei_fw_ddi intel_get_mei_fw_ddi_index(enum port port)
+static enum mei_fw_ddi intel_get_mei_fw_ddi_index(enum port port)
 {
 	switch (port) {
 	case PORT_A:
@@ -1869,8 +1865,7 @@ enum mei_fw_ddi intel_get_mei_fw_ddi_index(enum port port)
 	}
 }
 
-static inline
-enum mei_fw_tc intel_get_mei_fw_tc(enum transcoder cpu_transcoder)
+static enum mei_fw_tc intel_get_mei_fw_tc(enum transcoder cpu_transcoder)
 {
 	switch (cpu_transcoder) {
 	case TRANSCODER_A ... TRANSCODER_D:
@@ -1880,8 +1875,8 @@ enum mei_fw_tc intel_get_mei_fw_tc(enum transcoder cpu_transcoder)
 	}
 }
 
-static inline int initialize_hdcp_port_data(struct intel_connector *connector,
-					    const struct intel_hdcp_shim *shim)
+static int initialize_hdcp_port_data(struct intel_connector *connector,
+				     const struct intel_hdcp_shim *shim)
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 44b8c3b06986..f7a92fb222e2 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1614,10 +1614,10 @@ static int get_hdcp2_msg_timeout(u8 msg_id, bool is_paired)
 	return -EINVAL;
 }
 
-static inline
-int hdcp2_detect_msg_availability(struct intel_digital_port *intel_dig_port,
-				  u8 msg_id, bool *msg_ready,
-				  ssize_t *msg_sz)
+static int
+hdcp2_detect_msg_availability(struct intel_digital_port *intel_dig_port,
+			      u8 msg_id, bool *msg_ready,
+			      ssize_t *msg_sz)
 {
 	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
 	u8 rx_status[HDCP_2_2_HDMI_RXSTATUS_LEN];
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index f8ccfe67429e..535da75d3d4f 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -287,7 +287,7 @@ centre_vertically(struct drm_display_mode *adjusted_mode,
 	adjusted_mode->crtc_vsync_end = adjusted_mode->crtc_vsync_start + sync_width;
 }
 
-static inline u32 panel_fitter_scaling(u32 source, u32 target)
+static u32 panel_fitter_scaling(u32 source, u32 target)
 {
 	/*
 	 * Floating point operation is not supported. So the FACTOR
@@ -484,8 +484,8 @@ static u32 scale(u32 source_val,
 }
 
 /* Scale user_level in range [0..user_max] to [hw_min..hw_max]. */
-static inline u32 scale_user_to_hw(struct intel_connector *connector,
-				   u32 user_level, u32 user_max)
+static u32 scale_user_to_hw(struct intel_connector *connector,
+			    u32 user_level, u32 user_max)
 {
 	struct intel_panel *panel = &connector->panel;
 
@@ -495,8 +495,8 @@ static inline u32 scale_user_to_hw(struct intel_connector *connector,
 
 /* Scale user_level in range [0..user_max] to [0..hw_max], clamping the result
  * to [hw_min..hw_max]. */
-static inline u32 clamp_user_to_hw(struct intel_connector *connector,
-				   u32 user_level, u32 user_max)
+static u32 clamp_user_to_hw(struct intel_connector *connector,
+			    u32 user_level, u32 user_max)
 {
 	struct intel_panel *panel = &connector->panel;
 	u32 hw_level;
@@ -508,8 +508,8 @@ static inline u32 clamp_user_to_hw(struct intel_connector *connector,
 }
 
 /* Scale hw_level in range [hw_min..hw_max] to [0..user_max]. */
-static inline u32 scale_hw_to_user(struct intel_connector *connector,
-				   u32 hw_level, u32 user_max)
+static u32 scale_hw_to_user(struct intel_connector *connector,
+			    u32 hw_level, u32 user_max)
 {
 	struct intel_panel *panel = &connector->panel;
 
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 8375054ba27d..d99df7842635 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -5424,8 +5424,8 @@ static bool skl_plane_wm_equals(struct drm_i915_private *dev_priv,
 	return skl_wm_level_equals(&wm1->trans_wm, &wm2->trans_wm);
 }
 
-static inline bool skl_ddb_entries_overlap(const struct skl_ddb_entry *a,
-					   const struct skl_ddb_entry *b)
+static bool skl_ddb_entries_overlap(const struct skl_ddb_entry *a,
+				    const struct skl_ddb_entry *b)
 {
 	return a->start < b->end && b->start < a->end;
 }
@@ -5876,8 +5876,7 @@ static void ilk_optimize_watermarks(struct intel_atomic_state *state,
 	mutex_unlock(&dev_priv->wm.wm_mutex);
 }
 
-static inline void skl_wm_level_from_reg_val(u32 val,
-					     struct skl_wm_level *level)
+static void skl_wm_level_from_reg_val(u32 val, struct skl_wm_level *level)
 {
 	level->plane_en = val & PLANE_WM_EN;
 	level->ignore_lines = val & PLANE_WM_IGNORE_LINES;
diff --git a/drivers/gpu/drm/i915/intel_sideband.c b/drivers/gpu/drm/i915/intel_sideband.c
index 1447e7516cb7..d4adaa4ce45f 100644
--- a/drivers/gpu/drm/i915/intel_sideband.c
+++ b/drivers/gpu/drm/i915/intel_sideband.c
@@ -335,7 +335,7 @@ void intel_sbi_write(struct drm_i915_private *i915, u16 reg, u32 value,
 	intel_sbi_rw(i915, reg, destination, &value, false);
 }
 
-static inline int gen6_check_mailbox_status(u32 mbox)
+static int gen6_check_mailbox_status(u32 mbox)
 {
 	switch (mbox & GEN6_PCODE_ERROR_MASK) {
 	case GEN6_PCODE_SUCCESS:
@@ -355,7 +355,7 @@ static inline int gen6_check_mailbox_status(u32 mbox)
 	}
 }
 
-static inline int gen7_check_mailbox_status(u32 mbox)
+static int gen7_check_mailbox_status(u32 mbox)
 {
 	switch (mbox & GEN6_PCODE_ERROR_MASK) {
 	case GEN6_PCODE_SUCCESS:
diff --git a/drivers/gpu/drm/i915/intel_wopcm.c b/drivers/gpu/drm/i915/intel_wopcm.c
index 2186386a45c8..6942487c14a9 100644
--- a/drivers/gpu/drm/i915/intel_wopcm.c
+++ b/drivers/gpu/drm/i915/intel_wopcm.c
@@ -89,7 +89,7 @@ void intel_wopcm_init_early(struct intel_wopcm *wopcm)
 	drm_dbg(&i915->drm, "WOPCM: %uK\n", wopcm->size / 1024);
 }
 
-static inline u32 context_reserved_size(struct drm_i915_private *i915)
+static u32 context_reserved_size(struct drm_i915_private *i915)
 {
 	if (IS_GEN9_LP(i915))
 		return BXT_WOPCM_RC6_CTX_RESERVED;
@@ -99,8 +99,8 @@ static inline u32 context_reserved_size(struct drm_i915_private *i915)
 		return 0;
 }
 
-static inline bool gen9_check_dword_gap(struct drm_i915_private *i915,
-					u32 guc_wopcm_base, u32 guc_wopcm_size)
+static bool gen9_check_dword_gap(struct drm_i915_private *i915,
+				 u32 guc_wopcm_base, u32 guc_wopcm_size)
 {
 	u32 offset;
 
@@ -122,8 +122,8 @@ static inline bool gen9_check_dword_gap(struct drm_i915_private *i915,
 	return true;
 }
 
-static inline bool gen9_check_huc_fw_fits(struct drm_i915_private *i915,
-					  u32 guc_wopcm_size, u32 huc_fw_size)
+static bool gen9_check_huc_fw_fits(struct drm_i915_private *i915,
+				   u32 guc_wopcm_size, u32 huc_fw_size)
 {
 	/*
 	 * On Gen9 & CNL A0, hardware requires the total available GuC WOPCM
@@ -141,9 +141,9 @@ static inline bool gen9_check_huc_fw_fits(struct drm_i915_private *i915,
 	return true;
 }
 
-static inline bool check_hw_restrictions(struct drm_i915_private *i915,
-					 u32 guc_wopcm_base, u32 guc_wopcm_size,
-					 u32 huc_fw_size)
+static bool check_hw_restrictions(struct drm_i915_private *i915,
+				  u32 guc_wopcm_base, u32 guc_wopcm_size,
+				  u32 huc_fw_size)
 {
 	if (IS_GEN(i915, 9) && !gen9_check_dword_gap(i915, guc_wopcm_base,
 						     guc_wopcm_size))
@@ -157,9 +157,9 @@ static inline bool check_hw_restrictions(struct drm_i915_private *i915,
 	return true;
 }
 
-static inline bool __check_layout(struct drm_i915_private *i915, u32 wopcm_size,
-				  u32 guc_wopcm_base, u32 guc_wopcm_size,
-				  u32 guc_fw_size, u32 huc_fw_size)
+static bool __check_layout(struct drm_i915_private *i915, u32 wopcm_size,
+			   u32 guc_wopcm_base, u32 guc_wopcm_size,
+			   u32 guc_fw_size, u32 huc_fw_size)
 {
 	const u32 ctx_rsvd = context_reserved_size(i915);
 	u32 size;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
