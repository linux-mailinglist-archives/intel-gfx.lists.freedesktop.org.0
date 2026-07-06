Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lfAKKPrjS2q/cAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 19:20:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B367713CCF
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 19:20:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=XxI3kG+e;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D15EF10EA16;
	Mon,  6 Jul 2026 17:20:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0ABDC10EA15;
 Mon,  6 Jul 2026 17:20:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783358455; x=1814894455;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4Jf+UNCUPHQeffmpvieExgjCe49CdnXrfopViUwYvNo=;
 b=XxI3kG+ed6W3fxaaEtz2S3kbWoOoxa6u/JLWhLPFvNANUYPZAZpdoEUk
 p1x++Swi0x0HAZkrQU4wOZMmE5m7YNcUddscZGHgjGwoWP+SCgjExKw7U
 YLZFsQowX9pV+C52HghtibcMivZpdB6J7FZ2UEdRUWdqQY+NoM/3KuKQK
 SyN/VwTLl9mQSqa9fUzWKIaIH2+Hfs2tdXgkxOcsRedJvOhBFdByTpf5q
 ykAwpdH29n4X/xdGZxtMwAoeYQ79DqTxS6kMlmyqXf4ag/idnhLc+7Nff
 4hoV7NF7HpPil9IotJnzWLvvXf1wCI9G2EInW20tdQTF9yiXeJ8JLfnmD w==;
X-CSE-ConnectionGUID: lhdWfTTbSXmvL18VduBubQ==
X-CSE-MsgGUID: paO5dtikSQi313u9yCpjgA==
X-IronPort-AV: E=McAfee;i="6800,10657,11838"; a="101417681"
X-IronPort-AV: E=Sophos;i="6.25,151,1779174000"; d="scan'208";a="101417681"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 10:20:54 -0700
X-CSE-ConnectionGUID: WpyeVVNCQ/WIfwhj89OK0A==
X-CSE-MsgGUID: t1fLDdPbSZmg6t3mNFAlHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,151,1779174000"; d="scan'208";a="255704366"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa004.fm.intel.com with ESMTP; 06 Jul 2026 10:20:52 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 Kai Vehmanen <kai.vehmanen@linux.intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Vinod Govindapillai <vinod.govindapillai@intel.com>,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: [v2 2/2] drm/i915/audio: Prune ELD SADs based on HDMI audio bandwidth
Date: Mon,  6 Jul 2026 22:26:46 +0530
Message-Id: <20260706165646.2731978-3-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260706165646.2731978-1-chaitanya.kumar.borah@intel.com>
References: <20260706165646.2731978-1-chaitanya.kumar.borah@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:from_mime,intel.com:email,intel.com:mid,intel.com:dkim];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4B367713CCF

Add bandwidth check to determine whether a given audio sample rate and
channel count can be carried within the hblank period for HDMI TMDS mode.

Use this check to prune unsupported sample rates from each SAD in the
ELD during intel_audio_compute_config(). SADs with no remaining
supported rates are removed entirely.

Sample rates are pruned rather than channel counts, since compressed
formats (e.g. AC-3) are associated with specific channel counts.

v2:
 - Use DIV64_U64_ROUND_UP() instead of DIV_ROUND_UP_ULL() to avoid
   do_div() truncating the 64-bit divisor to 32-bit, which caused
   audio_packets_line to be wildly inflated and all SADs to be pruned.
 - Guard intel_audio_hdmi_eld_compute_config() against HDMI FRL modes.
   (Remove it when BW calculations for FRL are added.)

