Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8825A6242A2
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 13:55:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A0F610E781;
	Thu, 10 Nov 2022 12:55:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C87E10E781
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Nov 2022 12:55:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668084918; x=1699620918;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UfwuhzFaX3yXHKgEl1jrESM6/C4Cg8hjXR+WEhAhU2E=;
 b=Gq7dMK8zMdKxIf05XmOdX73jnPLuZCII46a71WhbFuavrvx7E+Onq0aE
 Ps6ISSGkBu9nk0cg6JciLP0QbrGzINm7UL/kfuXjaoUTKafyMSNn8PtDP
 bbFLUGrCZZelhhqNJQHnsiagol1OVR73K0Ms7NOXrDOTtPpZ4GXaHimat
 f3i6eHmjObtZL8vINu7KiTkQwf9t0/9mh3T48bioDAvtYFPH9IzAVN9pJ
 eXhHHu6ym2Yej1YnLZFiZF+wHJG5avf9RKLynDgemQZ9ZnwczaBsbx3TZ
 AAH/2UzLEwr/uNed/+h+rWDhdbvdKzN6xSLT7ArXTPxfW/vdWY528U2mE w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="338054290"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="338054290"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 04:55:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="700789655"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="700789655"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga008.fm.intel.com with SMTP; 10 Nov 2022 04:55:15 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Nov 2022 14:55:14 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Nov 2022 14:55:14 +0200
Message-Id: <20221110125514.26102-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221108151839.31567-12-ville.syrjala@linux.intel.com>
References: <20221108151839.31567-12-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 11/15] drm/i915/sdvo: Do ELD hardware readout
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
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Reviewed-by: Jani Nikula <jani.nikula@intel.com> #v1
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 27 ++++++++++++++++++++++-
 1 file changed, 26 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index c269cd6ddb63..91c3cb17e8c6 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -1068,7 +1068,8 @@ static ssize_t intel_sdvo_read_infoframe(struct intel_sdvo *intel_sdvo,
 				  &tx_rate, 1))
 		return -ENXIO;
 
-	if (tx_rate == SDVO_HBUF_TX_DISABLED)
+	/* TX_DISABLED doesn't mean disabled for ELD */
+	if (if_index != SDVO_HBUF_INDEX_ELD && tx_rate == SDVO_HBUF_TX_DISABLED)
 		return 0;
 
 	if (!intel_sdvo_get_hbuf_size(intel_sdvo, &hbuf_size))
@@ -1185,6 +1186,28 @@ static void intel_sdvo_get_avi_infoframe(struct intel_sdvo *intel_sdvo,
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
@@ -1742,6 +1765,8 @@ static void intel_sdvo_get_config(struct intel_encoder *encoder,
 	}
 
 	intel_sdvo_get_avi_infoframe(intel_sdvo, pipe_config);
+
+	intel_sdvo_get_eld(intel_sdvo, pipe_config);
 }
 
 static void intel_sdvo_disable_audio(struct intel_sdvo *intel_sdvo)
-- 
2.37.4

