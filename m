Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A83A42A1D2B
	for <lists+intel-gfx@lfdr.de>; Sun,  1 Nov 2020 11:14:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E9C86EAA8;
	Sun,  1 Nov 2020 10:14:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8C9C6EAA6;
 Sun,  1 Nov 2020 10:14:09 +0000 (UTC)
IronPort-SDR: c/818YqR4Oe5n9jAjA3AYuT52ruZzL6KIdNVXS4rVeCg/ltjPPP3XFHiDEIgUh3Z2rDrCcZMIE
 KSdYCCdToXDw==
X-IronPort-AV: E=McAfee;i="6000,8403,9791"; a="167997872"
X-IronPort-AV: E=Sophos;i="5.77,441,1596524400"; d="scan'208";a="167997872"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2020 02:14:09 -0800
IronPort-SDR: N/N0CLriHBpcaLZVS+QvmQiMMjoNrZqRxBMe7svkFzZZ9O628qbd6bvS+X8CaghyC3KSX4O6a9
 zyVFMKWG8yiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,441,1596524400"; d="scan'208";a="425738684"
Received: from linux-akn.iind.intel.com ([10.223.34.148])
 by fmsmga001.fm.intel.com with ESMTP; 01 Nov 2020 02:14:07 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  1 Nov 2020 15:36:56 +0530
Message-Id: <20201101100657.12087-13-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201101100657.12087-1-ankit.k.nautiyal@intel.com>
References: <20201101100657.12087-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] [PATCH v2 12/13] drm/i915: Add helper functions for
 calculating DSC parameters for HDMI2.1
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
Cc: dri-devel@lists.freedesktop.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The DP-HDMI2.1 PCON spec provides way for a source to set PPS
parameters: slice height, slice width and bits_per_pixel, based on
the HDMI2.1 sink capabilities. The DSC encoder of the PCON will
respect these parameters, while preparing the 128 byte PPS.

This patch adds helper functions to calculate these PPS paremeters as
per the HDMI2.1 specification.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 181 ++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_hdmi.h |   7 +
 2 files changed, 188 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index f90838bc74fb..6b9b9ea7f9b0 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -3438,3 +3438,184 @@ void intel_hdmi_init(struct drm_i915_private *dev_priv,
 	dig_port->aux_ch = intel_bios_port_aux_ch(dev_priv, port);
 	intel_hdmi_init_connector(dig_port, intel_connector);
 }
