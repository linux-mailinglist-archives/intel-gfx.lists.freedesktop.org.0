Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pyp5Hs4ORWpt6AoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 14:57:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDAA76EDABB
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 14:57:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=google.com header.s=20251104 header.b=Kml+Hmkk;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=reject) header.from=google.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 048F510EF91;
	Wed,  1 Jul 2026 12:57:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-f201.google.com (mail-qt1-f201.google.com
 [209.85.160.201])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3545D10E21D
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2026 16:11:21 +0000 (UTC)
Received: by mail-qt1-f201.google.com with SMTP id
 d75a77b69052e-51768072950so27978651cf.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2026 09:11:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20251104; t=1782403880; x=1783008680;
 darn=lists.freedesktop.org; 
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=YjaKi/4knKOQz2Kvz9Z/GYlanyeEUwdQjIak/LLLvcg=;
 b=Kml+HmkkGQihx0WT8TRt7H0eloDIu2907VZIH+VvDo3R9lSmAotU0/1yyMMhD09YXS
 5naMJlxMF4KO6R1tlE1prIgjoOtAfXRdn23bCyBDm/ZMtnkL/v+xlU4zEY0Em6G5AaFY
 MRh7+8kO29rR/DHKSnxiA/suwzbPuJYy3ciO77iL0KhUNEyv8uI0J0HP9lLalJmALHlc
 CHp9ZMG6/Xf0M8x2g5JzfK8ZWCfpbH4TEQRadcg8wyJ9ewb+AUpG0g4jTcy8J8zo8YY4
 aHGITpuvBmNtW4gsZ+mhrJ4sK00f9LWLx+WHcYYLGqK2ZoHGTf3HSSTb1ulGvp2YzPAk
 JcNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1782403880; x=1783008680;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=YjaKi/4knKOQz2Kvz9Z/GYlanyeEUwdQjIak/LLLvcg=;
 b=iMSgebVw33U6GzMgsrX4fsa+Vrd5XpPqsJi4VmZivAf5z+SFiW46JMMyOx1N/ESxMq
 a+p/h8Dh8YEZXaURcfzQ9wgPsvxaXHfDYcBz1CtDb3lRJJClzEuZwnNZSAt6GNa3BxqA
 mNC15TyjEursZ8X1consqvz8st5E2Zs9+ywo5ROLAw9gR7ZoALnGKdkP4b0AgFLrjlYZ
 OhsHG7UPzsFFafYC5aqqMKCdx6p0TA4c2F5NGzEwj3t9bmh9jms55s/8Q0xz3EKGsdeA
 yKDg8Wl3wGWJkeSxSGN+VYaykh1Sd+6W56NWs3RtMyhKOE3mei2vi8u/zTJczOPXfMRF
 xvxw==
X-Gm-Message-State: AOJu0YzFiTglPNfuW9SZMMIPA46Xz3sfZFI4z000xoWuH2TDOcvSvZgL
 vjgVPGHkRjuqAAzPcHb2JYEUu5flfD3wyyL6zxzO0+GAok2/TfGHbm0RhSQpd/p561+38HYLWkA
 eRUoNSvu1ytvcNfR2TDhX6mHj1/yNJ3NM3apT8tcAhcAX8BPpzYunjJQJZacWk7X+RMEecM+BXv
 G/gqvXj4LkOsB+XOvhuwkX2uHvUV9y5I0luoQij2Yg79ZAywWAQvB6zbA+4kY=
X-Received: from qtbga15.prod.google.com
 ([2002:a05:622a:590f:b0:51a:5054:ea47])
 (user=gildekel job=prod-delivery.src-stubby-dispatcher) by
 2002:ac8:6105:0:b0:519:5238:96dd with SMTP id
 d75a77b69052e-51a727f3e35mr43029081cf.41.1782403878891; 
 Thu, 25 Jun 2026 09:11:18 -0700 (PDT)
Date: Thu, 25 Jun 2026 12:10:26 -0400
In-Reply-To: <20260625161104.2893517-1-gildekel@google.com>
Mime-Version: 1.0
References: <20260625161104.2893517-1-gildekel@google.com>
X-Mailer: git-send-email 2.55.0.rc0.799.gd6f94ed593-goog
Message-ID: <20260625161104.2893517-2-gildekel@google.com>
Subject: [PATCH 1/2] drm/i915/display: Cache DP colorimetry support
 per-connector
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
X-Rspamd-Queue-Id: CDAA76EDABB

Query and cache colorimetry format support on a per-connector basis
instead of checking the root port's DPCD capabilities directly.

Introduce intel_dp_get_colorimetry_status_aux() to query colorimetry support
over a given DP AUX channel. For SST, cache this during intel_dp_detect().
For MST downstream ports, cache it using the port's sideband AUX
in mst_connector_detect_ctx().

This prepares the display driver to correctly identify colorimetry/VSC SDP
support on downstream MST sinks, where checking the root port's capabilities
incorrectly returns false.

Signed-off-by: Gil Dekel <gildekel@google.com>
---
 .../gpu/drm/i915/display/intel_display_types.h |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c        | 18 ++++++++++++++----
 drivers/gpu/drm/i915/display/intel_dp.h        |  2 ++
 drivers/gpu/drm/i915/display/intel_dp_mst.c    | 14 ++++++++++++--
 4 files changed, 29 insertions(+), 6 deletions(-)

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
index ecc90e8faee1..dd3cd2ec3d50 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1639,8 +1639,18 @@ mst_connector_detect_ctx(struct drm_connector *_connector,
 
 	intel_dp_flush_connector_commits(connector);
 
-	return drm_dp_mst_detect_port(&connector->base, ctx, &intel_dp->mst.mgr,
-				      connector->mst.port);
+	int status;
+
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

