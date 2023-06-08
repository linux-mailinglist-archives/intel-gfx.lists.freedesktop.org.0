Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 977F9728985
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 22:32:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8426B10E61C;
	Thu,  8 Jun 2023 20:32:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7065110E613
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 20:32:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686256326; x=1717792326;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cuFpffJNWG81EVVA4HnLpVGcZ27WDX1OE6qPDF78NmI=;
 b=RGvLmbUuobo75l7IjpFPdN86bL7Ch2B0nSx1jDnZctzYB24i8RescKJI
 du9hqTu28+C4kGTajBq25GWfYIM6rUXxAYDLLHvBD82CyZANKs+Hr+DMa
 amIRduaqu9OFjjapl1yx4tGRerjTPvVi0+C9KkMiI6y03G9z4kYZdZey5
 pzte54EEH6yHEytgwiqpbpiS8WLyPAtHRPI5YzKTrYuYpV1PdELCXBSbW
 A20CXUl8obfY/qw15ju4WqoHDpVyV1XUMdKBKYBM/rvfUUVSoGvTNBcy4
 +ajJg6YfyIISF5xVucwaYnFDL64zjsqsf1krdrm5cey/u23cu7w8LGaRy g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="421012764"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="421012764"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 13:31:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="710100893"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="710100893"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 08 Jun 2023 13:31:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 08 Jun 2023 23:31:35 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Jun 2023 23:30:56 +0300
Message-Id: <20230608203057.23759-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230608203057.23759-1-ville.syrjala@linux.intel.com>
References: <20230608203057.23759-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 12/13] drm/i915/dsi: Grab the crtc from the
 customary place
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

The encoder hooks already get passed the crtc state so just
grab the crtc from there instead of from the connector state.
This is generally what everyone else does, so no reason for
icl_dsi.c to be different.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index c4638c6b583e..c040cd226a41 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1243,7 +1243,7 @@ static void gen11_dsi_enable(struct intel_atomic_state *state,
 			     const struct drm_connector_state *conn_state)
 {
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
-	struct intel_crtc *crtc = to_intel_crtc(conn_state->crtc);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
 	drm_WARN_ON(state->base.dev, crtc_state->has_pch_encoder);
 
@@ -1403,7 +1403,7 @@ static void gen11_dsi_post_disable(struct intel_atomic_state *state,
 				   const struct drm_connector_state *old_conn_state)
 {
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
-	struct intel_crtc *crtc = to_intel_crtc(old_conn_state->crtc);
+	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
 
 	intel_crtc_vblank_off(old_crtc_state);
 
-- 
2.39.3

