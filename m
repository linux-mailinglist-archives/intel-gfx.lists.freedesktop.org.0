Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 049156EE0AF
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Apr 2023 12:55:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EC7B10E724;
	Tue, 25 Apr 2023 10:55:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18B2810E70F
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Apr 2023 10:55:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682420120; x=1713956120;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=58qMP1lNuWLQEmLm6A8LWE9nlg3dlScRp6IBu8LwfRQ=;
 b=WU2KrhJt/Yrc7PLomZA0c/7Aa12j3Ww35tCN/ttHsN7KZthI5Pgev3c9
 N52QRyB57pjlkNuGsXraO5lAI6erI+qqDBq8ZiVlo7pBImc8G66WmXKwi
 qVag/eTkoS6akc1HaI8uY+acWR2zdfU1JjXndOpyJ5HXt2z3pilr7e1vS
 BzBxSxtao0g7NhWIBZTC3OPycYM0hkxTZHNbcN2CWxGhb1/ZnnQ7k3aY5
 ZVyd6fdbGe0JgU17X7njH4ILiG9qvXMYsV3k7E1s3TcTuP5Y4Em5wK97w
 /rkt6gM4Gi/lvPVs+WpnuqOlSn+g3jz4RD5bK0Oa4MtvouFAUjoxpdP1F Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="412019646"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="412019646"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 03:55:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="687367451"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="687367451"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 25 Apr 2023 03:55:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 25 Apr 2023 13:55:17 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Apr 2023 13:54:45 +0300
Message-Id: <20230425105450.18441-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230425105450.18441-1-ville.syrjala@linux.intel.com>
References: <20230425105450.18441-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/14] drm/i915/dsi: Move most things from
 .enable() into .post_disable()
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

encoder->disable() is supposed to happen before the pipe/transcoder
gets disabled. The icl+ DSI code screwed that up and put most things
(including the transcoder disable itself) into  encoder->disable().
Follow the common rules and hoist most things into the
encoder->post_disable() hook.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 600199d51d69..0e2ed4776766 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1395,11 +1395,20 @@ static void gen11_dsi_disable(struct intel_atomic_state *state,
 			      const struct drm_connector_state *old_conn_state)
 {
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
-	struct intel_crtc *crtc = to_intel_crtc(old_conn_state->crtc);
 
 	/* step1: turn off backlight */
 	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_BACKLIGHT_OFF);
 	intel_backlight_disable(old_conn_state);
+}
+
+static void gen11_dsi_post_disable(struct intel_atomic_state *state,
+				   struct intel_encoder *encoder,
+				   const struct intel_crtc_state *old_crtc_state,
+				   const struct drm_connector_state *old_conn_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(old_conn_state->crtc);
+
+	intel_crtc_vblank_off(old_crtc_state);
 
 	/* step2d,e: disable transcoder and wait */
 	gen11_dsi_disable_transcoder(encoder);
@@ -1420,14 +1429,6 @@ static void gen11_dsi_disable(struct intel_atomic_state *state,
 
 	/* step4: disable IO power */
 	gen11_dsi_disable_io_power(encoder);
-}
-
-static void gen11_dsi_post_disable(struct intel_atomic_state *state,
-				   struct intel_encoder *encoder,
-				   const struct intel_crtc_state *old_crtc_state,
-				   const struct drm_connector_state *old_conn_state)
-{
-	intel_crtc_vblank_off(old_crtc_state);
 
 	intel_dsc_disable(old_crtc_state);
 
-- 
2.39.2

