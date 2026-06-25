Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id KEKKM/gORWqh6AoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 14:58:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 791CC6EDB70
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 14:58:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=google.com header.s=20251104 header.b=pMbttZLi;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=reject) header.from=google.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3C6410EFE5;
	Wed,  1 Jul 2026 12:58:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-f201.google.com (mail-qt1-f201.google.com
 [209.85.160.201])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 152E410F2E8
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2026 16:11:22 +0000 (UTC)
Received: by mail-qt1-f201.google.com with SMTP id
 d75a77b69052e-519899abab8so38106511cf.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2026 09:11:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20251104; t=1782403881; x=1783008681;
 darn=lists.freedesktop.org; 
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=PexEuMrlBMgyv5sISJpps3zu898oz9ceZi4TAF3ggVY=;
 b=pMbttZLizgkIbHhUPIzpjyW6FQwtWFCzn8PQmYqwwK7FiIiCfQduFswv+OQ01piUOo
 fuD28USRhxW1F5UG9jQiUYyisQS6a2uYtMZKL10bLjuDqo+40DxV8nRkvipl1/lU/R9+
 tNQ+6BKCK/wJlkbioqG1t6zn63tHOeg+QI0uj9PJ2k8tJt/cdE70P/ywxhnqp1evWAkd
 pEKcNr/kFy5SggKjhjTb+AWXMCT626p5Pl27WLjTZsKKth6Ir51z85mQY74YbNFmw3N4
 0Z5bZGGXX9Zh/iEiekL0tEJwQLGbGgeqgWkVYmu187qOZNeFY+EK7T+adWgcVeDlNrLh
 zkew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1782403881; x=1783008681;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=PexEuMrlBMgyv5sISJpps3zu898oz9ceZi4TAF3ggVY=;
 b=TkdZSGKAf3WpnqSeAu2xYE1IlNwlTXp0XpvRovXVD1xmvgb/tYYO8/t8VnoZvM9DvB
 /6+PKfl4tw7z1k7+bxDqkdWtOMu4VkYCrtxrB1bP72awYjO+1L7k2925hU38FJ6t1ZaT
 BtoW+FF4R4hGRcH2NghezPO0+CjN6hpMg6JVU9KTDrZRc+zxY6X1gdvDWWF8KlXMuEFo
 r7nRcPkqGlwRLEfX3878z7DBM+iVfYQS6QQqE6gVBOjddmhE7msyQ14nY4n5cOrk/rdK
 SgiXEBK2zFz+Xt4PnUc5Rwykk4D2QPzwCVANztuLuRYHQJX4bVF83blVGcz/3SfgwWUq
 /w6Q==
X-Gm-Message-State: AOJu0Yy59U7sDYE++2DBGCC3mqaAOA//FWnY2fbJRYHVnNvoOW+zrdec
 kxDkR1W9KOK89c0CTQC8RbMUgNEXySlmkmu6D0+Vi1fu8KZ2YMgx3w1ZNCoqqBRpj+H+1U2nOBP
 oovtBR2EljfycNvYD0LLRY0e7+UKM3f+TU7rs1L25mEycg/dNMk7d+xZY0+kV22359mfVnpfgml
 sSGKIT1E9HNoZTsItm8ewCbNFJTAVkyA9QbazZ6bcgMUQ/8EMXjcCI7gPn2+Q=
