Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC6C7E2EDB
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Nov 2023 22:19:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4BF010E430;
	Mon,  6 Nov 2023 21:19:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F4CB10E433
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Nov 2023 21:19:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699305579; x=1730841579;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=2AQj5EBOYqWxnmVHrUp6thuW/j0o4+pdD/LPfkThZPg=;
 b=Oqaxq0YQdz5qRUMvUHDDvn/qgk/cLe18Iq/EYzG2cbPOYwy4ken80F1k
 im29Ie/X7IgyP7miZ7ujTxumWPR0Z/W3IQcIVK7MlNSytipLHR2BSyrWK
 fLfocGaSfA549HT5aIrU8/d2JoE942W77FvwBO7RWxzBl1H8CiiQd9wgf
 +wytVrsk54rtCr99DrWJy8DNWXiAEODLjIlACn6sisvOkrMMJ9uAH46QH
 xtUqPRnO4OvjSio1r47dKSU44d2B8I21dOIe+9zM7dces463AkmkJ8ciJ
 dNfg5VjfoideWQGN4gYS+tNBcHvmuUWNO8DsOccC2Qt6B4Yrk7dSajhGK g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="10911548"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="10911548"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 13:19:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="755964257"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="755964257"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 06 Nov 2023 13:19:36 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 06 Nov 2023 23:19:35 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Nov 2023 23:19:10 +0200
Message-ID: <20231106211915.13406-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231106211915.13406-1-ville.syrjala@linux.intel.com>
References: <20231106211915.13406-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/11] drm/i915: Split g4x+ DP audio presence
 detect from port enable
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Follow the hsw+ approach toggle the audio presence detect
when we set up the ELD, instead of doing it when turning the
port on/off.

This will facilitate audio enable/disable to happen during
fastsets instead of requiring a full modeset.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index ecc2ec866424..266cb594d793 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -432,7 +432,7 @@ intel_dp_link_down(struct intel_encoder *encoder,
 	intel_de_write(dev_priv, intel_dp->output_reg, intel_dp->DP);
 	intel_de_posting_read(dev_priv, intel_dp->output_reg);
 
-	intel_dp->DP &= ~(DP_PORT_EN | DP_AUDIO_OUTPUT_ENABLE);
+	intel_dp->DP &= ~DP_PORT_EN;
 	intel_de_write(dev_priv, intel_dp->output_reg, intel_dp->DP);
 	intel_de_posting_read(dev_priv, intel_dp->output_reg);
 
@@ -479,9 +479,16 @@ static void g4x_dp_audio_enable(struct intel_encoder *encoder,
 				const struct intel_crtc_state *crtc_state,
 				const struct drm_connector_state *conn_state)
 {
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+
 	if (!crtc_state->has_audio)
 		return;
 
+	/* Enable audio presence detect */
+	intel_dp->DP |= DP_AUDIO_OUTPUT_ENABLE;
+	intel_de_write(i915, intel_dp->output_reg, intel_dp->DP);
+
 	intel_audio_codec_enable(encoder, crtc_state, conn_state);
 }
 
@@ -489,10 +496,17 @@ static void g4x_dp_audio_disable(struct intel_encoder *encoder,
 				 const struct intel_crtc_state *old_crtc_state,
 				 const struct drm_connector_state *old_conn_state)
 {
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+
 	if (!old_crtc_state->has_audio)
 		return;
 
 	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
+
+	/* Disable audio presence detect */
+	intel_dp->DP &= ~DP_AUDIO_OUTPUT_ENABLE;
+	intel_de_write(i915, intel_dp->output_reg, intel_dp->DP);
 }
 
 static void intel_disable_dp(struct intel_atomic_state *state,
@@ -651,8 +665,6 @@ static void intel_dp_enable_port(struct intel_dp *intel_dp,
 	 * fail when the power sequencer is freshly used for this port.
 	 */
 	intel_dp->DP |= DP_PORT_EN;
-	if (crtc_state->has_audio)
-		intel_dp->DP |= DP_AUDIO_OUTPUT_ENABLE;
 
 	intel_de_write(dev_priv, intel_dp->output_reg, intel_dp->DP);
 	intel_de_posting_read(dev_priv, intel_dp->output_reg);
-- 
2.41.0

