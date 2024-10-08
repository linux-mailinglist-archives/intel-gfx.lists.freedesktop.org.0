Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12F2999413D
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2024 10:23:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF17210E49B;
	Tue,  8 Oct 2024 08:23:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cXYXlqsK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54A8310E49B
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2024 08:23:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728375835; x=1759911835;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oAnUbO6pZUNztUwF2CKtoqY+YeNCTfiCCuUOqW187jY=;
 b=cXYXlqsKcjDoWF+j0DQbT11XpItZYAiK+Mf3rgcQQkqWFumGC90Lc1hK
 yHgr2uyeFMA59zpMuG7cr5cgh2OmL7cXSSbhVymivOkJW2VS9PfTvmyXy
 UTBmBi+QIULL4f7shEd/zkkyaunm+0M51U7kcY9cCMxQhzD1+5SPFunDt
 FWBzHxgfNFCBXsgLn7Z2dyHyX4HFN7nnvCse605uvkzqZZBdoUIZUJb7Y
 kdeOLkczFb1z72ckDAj1mhDDUyNBhtsRDYtVJZVxFBwsY4IZfZ6oz0+ta
 xXuQcuuOEB3iRqOKg6/Pd643NhkA2coo7JKY39inxUarRq3/Knh1fAmD4 g==;
X-CSE-ConnectionGUID: ZiyZTkclSru1mPP+yswcgw==
X-CSE-MsgGUID: UxhbB0TCT06vOq7SeAT1Og==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="45079138"
X-IronPort-AV: E=Sophos;i="6.11,186,1725346800"; d="scan'208";a="45079138"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 01:23:55 -0700
X-CSE-ConnectionGUID: Lyq30D+9QxCVHL5IuFHC6w==
X-CSE-MsgGUID: eUhE3dSLTl+N+uMRZ83U1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,186,1725346800"; d="scan'208";a="75755769"
Received: from dneilan-mobl1.ger.corp.intel.com (HELO vgovind2-mobl3..)
 ([10.245.245.51])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 01:23:53 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, jani.nikula@intel.com,
 ville.syrjala@intel.com, kai.vehmanen@intel.com, jani.saarinen@intel.com
Subject: [PATCH 5/9] drm/i915/display: check and prune audio frequencies based
 on bw limits
Date: Tue,  8 Oct 2024 11:23:23 +0300
Message-Id: <20241008082327.342020-6-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241008082327.342020-1-vinod.govindapillai@intel.com>
References: <20241008082327.342020-1-vinod.govindapillai@intel.com>
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

Bspec: 67768
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 107 +++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_audio.h |   3 +
 drivers/gpu/drm/i915/display/intel_dp.c    |  50 ++++++++++
 3 files changed, 160 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 6946f3b0f8c9..e84101ef9531 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -705,6 +705,113 @@ static bool intel_audio_eld_valid(struct drm_connector_state *conn_state)
 	return true;
 }
 
