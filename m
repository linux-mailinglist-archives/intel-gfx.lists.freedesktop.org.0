Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D49D19DA763
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 13:07:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7811010EAAF;
	Wed, 27 Nov 2024 12:07:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UHCK5aXg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F303710EABB;
 Wed, 27 Nov 2024 12:07:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732709263; x=1764245263;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LE/nuHUEzIi5INIjfPJ2Sgm6fQFrgTkHwq0qQ/Czljc=;
 b=UHCK5aXgsUwpZxii6mL64nEWcVcoLg4en+TyFuhrcy1W5WGW67BGcK0o
 IrYDM3YuCbYJl8XrfV31tkBwSS4OaFJFSrGw3G2Ox+X+Nr1hR9MPZEc9U
 oZuZ10MCTCdN3nf9tHMDU0HAEXUl978yy7UHJcqoQg2dRaBZcaEQRN4/w
 GRcalNDQqTrGBL3DngXDp454io9AKkOLfNp7Aoym/TdwCgSVVHWkMZ15T
 hhW6Cj7CIG4NofkhD/MV3YkAJERH+e3NtnOyWBwrMX+2gPissRbZMw+LY
 R4DVpmRlhjAWrlL/nmz7wahhZgfZZBrDKDN0RIXAQZ+KQqTrluN/FQc9w A==;
X-CSE-ConnectionGUID: fZKrr7xZSLefz/RB3zefIQ==
X-CSE-MsgGUID: /sPhhh61QbSUIhPZBQZhTg==
X-IronPort-AV: E=McAfee;i="6700,10204,11268"; a="43972817"
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="43972817"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 04:07:43 -0800
X-CSE-ConnectionGUID: ifLwVi+QSvuhvF74V79/sQ==
X-CSE-MsgGUID: unohWtNiRVyg6btYmUYCGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="92754939"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO vgovind2-mobl3..)
 ([10.245.244.60])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 04:07:40 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, kai.vehmanen@linux.intel.co,
 jani.saarinen@intel.com
Subject: [PATCH v2 3/6] drm/i915/display: check and prune audio frequencies
 based on bw limits in DP2.0
Date: Wed, 27 Nov 2024 14:07:12 +0200
Message-Id: <20241127120715.185348-4-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241127120715.185348-1-vinod.govindapillai@intel.com>
References: <20241127120715.185348-1-vinod.govindapillai@intel.com>
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

Calculate the audio bw requirements and check the supported sad
audio frequencies are feasible with selected pipe configuration.
If not feasible, prune the audio frequencies from sad list.

v2: clarity in variable names, use #define for constants (Kai)
    Squash DP2.0 check as part of this path (Kai)
    Keep passing intel_encoder for compute config calls
    Better clarity in debug statements
    Added DP2.0 in patch subject

Bspec: 67768
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 111 +++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_audio.h |   4 +
 drivers/gpu/drm/i915/display/intel_dp.c    |  67 ++++++++++++-
 3 files changed, 180 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index e8c2cbe34523..b4eef6d60ca1 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -705,6 +705,117 @@ static bool intel_audio_eld_valid(struct intel_encoder *encoder,
 	return true;
 }
 
