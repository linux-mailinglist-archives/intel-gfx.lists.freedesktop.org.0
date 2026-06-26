Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jwV2JdIORWp56AoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 14:57:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42D566EDAE6
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 14:57:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=google.com header.s=20251104 header.b=IIXYhl7t;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=reject) header.from=google.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C127010EFC1;
	Wed,  1 Jul 2026 12:57:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-f202.google.com (mail-qk1-f202.google.com
 [209.85.222.202])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 042DB10E40C
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jun 2026 21:45:18 +0000 (UTC)
Received: by mail-qk1-f202.google.com with SMTP id
 af79cd13be357-92ad11e2197so203536385a.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jun 2026 14:45:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20251104; t=1782510317; x=1783115117;
 darn=lists.freedesktop.org; 
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=lMxEbUN4g5HJl8rBCPSd8i2j2INLA6ePpq/n8LCBKjc=;
 b=IIXYhl7t4dWST5nhiVysel1F+W3BpJOSvEapy+wMy5ICcsaV6ujzHwqs6bYI7q3sWR
 5XyXDU3INuTkYz8dNhE7iwXT+HSZ6iZ+4Yoy/P4ffCFPFKz7miieY57PtVr7NI0bwFdk
 jiMVhSAYc8Oupy61RD98Ty6ncZnCW3SI0ozd/Ua9cL/1kIXoYk6RUK/1Iaz3Lm2HQrOu
 dHgA3YyFUuiElAY11TH3ZDjEh0oCxYziv6KzbQeEwQI2hJFIp5owZvGJnQrljA/zYxcX
 Q+Eh7hZnjWe2LQg3g/u+7w+XtaRDlpqjBs3YrNgZkAgo3Z8mhUvXvDKH3g7PjlbV12uH
 LeFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1782510317; x=1783115117;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=lMxEbUN4g5HJl8rBCPSd8i2j2INLA6ePpq/n8LCBKjc=;
 b=Q8/rKof5fpFkfroOQ9jF5rlq37zIojoAh6JBcj49hxR1X5z5KlbBNzZJfle7mh1AM+
 HZ8wlg6Y9wXEVpSv8GR7yzNDP7KYSBMZZA+QZiHcMKUshW9yns/G5LccnsTdNr/mFvO/
 N54S+h4IDFlPlISm6rI/NueqnFkKjiWbvtmBUdTVR76QMHPUxhaSwbVmFTsPlMdQ51VU
 3mjDodCNT/7QFw4M6PurPEH7ybg1VMrgzcadNXNXm3c+ToUv133YQ1fETk6n1wcQRlM8
 NnXNjMNUe8s71d+BhxYO667B3ezDvWZvszg6Hthkfl/GxnDOpRwDV9CpSof7sNV7OHaH
 ei2w==
X-Gm-Message-State: AOJu0YwGyGc8dEbeXpRDyH+hy3On0J0DSmfSdkjn92J3ReBEg1o+/P/b
 ZCkTOv+fEFRR0nDn0Iw3dvleAMPit09GaYZ1wlV4lGS+gGp1J3Z7+LUPnZSnLUFuS+rhSau/J9H
 X6QYNP5p6jFQWqW0PQ1miyD5WGwaWDaQ6A3Gu5b5TYp3uzENdoldYDO7ZeNYK0cxPSDXtZzyvmh
 BWRjq6fQudvf58fyooxExjGkAqeM6vGKcqYkCt8KtxTiZ3BGhpNk6QFwHjWwI=