X-Received: from qtns22.prod.google.com ([2002:ac8:5296:0:b0:517:7852:3ef3])
 (user=gildekel job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:622a:13cb:b0:50e:a1ab:67e4 with SMTP id
 d75a77b69052e-51a727cf600mr42638581cf.40.1782403880597; 
 Thu, 25 Jun 2026 09:11:20 -0700 (PDT)
Date: Thu, 25 Jun 2026 12:10:27 -0400
In-Reply-To: <20260625161104.2893517-1-gildekel@google.com>
Mime-Version: 1.0
References: <20260625161104.2893517-1-gildekel@google.com>
X-Mailer: git-send-email 2.55.0.rc0.799.gd6f94ed593-goog
Message-ID: <20260625161104.2893517-3-gildekel@google.com>
Subject: [PATCH 2/2] drm/i915/display/mst: Enable HDR over DP MST
From: Gil Dekel <gildekel@google.com>
To: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Cc: jani.nikula@intel.com, imre.deak@intel.com, khaled.almahallawy@intel.com, 
 navaremanasi@google.com, Gil Dekel <gildekel@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Wed, 01 Jul 2026 12:57:46 +0000
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
X-Spamd-Result: default: False [1.19 / 15.00];
	DATE_IN_PAST(1.00)[140];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[google.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[gildekel@google.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[google.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 791CC6EDB70

Compute and attach VSC SDP and HDR metadata infoframes for logical MST
stream connectors.

Update mst_stream_enable() and implement mst_stream_update_pipe() to
configure the transcoder's Video DIP registers with VSC and HDR infoframes.
This allows fastsets (such as toggling HDR ON/OFF) to update the hardware
without triggering a full modeset.

Expose the max_bpc, HDR metadata, and DP Colorspace connector properties
during MST connector initialization to enable userspace configuration.

Signed-off-by: Gil Dekel <gildekel@google.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     |  9 +++---
 drivers/gpu/drm/i915/display/intel_dp.h     |  6 ++++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 33 +++++++++++++++++++--
 3 files changed, 42 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1de26c4c867f..a5f20e67705b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3157,10 +3157,11 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
 		as_sdp->coasting_vtotal = crtc_state->vrr.vmax;
 }
 
-static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
-				     struct intel_crtc_state *crtc_state,
-				     const struct drm_connector_state *conn_state)
+void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
+			      struct intel_crtc_state *crtc_state,
+			      const struct drm_connector_state *conn_state)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	struct drm_dp_vsc_sdp *vsc;
 	if ((!connector->dp.colorimetry_support ||
@@ -3218,7 +3219,7 @@ intel_dp_in_hdr_mode(const struct drm_connector_state *conn_state)
 	return hdr_metadata->hdmi_metadata_type1.eotf == HDMI_EOTF_SMPTE_ST2084;
 }
 
-static void
+void
 intel_dp_compute_hdr_metadata_infoframe_sdp(struct intel_dp *intel_dp,
 					    struct intel_crtc_state *crtc_state,
 					    const struct drm_connector_state *conn_state)
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 26b3a0eb354e..29282540d6ca 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -76,6 +76,12 @@ int intel_dp_compute_config(struct intel_atomic_state *state,
 			    struct intel_encoder *encoder,
 			    struct intel_crtc_state *pipe_config,
 			    struct drm_connector_state *conn_state);
+void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
+			      struct intel_crtc_state *crtc_state,
+			      const struct drm_connector_state *conn_state);
+void intel_dp_compute_hdr_metadata_infoframe_sdp(struct intel_dp *intel_dp,
+						 struct intel_crtc_state *crtc_state,
+						 const struct drm_connector_state *conn_state);
 bool intel_dp_needs_8b10b_fec(const struct intel_crtc_state *crtc_state,
 			      bool dsc_enabled_on_crtc);
 void intel_dp_dsc_reset_config(struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index dd3cd2ec3d50..f784ea841d35 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -761,6 +761,10 @@ static int mst_stream_compute_config(struct intel_atomic_state *state,
 
 	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
 
+	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
+
+	intel_dp_compute_hdr_metadata_infoframe_sdp(intel_dp, pipe_config, conn_state);
+
 	return intel_dp_tunnel_atomic_compute_stream_bw(state, intel_dp, connector,
 							pipe_config);
 }
@@ -1332,6 +1336,8 @@ static void mst_stream_enable(struct intel_atomic_state *state,
 
 	intel_ddi_enable_transcoder_func(encoder, pipe_config);
 
+	intel_dp_set_infoframes(primary_encoder, true, pipe_config, conn_state);
+
 	intel_vrr_transcoder_enable(pipe_config);
 
 	intel_ddi_clear_act_sent(encoder, pipe_config);
@@ -1706,8 +1712,13 @@ static int mst_topology_add_connector_properties(struct intel_dp *intel_dp,
 	 */
 	connector->base.max_bpc_property =
 		intel_dp->attached_connector->base.max_bpc_property;
-	if (connector->base.max_bpc_property)
+	if (connector->base.max_bpc_property) {
 		drm_connector_attach_max_bpc_property(&connector->base, 6, 12);
+		connector->base.max_bpc = 12;
+		drm_connector_attach_hdr_output_metadata_property(&connector->base);
+	}
+
+	intel_attach_dp_colorspace_property(&connector->base);
 
 	return drm_connector_set_path_property(&connector->base, pathprop);
 }
@@ -1857,6 +1868,24 @@ static const struct drm_dp_mst_topology_cbs mst_topology_cbs = {
 	.poll_hpd_irq = mst_topology_poll_hpd_irq,
 };
 
+static void mst_stream_update_pipe(struct intel_atomic_state *state,
+				   struct intel_encoder *encoder,
+				   const struct intel_crtc_state *crtc_state,
+				   const struct drm_connector_state *conn_state)
+{
+	struct intel_encoder *primary_encoder = to_primary_encoder(encoder);
+
+	/* Fallback to standard DDI updates (like Audio) */
+	intel_ddi_update_pipe(state, encoder, crtc_state, conn_state);
+
+	/*
+	 * intel_ddi_update_pipe historically ignores MST for InfoFrames.
+	 * We must explicitly update the Transcoder's Video DIP registers here
+	 * so Atomic Fastsets (e.g. toggling HDR in the UI) propagate to the hardware.
+	 */
+	intel_dp_set_infoframes(primary_encoder, true, crtc_state, conn_state);
+}
+
 /* Create a fake encoder for an individual MST stream */
 static struct intel_dp_mst_encoder *
 mst_stream_encoder_create(struct intel_digital_port *dig_port, enum pipe pipe)
@@ -1897,7 +1926,7 @@ mst_stream_encoder_create(struct intel_digital_port *dig_port, enum pipe pipe)
 	encoder->disable = mst_stream_disable;
 	encoder->post_disable = mst_stream_post_disable;
 	encoder->post_pll_disable = mst_stream_post_pll_disable;
-	encoder->update_pipe = intel_ddi_update_pipe;
+	encoder->update_pipe = mst_stream_update_pipe;
 	encoder->pre_pll_enable = mst_stream_pre_pll_enable;
 	encoder->pre_enable = mst_stream_pre_enable;
 	encoder->enable = mst_stream_enable;
-- 
Gil Dekel, Software Engineer, Google / ChromeOS Display and Graphics

