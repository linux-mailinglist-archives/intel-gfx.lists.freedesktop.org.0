Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NM3cJdMORWp86AoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 14:57:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43DD16EDAF1
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 14:57:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=google.com header.s=20251104 header.b=s4ycldpU;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=reject) header.from=google.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C010F10EFC7;
	Wed,  1 Jul 2026 12:57:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-f73.google.com (mail-qv1-f73.google.com
 [209.85.219.73])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 034DF10F6F8
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jun 2026 17:55:18 +0000 (UTC)
Received: by mail-qv1-f73.google.com with SMTP id
 6a1803df08f44-8dba00e17b5so14036496d6.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jun 2026 10:55:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20251104; t=1782496517; x=1783101317;
 darn=lists.freedesktop.org; 
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=PMvFuTJKKGFEDS38/InD0yHebFzN7SPExIicLwKQFGI=;
 b=s4ycldpU8V32N4Vlf4G8mx/iJhboa7kmv4SYQxjaeA0XjjLRkjit0JeyP1iUiQNd8w
 8S0F56DXrJIuL6Z04UGITA7c1VyQ2NjN3wqncnYA0UsN27wwV9Fer19w34tyi6+bwTUm
 tYJWOf94+WUOxB5waWjZ8iH3hzy3UUZUkVLUptdoXQpOM3Tq/J8GQeh9rnLjTTQBKrmT
 Kpj5b8ej3Zs1IuA94wfi646DNO3kmAPVeAPqcgpXajL+NfSSDpnN5u97Q2LZ/JfA7IlI
 QSnxR1xPXz0/SvdXGh4x9q6G7Z50MMFSHqrzhlHkp+8wOIvyiTIErKa3dmEMD7XR+Xjp
 /Jzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1782496517; x=1783101317;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=PMvFuTJKKGFEDS38/InD0yHebFzN7SPExIicLwKQFGI=;
 b=GOf3WUmfB2aKZPtQZ8kpa0WRRThCv7Jy/q+lvpnh2PeQdLessypsXBnRHX2KEeb8rw
 G2PsYIwfLOLoCwpXtj/CYDivkNYneX56WytythN1NWIjmADKqrsmBZSsNTTHmGgSyZvh
 9+NX1p4CulH3GmAC0dvCiqIXr9ZMF9pGih0+frHIih1lrvXoylhvV2HoKzM3CZj5e15E
 G0EwtbnkfCSopndaErTIl3raD7DqEKLjH7712q5IlammMZOJsZJuYOXXq7A82zoiDpgO
 gw0Gmu/iKTyFvEvAJpZndtUkN7W7cdaHBmjSAo/GsGkQIsZNgra5RnLw7JBL+43CjTYz
 gL3Q==
X-Gm-Message-State: AOJu0YwOTKyjs7auFXH9HCJzPdKKseIhvwqBAJuYLzeTmQLSi+Avef5l
 jU+W4O8nETgD9Q8KY55bX3dG7sPo/4QS7jLeCfuVHeq3YOLhMrBlkyV+UYeehfjP2JDGkxROtPz
 wrQ6JTDAT5wV4pDml74Q4FLSSS4xq28ptXI2kw5ZCtU26EXiOixiYQu7/MWeOUNr5iqOPboEWDV
 NG/exBa9PlJ53wAVTI4DyXXwGTUx91peu4vc6LRo6FyQGILalvctw3dr8cNp0=
X-Received: from qvbon8.prod.google.com ([2002:a05:6214:4488:b0:8cc:ce57:77cd])
 (user=gildekel job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:6214:246f:b0:8dd:fa4e:a4b8 with SMTP id
 6a1803df08f44-8e6d657f8damr139312496d6.10.1782496516497; 
 Fri, 26 Jun 2026 10:55:16 -0700 (PDT)
Date: Fri, 26 Jun 2026 13:54:23 -0400
In-Reply-To: <20260626175510.3899476-1-gildekel@google.com>
Mime-Version: 1.0
References: <20260625160020.2873859-1-gildekel@google.com>
 <20260626175510.3899476-1-gildekel@google.com>
X-Mailer: git-send-email 2.55.0.rc0.799.gd6f94ed593-goog
Message-ID: <20260626175510.3899476-3-gildekel@google.com>
Subject: [PATCH v2 2/2] drm/i915/display/mst: Enable HDR over DP MST
From: Gil Dekel <gildekel@google.com>
To: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Cc: uma.shankar@intel.com, jani.nikula@intel.com, imre.deak@intel.com, 
 khaled.almahallawy@intel.com, navaremanasi@google.com, 
 Gil Dekel <gildekel@google.com>
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
	DATE_IN_PAST(1.00)[115];
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
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 43DD16EDAF1

Compute and attach VSC SDP and HDR metadata infoframes for logical MST
stream connectors.

Update mst_stream_enable() and implement mst_stream_update_pipe() to
configure the transcoder's Video DIP registers with VSC and HDR infoframes.
This allows fastsets (such as toggling HDR ON/OFF) to update the hardware
without triggering a full modeset.

Expose the max_bpc, HDR metadata, and DP Colorspace connector properties
during MST connector initialization to enable userspace configuration.

Change-Id: I4e79ec56a0a21650f5c70e80e4fd4d46f5fefaf9
Signed-off-by: Gil Dekel <gildekel@google.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     |  9 +++---
 drivers/gpu/drm/i915/display/intel_dp.h     |  6 ++++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 31 ++++++++++++++++++++-
 3 files changed, 41 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1de26c4c867f..686782d9987f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3157,12 +3157,13 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
 		as_sdp->coasting_vtotal = crtc_state->vrr.vmax;
 }
 
-static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
-				     struct intel_crtc_state *crtc_state,
-				     const struct drm_connector_state *conn_state)
+void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
+			      struct intel_crtc_state *crtc_state,
+			      const struct drm_connector_state *conn_state)
 {
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	struct drm_dp_vsc_sdp *vsc;
+
 	if ((!connector->dp.colorimetry_support ||
 	     !intel_dp_needs_vsc_sdp(crtc_state, conn_state)) &&
 	    !crtc_state->has_psr)
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
index 5b76d12bb00f..d438e4942d9c 100644
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
@@ -1708,6 +1714,11 @@ static int mst_topology_add_connector_properties(struct intel_dp *intel_dp,
 	if (connector->base.max_bpc_property)
 		drm_connector_attach_max_bpc_property(&connector->base, 6, 12);
 
+	if (intel_dp_has_gamut_metadata_dip(&dp_to_dig_port(intel_dp)->base))
+		drm_connector_attach_hdr_output_metadata_property(&connector->base);
+
+	intel_attach_dp_colorspace_property(&connector->base);
+
 	return drm_connector_set_path_property(&connector->base, pathprop);
 }
 
@@ -1856,6 +1867,24 @@ static const struct drm_dp_mst_topology_cbs mst_topology_cbs = {
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
@@ -1896,7 +1925,7 @@ mst_stream_encoder_create(struct intel_digital_port *dig_port, enum pipe pipe)
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