+
+int intel_hdmi_dsc_get_slice_height(int vactive)
+{
+	int slice_height;
+
+	/*
+	 * Slice Height determination : HDMI2.1 Section 7.7.5.2
+	 * Select smallest slice height >=96, that results in a valid PPS and
+	 * requires minimum padding lines required for final slice.
+	 *
+	 * Assumption : Vactive is even.
+	 */
+	for (slice_height = 96; slice_height <= vactive; slice_height += 2)
+		if (vactive % slice_height == 0)
+			return slice_height;
+
+	return 0;
+}
+
+int
+intel_hdmi_dsc_get_num_slices(const struct intel_crtc_state *crtc_state,
+			      int src_max_slices, int src_max_slice_width,
+			      int hdmi_max_slices, int hdmi_throughput)
+{
+/* Pixel rates in KPixels/sec */
+#define HDMI_DSC_PEAK_PIXEL_RATE		2720000
+#define HDMI_DSC_MAX_ENC_THROUGHPUT_0		340000
+#define HDMI_DSC_MAX_ENC_THROUGHPUT_1		400000
+#define MAX_HDMI_SLICE_WIDTH			2720
+	int kslice_adjust;
+	int adjusted_clk_khz;
+	int min_slices;
+	int target_slices;
+	int max_throughput; /* max clock freq. in khz per slice */
+	int max_slice_width;
+	int slice_width;
+	int pixel_clock = crtc_state->hw.adjusted_mode.crtc_clock;
+
+	if (!hdmi_throughput)
+		return 0;
+
+	/*
+	 * Slice Width determination : HDMI2.1 Section 7.7.5.1
+	 * kslice_adjust factor for 4:2:0 formats is 0.5, where as
+	 * for 4:4:4 is 1.0. Multiplying these factors by 10 and later
+	 * dividing adjusted clock value by 10.
+	 */
+	if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420)
+		kslice_adjust = 5;
+	else
+		kslice_adjust = 10;
+
+	adjusted_clk_khz = DIV_ROUND_UP(kslice_adjust * pixel_clock, 10);
+
+	if (adjusted_clk_khz <= HDMI_DSC_PEAK_PIXEL_RATE)
+		max_throughput = HDMI_DSC_MAX_ENC_THROUGHPUT_0;
+	else
+		max_throughput = HDMI_DSC_MAX_ENC_THROUGHPUT_1;
+
+	/*
+	 * Taking into account the sink's capability for maximum
+	 * clock per slice (in MHz) as read from HF-VSDB.
+	 */
+	max_throughput = min(max_throughput, hdmi_throughput * 1000);
+
+	if (!max_throughput)
+		return 0;
+
+	min_slices = DIV_ROUND_UP(adjusted_clk_khz, max_throughput);
+	max_slice_width = min(MAX_HDMI_SLICE_WIDTH, src_max_slice_width);
+
+	/*
+	 * Keep on increasing the num of slices/line, starting from min_slices
+	 * per line till we get such a number, for which the slice_width is
+	 * just less than max_slice_width. The slices/line selected should be
+	 * less than or equal to the max horizontal slices that the combination
+	 * of PCON encoder and HDMI decoder can support.
+	 */
+	slice_width = max_slice_width;
+
+	do {
+		if (min_slices <= 1 && src_max_slices >= 1 && hdmi_max_slices >= 1)
+		       target_slices = 1;
+		else if (min_slices <= 2 && src_max_slices >= 2 && hdmi_max_slices >= 2)
+		       target_slices = 2;
+		else if (min_slices <= 4 && src_max_slices >= 4 && hdmi_max_slices >= 4)
+		       target_slices = 4;
+		else if (min_slices <= 8 && src_max_slices >= 8 && hdmi_max_slices >= 8)
+		       target_slices = 8;
+		else if (min_slices <= 12 && src_max_slices >= 12 && hdmi_max_slices >= 12)
+		       target_slices = 12;
+		else if (min_slices <= 16 && src_max_slices >= 16 && hdmi_max_slices >= 16)
+		       target_slices = 16;
+		else
+			return 0;
+
+		slice_width = DIV_ROUND_UP(crtc_state->hw.adjusted_mode.hdisplay, target_slices);
+		if (slice_width >= max_slice_width)
+			min_slices = target_slices + 1;
+	} while (slice_width >= max_slice_width);
+
+	return target_slices;
+}
+
+int
+intel_hdmi_dsc_get_bpp(int src_fractional_bpp, int slice_width, int num_slices,
+		       int output_format, bool hdmi_all_bpp,
+		       int hdmi_max_chunk_bytes)
+{
+	int max_dsc_bpp, min_dsc_bpp;
+	int target_bytes;
+	bool bpp_found = false;
+	int bpp_decrement_x16;
+	int bpp_target;
+	int bpp_target_x16;
+
+	/*
+	 * Get min bpp and max bpp as per Table 7.23, in HDMI2.1 spec
+	 * Start with the max bpp and keep on decrementing with
+	 * fractional bpp, if supported by PCON DSC encoder
+	 *
+	 * for each bpp we check if no of bytes can be supported by HDMI sink
+	 */
+
+	/* Assuming: bpc as 8*/
+	if (output_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
+		min_dsc_bpp = 6;
+		max_dsc_bpp = 3 * 4; /* 3*bpc/2 */
+	} else {
+		min_dsc_bpp = 8;
+		max_dsc_bpp = 3 * 8; /* 3*bpc */
+	}
+
+	/*
+	 * Taking into account if all dsc_all_bpp supported by HDMI2.1 sink
+	 * Section 7.7.34 : Source shall not enable compressed Video
+	 * Transport with bpp_target settings above 12 bpp unless
+	 * DSC_all_bpp is set to 1.
+	 */
+	if (!hdmi_all_bpp)
+		max_dsc_bpp = min(max_dsc_bpp, 12);
+
+	/*
+	 * The Sink has a limit of compressed data in bytes for a scanline,
+	 * as described in max_chunk_bytes field in HFVSDB block of edid.
+	 * The no. of bytes depend on the target bits per pixel that the
+	 * source configures. So we start with the max_bpp and calculate
+	 * the target_chunk_bytes. We keep on decrementing the target_bpp,
+	 * till we get the target_chunk_bytes just less than what the sink's
+	 * max_chunk_bytes, or else till we reach the min_dsc_bpp.
+	 *
+	 * The decrement is according to the fractional support from PCON DSC
+	 * encoder. For fractional BPP we use bpp_target as a multiple of 16.
+	 *
+	 * bpp_target_x16 = bpp_target * 16
+	 * So we need to decrement by {1, 2, 4, 8, 16} for fractional bpps
+	 * {1/16, 1/8, 1/4, 1/2, 1} respectively.
+	 */
+
+	bpp_target = max_dsc_bpp;
+	if (src_fractional_bpp)
+		return 0;
+	bpp_decrement_x16 = DIV_ROUND_UP(16, src_fractional_bpp);
+	bpp_target_x16 = (bpp_target * 16) - bpp_decrement_x16;
+
+	while (bpp_target_x16 > (min_dsc_bpp * 16)) {
+		int bpp;
+
+		bpp = DIV_ROUND_UP(bpp_target_x16, 16);
+		target_bytes = num_slices * slice_width * DIV_ROUND_UP(bpp, 8);
+		if (target_bytes <= hdmi_max_chunk_bytes) {
+			bpp_found = true;
+			break;
+		}
+		bpp_target_x16 -= bpp_decrement_x16;
+	}
+	if (bpp_found)
+		return bpp_target_x16;
+
+	return 0;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h b/drivers/gpu/drm/i915/display/intel_hdmi.h
index 15eb0ccde76e..fa1a9b030850 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.h
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
@@ -50,5 +50,12 @@ bool intel_hdmi_limited_color_range(const struct intel_crtc_state *crtc_state,
 				    const struct drm_connector_state *conn_state);
 bool intel_hdmi_deep_color_possible(const struct intel_crtc_state *crtc_state, int bpc,
 				    bool has_hdmi_sink, bool ycbcr420_output);
+int intel_hdmi_dsc_get_bpp(int src_fractional_bpp, int slice_width,
+			   int num_slices, int output_format, bool hdmi_all_bpp,
+			   int hdmi_max_chunk_bytes);
+int intel_hdmi_dsc_get_num_slices(const struct intel_crtc_state *crtc_state,
+				  int src_max_slices, int src_max_slice_width,
+				  int hdmi_max_slices, int hdmi_throughput);
+int intel_hdmi_dsc_get_slice_height(int vactive);
 
 #endif /* __INTEL_HDMI_H__ */
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
