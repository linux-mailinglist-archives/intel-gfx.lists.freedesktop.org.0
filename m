Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF648748EC8
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jul 2023 22:21:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27DFD10E3C9;
	Wed,  5 Jul 2023 20:21:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D23E110E3C9
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jul 2023 20:21:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688588509; x=1720124509;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Tx4TFAmF/Vr7Z2rwfR7ulEFep5Ily10Z+hgJ9+VqenQ=;
 b=TKIg3GTfQgWX0TWuuTC9ufUDJR9DkxMSrUt7z+OPwk5KEetTc+MWbMXu
 PfEB1uUTlKhMYKVtU75rkboa01WwWd+hhvLpqRPoWY2S+79pqOln28Vfk
 IOnE2UhtBjiiGSNyBLZR/IV3vfUmvnz95Xh7a1hNG+C5hbB376CMwkoFQ
 s2YF40GRSakmUZDMs74ZMXyR+tvrHFytXip5h0ZgUA21l+CFTr7CTk7OX
 RaQhYDJzBdjx9FHoT0pxGK/vtOJDmZEOrPWX+4rzVnz3mcv34GHs2rJTS
 KVM6rKeAt40+omstHZ6TGEMg4Q9sPsj1SSrcN8nk5B7itTELnOmPZ/ZAY Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="353269071"
X-IronPort-AV: E=Sophos;i="6.01,184,1684825200"; d="scan'208";a="353269071"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2023 13:21:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="754491126"
X-IronPort-AV: E=Sophos;i="6.01,184,1684825200"; d="scan'208";a="754491126"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga001.jf.intel.com with SMTP; 05 Jul 2023 13:21:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 05 Jul 2023 23:21:46 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Jul 2023 23:21:17 +0300
Message-Id: <20230705202122.17915-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230705202122.17915-1-ville.syrjala@linux.intel.com>
References: <20230705202122.17915-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/13] drm/i915/sdvo: Nuke attached_output
 tracking
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

