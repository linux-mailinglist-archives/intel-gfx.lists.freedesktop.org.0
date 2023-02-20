Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D496469D06F
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Feb 2023 16:17:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B66DD10E27B;
	Mon, 20 Feb 2023 15:17:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6191A10E27B
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Feb 2023 15:17:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676906259; x=1708442259;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=jVBugVXBj66J/CflYt3S6bgWPNBUilTakFbKpvUBzQk=;
 b=CybbJBjVHEfFgNIun1vwSl+0on97plsxz/GGdPM8/K6x9kqFlIH2qUBa
 z46UrE4Ia0ZIuvEOIp/34nTjyp1YzV01eJYmj20ajbcL2XHuf2mekqVvc
 gbdkAXLcZPSYh4CYqEvjS0B/UwSI0wNSSHux+Phgj0uNKp927Aa+o+CpY
 aUV5sFEY6a05wk8nyGVxgCdYCdzOWLWnA0kw6lH93OkLdxkWcIZUnxVZq
 rcq/du1yYOGx52gxzOSBJpYfXiave9sA08y2XVcVHKV+5xOqTheuQHoCG
 Ys7zdJn2TRIuWt6l8iGmy/Fwopfm0yr+nzQMBQWxZa5b8ystH0MOyrxJi w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="418642985"
X-IronPort-AV: E=Sophos;i="5.97,312,1669104000"; d="scan'208";a="418642985"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 07:17:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="703730721"
X-IronPort-AV: E=Sophos;i="5.97,312,1669104000"; d="scan'208";a="703730721"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga001.jf.intel.com with SMTP; 20 Feb 2023 07:17:35 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Feb 2023 17:17:34 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Feb 2023 17:17:31 +0200
Message-Id: <20230220151731.6852-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230220151731.6852-1-ville.syrjala@linux.intel.com>
References: <20230220151731.6852-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Drop useless intel_dp_has_audio()
 argument
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

intel_dp_has_audio() has no need for the crtc_state, so don't
pass it in.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index b77bd4565864..d25a93258f8b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2003,7 +2003,6 @@ intel_dp_drrs_compute_config(struct intel_connector *connector,
 }
 
 static bool intel_dp_has_audio(struct intel_encoder *encoder,
-			       const struct intel_crtc_state *crtc_state,
 			       const struct drm_connector_state *conn_state)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
@@ -2069,7 +2068,7 @@ intel_dp_audio_compute_config(struct intel_encoder *encoder,
 	struct drm_connector *connector = conn_state->connector;
 
 	pipe_config->sdp_split_enable =
-		intel_dp_has_audio(encoder, pipe_config, conn_state) &&
+		intel_dp_has_audio(encoder, conn_state) &&
 		intel_dp_is_uhbr(pipe_config);
 
 	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] SDP split enable: %s\n",
@@ -2093,7 +2092,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 		pipe_config->has_pch_encoder = true;
 
 	pipe_config->has_audio =
-		intel_dp_has_audio(encoder, pipe_config, conn_state) &&
+		intel_dp_has_audio(encoder, conn_state) &&
 		intel_audio_compute_config(encoder, pipe_config, conn_state);
 
 	fixed_mode = intel_panel_fixed_mode(connector, adjusted_mode);
-- 
2.39.2

