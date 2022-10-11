Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0E3F5FB8CD
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 19:01:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6355710E983;
	Tue, 11 Oct 2022 17:01:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67AE210E8D3
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 17:01:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665507692; x=1697043692;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=t7HAFH5c9lP+XD+p2eO01WGQ14PF5e7N/nlKG8SpsbE=;
 b=Ciz8k3JHNEEpCAIz6fg4rfJaWrNZgimX4laqkD0/hdgaEeME7WtFIiMM
 74Zi6qWmhW8F/G6qpgRuUzMDF1tp0djxa2v03yCKyn2Mqp3NWomuDY6mC
 fQeRfaFdZFG9lNxNtBlgcHmeEYBChlhKcY/rmus3xPDGAxrFQzfHL/lzz
 Ed3zpIdTlKEQMHcvb2drlnMKZEIaHv+nyNySQ4d85c7jtx3ihTj+jFSv+
 8DtiHCKM3gbq3D/wuKLYzWwTnL8hxbyUfpjnwacIOba6AmcQARTqRSlCI
 XJT86GA7FbRTiyn+93Nr/905F02bnyKtFZ0DJB0GGhAubsN10u8gJEEX4 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="302178247"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="302178247"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 10:01:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="628771874"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="628771874"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga007.fm.intel.com with SMTP; 11 Oct 2022 10:01:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Oct 2022 20:01:24 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Oct 2022 20:00:08 +0300
Message-Id: <20221011170011.17198-20-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
References: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 19/22] drm/i915/sdvo: Do ELD hardware readout
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
Cc: Takashi Iwai <tiwai@suse.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Read out the ELD from the hw so the state checker can verify it.

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index d9a54ed4623a..b2884fdc2b1c 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -1185,6 +1185,21 @@ static void intel_sdvo_get_avi_infoframe(struct intel_sdvo *intel_sdvo,
 			      frame->any.type, HDMI_INFOFRAME_TYPE_AVI);
 }
 
+static void intel_sdvo_get_eld(struct intel_sdvo *intel_sdvo,
+			       struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(intel_sdvo->base.base.dev);
+	ssize_t len;
+
+	if (!crtc_state->has_audio)
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
@@ -1744,6 +1759,8 @@ static void intel_sdvo_get_config(struct intel_encoder *encoder,
 	}
 
 	intel_sdvo_get_avi_infoframe(intel_sdvo, pipe_config);
+
+	intel_sdvo_get_eld(intel_sdvo, pipe_config);
 }
 
 static void intel_sdvo_disable_audio(struct intel_sdvo *intel_sdvo)
-- 
2.35.1