Instead of operating on the output the user specified (via the
connector) the current code tends to operate on whichever outputs
it has detected as attached. That is not how the kms uapi is supposed
to work. So simply get rid of attached_outputs and instead directly
operate on the output the user has specified.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 31 ++++++++++++-----------
 1 file changed, 16 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index fcf3a95393d9..29762716a067 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -103,12 +103,6 @@ struct intel_sdvo {
 	/* Pixel clock limitations reported by the SDVO device, in kHz */
 	int pixel_clock_min, pixel_clock_max;
 
-	/*
-	* For multiple function SDVO device,
-	* this is for current attached outputs.
-	*/
-	u16 attached_output;
-
 	/*
 	 * Hotplug activation bits for this device
 	 */
@@ -1223,12 +1217,13 @@ static bool intel_sdvo_set_tv_format(struct intel_sdvo *intel_sdvo,
 
 static bool
 intel_sdvo_set_output_timings_from_mode(struct intel_sdvo *intel_sdvo,
+					struct intel_sdvo_connector *intel_sdvo_connector,
 					const struct drm_display_mode *mode)
 {
 	struct intel_sdvo_dtd output_dtd;
 
 	if (!intel_sdvo_set_target_output(intel_sdvo,
-					  intel_sdvo->attached_output))
+					  intel_sdvo_connector->output_flag))
 		return false;
 
 	intel_sdvo_get_dtd_from_mode(&output_dtd, mode);
@@ -1369,7 +1364,9 @@ static int intel_sdvo_compute_config(struct intel_encoder *encoder,
 	 * the sequence to do it. Oh well.
 	 */
 	if (IS_TV(intel_sdvo_connector)) {
-		if (!intel_sdvo_set_output_timings_from_mode(intel_sdvo, mode))
+		if (!intel_sdvo_set_output_timings_from_mode(intel_sdvo,
+							     intel_sdvo_connector,
+							     mode))
 			return -EINVAL;
 
 		(void) intel_sdvo_get_preferred_input_mode(intel_sdvo,
@@ -1387,7 +1384,9 @@ static int intel_sdvo_compute_config(struct intel_encoder *encoder,
 		if (ret)
 			return ret;
 
-		if (!intel_sdvo_set_output_timings_from_mode(intel_sdvo, fixed_mode))
+		if (!intel_sdvo_set_output_timings_from_mode(intel_sdvo,
+							     intel_sdvo_connector,
+							     fixed_mode))
 			return -EINVAL;
 
 		(void) intel_sdvo_get_preferred_input_mode(intel_sdvo,
@@ -1528,7 +1527,7 @@ static void intel_sdvo_pre_enable(struct intel_atomic_state *state,
 	 * channel on the motherboard.  In a two-input device, the first input
 	 * will be SDVOB and the second SDVOC.
 	 */
-	in_out.in0 = intel_sdvo->attached_output;
+	in_out.in0 = intel_sdvo_connector->output_flag;
 	in_out.in1 = 0;
 
 	intel_sdvo_set_value(intel_sdvo,
@@ -1537,7 +1536,7 @@ static void intel_sdvo_pre_enable(struct intel_atomic_state *state,
 
 	/* Set the output timings to the screen */
 	if (!intel_sdvo_set_target_output(intel_sdvo,
-					  intel_sdvo->attached_output))
+					  intel_sdvo_connector->output_flag))
 		return;
 
 	/* lvds has a special fixed output timing. */
@@ -1874,6 +1873,8 @@ static void intel_enable_sdvo(struct intel_atomic_state *state,
 	struct drm_device *dev = encoder->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct intel_sdvo *intel_sdvo = to_sdvo(encoder);
+	struct intel_sdvo_connector *intel_sdvo_connector =
+		to_intel_sdvo_connector(conn_state->connector);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	u32 temp;
 	bool input1, input2;
@@ -1903,7 +1904,7 @@ static void intel_enable_sdvo(struct intel_atomic_state *state,
 	if (0)
 		intel_sdvo_set_encoder_power_state(intel_sdvo,
 						   DRM_MODE_DPMS_ON);
-	intel_sdvo_set_active_outputs(intel_sdvo, intel_sdvo->attached_output);
+	intel_sdvo_set_active_outputs(intel_sdvo, intel_sdvo_connector->output_flag);
 
 	if (pipe_config->has_audio)
 		intel_sdvo_enable_audio(intel_sdvo, pipe_config, conn_state);
@@ -2158,8 +2159,6 @@ intel_sdvo_detect(struct drm_connector *connector, bool force)
 	if (response == 0)
 		return connector_status_disconnected;
 
-	intel_sdvo->attached_output = response;
-
 	if ((intel_sdvo_connector->output_flag & response) == 0)
 		ret = connector_status_disconnected;
 	else if (IS_TMDS(intel_sdvo_connector))
@@ -2287,6 +2286,8 @@ static const struct drm_display_mode sdvo_tv_modes[] = {
 static int intel_sdvo_get_tv_modes(struct drm_connector *connector)
 {
 	struct intel_sdvo *intel_sdvo = intel_attached_sdvo(to_intel_connector(connector));
+	struct intel_sdvo_connector *intel_sdvo_connector =
+		to_intel_sdvo_connector(connector);
 	const struct drm_connector_state *conn_state = connector->state;
 	struct intel_sdvo_sdtv_resolution_request tv_res;
 	u32 reply = 0, format_map = 0;
@@ -2304,7 +2305,7 @@ static int intel_sdvo_get_tv_modes(struct drm_connector *connector)
 	memcpy(&tv_res, &format_map,
 	       min(sizeof(format_map), sizeof(struct intel_sdvo_sdtv_resolution_request)));
 
-	if (!intel_sdvo_set_target_output(intel_sdvo, intel_sdvo->attached_output))
+	if (!intel_sdvo_set_target_output(intel_sdvo, intel_sdvo_connector->output_flag))
 		return 0;
 
 	BUILD_BUG_ON(sizeof(tv_res) != 3);
-- 
2.39.3