+static bool
+intel_audio_frequency_feasible(int line_freq_khz,
+			       int hblank_slots_lanes_bytes,
+			       int avail_overhead, int req_overhead,
+			       int channels, int aud_frequency)
+{
+	int aud_samples_per_line =
+		DIV_ROUND_UP(aud_frequency, line_freq_khz) + 1;
+	int lines_per_audio_sample =
+		max(1, line_freq_khz / aud_frequency);
+	int hblank_bytes_available =
+		(hblank_slots_lanes_bytes - avail_overhead) * lines_per_audio_sample;
+	int hblank_bytes_required;
+
+	if (channels > 2)
+		hblank_bytes_required =
+			DIV_ROUND_UP(aud_samples_per_line * 10 + 2, 4) * 16 + req_overhead;
+	else
+		hblank_bytes_required =
+			(DIV_ROUND_UP(DIV_ROUND_UP(aud_samples_per_line, 2) * 5 + 2, 4) + 2) * 16 + req_overhead;
+
+	return hblank_bytes_available > hblank_bytes_required;
+}
+
+static u8
+intel_audio_get_pruned_audfreq(int line_freq_khz,
+			       int hblank_slots_lanes_bytes,
+			       int avail_overhead, int req_overhead,
+			       int channels, u8 in_sad_freq)
+{
+	const unsigned int freq_list_khz[] = { 32, 44, 48, 88, 96, 176, 192 };
+	u8 pruned_sad_freq = in_sad_freq;
+
+	for (int j = ARRAY_SIZE(freq_list_khz) - 1; j >= 0; j--) {
+		int freq = pruned_sad_freq & BIT(j) ? freq_list_khz[j] : 0;
+
+		if (!freq)
+			continue;
+
+		/* If "freq" is ok, then values below are also ok */
+		if (intel_audio_frequency_feasible(line_freq_khz,
+						   hblank_slots_lanes_bytes,
+						   avail_overhead,
+						   req_overhead,
+						   channels, freq))
+			break;
+
+		/* "freq" not feasible! Prune it from the list */
+		pruned_sad_freq &= ~BIT(j);
+	}
+
+	return pruned_sad_freq;
+}
+
+static void intel_audio_compute_sad(struct intel_encoder *encoder,
+				    int line_freq_khz,
+				    int hblank_slots_lanes_bytes,
+				    int avail_overhead, int req_overhead,
+				    struct cea_sad *sad)
+{
+	u8 sad_channels = sad->channels + 1;
+	u8 sad_freq;
+
+	sad_freq = intel_audio_get_pruned_audfreq(line_freq_khz,
+						  hblank_slots_lanes_bytes,
+						  avail_overhead,
+						  req_overhead, sad_channels,
+						  sad->freq);
+
+	sad->freq = sad_freq;
+}
+
+bool intel_audio_compute_eld_config(struct intel_encoder *encoder,
+				    struct drm_connector_state *conn_state,
+				    int line_freq_khz,
+				    int hblank_slots_lanes_bytes,
+				    int avail_overhead, int req_overhead)
+{
+	struct intel_display *display = to_intel_display(encoder);
+	struct intel_connector *connector = to_intel_connector(conn_state->connector);
+	u8 *eld;
+
+	if (!intel_audio_eld_valid(encoder, conn_state))
+		return false;
+
+	eld = connector->base.eld;
+	for (int i = 0; i < drm_eld_sad_count(eld); i++) {
+		struct cea_sad sad;
+		u8 sad_freq;
+
+		if (drm_eld_sad_get(eld, i, &sad))
+			continue;
+
+		sad_freq = sad.freq;
+		intel_audio_compute_sad(encoder, line_freq_khz,
+					hblank_slots_lanes_bytes,
+					avail_overhead, req_overhead, &sad);
+
+		/* Update the eld with new sad data if any changes in the list */
+		if (sad_freq != sad.freq) {
+			drm_eld_sad_set(eld, i, &sad);
+			drm_dbg_kms(display->drm,
+				    "[CONNECTOR:%d:%s] SAD updated. Freq: 0x%x(0x%x)\n",
+				    connector->base.base.id, connector->base.name,
+				    sad.freq, sad_freq);
+		}
+	}
+
+	return true;
+}
+
 bool intel_audio_compute_config(struct intel_encoder *encoder,
 				struct intel_crtc_state *crtc_state,
 				struct drm_connector_state *conn_state)
diff --git a/drivers/gpu/drm/i915/display/intel_audio.h b/drivers/gpu/drm/i915/display/intel_audio.h
index 1bafc155434a..8e851beba46c 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.h
+++ b/drivers/gpu/drm/i915/display/intel_audio.h
@@ -32,5 +32,9 @@ void intel_audio_init(struct drm_i915_private *dev_priv);
 void intel_audio_register(struct drm_i915_private *i915);
 void intel_audio_deinit(struct drm_i915_private *dev_priv);
 void intel_audio_sdp_split_update(const struct intel_crtc_state *crtc_state);
+bool intel_audio_compute_eld_config(struct intel_encoder *encoder,
+				    struct drm_connector_state *conn_state,
+				    int line_freq_khz, int hblank_slots_lanes,
+				    int avail_overhead, int req_overhead);
 
 #endif /* __INTEL_AUDIO_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 888bcc549ddb..efcba6e5c452 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -106,6 +106,10 @@
 /* DP DSC FEC Overhead factor in ppm = 1/(0.972261) = 1.028530 */
 #define DP_DSC_FEC_OVERHEAD_FACTOR		1028530
 
