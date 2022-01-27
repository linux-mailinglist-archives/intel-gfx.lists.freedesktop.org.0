Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D46F549DE03
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 10:33:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5043A10E64C;
	Thu, 27 Jan 2022 09:33:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CB2F10EDA8
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 09:33:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643275990; x=1674811990;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=JXOIoNBHXovbb9jLDyhRPpH8omH2PpHIoHHwWuH5qfw=;
 b=Ayw9kjw6eTrrorLqKQGhcJaL1YLfr6UVLGhno75+C2QlsaQawgBMwI0y
 oe74iq3WCj0M3rd7rcMGCArBXilh+KIhfeKlhK96pQe0ieTOTVTuwCWlb
 21bW8T7v1PHqoFQfOuja6x/9Uk+blErO13xVfW4tljTO4JD6LP6//+mci
 cYLFsg7rUOgwou1l9vqWXWkDe1F9Z87Nu/5Z+eDYjirCopqI2lgbmf4rY
 YANcj+CUwfbkZ0erv078Ne7glnhXT7EaHaJEAvf4k2locRq0FdoUBwXvM
 PfkhHJQsnPId8lMoeH6wur2uHS8jzIUir1+TB2rSzSLW7p8YBi/vgVyqa w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="310113644"
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="310113644"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 01:33:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="521154806"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga007.jf.intel.com with SMTP; 27 Jan 2022 01:33:07 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 27 Jan 2022 11:33:06 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jan 2022 11:32:50 +0200
Message-Id: <20220127093303.17309-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220127093303.17309-1-ville.syrjala@linux.intel.com>
References: <20220127093303.17309-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/14] drm/i915: Extract intel_{get,set}_m_n()
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

Make the M/N setup/readout a bit less repitive by extracting
a few small helpers.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 109 ++++++++-----------
 1 file changed, 47 insertions(+), 62 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 91add3d85151..f76faa195cb9 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3113,6 +3113,17 @@ static void intel_panel_sanitize_ssc(struct drm_i915_private *dev_priv)
 	}
 }
 