+static bool
+intel_audio_frequency_feasible(int line_freq_khz, int hblank_slots_lanes,
+			       int avail_overhead, int req_overhead,
+			       int channels, int aud_frequency)
+{
+	int aud_samples_per_line =
+		DIV_ROUND_UP(aud_frequency, line_freq_khz) + 1;
+	int lines_per_audio_sample =
+		max(1, line_freq_khz / aud_frequency);
+	int hblank_bytes_available =
+		(hblank_slots_lanes - avail_overhead) * lines_per_audio_sample;
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
+intel_audio_get_pruned_audfreq(struct drm_i915_private *i915,
+			       int line_freq_khz, int hblank_slots_lanes,
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
+						   hblank_slots_lanes,
+						   avail_overhead,
+						   req_overhead,
+						   channels, freq))
+			break;
+
+		/* "freq" not feasible! Prune it from the list */
+		pruned_sad_freq &= ~BIT(j);
+		drm_dbg_kms(&i915->drm,
+			    "Frequency[%d]: %d channels: %d not feasible\n",
+			    j, freq, channels);
+	}
+
+	return pruned_sad_freq;
+}
+
+static void intel_audio_compute_sad(struct drm_i915_private *i915,
+				    int line_freq_khz, int hblank_slots_lanes,
+				    int avail_overhead, int req_overhead,
+				    struct cea_sad *sad)
+{
+	u8 sad_channels = sad->channels + 1;
+	u8 sad_freq;
+
+	sad_freq = intel_audio_get_pruned_audfreq(i915, line_freq_khz,
+						  hblank_slots_lanes,
+						  avail_overhead,
+						  req_overhead, sad_channels,
+						  sad->freq);
+
+	sad->freq = sad_freq;
+}
+
+bool intel_audio_compute_eld_config(struct drm_connector_state *conn_state,
+				    int line_freq_khz, int hblank_slots_lanes,
+				    int avail_overhead, int req_overhead)
+{
+	struct drm_connector *connector = conn_state->connector;
+	struct drm_i915_private *i915 = to_i915(connector->dev);
+	u8 *eld;
+
+	if (!intel_audio_eld_valid(conn_state))
+		return false;
+
+	eld = connector->eld;
+	for (int i = 0; i < drm_eld_sad_count(eld); i++) {
+		struct cea_sad sad;
+		u8 sad_freq;
+
+		if (drm_eld_sad_get(eld, i, &sad))
+			continue;
+
+		sad_freq = sad.freq;
+		intel_audio_compute_sad(i915, line_freq_khz,
+					hblank_slots_lanes,
+					avail_overhead, req_overhead, &sad);
+
+		/* Update the eld with new sad data if any changes in the list */
+		if (sad_freq != sad.freq) {
+			drm_eld_sad_set(eld, i, &sad);
+			drm_dbg_kms(&i915->drm, "sad updated. Pruned freq list: 0x%x\n", sad.freq);
+		}
+	}
+
+	return true;
+}
+
 bool intel_audio_compute_config(struct intel_crtc_state *crtc_state,
 				struct drm_connector_state *conn_state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_audio.h b/drivers/gpu/drm/i915/display/intel_audio.h
index 9b327b677d89..f8574fc30973 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.h
+++ b/drivers/gpu/drm/i915/display/intel_audio.h
@@ -30,5 +30,8 @@ void intel_audio_init(struct drm_i915_private *dev_priv);
 void intel_audio_register(struct drm_i915_private *i915);
 void intel_audio_deinit(struct drm_i915_private *dev_priv);
 void intel_audio_sdp_split_update(const struct intel_crtc_state *crtc_state);
+bool intel_audio_compute_eld_config(struct drm_connector_state *conn_state,
+				    int line_freq_khz, int hblank_slots_lanes,
+				    int avail_overhead, int req_overhead);
 
 #endif /* __INTEL_AUDIO_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6347258b4a49..dde7244ccd15 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2994,6 +2994,53 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
 	return ret;
 }
 
+static void
+intel_dp_compute_audio_bwparams(struct intel_crtc_state *crtc_state,
+				int *line_freq_khz, int *hblank_slots_lanes)
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
+	*hblank_slots_lanes = hblank_slots * crtc_state->lane_count * 4;
+}
+
+static bool
+intel_dp_audio_compute_bw_limits(struct intel_crtc_state *crtc_state,
+				 struct drm_connector_state *conn_state)
+{
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	int hblank_bytes_avail_overhead = 64;
+	int hblank_bytes_req_overhead = 80;
+	int hblank_slots_lanes;
+	int line_freq_khz;
+
+	intel_dp_compute_audio_bwparams(crtc_state, &line_freq_khz,
+					&hblank_slots_lanes);
+	drm_dbg_kms(&i915->drm,
+		    "bw params: line_freq_khz: %d hblank_slots_lanes: %d\n",
+		    line_freq_khz, hblank_slots_lanes);
+
+	return intel_audio_compute_eld_config(conn_state, line_freq_khz,
+					      hblank_slots_lanes,
+					      hblank_bytes_avail_overhead,
+					      hblank_bytes_req_overhead);
+}
+
 void
 intel_dp_audio_compute_config(struct intel_encoder *encoder,
 			      struct intel_crtc_state *pipe_config,
@@ -3001,6 +3048,9 @@ intel_dp_audio_compute_config(struct intel_encoder *encoder,
 {
 	pipe_config->has_audio = intel_dp_has_audio(encoder, conn_state);
 
+	pipe_config->has_audio = pipe_config->has_audio &&
+		intel_dp_audio_compute_bw_limits(pipe_config, conn_state);
+
 	pipe_config->has_audio = pipe_config->has_audio &&
 		intel_audio_compute_config(pipe_config, conn_state);
 
-- 
2.34.1

