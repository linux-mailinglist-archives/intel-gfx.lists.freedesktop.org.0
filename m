Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8ysXGXaiKWoqbAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 19:44:22 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCDA366C06A
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 19:44:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sms-medipool.de header.s=mail header.b=nUv3IEOX;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=reject) header.from=sms-medipool.de
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 382FE10E1C4;
	Wed, 10 Jun 2026 17:44:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.sms-medipool.de (mail.sms-medipool.de [178.63.14.108])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB4E110E528;
 Wed, 10 Jun 2026 17:44:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sms-medipool.de;
 s=mail; t=1781113456;
 bh=xP/kZT3mUaeUNX4TxlYlkVie+felP3LU6Vg0yA2SbC4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nUv3IEOX5VLfPbySMEC764y58XOKYf3BneYmkemFwdsI39v7q1KyoP8GcB2WhTsyw
 MENeivEsg0E3AgSTW48ntE31z3jDn3HgRNaBq6kdd4Sy7Mx8jLrYjcN5iDqaLCJ0vq
 /hWae2daoi4l2L2Ge9s7VVHMqgL07JFd888N2kxo5AgDiGTGmBu9OcmE+m+4SMZO4v
 cq90kiKKlXJNl6RACMCgaw6Dop/lYXlVCK7ABFtZRrZBd9DG8gdSooUjGxmSpaxH17
 xUao0tD3NG283s0bxyHl4YUekeUhrxcSCg099hIpJWIuli0e5b4ACcGBSW758ucegn
 dv2qVtI1zZlzw==
Received: from mail.stoss-medica.de (mail.stoss-medica.de [213.147.17.40])
 by mail.sms-medipool.de (Postfix) with ESMTPS id D82F711B54;
 Wed, 10 Jun 2026 19:44:15 +0200 (CEST)
Received: from NUC16-Linux.sb.golima.de ([95.88.98.111])
 by mail.stoss-medica.de (Kerio Connect 10.0.8 patch 2) with ESMTP;
 Wed, 10 Jun 2026 19:44:14 +0200
From: Alexander Kaplan <alexander.kaplan@sms-medipool.de>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Imre Deak <imre.deak@intel.com>,
 Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, alexander.kaplan@sms-medipool.de
Subject: [PATCH 3/3] drm/i915/dp: Check FRL bandwidth limits in the HDMI bpc
 computation
Date: Wed, 10 Jun 2026 19:44:13 +0200
Message-ID: <20260610174413.5881-4-alexander.kaplan@sms-medipool.de>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260610174413.5881-1-alexander.kaplan@sms-medipool.de>
References: <20260610174413.5881-1-alexander.kaplan@sms-medipool.de>
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
	DMARC_POLICY_ALLOW(-0.50)[sms-medipool.de,reject];
	R_DKIM_ALLOW(-0.20)[sms-medipool.de:s=mail];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[sms-medipool.de:+];
	ARC_NA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.kaplan@sms-medipool.de,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:email,sms-medipool.de:dkim,sms-medipool.de:email,sms-medipool.de:mid,sms-medipool.de:from_mime];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BCDA366C06A

The bpc computation for HDMI sinks behind a DP branch device
(intel_dp_hdmi_compute_bpc()) validates each bpc candidate against
the sink's TMDS character rate limits, even if the video will be
transmitted over an FRL link, where those limits don't apply.

This caps such sinks at 8bpc whenever a deep color mode's
TMDS-equivalent character rate exceeds the TMDS limit, although the
FRL link has plenty of bandwidth.
E.g. 4k60 RGB 10bpc corresponds to a ~742 MHz TMDS character rate,
above the typical 600 MHz limit, but only needs ~17.8 Gbps of e.g. a
48 Gbps FRL link.
Modes whose rate exceeds the TMDS limit already at 8bpc (e.g. 4k120)
are additionally forced from RGB to YCbCr 4:2:0 output.