X-Received: from qtbie6.prod.google.com ([2002:a05:622a:6986:b0:517:710d:afde])
 (user=gildekel job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:622a:1ba1:b0:519:8988:b107 with SMTP id
 d75a77b69052e-51a7276acbcmr117661791cf.6.1782510316492; 
 Fri, 26 Jun 2026 14:45:16 -0700 (PDT)
Date: Fri, 26 Jun 2026 17:44:41 -0400
In-Reply-To: <20260626214513.179943-1-gildekel@google.com>
Mime-Version: 1.0
References: <20260626214513.179943-1-gildekel@google.com>
X-Mailer: git-send-email 2.55.0.rc0.799.gd6f94ed593-goog
Message-ID: <20260626214513.179943-2-gildekel@google.com>
Subject: [PATCH v3 1/2] drm/i915/display: Cache DP colorimetry support
 per-connector
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
	DATE_IN_PAST(1.00)[111];
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
X-Rspamd-Queue-Id: 42D566EDAE6

Query and cache colorimetry format support on a per-connector basis
instead of checking the root port's DPCD capabilities directly.

Introduce intel_dp_get_colorimetry_status_aux() to query colorimetry support
over a given DP AUX channel. For SST, cache this during intel_dp_detect().
For MST downstream ports, cache it using the port's sideband AUX
in mst_connector_detect_ctx().

This prepares the display driver to correctly identify colorimetry/VSC SDP
support on downstream MST sinks, where checking the root port's capabilities
incorrectly returns false.

Assisted-by: jetski:gemini-2.5-pro
Signed-off-by: Gil Dekel <gildekel@google.com>
---
 .../gpu/drm/i915/display/intel_display_types.h |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c        | 18 ++++++++++++++----
 drivers/gpu/drm/i915/display/intel_dp.h        |  2 ++
 drivers/gpu/drm/i915/display/intel_dp_mst.c    | 13 +++++++++++--
 4 files changed, 28 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index c048da7d6fea..428d55f9682f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -564,6 +564,7 @@ struct intel_connector {
 		u8 dsc_hblank_expansion_quirk:1;
 		u8 dsc_throughput_quirk:1;
 		u8 dsc_decompression_enabled:1;
+		u8 colorimetry_support:1;
 
 		struct {
 			struct {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6e3fa6662cbe..1de26c4c867f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3161,9 +3161,9 @@ static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
 				     struct intel_crtc_state *crtc_state,
 				     const struct drm_connector_state *conn_state)
 {
+	struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	struct drm_dp_vsc_sdp *vsc;
-
-	if ((!intel_dp->colorimetry_support ||
+	if ((!connector->dp.colorimetry_support ||
 	     !intel_dp_needs_vsc_sdp(crtc_state, conn_state)) &&
 	    !crtc_state->has_psr)
 		return;
@@ -4438,16 +4438,21 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
 			    str_enable_disable(tmp));
 }
 
-static bool intel_dp_get_colorimetry_status(struct intel_dp *intel_dp)
+bool intel_dp_get_colorimetry_status_aux(struct drm_dp_aux *aux)
 {
 	u8 dprx = 0;
 
-	if (drm_dp_dpcd_readb(&intel_dp->aux, DP_DPRX_FEATURE_ENUMERATION_LIST,
+	if (drm_dp_dpcd_readb(aux, DP_DPRX_FEATURE_ENUMERATION_LIST,
 			      &dprx) != 1)
 		return false;
 	return dprx & DP_VSC_SDP_EXT_FOR_COLORIMETRY_SUPPORTED;
 }
 
+static bool intel_dp_get_colorimetry_status(struct intel_dp *intel_dp)
+{
+	return intel_dp_get_colorimetry_status_aux(&intel_dp->aux);
+}
+
 static int intel_dp_read_dsc_dpcd(struct drm_dp_aux *aux,
 				  u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE])
 {
@@ -6374,6 +6379,11 @@ intel_dp_detect(struct drm_connector *_connector,
 						 status,
 						 intel_dp->dpcd,
 						 intel_dp->downstream_ports);
+	if (status == connector_status_connected)
+		connector->dp.colorimetry_support = intel_dp->colorimetry_support;
+	else
+		connector->dp.colorimetry_support = false;
+
 out_vdd_off:
 	intel_pps_vdd_off(intel_dp);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 02b691df6755..26b3a0eb354e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -12,6 +12,7 @@ enum intel_output_format;
 enum pipe;
 enum port;
 struct drm_connector_state;
+struct drm_dp_aux;
 struct drm_dp_desc;
 struct drm_dp_vsc_sdp;
 struct drm_encoder;
@@ -78,6 +79,7 @@ int intel_dp_compute_config(struct intel_atomic_state *state,
 bool intel_dp_needs_8b10b_fec(const struct intel_crtc_state *crtc_state,
 			      bool dsc_enabled_on_crtc);
 void intel_dp_dsc_reset_config(struct intel_crtc_state *crtc_state);
+bool intel_dp_get_colorimetry_status_aux(struct drm_dp_aux *aux);
 int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 				struct intel_crtc_state *pipe_config,
 				struct drm_connector_state *conn_state,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index ecc90e8faee1..5b76d12bb00f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1627,6 +1627,7 @@ mst_connector_detect_ctx(struct drm_connector *_connector,
 	struct intel_connector *connector = to_intel_connector(_connector);
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_dp *intel_dp = connector->mst.dp;
+	int status;
 
 	if (!intel_display_device_enabled(display))
 		return connector_status_disconnected;
@@ -1639,8 +1640,16 @@ mst_connector_detect_ctx(struct drm_connector *_connector,
 
 	intel_dp_flush_connector_commits(connector);
 
-	return drm_dp_mst_detect_port(&connector->base, ctx, &intel_dp->mst.mgr,
-				      connector->mst.port);
+	status = drm_dp_mst_detect_port(&connector->base, ctx, &intel_dp->mst.mgr,
+					connector->mst.port);
+
+	if (status == connector_status_connected)
+		connector->dp.colorimetry_support =
+			intel_dp_get_colorimetry_status_aux(&connector->mst.port->aux);
+	else
+		connector->dp.colorimetry_support = false;
+
+	return status;
 }
 
 static const struct drm_connector_helper_funcs mst_connector_helper_funcs = {
-- 
Gil Dekel, Software Engineer, Google / ChromeOS Display and Graphics

