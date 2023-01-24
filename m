Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00FCA679C5A
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 15:47:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4865610E6A3;
	Tue, 24 Jan 2023 14:47:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D42C10E6A3
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Jan 2023 14:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674571628; x=1706107628;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bjPJjq+cK/Rgm8o0SldQP8ldq5EXepigdss6dR5uwk4=;
 b=iv0+9JaKWinsdKHGNLhMfiMPWY5aSr1J7+ZmwGSyd+BjkO2ABY9qq2Zi
 6px5AB9EDdHoNEeh6MWDvuP8lvHL1zF3Grf2tPsB0Nvtpax4+oaalCZcr
 hH875l4m7L2eACQsikp/2Y81Z1cT6h4mtDaNPhv+PQgUzRy/suS2/M1t6
 PDpSeddB92lK5XaExjHLeEnV0cylQ1PJ0ZMbiCvoTOQdzCA/l4Zp0M2Ma
 gbDKLvsdCjlmeeEQFZ/NxbftErpcwE1fiZrzAh1NjJzSzYRPQYmXqTZ6u
 rwKZq5tOnjiYEyZO/dPC3/tvNuY84tdFhnj4fycWm+nl4YFo4mokS0Z2O A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="412538925"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="412538925"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 06:47:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="639602486"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="639602486"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga006.jf.intel.com with SMTP; 24 Jan 2023 06:47:03 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 24 Jan 2023 16:47:02 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Jan 2023 16:46:24 +0200
Message-Id: <20230124144628.4649-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230124144628.4649-1-ville.syrjala@linux.intel.com>
References: <20230124144628.4649-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 09/13] drm/i915/sdvo: Do ELD hardware readout
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
Cc: Takashi Iwai <tiwai@suse.de>, Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Read out the ELD from the hw so the state checker can verify it.

v2: Check the "ELD valid" bit separately
v3: Fix ELD tx rate handling during readout

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Reviewed-by: Jani Nikula <jani.nikula@intel.com> #v1
Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 27 ++++++++++++++++++++++-
 1 file changed, 26 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 68e5c7be2135..c469ec3e6042 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -1069,7 +1069,8 @@ static ssize_t intel_sdvo_read_infoframe(struct intel_sdvo *intel_sdvo,
 				  &tx_rate, 1))
 		return -ENXIO;
 
-	if (tx_rate == SDVO_HBUF_TX_DISABLED)
+	/* TX_DISABLED doesn't mean disabled for ELD */
+	if (if_index != SDVO_HBUF_INDEX_ELD && tx_rate == SDVO_HBUF_TX_DISABLED)
 		return 0;
 
 	if (!intel_sdvo_get_hbuf_size(intel_sdvo, &hbuf_size))
@@ -1186,6 +1187,28 @@ static void intel_sdvo_get_avi_infoframe(struct intel_sdvo *intel_sdvo,
 			      frame->any.type, HDMI_INFOFRAME_TYPE_AVI);
 }
 
+static void intel_sdvo_get_eld(struct intel_sdvo *intel_sdvo,
+			       struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(intel_sdvo->base.base.dev);
+	ssize_t len;
+	u8 val;
+
+	if (!crtc_state->has_audio)
+		return;
+
+	if (!intel_sdvo_get_value(intel_sdvo, SDVO_CMD_GET_AUDIO_STAT, &val, 1))
+		return;
+
+	if ((val & SDVO_AUDIO_ELD_VALID) == 0)
+		return;
+
+	len = intel_sdvo_read_infoframe(intel_sdvo, SDVO_HBUF_INDEX_ELD,
+					crtc_state->eld, sizeof(crtc_state->eld));
+	if (len < 0)
+		drm_dbg_kms(&i915->drm, "failed to read ELD\n");
+}
+
 static bool intel_sdvo_set_tv_format(struct intel_sdvo *intel_sdvo,
 				     const struct drm_connector_state *conn_state)
 {
@@ -1743,6 +1766,8 @@ static void intel_sdvo_get_config(struct intel_encoder *encoder,
 	}
 
 	intel_sdvo_get_avi_infoframe(intel_sdvo, pipe_config);
+
+	intel_sdvo_get_eld(intel_sdvo, pipe_config);
 }
 
 static void intel_sdvo_disable_audio(struct intel_sdvo *intel_sdvo)
-- 
2.39.1

