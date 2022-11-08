Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 23CB9621807
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 16:23:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B656810E4C2;
	Tue,  8 Nov 2022 15:23:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A028E10E4AD
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 15:23:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667920991; x=1699456991;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4OctxGy6WaKk+cHhJ3a8k4tI9/MBpdVL1kEE1uFZhys=;
 b=HRJFbZXtFCJvxH+iu2hvMcJWeUO7mLUEnXBNLdXwah6jYJizbyMMIaqj
 O+qb3fNWsv5ioWu02NhUvoOKehjCJXSvivm8nG5SjyB1SeF0MgBn8+SEr
 A0JEmtD6PSHgFKcLaYbLw1gCd9DD+ctIXk5RAyk2E1euCNchqL9gIsDFr
 tEh2xIMc7y/b/e1jbCu6JROsEMhwejjNpcEkG0c3C9Rb0r/bdbAu4r1YL
 vr6orZxT0vte5QJ3l1AMaqVmPXL28mFgsg2wXq8oL7TsQYcvHewMhzCcF
 TTFN9elyvW+J8oEdw1zhoi1zH0RTUGaYgDoliBqXNmrLHQDPZ1U9uRCon Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="310718881"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; d="scan'208";a="310718881"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 07:19:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="725590869"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; d="scan'208";a="725590869"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by FMSMGA003.fm.intel.com with SMTP; 08 Nov 2022 07:19:18 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 08 Nov 2022 17:19:18 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Nov 2022 17:18:35 +0200
Message-Id: <20221108151839.31567-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221108151839.31567-1-ville.syrjala@linux.intel.com>
References: <20221108151839.31567-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 11/15] drm/i915/sdvo: Do ELD hardware readout
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

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Reviewed-by: Jani Nikula <jani.nikula@intel.com> #v1
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 24 +++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index c269cd6ddb63..5279eb5fd527 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -1185,6 +1185,28 @@ static void intel_sdvo_get_avi_infoframe(struct intel_sdvo *intel_sdvo,
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
@@ -1742,6 +1764,8 @@ static void intel_sdvo_get_config(struct intel_encoder *encoder,
 	}
 
 	intel_sdvo_get_avi_infoframe(intel_sdvo, pipe_config);
+
+	intel_sdvo_get_eld(intel_sdvo, pipe_config);
 }
 
 static void intel_sdvo_disable_audio(struct intel_sdvo *intel_sdvo)
-- 
2.37.4

