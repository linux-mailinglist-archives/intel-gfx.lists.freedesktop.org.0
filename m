Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEEB649F775
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 11:38:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AA9810EF40;
	Fri, 28 Jan 2022 10:38:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A570510EF71
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 10:38:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643366322; x=1674902322;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=AqzNGNMpErbwO9rduWTan7j6K7FjnEamunhVQSxziKk=;
 b=EVjseD1ZUzEeWkQe/VcEIOwhpAw3fRHGbOmRBck8mYBAf7Xdy++XhU/X
 yeC+xUmzxAMj0dwHsDrajV4nHUInDyhi1ygx3dDZAyzmHkiJImtK1tgIg
 mZ7kxntsCu8/FgDGi4o3+YEm95SFwWmI87FkrxZhgzq2WO/0x+voa/sri
 OdSHY9+wZZi6h1Kiuj+f/IblkkCZ8mQnM/45p+ywXDelGsPlwl6TzAajd
 A4TMTDNGmv1Ah3JKhtNDRfz8FrWzNf4C27nrEegdklY5RAml/bbueYGY1
 DZ+7WHVzvhjQn63UwOcFVVTs5z2KnKkNTadtQIetB6bjymjaMqBUjiATz w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="227767901"
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="227767901"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 02:38:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="533467703"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by fmsmga007.fm.intel.com with SMTP; 28 Jan 2022 02:38:39 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 28 Jan 2022 12:38:39 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jan 2022 12:37:54 +0200
Message-Id: <20220128103757.22461-15-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220128103757.22461-1-ville.syrjala@linux.intel.com>
References: <20220128103757.22461-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 14/17] drm/i915: Program pch transcoder m2/n2
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

Program the PCH transcoder M2/N2 values appropriately. We're
still missing a few things for PCH port DRRS but at least this
means we can do readout/state check for dp_m2_n2 unconditionally.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c         |  3 +-
 .../gpu/drm/i915/display/intel_pch_display.c  | 36 +++++++++++++++----
 .../gpu/drm/i915/display/intel_pch_display.h  |  6 ++--
 3 files changed, 36 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 34c7640386b8..f67bbaaad8e0 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -339,7 +339,8 @@ static void g4x_dp_get_m_n(struct intel_crtc_state *crtc_state)
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
 	if (crtc_state->has_pch_encoder) {
-		intel_pch_transcoder_get_m_n(crtc, &crtc_state->dp_m_n);
+		intel_pch_transcoder_get_m1_n1(crtc, &crtc_state->dp_m_n);
+		intel_pch_transcoder_get_m2_n2(crtc, &crtc_state->dp_m2_n2);
 	} else {
 		intel_cpu_transcoder_get_m1_n1(crtc, crtc_state->cpu_transcoder,
 					       &crtc_state->dp_m_n);
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index 3bd96411f306..9192769e3337 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -88,8 +88,8 @@ static void assert_pch_transcoder_disabled(struct drm_i915_private *dev_priv,
 			pipe_name(pipe));
 }
 
-static void intel_pch_transcoder_set_m_n(struct intel_crtc *crtc,
-					 const struct intel_link_m_n *m_n)
+static void intel_pch_transcoder_set_m1_n1(struct intel_crtc *crtc,
+					   const struct intel_link_m_n *m_n)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
@@ -99,8 +99,19 @@ static void intel_pch_transcoder_set_m_n(struct intel_crtc *crtc,
 		      PCH_TRANS_LINK_M1(pipe), PCH_TRANS_LINK_N1(pipe));
 }
 
-void intel_pch_transcoder_get_m_n(struct intel_crtc *crtc,
-				  struct intel_link_m_n *m_n)
+static void intel_pch_transcoder_set_m2_n2(struct intel_crtc *crtc,
+					   const struct intel_link_m_n *m_n)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	enum pipe pipe = crtc->pipe;
+
+	intel_set_m_n(dev_priv, m_n,
+		      PCH_TRANS_DATA_M2(pipe), PCH_TRANS_DATA_N2(pipe),
+		      PCH_TRANS_LINK_M2(pipe), PCH_TRANS_LINK_N2(pipe));
+}
+
+void intel_pch_transcoder_get_m1_n1(struct intel_crtc *crtc,
+				    struct intel_link_m_n *m_n)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
@@ -110,6 +121,17 @@ void intel_pch_transcoder_get_m_n(struct intel_crtc *crtc,
 		      PCH_TRANS_LINK_M1(pipe), PCH_TRANS_LINK_N1(pipe));
 }
 
+void intel_pch_transcoder_get_m2_n2(struct intel_crtc *crtc,
+				    struct intel_link_m_n *m_n)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	enum pipe pipe = crtc->pipe;
+
+	intel_get_m_n(dev_priv, m_n,
+		      PCH_TRANS_DATA_M2(pipe), PCH_TRANS_DATA_N2(pipe),
+		      PCH_TRANS_LINK_M2(pipe), PCH_TRANS_LINK_N2(pipe));
+}
+
 static void ilk_pch_transcoder_set_timings(const struct intel_crtc_state *crtc_state,
 					   enum pipe pch_transcoder)
 {
@@ -300,8 +322,10 @@ void ilk_pch_enable(struct intel_atomic_state *state,
 
 	/* set transcoder timing, panel must allow it */
 	assert_pps_unlocked(dev_priv, pipe);
-	if (intel_crtc_has_dp_encoder(crtc_state))
-		intel_pch_transcoder_set_m_n(crtc, &crtc_state->dp_m_n);
+	if (intel_crtc_has_dp_encoder(crtc_state)) {
+		intel_pch_transcoder_set_m1_n1(crtc, &crtc_state->dp_m_n);
+		intel_pch_transcoder_set_m2_n2(crtc, &crtc_state->dp_m2_n2);
+	}
 	ilk_pch_transcoder_set_timings(crtc_state, pipe);
 
 	intel_fdi_normal_train(crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.h b/drivers/gpu/drm/i915/display/intel_pch_display.h
index 9a317b361a96..749473d99320 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.h
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.h
@@ -27,7 +27,9 @@ void lpt_pch_disable(struct intel_atomic_state *state,
 		     struct intel_crtc *crtc);
 void lpt_pch_get_config(struct intel_crtc_state *crtc_state);
 
-void intel_pch_transcoder_get_m_n(struct intel_crtc *crtc,
-				  struct intel_link_m_n *m_n);
+void intel_pch_transcoder_get_m1_n1(struct intel_crtc *crtc,
+				    struct intel_link_m_n *m_n);
+void intel_pch_transcoder_get_m2_n2(struct intel_crtc *crtc,
+				    struct intel_link_m_n *m_n);
 
 #endif
-- 
2.34.1

