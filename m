Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B65C549AC7E
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jan 2022 07:39:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F23A10EC50;
	Tue, 25 Jan 2022 06:39:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 730DB10EC4E
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jan 2022 06:39:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643092781; x=1674628781;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0Tj8FG29jM1VNCuv89GAITIe3wYaYO/b7JtZ1HpLsKs=;
 b=Xc25X4lBJq/yP1UtacWzalDkQTVwKl4ZqwgnvOyf3LwS2gSe+xXE2ZND
 KtX4OX4yaV18y+zlLeOR3y/qt4Vxy3Rj9C5M8voQ7ibSVwkRmgyTccMls
 HocIkdfi0bI7f/l7sLl20d9yg9XP0fdo8OMVAdZIisTZXpNW9woLdHPTA
 Z7Dy3Q+mjyXRTKxo/dJAfI1bu8TiRsEykK/pXt3zFhrUIIk45wDZEpT+4
 QdwNvcXjha4Ot3620P+ywi7ev5LN5+QTmrUMrQxNdY6zwhyjeEjt3XX4V
 Sb077E715qIq5UJpUhF2/rjlBd87K91/c1mC4WVPXp/MhN/HPfeR+7ugC g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10237"; a="332588517"
X-IronPort-AV: E=Sophos;i="5.88,314,1635231600"; d="scan'208";a="332588517"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 22:39:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,314,1635231600"; d="scan'208";a="479381041"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga006.jf.intel.com with SMTP; 24 Jan 2022 22:39:38 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 25 Jan 2022 08:39:37 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Jan 2022 08:39:37 +0200
Message-Id: <20220125063937.7003-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220124192638.26262-5-ville.syrjala@linux.intel.com>
References: <20220124192638.26262-5-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 5/5] drm/i915: Move dsc/joiner enable into
 hsw_crtc_enable()
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

Lift the dsc/joiner enable up from the wonky places where it
currently sits (ddi .pre_enable() or icl_ddi_bigjoiner_pre_enable())
into hsw_crtc_enable() where we write the other per-pipe stuff
as well. Makes the transcoder vs. pipe split less confusing.

For DSI this results in slight reordering between the dsc/joiner
enable vs. transcoder timings setup, but I can't really think
why that should cause any issues since the transcoder isn't yet
enabled at that point.

v2: Take care of dsi (Jani)

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c       |  2 --
 drivers/gpu/drm/i915/display/intel_ddi.c     |  6 ------
 drivers/gpu/drm/i915/display/intel_display.c | 12 +++++-------
 3 files changed, 5 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 95f49535fa6e..16a611f7d659 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1233,8 +1233,6 @@ static void gen11_dsi_pre_enable(struct intel_atomic_state *state,
 
 	intel_dsc_dsi_pps_write(encoder, pipe_config);
 
-	intel_dsc_enable(pipe_config);
-
 	/* step6c: configure transcoder timings */
 	gen11_dsi_set_transcoder_timings(encoder, pipe_config);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 2f20abc5122d..5d1f7d6218c5 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2425,9 +2425,6 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	intel_ddi_enable_fec(encoder, crtc_state);
 
 	intel_dsc_dp_pps_write(encoder, crtc_state);
-
-	if (!crtc_state->bigjoiner)
-		intel_dsc_enable(crtc_state);
 }
 
 static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
@@ -2493,9 +2490,6 @@ static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
 		intel_ddi_enable_pipe_clock(encoder, crtc_state);
 
 	intel_dsc_dp_pps_write(encoder, crtc_state);
-
-	if (!crtc_state->bigjoiner)
-		intel_dsc_enable(crtc_state);
 }
 
 static void intel_ddi_pre_enable_dp(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d2906434ab3f..13b1de03640d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1974,7 +1974,6 @@ static void hsw_set_frame_start_delay(const struct intel_crtc_state *crtc_state)
 static void icl_ddi_bigjoiner_pre_enable(struct intel_atomic_state *state,
 					 const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_crtc_state *master_crtc_state;
 	struct intel_crtc *master_crtc;
 	struct drm_connector_state *conn_state;
@@ -2004,12 +2003,6 @@ static void icl_ddi_bigjoiner_pre_enable(struct intel_atomic_state *state,
 
 	if (crtc_state->bigjoiner_slave)
 		intel_encoders_pre_enable(state, master_crtc);
-
-	/* need to enable VDSC, which we skipped in pre-enable */
-	intel_dsc_enable(crtc_state);
-
-	if (DISPLAY_VER(dev_priv) >= 13)
-		intel_uncompressed_joiner_enable(crtc_state);
 }
 
 static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_state)
@@ -2057,6 +2050,11 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 		icl_ddi_bigjoiner_pre_enable(state, new_crtc_state);
 	}
 
+	intel_dsc_enable(new_crtc_state);
+
+	if (DISPLAY_VER(dev_priv) >= 13)
+		intel_uncompressed_joiner_enable(new_crtc_state);
+
 	intel_set_pipe_src_size(new_crtc_state);
 	if (DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
 		bdw_set_pipemisc(new_crtc_state);
-- 
2.34.1