+/* DP Audio bw params calculations. Bspec: 67768 */
+#define DP_AUDIO_BW_HBLANK_OVERHEAD_AVAIL	64
+#define DP_AUDIO_BW_HBLANK_OVERHEAD_REQ		80
+
 /* Constants for DP DSC configurations */
 static const u8 valid_dsc_bpp[] = {6, 8, 10, 12, 15};
 
@@ -3033,13 +3037,72 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
 	return ret;
 }
 
+static void
+intel_dp_compute_audio_bwparams(struct intel_crtc_state *crtc_state,
+				int *line_freq_khz,
+				int *hblank_slots_lanes_bytes)
+{
+	/* Calculation steps based on Bspec: 67768 */
+	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	int link_rate_mhz = DIV_ROUND_UP(crtc_state->port_clock, 1000);
+	int pixel_clk_mhz = DIV_ROUND_UP(adjusted_mode->crtc_clock, 1000);
+	int htotal = adjusted_mode->crtc_htotal;
+	int hblank_pixels =
+		adjusted_mode->crtc_hblank_end - adjusted_mode->crtc_hblank_start;
+	int mtp_clks_per_slot = DIV_ROUND_UP(4, crtc_state->lane_count);
+	int mtp_size_clks = 64 * mtp_clks_per_slot;
+	int link_clk_mhz = DIV_ROUND_UP(link_rate_mhz, 32);
+	int mtp_size_ns = DIV_ROUND_UP(mtp_size_clks * 1000, link_clk_mhz);
+	int hblank_size_ns = DIV_ROUND_UP(hblank_pixels * 1000, pixel_clk_mhz);
+	int mtps_in_hblank = DIV_ROUND_UP(hblank_size_ns, mtp_size_ns);
+	u32 temp = div_u64(mul_u32_u32(mtp_size_clks, crtc_state->dp_m_n.data_m),
+				crtc_state->dp_m_n.data_n);
+	int hblank_slots = mtps_in_hblank * temp;
+
+	*line_freq_khz = DIV_ROUND_UP(pixel_clk_mhz, htotal) * 1000;
+	*hblank_slots_lanes_bytes = hblank_slots * crtc_state->lane_count * 4;
+}
+
+static bool
+intel_dp_audio_compute_bw_limits(struct intel_encoder *encoder,
+				 struct intel_crtc_state *crtc_state,
+				 struct drm_connector_state *conn_state)
+{
+	struct intel_display *display = to_intel_display(encoder);
+	struct intel_connector *connector = to_intel_connector(conn_state->connector);
+	int hblank_bytes_avail_overhead = DP_AUDIO_BW_HBLANK_OVERHEAD_AVAIL;
+	int hblank_bytes_req_overhead = DP_AUDIO_BW_HBLANK_OVERHEAD_REQ;
+	int hblank_slots_lanes_bytes;
+	int line_freq_khz;
+
+	intel_dp_compute_audio_bwparams(crtc_state, &line_freq_khz,
+					&hblank_slots_lanes_bytes);
+	drm_dbg_kms(display->drm,
+		    "[CONNECTOR:%d:%s][ENCODER:%d:%s] Bw limits params: line_freq: %d khz hblank_slots: %d bytes\n",
+		    connector->base.base.id, connector->base.name,
+		    encoder->base.base.id, encoder->base.name,
+		    line_freq_khz, hblank_slots_lanes_bytes);
+
+	return intel_audio_compute_eld_config(encoder, conn_state,
+					      line_freq_khz,
+					      hblank_slots_lanes_bytes,
+					      hblank_bytes_avail_overhead,
+					      hblank_bytes_req_overhead);
+}
+
 void
 intel_dp_audio_compute_config(struct intel_encoder *encoder,
 			      struct intel_crtc_state *pipe_config,
 			      struct drm_connector_state *conn_state)
 {
-	pipe_config->has_audio =
-		intel_dp_has_audio(encoder, conn_state) &&
+	pipe_config->has_audio = intel_dp_has_audio(encoder, conn_state);
+
+	if (intel_dp_is_uhbr(pipe_config))
+		pipe_config->has_audio = pipe_config->has_audio &&
+			intel_dp_audio_compute_bw_limits(encoder, pipe_config,
+							 conn_state);
+
+	pipe_config->has_audio = pipe_config->has_audio &&
 		intel_audio_compute_config(encoder, pipe_config, conn_state);
 
 	pipe_config->sdp_split_enable = pipe_config->has_audio &&
-- 
2.34.1