If both the PCON and the sink support FRL, validate the required
bandwidth against the FRL bandwidth the link will be trained with
(the same min() of the PCON's and the sink's max FRL rate that
intel_dp_pcon_start_frl_training() uses) instead of the TMDS limits.
This mirrors how intel_dp_mode_valid_downstream() already validates
modes against the FRL bandwidth for such sinks.
Sinks without FRL support behind an FRL capable PCON keep using the
TMDS limits, since the PCON transmits to them in TMDS mode.

The sink's deep color EDID capabilities still apply via
intel_hdmi_bpc_possible(), and the DP link side limits are handled
separately, as before.

intel_dp_mode_valid_downstream() currently checks the FRL bandwidth
only against the PCON's limit and also skips the TMDS checks for
non-FRL sinks behind an FRL capable PCON.
Aligning it with the limit used here is left for a separate change.

Tested on PTL (xe) with a Synaptics VMM7100 PCON and an LG OLED G4:
4k60 goes from RGB 8bpc (dithered 6bpc pipe) to RGB 12bpc with HDR,
matching macOS (12bpc) and Windows (10bpc) on the same hardware.

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Alexander Kaplan <alexander.kaplan@sms-medipool.de>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 37 ++++++++++++++++++++++++-
 1 file changed, 36 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2831b274d88a..511d99326af4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -124,6 +124,7 @@ bool intel_dp_is_edp(struct intel_dp *intel_dp)
 }
 
 static void intel_dp_unset_edid(struct intel_dp *intel_dp);
+static int intel_dp_hdmi_sink_max_frl(struct intel_dp *intel_dp);
 
 /* Is link rate UHBR and thus 128b/132b? */
 bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state)
@@ -1347,6 +1348,40 @@ static int frl_required_bw(int clock, int bpc,
 	return clock * bpc * 3;
 }
 
+static enum drm_mode_status
+intel_dp_hdmi_clock_valid(struct intel_dp *intel_dp,
+			  int clock, int bpc,
+			  enum intel_output_format sink_format,
+			  bool respect_downstream_limits)
+{
+	int max_frl_bw;
+
+	if (!respect_downstream_limits)
+		return MODE_OK;
+
+	/* The FRL bandwidth the link will be trained with */
+	max_frl_bw = min(intel_dp->dfp.pcon_max_frl_bw,
+			 intel_dp_hdmi_sink_max_frl(intel_dp));
+
+	/*
+	 * If both the PCON and the sink support FRL, the PCON transmits
+	 * to the sink in FRL mode, where the TMDS character rate limits
+	 * don't apply.
+	 */
+	if (max_frl_bw > 0) {
+		/* converting bw from Gbps to Kbps */
+		max_frl_bw = max_frl_bw * 1000000;
+
+		if (frl_required_bw(clock, bpc, sink_format) > max_frl_bw)
+			return MODE_CLOCK_HIGH;
+
+		return MODE_OK;
+	}
+
+	return intel_dp_tmds_clock_valid(intel_dp, clock, bpc,
+					 sink_format, respect_downstream_limits);
+}
+
 static enum drm_mode_status
 intel_dp_mode_valid_downstream(struct intel_connector *connector,
 			       const struct drm_display_mode *mode,
@@ -1831,7 +1866,7 @@ static int intel_dp_hdmi_compute_bpc(struct intel_dp *intel_dp,
 	for (; bpc >= 8; bpc -= 2) {
 		if (intel_hdmi_bpc_possible(crtc_state, bpc,
 					    intel_dp_has_hdmi_sink(intel_dp)) &&
-		    intel_dp_tmds_clock_valid(intel_dp, clock, bpc, crtc_state->sink_format,
+		    intel_dp_hdmi_clock_valid(intel_dp, clock, bpc, crtc_state->sink_format,
 					      respect_downstream_limits) == MODE_OK)
 			return bpc;
 	}
-- 
2.54.0


