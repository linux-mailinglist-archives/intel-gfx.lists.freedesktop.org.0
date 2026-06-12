Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id o3HrHc4aLGoDLgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2026 16:42:22 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F084B67A4A0
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2026 16:42:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Mv7Pr6Ah;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FA4510F56B;
	Fri, 12 Jun 2026 14:42:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52FE510F564;
 Fri, 12 Jun 2026 14:42:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781275339; x=1812811339;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=E8WI8ErDrz5izNmxpzjW9PkwTHId6ffFlMePjc6gLLI=;
 b=Mv7Pr6AhdjEdIBkpyh9TC3vbZml0iWvuOcuBprrEXNSHPMlIZRPUfNjc
 x56USp+CEab49jh7zWZA0dErqsbjL3oAepSq0PSVfEOokFwVHo7ZkSWKT
 MTyH8VsAe/Y66sdxKRa+XdKz1W/zSD1ngOq5u0sNouMav/YePNkT0hZ+L
 HgH4wWpWInlrQxlvNZfcyhNiF+zRimnO5ScODw3sJ35YDDRixfCFMbEYr
 k0wOBM+hHXXsnEMB807D5dEVnLBoS0dTYLiKhoqCcEtSKyyJNZ3nKpJbj
 Mbuw7uNwDfqpn/Sb4puXp162g7x4FG8DsmuVzZOTNEL8Gy9WXmxVmzYRx w==;
