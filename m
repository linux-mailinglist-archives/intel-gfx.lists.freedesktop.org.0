Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AD7A72897E
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 22:31:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E317010E61E;
	Thu,  8 Jun 2023 20:31:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B57C10E61B
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 20:31:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686256299; x=1717792299;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=l8SXM4Xm/3IaVbj2IjmPdQagg4sVFeHvMoFuuYmiv2E=;
 b=J9i9M10Aa9HC8z3bXjOULRJ6KRKwBDwu0a594SoUJY+80TyE2gR5P60a
 IuBxfohDw8IZY8y5/v7W6ugZxYvtHq5vVSzsZJFd9k8SM1sOvNlm2R4ZZ
 PU1zbtXGeOBJBxTjXrbTIpvU4LcRofQfVuBQ6HAEs/C9FaDTsHPl4Lrin
 A1WyKg5KWpgeOry5oRlUIksUruGTXfpaoSrYaNbd1oCwrO3sFDhq4sTn6
 JTubuOyj2V0ITega1qYLVpLT8PHeaRrqBxqftoCMz55szb/jj4XQLd66S
 DEOKhI1JWfOictcmUyxKD4ddAn4kUnKwpI2ZxgIUkGBVzk+KOoHS0KVUn g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="421012715"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="421012715"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 13:31:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="710100803"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="710100803"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 08 Jun 2023 13:31:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 08 Jun 2023 23:31:22 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Jun 2023 23:30:52 +0300
Message-Id: <20230608203057.23759-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230608203057.23759-1-ville.syrjala@linux.intel.com>
References: <20230608203057.23759-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 08/13] drm/i915/dsi: Move most things from
 .disable() into .post_disable() on icl+
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

encoder->disable() is supposed to happen before the pipe/transcoder
gets disabled. The icl+ DSI code screwed that up and put most things
(including the transcoder disable itself) into  encoder->disable().
Follow the common rules and hoist most things into the
encoder->post_disable() hook.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 780a004fe700..a33721bac5ae 100644
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
2.39.3