BSpec: 68944
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Assisted-by: GitHub-Copilot:claude-opus-4.6
Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 149 +++++++++++++++++++++
 1 file changed, 149 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 9729f1837d2c..016126f93092 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -38,6 +38,7 @@
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_display_wa.h"
+#include "intel_hdmi.h"
 #include "intel_lpe_audio.h"
 
 /**
@@ -696,6 +697,151 @@ static void ibx_audio_codec_enable(struct intel_encoder *encoder,
 	mutex_unlock(&display->audio.mutex);
 }
 
+static bool hdmi_audio_rate_supported(const struct intel_crtc_state *crtc_state,
+				      int available_tmds,
+				      int audio_rate, int channels)
+{
+	const struct drm_display_mode *mode = &crtc_state->hw.adjusted_mode;
+	int pixel_clk_max_hz;
+	int audio_pkt_factor;
+	u64 audio_pkt_rate_x4_x1000;
+	int audio_packets_line;
+	int hblank_overhead;
+	int required_tmds;
+
+	/*
+	 * Part 2: Calculate TMDS clock cycles required for Audio Bandwidth
+	 *
+	 * Step 1: pixelclk_max = nominal_pixel_rate * (1 + 0.5%)
+	 * crtc_clock (kHz) * 1000 * 1.005 = crtc_clock * 1005 (Hz)
+	 */
+	pixel_clk_max_hz = mode->crtc_clock * 1005;
+
+	/*
+	 * Steps 3-4: Audio Packet Rate.
+	 *   R_AP = (audio_rate * AP + 2 * acrrate_max) * (1 + 1000 / 1e6)
+	 *        = (audio_rate * AP + 2*1500) * 1.001
+	 *
+	 * AP = 0.25 (2ch) or 1.0 (3-8ch); acrrate_max = 1500 Hz (max ACR
+	 * packet transmission rate per HDMI spec)
+	 *
+	 * Scale by 4*1000 to stay integer:
+	 *  x4: eliminates AP=0.25 -> audio_pkt_factor=1(2ch) or 4(3-8ch),
+	 *      scaled acrrate_max: 2 * 1500 * 4 = 12000
+	 *  x1000: eliminates 1.001 -> *1000*1.001 = *1001
+	 *
+	 * R_AP * 4 * 1000 = (audio_rate * audio_pkt_factor + 12000) * 1001
+	 */
+	audio_pkt_factor = (channels <= 2) ? 1 : 4;
+	audio_pkt_rate_x4_x1000 = (u64)(audio_rate * audio_pkt_factor + 12000) * 1001;
+
+	/*
+	 * Steps 2+5-6: Audio packets per line.
+	 *   AudioPackets_Line = CEIL[R_AP * htotal / f_pixelclk_max]
+	 *
+	 * With audio_pkt_rate_x4_x1000 = R_AP * 4 * 1000:
+	 *   = CEIL[audio_pkt_rate_x4_x1000 * htotal / (4 * 1000 * pixel_clk_max_hz)]
+	 */
+	audio_packets_line = DIV64_U64_ROUND_UP(audio_pkt_rate_x4_x1000 * mode->htotal,
+						(u64)4 * 1000 * pixel_clk_max_hz);
+
+	/*
+	 * Steps 7-9: Hblank overhead.
+	 * Standard:  2*dip_guardband + 2*control_period + video_guardband
+	 *          = 2*2 + 2*12 + 2 = 30
+	 * HDCP 1.x:  rekey_period + dip_guardband + control_period + video_guardband
+	 *          = 58 + 2 + 12 + 2 = 74
+	 *
+	 * Always use HDCP 1.x worst case (74) since HDCP can be toggled
+	 * via fastset without compute_config.
+	 */
+	hblank_overhead = 74;
+
+	/*
+	 * Step 10: Required TMDS cycles for Audio.
+	 *  32 TMDS clock cycles per audio packet.
+	 *   Hblank_audio_min = 32 * AudioPackets_Line + Hblank_overhead
+	 */
+	required_tmds = 32 * audio_packets_line + hblank_overhead;
+
+	/*
+	 * Part 3: audio supported if Hblank_audio_min <= TB_blank and
+	 * audio packets per line <= Maximum allowed packets per line (18)
+	 */
+
+	return required_tmds <= available_tmds && audio_packets_line <= 18;
+}
+
+static void intel_audio_hdmi_eld_compute_config(struct intel_crtc_state *crtc_state)
+{
+	static const int sad_freqs[] = {
+		32000, 44100, 48000, 88200, 96000, 176400, 192000
+	};
+	const struct drm_display_mode *mode = &crtc_state->hw.adjusted_mode;
+	int hblank = mode->htotal - mode->hdisplay;
+	int bpc = crtc_state->pipe_bpp / 3;
+	int ycbcr_420_divider = (crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420) ? 2 : 1;
+	int available_tmds;
+	u8 *eld = crtc_state->eld;
+	int mnl = drm_eld_mnl(eld);
+	int sad_count = drm_eld_sad_count(eld);
+	int i = 0;
+
+	/* Only applies to HDMI TMDS, not FRL */
+	if (intel_hdmi_is_frl(crtc_state->port_clock))
+		return;
+	/*
+	 * Part 1: Calculate available TMDS clock cycles (TB_blank).
+	 *
+	 * TB_blank = CEILING[hblank * K_CD / K_420]
+	 *
+	 * K_CD = 1 for YCbCr4:2:2, bpc / 8 otherwise.
+	 * K_420 = 2 for YCbCr4:2:0, 1 otherwise.
+	 * Rearranged: CEILING[hblank * bpc / (8 * K_420)]
+	 *
+	 * TODO: As and when support for YCbCr4:2:2 is added, set bpc = 8
+	 * to achieve K_CD = 1
+	 */
+	available_tmds = DIV_ROUND_UP(hblank * bpc, 8 * ycbcr_420_divider);
+
+	while (i < sad_count) {
+		int sad_offset = DRM_ELD_CEA_SAD(mnl, i);
+		int channels = (eld[sad_offset] & 0x7) + 1;
+		u8 freq_mask = eld[sad_offset + 1];
+		u8 new_freq_mask = 0;
+		int bit;
+
+		for (bit = 0; bit < 7; bit++) {
+			if (!(freq_mask & BIT(bit)))
+				continue;
+			if (hdmi_audio_rate_supported(crtc_state, available_tmds,
+						      sad_freqs[bit], channels))
+				new_freq_mask |= BIT(bit);
+		}
+
+		eld[sad_offset + 1] = new_freq_mask;
+
+		if (!new_freq_mask) {
+			/* Remove this SAD by compacting the rest */
+			memmove(&eld[DRM_ELD_CEA_SAD(mnl, i)],
+				&eld[DRM_ELD_CEA_SAD(mnl, i + 1)],
+				(sad_count - i - 1) * 3);
+			memset(&eld[DRM_ELD_CEA_SAD(mnl, sad_count - 1)], 0, 3);
+			sad_count--;
+			continue;
+		}
+		i++;
+	}
+
+	/* Update SAD count in ELD header */
+	eld[DRM_ELD_SAD_COUNT_CONN_TYPE] &= ~DRM_ELD_SAD_COUNT_MASK;
+	eld[DRM_ELD_SAD_COUNT_CONN_TYPE] |= sad_count << DRM_ELD_SAD_COUNT_SHIFT;
+
+	/* Recalculate baseline ELD length (in dwords) */
+	eld[DRM_ELD_BASELINE_ELD_LEN] =
+		DIV_ROUND_UP(drm_eld_calc_baseline_block_size(eld), 4);
+}
+
 bool intel_audio_compute_config(struct intel_encoder *encoder,
 				struct intel_crtc_state *crtc_state,
 				struct drm_connector_state *conn_state)
@@ -717,6 +863,9 @@ bool intel_audio_compute_config(struct intel_encoder *encoder,
 	BUILD_BUG_ON(sizeof(crtc_state->eld) != sizeof(connector->eld));
 	memcpy(crtc_state->eld, connector->eld, sizeof(crtc_state->eld));
 
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
+		intel_audio_hdmi_eld_compute_config(crtc_state);
+
 	crtc_state->eld[6] = drm_av_sync_delay(connector, adjusted_mode) / 2;
 	mutex_unlock(&connector->eld_mutex);
 
-- 
2.25.1