X-CSE-ConnectionGUID: i/5I2iNvQHGKBFCCvkqKiA==
X-CSE-MsgGUID: IpFwrBWoRSWEfbwXPxncQQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="81240524"
X-IronPort-AV: E=Sophos;i="6.24,200,1774335600"; d="scan'208";a="81240524"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2026 07:42:19 -0700
X-CSE-ConnectionGUID: Biaten1bTPaxkXciS8EMbg==
X-CSE-MsgGUID: SB2XMbbBSoWRg7WtAJkX/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,200,1774335600"; d="scan'208";a="284944584"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.245.89])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2026 07:42:17 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Subject: [PATCH 2/4] drm/i915: Pass the full atomic state to .compute_config()
Date: Fri, 12 Jun 2026 17:42:01 +0300
Message-ID: <20260612144203.31715-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260612144203.31715-1-ville.syrjala@linux.intel.com>
References: <20260612144203.31715-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FROM_HAS_DN(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[3];
	ALIAS_RESOLVED(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F084B67A4A0

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Upcoming changes will need access to the full atomic state
in .compute_config(). Pass it in from the top.

Couple of the implementations already dug this out via the
crtc_state/conn_state->state pointer, but we don't want to
use that anywhere because it's a bit of a footgun by only
being valid during the early stages of the commit.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c              | 5 +++--
 drivers/gpu/drm/i915/display/g4x_hdmi.c            | 4 ++--
 drivers/gpu/drm/i915/display/icl_dsi.c             | 3 ++-
 drivers/gpu/drm/i915/display/intel_crt.c           | 9 ++++++---
 drivers/gpu/drm/i915/display/intel_ddi.c           | 8 +++++---
 drivers/gpu/drm/i915/display/intel_display.c       | 4 ++--
 drivers/gpu/drm/i915/display/intel_display_types.h | 6 ++++--
 drivers/gpu/drm/i915/display/intel_dp.c            | 4 ++--
 drivers/gpu/drm/i915/display/intel_dp.h            | 3 ++-
 drivers/gpu/drm/i915/display/intel_dp_mst.c        | 8 ++++----
 drivers/gpu/drm/i915/display/intel_dvo.c           | 3 ++-
 drivers/gpu/drm/i915/display/intel_lvds.c          | 3 ++-
 drivers/gpu/drm/i915/display/intel_sdvo.c          | 3 ++-
 drivers/gpu/drm/i915/display/intel_tv.c            | 5 ++---
 drivers/gpu/drm/i915/display/vlv_dsi.c             | 3 ++-
 15 files changed, 42 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index d211e6c49e0a..b867443ff227 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -1222,7 +1222,8 @@ static bool ilk_digital_port_connected(struct intel_encoder *encoder)
 	return intel_de_read(display, DEISR) & bit;
 }
 
-static int g4x_dp_compute_config(struct intel_encoder *encoder,
+static int g4x_dp_compute_config(struct intel_atomic_state *state,
+				 struct intel_encoder *encoder,
 				 struct intel_crtc_state *crtc_state,
 				 struct drm_connector_state *conn_state)
 {
@@ -1232,7 +1233,7 @@ static int g4x_dp_compute_config(struct intel_encoder *encoder,
 	if (HAS_PCH_SPLIT(display) && encoder->port != PORT_A)
 		crtc_state->has_pch_encoder = true;
 
-	ret = intel_dp_compute_config(encoder, crtc_state, conn_state);
+	ret = intel_dp_compute_config(state, encoder, crtc_state, conn_state);
 	if (ret)
 		return ret;
 
diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index acb36cab999c..4c33aa1d1d32 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -126,12 +126,12 @@ static bool g4x_compute_has_hdmi_sink(struct intel_atomic_state *state,
 	return false;
 }
 
-static int g4x_hdmi_compute_config(struct intel_encoder *encoder,
+static int g4x_hdmi_compute_config(struct intel_atomic_state *state,
+				   struct intel_encoder *encoder,
 				   struct intel_crtc_state *crtc_state,
 				   struct drm_connector_state *conn_state)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct intel_atomic_state *state = to_intel_atomic_state(crtc_state->uapi.state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
 	if (HAS_PCH_SPLIT(display))
diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index a549f1fac810..59184f2f805c 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1657,7 +1657,8 @@ static int gen11_dsi_dsc_compute_config(struct intel_encoder *encoder,
 	return 0;
 }
 
-static int gen11_dsi_compute_config(struct intel_encoder *encoder,
+static int gen11_dsi_compute_config(struct intel_atomic_state *state,
+				    struct intel_encoder *encoder,
 				    struct intel_crtc_state *pipe_config,
 				    struct drm_connector_state *conn_state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 243e332bef57..5b8968197fbc 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -397,7 +397,8 @@ intel_crt_mode_valid(struct drm_connector *connector,
 	return MODE_OK;
 }
 
-static int intel_crt_compute_config(struct intel_encoder *encoder,
+static int intel_crt_compute_config(struct intel_atomic_state *state,
+				    struct intel_encoder *encoder,
 				    struct intel_crtc_state *crtc_state,
 				    struct drm_connector_state *conn_state)
 {
@@ -413,7 +414,8 @@ static int intel_crt_compute_config(struct intel_encoder *encoder,
 	return 0;
 }
 
-static int pch_crt_compute_config(struct intel_encoder *encoder,
+static int pch_crt_compute_config(struct intel_atomic_state *state,
+				  struct intel_encoder *encoder,
 				  struct intel_crtc_state *crtc_state,
 				  struct drm_connector_state *conn_state)
 {
@@ -432,7 +434,8 @@ static int pch_crt_compute_config(struct intel_encoder *encoder,
 	return 0;
 }
 
-static int hsw_crt_compute_config(struct intel_encoder *encoder,
+static int hsw_crt_compute_config(struct intel_atomic_state *state,
+				  struct intel_encoder *encoder,
 				  struct intel_crtc_state *crtc_state,
 				  struct drm_connector_state *conn_state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 2684e33b602d..91cac4e1d94a 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4480,7 +4480,8 @@ intel_ddi_compute_output_type(struct intel_encoder *encoder,
 	}
 }
 
-static int intel_ddi_compute_config(struct intel_encoder *encoder,
+static int intel_ddi_compute_config(struct intel_atomic_state *state,
+				    struct intel_encoder *encoder,
 				    struct intel_crtc_state *pipe_config,
 				    struct drm_connector_state *conn_state)
 {
@@ -4498,7 +4499,7 @@ static int intel_ddi_compute_config(struct intel_encoder *encoder,
 
 		ret = intel_hdmi_compute_config(encoder, pipe_config, conn_state);
 	} else {
-		ret = intel_dp_compute_config(encoder, pipe_config, conn_state);
+		ret = intel_dp_compute_config(state, encoder, pipe_config, conn_state);
 	}
 
 	if (ret)
@@ -4603,7 +4604,8 @@ intel_ddi_port_sync_transcoders(const struct intel_crtc_state *ref_crtc_state,
 	return transcoders;
 }
 
-static int intel_ddi_compute_config_late(struct intel_encoder *encoder,
+static int intel_ddi_compute_config_late(struct intel_atomic_state *state,
+					 struct intel_encoder *encoder,
 					 struct intel_crtc_state *crtc_state,
 					 struct drm_connector_state *conn_state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e2e4b00a8fa9..1db1c3ea0873 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4793,7 +4793,7 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 		if (connector_state->crtc != &crtc->base)
 			continue;
 
-		ret = encoder->compute_config(encoder, crtc_state,
+		ret = encoder->compute_config(state, encoder, crtc_state,
 					      connector_state);
 		if (ret == -EDEADLK)
 			return ret;
@@ -4853,7 +4853,7 @@ intel_modeset_pipe_config_late(struct intel_atomic_state *state,
 		    !encoder->compute_config_late)
 			continue;
 
-		ret = encoder->compute_config_late(encoder, crtc_state,
+		ret = encoder->compute_config_late(state, encoder, crtc_state,
 						   conn_state);
 		if (ret)
 			return ret;
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index aa4772a1c208..beaa89afb3ff 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -178,10 +178,12 @@ struct intel_encoder {
 	enum intel_output_type (*compute_output_type)(struct intel_encoder *,
 						      struct intel_crtc_state *,
 						      struct drm_connector_state *);
-	int (*compute_config)(struct intel_encoder *,
+	int (*compute_config)(struct intel_atomic_state *,
+			      struct intel_encoder *,
 			      struct intel_crtc_state *,
 			      struct drm_connector_state *);
-	int (*compute_config_late)(struct intel_encoder *,
+	int (*compute_config_late)(struct intel_atomic_state *,
+				   struct intel_encoder *,
 				   struct intel_crtc_state *,
 				   struct drm_connector_state *);
 	void (*pre_pll_enable)(struct intel_atomic_state *,
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3569e61e7fee..b9324b590ee9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3627,12 +3627,12 @@ int intel_dp_compute_min_hblank(struct intel_crtc_state *crtc_state,
 }
 
 int
-intel_dp_compute_config(struct intel_encoder *encoder,
+intel_dp_compute_config(struct intel_atomic_state *state,
+			struct intel_encoder *encoder,
 			struct intel_crtc_state *pipe_config,
 			struct drm_connector_state *conn_state)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct intel_atomic_state *state = to_intel_atomic_state(conn_state->state);
 	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct intel_connector *connector = intel_dp->attached_connector;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 92ce04852326..b233739b89ce 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -71,7 +71,8 @@ void intel_dp_sink_disable_decompression(struct intel_atomic_state *state,
 void intel_dp_encoder_suspend(struct intel_encoder *intel_encoder);
 void intel_dp_encoder_shutdown(struct intel_encoder *intel_encoder);
 void intel_dp_encoder_flush_work(struct drm_encoder *encoder);
-int intel_dp_compute_config(struct intel_encoder *encoder,
+int intel_dp_compute_config(struct intel_atomic_state *state,
+			    struct intel_encoder *encoder,
 			    struct intel_crtc_state *pipe_config,
 			    struct drm_connector_state *conn_state);
 bool intel_dp_needs_8b10b_fec(const struct intel_crtc_state *crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index bcdc50491347..a2f9440ab84a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -697,12 +697,12 @@ static int mst_stream_compute_link_for_joined_pipes(struct intel_encoder *encode
 	return 0;
 }
 
-static int mst_stream_compute_config(struct intel_encoder *encoder,
+static int mst_stream_compute_config(struct intel_atomic_state *state,
+				     struct intel_encoder *encoder,
 				     struct intel_crtc_state *pipe_config,
 				     struct drm_connector_state *conn_state)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct intel_atomic_state *state = to_intel_atomic_state(conn_state->state);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	struct intel_dp *intel_dp = to_primary_dp(encoder);
 	struct intel_connector *connector =
@@ -921,11 +921,11 @@ int intel_dp_mst_atomic_check_link(struct intel_atomic_state *state,
 	return 0;
 }
 
-static int mst_stream_compute_config_late(struct intel_encoder *encoder,
+static int mst_stream_compute_config_late(struct intel_atomic_state *state,
+					  struct intel_encoder *encoder,
 					  struct intel_crtc_state *crtc_state,
 					  struct drm_connector_state *conn_state)
 {
-	struct intel_atomic_state *state = to_intel_atomic_state(conn_state->state);
 	struct intel_dp *intel_dp = to_primary_dp(encoder);
 
 	/* lowest numbered transcoder will be designated master */
diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index dd1a995c2979..181722c41b96 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -242,7 +242,8 @@ intel_dvo_mode_valid(struct drm_connector *_connector,
 	return intel_dvo->dev.dev_ops->mode_valid(&intel_dvo->dev, mode);
 }
 
-static int intel_dvo_compute_config(struct intel_encoder *encoder,
+static int intel_dvo_compute_config(struct intel_atomic_state *state,
+				    struct intel_encoder *encoder,
 				    struct intel_crtc_state *pipe_config,
 				    struct drm_connector_state *conn_state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index c8098104d853..30e4809b36ac 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -413,7 +413,8 @@ intel_lvds_mode_valid(struct drm_connector *_connector,
 	return MODE_OK;
 }
 
-static int intel_lvds_compute_config(struct intel_encoder *encoder,
+static int intel_lvds_compute_config(struct intel_atomic_state *state,
+				     struct intel_encoder *encoder,
 				     struct intel_crtc_state *crtc_state,
 				     struct drm_connector_state *conn_state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index d83d350959d8..6b73c9a5ec7f 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -1354,7 +1354,8 @@ static bool intel_sdvo_has_audio(struct intel_encoder *encoder,
 		return intel_conn_state->force_audio == HDMI_AUDIO_ON;
 }
 
-static int intel_sdvo_compute_config(struct intel_encoder *encoder,
+static int intel_sdvo_compute_config(struct intel_atomic_state *state,
+				     struct intel_encoder *encoder,
 				     struct intel_crtc_state *pipe_config,
 				     struct drm_connector_state *conn_state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
index 0a926c6f25f4..840e1dcdc2d0 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.c
+++ b/drivers/gpu/drm/i915/display/intel_tv.c
@@ -1187,13 +1187,12 @@ static bool intel_tv_vert_scaling(const struct drm_display_mode *tv_mode,
 }
 
 static int
-intel_tv_compute_config(struct intel_encoder *encoder,
+intel_tv_compute_config(struct intel_atomic_state *state,
+			struct intel_encoder *encoder,
 			struct intel_crtc_state *pipe_config,
 			struct drm_connector_state *conn_state)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct intel_atomic_state *state =
-		to_intel_atomic_state(pipe_config->uapi.state);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	struct intel_tv_connector_state *tv_conn_state =
 		to_intel_tv_connector_state(conn_state);
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 877eab75f19a..b89318f5bdc2 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -266,7 +266,8 @@ static void band_gap_reset(struct intel_display *display)
 	vlv_flisdsi_put(display);
 }
 
-static int intel_dsi_compute_config(struct intel_encoder *encoder,
+static int intel_dsi_compute_config(struct intel_atomic_state *state,
+				    struct intel_encoder *encoder,
 				    struct intel_crtc_state *pipe_config,
 				    struct drm_connector_state *conn_state)
 {
-- 
2.53.0

