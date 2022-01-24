Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE56498CA9
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jan 2022 20:26:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C55310EA4C;
	Mon, 24 Jan 2022 19:26:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E5C610EA4C
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jan 2022 19:26:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643052414; x=1674588414;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=reqt1pYIQrNbVbNlX2T0nqsaiSQtaNsUVCbjqFobgYw=;
 b=fgUWS0R2is6qGYie4fHZ2XoP4o2ezSLw+p4OzxCr8yuAs7Op3pTAL3Y0
 ojJmCGuOjXgKJY3r2EeOoBzGEdg9pXCuhRqyt+CFI+bBKedfZnzfswlUh
 ihyduSiZe2KtTba4nWIXRG3lc4qETQyKoDdFjHNDUpvyu9odWAu/ivh9g
 GLjMKd2DE53xHTJLu3Rsji9r/cTx6rlm/CIaZLDQaUeN8gSi3jOynRHad
 a/UY3CyKQBnSQMd7rhXjIYCOjKvxpSGDkezHLr0qzlurB/76VudQEUKzi
 yfHltuqKu4N2NcLpSD4kRqKaJ4lfj01NEHV3brUR6zTFKbtx9fiNnCQgZ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10237"; a="246348059"
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="246348059"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 11:26:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="479202357"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga006.jf.intel.com with SMTP; 24 Jan 2022 11:26:51 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Jan 2022 21:26:50 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Jan 2022 21:26:38 +0200
Message-Id: <20220124192638.26262-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220124192638.26262-1-ville.syrjala@linux.intel.com>
References: <20220124192638.26262-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/5] drm/i915: Move dsc/joiner enable into
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Lift the dsc/joiner enable up from the wonky places where it
currently sits (ddi .pre_enable() or icl_ddi_bigjoiner_pre_enable())
into hsw_crtc_enable() where we write the other per-pipe stuff
as well. Makes the transcoder vs. pipe split less confusing.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     |  6 ------
 drivers/gpu/drm/i915/display/intel_display.c | 12 +++++-------
 2 files changed, 5 insertions(+), 13 deletions(-)

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

