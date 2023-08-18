Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49820780AEF
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Aug 2023 13:20:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE48710E4F1;
	Fri, 18 Aug 2023 11:20:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C373F10E4F1
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Aug 2023 11:20:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692357608; x=1723893608;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qPOVwiwVFRQATXIbY3kDAE4RQYrkE0zBjjg9b7nyvfA=;
 b=MBpNm/S5iDIhO5C23yoRBW8M1jjEZKW3alV0PtHuCuvfAG3TaMTlYyOM
 e14UmrVOdV1UI4iTzJWOJuSFSTl1Rctq10FNAx8EUMLY7WQX+0QoimVrN
 VITxM6KG2Q7+6ZyITavaFc/IkXBMSbA9lDgnTErcxHZmQgFVzEUVhw+VD
 7TQH9NgujkXSlkayfK9FpNiGtu2PkRbUdaKkN3gn3fVwcpe13JoR891by
 0ltWbZuGXKjJSpaADfbEym/UAa1+rlNnWiN3xKlWww9CME/3f5O68tGs2
 Ru6H3zpN6hZsSU9aIqvjf9yGoAcB6q5q7ddPsREAPji552pkiq17GppP6 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="370538210"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="370538210"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2023 04:20:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="728579582"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="728579582"
Received: from vgovind2-mobl3.tm.intel.com ([10.237.50.39])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2023 04:20:07 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Aug 2023 14:19:47 +0300
Message-Id: <20230818111950.128992-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230818111950.128992-1-vinod.govindapillai@intel.com>
References: <20230818111950.128992-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 1/4] drm/i915/display: remove redundant
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
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
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

