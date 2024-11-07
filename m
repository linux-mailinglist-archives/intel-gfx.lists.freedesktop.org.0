Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5482B9C0AEC
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 17:11:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5784A10E13D;
	Thu,  7 Nov 2024 16:11:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mtq/y5rh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B460010E329
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2024 16:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730995895; x=1762531895;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=49+c2vSwn6DVjzEg7WW5lnWDD8VOxJQMN4AXrFfgEgQ=;
 b=Mtq/y5rh+9e2MRuHaf6CW/SMMLGgA/M0D4tHv52g5iNvvAk5+hsnOOse
 t27ERK8+pe/TpuunBjYrKsCB1Q75u7nXzgd0IUDEbRoSa/3nAvSKS6dXI
 mYcmGiLu0xp/Hpbe0vuV4tqGoJYDsR0s322g9uPh5tzA9QW7JVstkMSUS
 uSOThOh9PIjCcGCuCQzi09qF7fPhGLP4RHOND0nYrL8CIQbzQaV7j6fWN
 g6Wrg79zE1LMNMQZ7odLEOsoIj+ph1K8YrGA1WXdAz00/Vm7UPj8948xz
 rH/dzcY5sDu+IW+StgMxfgTA7LU5xGJ/rFWY7urb0nhwoEQOJIGwxUu2D w==;
X-CSE-ConnectionGUID: l+qzWUUNQmuGiNFXI9NLjA==
X-CSE-MsgGUID: 0zwKqx0ETJ+kET+A6T0LmQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="41443012"
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="41443012"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 08:11:28 -0800
X-CSE-ConnectionGUID: TX4SkGoUSyGSUihFfaQAwA==
X-CSE-MsgGUID: njUAsyacTfSbn445BqORPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="85277829"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 07 Nov 2024 08:11:26 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 Nov 2024 18:11:26 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 01/10] drm/i915: Grab intel_display from the encoder to avoid
 potential oopsies
Date: Thu,  7 Nov 2024 18:11:14 +0200
Message-ID: <20241107161123.16269-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241107161123.16269-1-ville.syrjala@linux.intel.com>
References: <20241107161123.16269-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Grab the intel_display from 'encoder' rather than 'state'
in the encoder hooks to avoid the massive footgun that is
intel_sanitize_encoder(), which passes NULL as the 'state'
argument to encoder .disable() and .post_disable().

TODO: figure out how to actually fix intel_sanitize_encoder()...

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c | 10 +++++-----
 drivers/gpu/drm/i915/display/intel_tv.c  |  4 ++--
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 74c1983fe07e..1be55bdb48b9 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -244,7 +244,7 @@ static void hsw_disable_crt(struct intel_atomic_state *state,
 			    const struct intel_crtc_state *old_crtc_state,
 			    const struct drm_connector_state *old_conn_state)
 {
-	struct intel_display *display = to_intel_display(state);
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
 	drm_WARN_ON(display->drm, !old_crtc_state->has_pch_encoder);
@@ -257,7 +257,7 @@ static void hsw_post_disable_crt(struct intel_atomic_state *state,
 				 const struct intel_crtc_state *old_crtc_state,
 				 const struct drm_connector_state *old_conn_state)
 {
-	struct intel_display *display = to_intel_display(state);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
@@ -287,7 +287,7 @@ static void hsw_pre_pll_enable_crt(struct intel_atomic_state *state,
 				   const struct intel_crtc_state *crtc_state,
 				   const struct drm_connector_state *conn_state)
 {
-	struct intel_display *display = to_intel_display(state);
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
 	drm_WARN_ON(display->drm, !crtc_state->has_pch_encoder);
@@ -300,7 +300,7 @@ static void hsw_pre_enable_crt(struct intel_atomic_state *state,
 			       const struct intel_crtc_state *crtc_state,
 			       const struct drm_connector_state *conn_state)
 {
-	struct intel_display *display = to_intel_display(state);
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum pipe pipe = crtc->pipe;
@@ -319,7 +319,7 @@ static void hsw_enable_crt(struct intel_atomic_state *state,
 			   const struct intel_crtc_state *crtc_state,
 			   const struct drm_connector_state *conn_state)
 {
-	struct intel_display *display = to_intel_display(state);
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum pipe pipe = crtc->pipe;
diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
index bfd16054ca05..27c530218ee6 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.c
+++ b/drivers/gpu/drm/i915/display/intel_tv.c
@@ -929,7 +929,7 @@ intel_enable_tv(struct intel_atomic_state *state,
 		const struct intel_crtc_state *pipe_config,
 		const struct drm_connector_state *conn_state)
 {
-	struct intel_display *display = to_intel_display(state);
+	struct intel_display *display = to_intel_display(encoder);
 
 	/* Prevents vblank waits from timing out in intel_tv_detect_type() */
 	intel_crtc_wait_for_next_vblank(to_intel_crtc(pipe_config->uapi.crtc));
@@ -943,7 +943,7 @@ intel_disable_tv(struct intel_atomic_state *state,
 		 const struct intel_crtc_state *old_crtc_state,
 		 const struct drm_connector_state *old_conn_state)
 {
-	struct intel_display *display = to_intel_display(state);
+	struct intel_display *display = to_intel_display(encoder);
 
 	intel_de_rmw(display, TV_CTL, TV_ENC_ENABLE, 0);
 }
-- 
2.45.2