+static void intel_set_m_n(struct drm_i915_private *i915,
+			  const struct intel_link_m_n *m_n,
+			  i915_reg_t data_m_reg, i915_reg_t data_n_reg,
+			  i915_reg_t link_m_reg, i915_reg_t link_n_reg)
+{
+	intel_de_write(i915, data_m_reg, TU_SIZE(m_n->tu) | m_n->gmch_m);
+	intel_de_write(i915, data_n_reg, m_n->gmch_n);
+	intel_de_write(i915, link_m_reg, m_n->link_m);
+	intel_de_write(i915, link_n_reg, m_n->link_n);
+}
+
 static void intel_pch_transcoder_set_m_n(const struct intel_crtc_state *crtc_state,
 					 const struct intel_link_m_n *m_n)
 {
@@ -3120,11 +3131,9 @@ static void intel_pch_transcoder_set_m_n(const struct intel_crtc_state *crtc_sta
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 
-	intel_de_write(dev_priv, PCH_TRANS_DATA_M1(pipe),
-		       TU_SIZE(m_n->tu) | m_n->gmch_m);
-	intel_de_write(dev_priv, PCH_TRANS_DATA_N1(pipe), m_n->gmch_n);
-	intel_de_write(dev_priv, PCH_TRANS_LINK_M1(pipe), m_n->link_m);
-	intel_de_write(dev_priv, PCH_TRANS_LINK_N1(pipe), m_n->link_n);
+	intel_set_m_n(dev_priv, m_n,
+		      PCH_TRANS_DATA_M1(pipe), PCH_TRANS_DATA_N1(pipe),
+		      PCH_TRANS_LINK_M1(pipe), PCH_TRANS_LINK_N1(pipe));
 }
 
 static bool transcoder_has_m2_n2(struct drm_i915_private *dev_priv,
@@ -3150,35 +3159,23 @@ static void intel_cpu_transcoder_set_m_n(const struct intel_crtc_state *crtc_sta
 	enum transcoder transcoder = crtc_state->cpu_transcoder;
 
 	if (DISPLAY_VER(dev_priv) >= 5) {
-		intel_de_write(dev_priv, PIPE_DATA_M1(transcoder),
-			       TU_SIZE(m_n->tu) | m_n->gmch_m);
-		intel_de_write(dev_priv, PIPE_DATA_N1(transcoder),
-			       m_n->gmch_n);
-		intel_de_write(dev_priv, PIPE_LINK_M1(transcoder),
-			       m_n->link_m);
-		intel_de_write(dev_priv, PIPE_LINK_N1(transcoder),
-			       m_n->link_n);
+		intel_set_m_n(dev_priv, m_n,
+			      PIPE_DATA_M1(transcoder), PIPE_DATA_N1(transcoder),
+			      PIPE_LINK_M1(transcoder), PIPE_LINK_N1(transcoder));
 		/*
 		 *  M2_N2 registers are set only if DRRS is supported
 		 * (to make sure the registers are not unnecessarily accessed).
 		 */
 		if (m2_n2 && crtc_state->has_drrs &&
 		    transcoder_has_m2_n2(dev_priv, transcoder)) {
-			intel_de_write(dev_priv, PIPE_DATA_M2(transcoder),
-				       TU_SIZE(m2_n2->tu) | m2_n2->gmch_m);
-			intel_de_write(dev_priv, PIPE_DATA_N2(transcoder),
-				       m2_n2->gmch_n);
-			intel_de_write(dev_priv, PIPE_LINK_M2(transcoder),
-				       m2_n2->link_m);
-			intel_de_write(dev_priv, PIPE_LINK_N2(transcoder),
-				       m2_n2->link_n);
+			intel_set_m_n(dev_priv, m2_n2,
+				      PIPE_DATA_M2(transcoder), PIPE_DATA_N2(transcoder),
+				      PIPE_LINK_M2(transcoder), PIPE_LINK_N2(transcoder));
 		}
 	} else {
-		intel_de_write(dev_priv, PIPE_DATA_M_G4X(pipe),
-			       TU_SIZE(m_n->tu) | m_n->gmch_m);
-		intel_de_write(dev_priv, PIPE_DATA_N_G4X(pipe), m_n->gmch_n);
-		intel_de_write(dev_priv, PIPE_LINK_M_G4X(pipe), m_n->link_m);
-		intel_de_write(dev_priv, PIPE_LINK_N_G4X(pipe), m_n->link_n);
+		intel_set_m_n(dev_priv, m_n,
+			      PIPE_DATA_M_G4X(pipe), PIPE_DATA_N_G4X(pipe),
+			      PIPE_LINK_M_G4X(pipe), PIPE_LINK_N_G4X(pipe));
 	}
 }
 
@@ -3863,6 +3860,18 @@ int ilk_get_lanes_required(int target_clock, int link_bw, int bpp)
 	return DIV_ROUND_UP(bps, link_bw * 8);
 }
 
+static void intel_get_m_n(struct drm_i915_private *i915,
+			  struct intel_link_m_n *m_n,
+			  i915_reg_t data_m_reg, i915_reg_t data_n_reg,
+			  i915_reg_t link_m_reg, i915_reg_t link_n_reg)
+{
+	m_n->link_m = intel_de_read(i915, link_m_reg);
+	m_n->link_n = intel_de_read(i915, link_n_reg);
+	m_n->gmch_m = intel_de_read(i915, data_m_reg) & ~TU_SIZE_MASK;
+	m_n->gmch_n = intel_de_read(i915, data_n_reg);
+	m_n->tu = ((intel_de_read(i915, data_m_reg) & TU_SIZE_MASK) >> TU_SIZE_SHIFT) + 1;
+}
+
 static void intel_pch_transcoder_get_m_n(struct intel_crtc *crtc,
 					 struct intel_link_m_n *m_n)
 {
@@ -3870,13 +3879,9 @@ static void intel_pch_transcoder_get_m_n(struct intel_crtc *crtc,
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	enum pipe pipe = crtc->pipe;
 
-	m_n->link_m = intel_de_read(dev_priv, PCH_TRANS_LINK_M1(pipe));
-	m_n->link_n = intel_de_read(dev_priv, PCH_TRANS_LINK_N1(pipe));
-	m_n->gmch_m = intel_de_read(dev_priv, PCH_TRANS_DATA_M1(pipe))
-		& ~TU_SIZE_MASK;
-	m_n->gmch_n = intel_de_read(dev_priv, PCH_TRANS_DATA_N1(pipe));
-	m_n->tu = ((intel_de_read(dev_priv, PCH_TRANS_DATA_M1(pipe))
-		    & TU_SIZE_MASK) >> TU_SIZE_SHIFT) + 1;
+	intel_get_m_n(dev_priv, m_n,
+		      PCH_TRANS_DATA_M1(pipe), PCH_TRANS_DATA_N1(pipe),
+		      PCH_TRANS_LINK_M1(pipe), PCH_TRANS_LINK_N1(pipe));
 }
 
 static void intel_cpu_transcoder_get_m_n(struct intel_crtc *crtc,
@@ -3888,39 +3893,19 @@ static void intel_cpu_transcoder_get_m_n(struct intel_crtc *crtc,
 	enum pipe pipe = crtc->pipe;
 
 	if (DISPLAY_VER(dev_priv) >= 5) {
-		m_n->link_m = intel_de_read(dev_priv,
-					    PIPE_LINK_M1(transcoder));
-		m_n->link_n = intel_de_read(dev_priv,
-					    PIPE_LINK_N1(transcoder));
-		m_n->gmch_m = intel_de_read(dev_priv,
-					    PIPE_DATA_M1(transcoder))
-			& ~TU_SIZE_MASK;
-		m_n->gmch_n = intel_de_read(dev_priv,
-					    PIPE_DATA_N1(transcoder));
-		m_n->tu = ((intel_de_read(dev_priv, PIPE_DATA_M1(transcoder))
-			    & TU_SIZE_MASK) >> TU_SIZE_SHIFT) + 1;
+		intel_get_m_n(dev_priv, m_n,
+			      PIPE_DATA_M1(transcoder), PIPE_DATA_N1(transcoder),
+			      PIPE_LINK_M1(transcoder), PIPE_LINK_N1(transcoder));
 
 		if (m2_n2 && transcoder_has_m2_n2(dev_priv, transcoder)) {
-			m2_n2->link_m = intel_de_read(dev_priv,
-						      PIPE_LINK_M2(transcoder));
-			m2_n2->link_n =	intel_de_read(dev_priv,
-							     PIPE_LINK_N2(transcoder));
-			m2_n2->gmch_m =	intel_de_read(dev_priv,
-							     PIPE_DATA_M2(transcoder))
-					& ~TU_SIZE_MASK;
-			m2_n2->gmch_n =	intel_de_read(dev_priv,
-							     PIPE_DATA_N2(transcoder));
-			m2_n2->tu = ((intel_de_read(dev_priv, PIPE_DATA_M2(transcoder))
-					& TU_SIZE_MASK) >> TU_SIZE_SHIFT) + 1;
+			intel_get_m_n(dev_priv, m2_n2,
+				      PIPE_DATA_M2(transcoder), PIPE_DATA_N2(transcoder),
+				      PIPE_LINK_M2(transcoder), PIPE_LINK_N2(transcoder));
 		}
 	} else {
-		m_n->link_m = intel_de_read(dev_priv, PIPE_LINK_M_G4X(pipe));
-		m_n->link_n = intel_de_read(dev_priv, PIPE_LINK_N_G4X(pipe));
-		m_n->gmch_m = intel_de_read(dev_priv, PIPE_DATA_M_G4X(pipe))
-			& ~TU_SIZE_MASK;
-		m_n->gmch_n = intel_de_read(dev_priv, PIPE_DATA_N_G4X(pipe));
-		m_n->tu = ((intel_de_read(dev_priv, PIPE_DATA_M_G4X(pipe))
-			    & TU_SIZE_MASK) >> TU_SIZE_SHIFT) + 1;
+		intel_get_m_n(dev_priv, m_n,
+			      PIPE_DATA_M_G4X(pipe), PIPE_DATA_N_G4X(pipe),
+			      PIPE_LINK_M_G4X(pipe), PIPE_LINK_N_G4X(pipe));
 	}
 }
 
-- 
2.34.1

