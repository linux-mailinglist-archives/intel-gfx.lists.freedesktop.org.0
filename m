Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6Th5Hs4ORWpu6AoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 14:57:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3FDA6EDABC
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 14:57:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=google.com header.s=20251104 header.b=spMon2RT;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=reject) header.from=google.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDE0B10EF8D;
	Wed,  1 Jul 2026 12:57:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-f202.google.com (mail-qk1-f202.google.com
 [209.85.222.202])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE01510F6F4
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jun 2026 17:55:16 +0000 (UTC)
Received: by mail-qk1-f202.google.com with SMTP id
 af79cd13be357-92ae405b5eeso104862185a.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jun 2026 10:55:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20251104; t=1782496516; x=1783101316;
 darn=lists.freedesktop.org; 
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=OBPKu9Cmc9J3C37pieRPjp05jyWuksA/b6kGx2OZKfQ=;
 b=spMon2RTipYBYUcuJ0Ot0OSwGksPiEk3opV9USVL4tiPvJB3GoH1il+0lxboVNXPZw
 blHrBYjNFYWzmwPdZg8YbThmIME589kBSuQib6eUeaFN47UgcvQwWt1Ba8yBMufGJFJh
 1T8dd9IP1OMAgmPSQIkCwHWX90QW1Pmo3b8tZqYBeN7w77Q1tXR9+pdl0s0wCEKsYTiN
 8S/d/bSReecwPksUlcTcXwx3Z+dnzI8FhgnBpMNLjp8RI6dksDvwQgR+WceZ74rWCEIa
 RC60VS+goxF3u2gMuNoCEo9tlG/18GDz2ftuzYK54RA+FSxWVSgGXPML/n+VgcAL//6+
 lN+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1782496516; x=1783101316;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=OBPKu9Cmc9J3C37pieRPjp05jyWuksA/b6kGx2OZKfQ=;
 b=VqnDueb7BPuRsbHaE6gWbFajqeDx2fCE+YT34jM1V2B0fgb755fH1EWBFIw3ZyvL2n
 zX4Tas/QuXEkNGZciJCVROJAEbV6KkJgH3yFuwsy67ysAMI4ILN9UejH32sJfZ+O5dVx
 18xK9IGQNRlw1hdx2ERvlRvGMK4PxPsgS7mOboh3tuV8kMDZn2QjaPFzZXRRgLXdBAHz
 CQhmHJaOKUfwq3w3ihZZN2xYtHAHpwBRgiVTIZUL/xSXSIx7F7Xu+nyymwQZDGxL1sEN
 gHwSV4Y30rMDB58e191+/w3hTyyqFWh3E+nwty9iCoVfKpk69W31698PYX2u0oy97z2k
 wX9A==
X-Gm-Message-State: AOJu0Yz1h0I+QD5o4zQeW8vFTHpK4yJ1iKw6O74n3CzS1xWiohqSXmFQ
 Hi4r8ncx7EgUAdNoKxx/oV6vaxdwTiBGOUk5cMj02U4qD0Frf2hdREj3hMlH5KBmreHJ39ocwd7
 OwPW8G5GtynW9rkTy5MJtiYqt5jJmy5gpPqC+iR1F3oAjWUVrZaAgr03RvOm4/fs1GfY5cVeAt0
 g3Fhz8ya9yxUDXHrBPyJ1/9hcqspUi9isQfwnNGRD7+X4OztYUPK+Yhf85GP0=
X-Received: from qkntl9.prod.google.com ([2002:a05:620a:3b09:b0:915:7ecd:606b])
 (user=gildekel job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:620a:198f:b0:915:d10e:8c4f with SMTP id
 af79cd13be357-9293dfbcb3emr1257302685a.53.1782496514898; 
 Fri, 26 Jun 2026 10:55:14 -0700 (PDT)
Date: Fri, 26 Jun 2026 13:54:22 -0400
In-Reply-To: <20260626175510.3899476-1-gildekel@google.com>
Mime-Version: 1.0
References: <20260625160020.2873859-1-gildekel@google.com>
 <20260626175510.3899476-1-gildekel@google.com>
X-Mailer: git-send-email 2.55.0.rc0.799.gd6f94ed593-goog
Message-ID: <20260626175510.3899476-2-gildekel@google.com>
Subject: [PATCH v2 1/2] drm/i915/display: Cache DP colorimetry support
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D3FDA6EDABC

Query and cache colorimetry format support on a per-connector basis
instead of checking the root port's DPCD capabilities directly.

Introduce intel_dp_get_colorimetry_status_aux() to query colorimetry support
over a given DP AUX channel. For SST, cache this during intel_dp_detect().
For MST downstream ports, cache it using the port's sideband AUX
in mst_connector_detect_ctx().

This prepares the display driver to correctly identify colorimetry/VSC SDP
support on downstream MST sinks, where checking the root port's capabilities
incorrectly returns false.

Change-Id: I48c69c04e8baeb30e8ce86a1ad4f25e727929cdb
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

