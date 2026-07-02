Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id L/aeJU1iRmpxSQsAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 15:06:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ADF26F81D5
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 15:06:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=g96Te11x;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B76E410F38A;
	Thu,  2 Jul 2026 13:06:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B570B10F38A;
 Thu,  2 Jul 2026 13:06:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782997578; x=1814533578;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aTtVrqfQ28f5zc1xUr4siKyKrnzdUKovfe/RA+pzl0M=;
 b=g96Te11xOtyzxX0Gf6/IsiCNyI/IYKsrfb4c3DZdX9he1680jYf2kBkl
 xQKJW8Q1pgq9Wg2IvfHJO9CyWcIYWNpLtpg8N+8lfOYymxJ6z3u4I5iXt
 xd59D5ORij6CVJLUlr9W2Q+YMD0PvwqI9lx5MlO6h612vqmWkkb2DNzJQ
 43i7/wbptLpXDhSqZwhaIEmD5IKZBghd1odtTnYZidfk5sJMb6P25fseN
 OmvLkrE81oFm73iAYZAW2l32ltxJ+iWFOrP+6OX2YH/YfQ1dFrKd6JaJb
 EW3pL8FZeZ6iDzdFkKbBB0Ayvq/5k9rkpHWcftAZsmPez1yE6aMd/kEB5 g==;
X-CSE-ConnectionGUID: d6yS0ZYcQBqjSq88IYGl3A==
X-CSE-MsgGUID: XVdBA9kFSkC6At0LFE0UlQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11835"; a="83621206"
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="83621206"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 06:06:18 -0700
X-CSE-ConnectionGUID: vw0oYD1cRbGBJ8rfIK/GbQ==
X-CSE-MsgGUID: 1ldM82LOQGiZYqbK9PzANw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="257748955"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa005.fm.intel.com with ESMTP; 02 Jul 2026 06:06:16 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 Kai Vehmanen <kai.vehmanen@linux.intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Vinod Govindapillai <vinod.govindapillai@intel.com>,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: [PATCH 2/2] drm/i915/audio: Prune ELD SADs based on HDMI audio
 bandwidth
Date: Thu,  2 Jul 2026 18:12:08 +0530
Message-Id: <20260702124208.2401160-3-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260702124208.2401160-1-chaitanya.kumar.borah@intel.com>
References: <20260702124208.2401160-1-chaitanya.kumar.borah@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3ADF26F81D5

Add bandwidth check to determine whether a given audio sample rate and
channel count can be carried within the hblank period for HDMI TMDS mode.

Use this check to prune unsupported sample rates from each SAD in the
ELD during intel_audio_compute_config(). SADs with no remaining
supported rates are removed entirely.

Sample rates are pruned rather than channel counts, since compressed
formats (e.g. AC-3) are associated with specific channel counts.

BSpec: 68944
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Assisted-by: GitHub-Copilot:claude-opus-4.6
Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 144 +++++++++++++++++++++
 1 file changed, 144 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 9729f1837d2c..2cf3c347bf12 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -696,6 +696,147 @@ static void ibx_audio_codec_enable(struct intel_encoder *encoder,
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
+	audio_packets_line = DIV_ROUND_UP_ULL(audio_pkt_rate_x4_x1000 * mode->htotal,
+					      (u64)4 * 1000 * pixel_clk_max_hz);
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
@@ -717,6 +858,9 @@ bool intel_audio_compute_config(struct intel_encoder *encoder,
 	BUILD_BUG_ON(sizeof(crtc_state->eld) != sizeof(connector->eld));
 	memcpy(crtc_state->eld, connector->eld, sizeof(crtc_state->eld));
 
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
+		intel_audio_hdmi_eld_compute_config(crtc_state);
+
 	crtc_state->eld[6] = drm_av_sync_delay(connector, adjusted_mode) / 2;
 	mutex_unlock(&connector->eld_mutex);
 
-- 
2.25.1

