Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B968777CE15
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Aug 2023 16:29:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CE7210E251;
	Tue, 15 Aug 2023 14:29:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B982510E251
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Aug 2023 14:29:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692109777; x=1723645777;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/g0HsMH4ZgWC0CitdZgAvri7hqDqMWCH7iF0HkN86aM=;
 b=OxLXEKDeG7q5DX3ZX2XxjMJdJHskYnyHoLZdzdlQnO9b+wYaBZD8WRk8
 i23Galy4h5IQ8ASunQxPCtWyRvCZl5bib5eJxmeBRBNVSh1OatYTdsIV0
 h8po26nVpbbIMrSq6TvuY8YWAAwwHy69mabI1f31tg/ihXS5oH4mw+J7H
 jkY/PfOozD0S7nxfufe7RtUOTq7ZzkSCed9vixyLGZDWm+70TlfGqQnGf
 pbNmPJYZqolr5CTGu1d87Pn1GcJTrqlYjn8woSstbUAhaU2LYJyfDQMi0
 vwThHo5+JiA3z65QZO1vtburUUdKR88LQvy5lDkE4KpkaVP3mPgxHcCVH g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="376021517"
X-IronPort-AV: E=Sophos;i="6.01,174,1684825200"; d="scan'208";a="376021517"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 07:29:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="799210053"
X-IronPort-AV: E=Sophos;i="6.01,174,1684825200"; d="scan'208";a="799210053"
Received: from emurares-mobl.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.252.43.82])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 07:29:36 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Aug 2023 17:29:18 +0300
Message-Id: <20230815142921.404127-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230815142921.404127-1-vinod.govindapillai@intel.com>
References: <20230815142921.404127-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/4] drm/i915/display: remove redundant
 parameter from sdp split update
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The needed functionality can be performed using crtc_state here.

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 6 +++---
 drivers/gpu/drm/i915/display/intel_audio.h | 3 +--
 drivers/gpu/drm/i915/display/intel_ddi.c   | 2 +-
 3 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 3d9c9b4f27f8..19605264a35c 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -759,10 +759,10 @@ static void ibx_audio_codec_enable(struct intel_encoder *encoder,
 	mutex_unlock(&i915->display.audio.mutex);
 }
 
-void intel_audio_sdp_split_update(struct intel_encoder *encoder,
-				  const struct intel_crtc_state *crtc_state)
+void intel_audio_sdp_split_update(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	enum transcoder trans = crtc_state->cpu_transcoder;
 
 	if (HAS_DP20(i915))
diff --git a/drivers/gpu/drm/i915/display/intel_audio.h b/drivers/gpu/drm/i915/display/intel_audio.h
index 07d034a981e9..9327954b801e 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.h
+++ b/drivers/gpu/drm/i915/display/intel_audio.h
@@ -29,7 +29,6 @@ void intel_audio_cdclk_change_pre(struct drm_i915_private *dev_priv);
 void intel_audio_cdclk_change_post(struct drm_i915_private *dev_priv);
 void intel_audio_init(struct drm_i915_private *dev_priv);
 void intel_audio_deinit(struct drm_i915_private *dev_priv);
-void intel_audio_sdp_split_update(struct intel_encoder *encoder,
-				  const struct intel_crtc_state *crtc_state);
+void intel_audio_sdp_split_update(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_AUDIO_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 84bbf854337a..b7f4281b8658 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3248,7 +3248,7 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
 		intel_ddi_enable_transcoder_func(encoder, crtc_state);
 
 	/* Enable/Disable DP2.0 SDP split config before transcoder */
-	intel_audio_sdp_split_update(encoder, crtc_state);
+	intel_audio_sdp_split_update(crtc_state);
 
 	intel_enable_transcoder(crtc_state);
 
-- 
2.34.1

