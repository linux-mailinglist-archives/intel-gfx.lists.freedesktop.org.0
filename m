Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13E2E7B844A
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 17:56:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AABA010E131;
	Wed,  4 Oct 2023 15:56:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78B6110E131
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 15:56:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696434976; x=1727970976;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=jmVHo9Wxeu7pdhqFZqMSvX0Cci9RZA0cLNC856nBCWA=;
 b=e1yn1gRWpblnQXkciHKwLd4y6ekRaVEAqd0q+j+PP3mC7CnK0ZZtLaWF
 /UuAYj7X/Sh3wLHFPhPoBow9MhtQyvCSDaKV8ihdCT2r/Hb9LUNUIOzrt
 sTiQP6uByfL+z6LaxTVRUo5nY/98rFxTs+rEnqn+vCluTlahqfnJFj2Iq
 fdJ6eplu+Z8XTYdt5OmHQC2T7QskXudcdYJC39TPANkBYCXoB7/k9047U
 nNu/TwJiQ9Ye6gxgryLt0dN8NduKtQsTNKyzO/LbR+iNTns9u3Wvw3w4p
 mV5jLoK0ESn1QuHEdRqdVWgM9gmcbMkWhFl6WIaqPKc9sahPveE9dpie1 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="363483772"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="363483772"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 08:56:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="867440890"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="867440890"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga002.fm.intel.com with SMTP; 04 Oct 2023 08:56:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 Oct 2023 18:56:13 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Oct 2023 18:55:57 +0300
Message-ID: <20231004155607.7719-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231004155607.7719-1-ville.syrjala@linux.intel.com>
References: <20231004155607.7719-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/12] drm/i915: Stop clobbering old crtc state
 during state check
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

The state checker overwrites the old crtc state with the
current hardware state. While that does save a kmalloc() it seems
rather dubious as there might still be something that we need
in the old crtc state.

Stop doing that and just allocate a temporary state for the state
checker. Should the extra malloc during the commit phase turn out
too annoying we could of course preallocate one for each crtc, but
let's proceed with the straightforward approch for now.

And while at it let's mark the new crtc state as const to make
sure the state checker doesn't mess it up.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_modeset_verify.c   | 21 +++++++++----------
 1 file changed, 10 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
index 138144a65a45..92b55b4fb74e 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
@@ -156,21 +156,20 @@ verify_encoder_state(struct drm_i915_private *dev_priv, struct intel_atomic_stat
 }
 
 static void
-verify_crtc_state(struct intel_crtc *crtc,
-		  struct intel_crtc_state *old_crtc_state,
-		  struct intel_crtc_state *new_crtc_state)
+verify_crtc_state(struct intel_atomic_state *state,
+		  struct intel_crtc *crtc)
 {
 	struct drm_device *dev = crtc->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct intel_encoder *encoder;
-	struct intel_crtc_state *pipe_config = old_crtc_state;
-	struct drm_atomic_state *state = old_crtc_state->uapi.state;
+	const struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	struct intel_crtc_state *pipe_config;
 	struct intel_crtc *master_crtc;
+	struct intel_encoder *encoder;
 
-	__drm_atomic_helper_crtc_destroy_state(&old_crtc_state->uapi);
-	intel_crtc_free_hw_state(old_crtc_state);
-	intel_crtc_state_reset(old_crtc_state, crtc);
-	old_crtc_state->uapi.state = state;
+	pipe_config = intel_crtc_state_alloc(crtc);
+	if (!pipe_config)
+		return;
 
 	drm_dbg_kms(&dev_priv->drm, "[CRTC:%d:%s]\n", crtc->base.base.id,
 		    crtc->base.name);
@@ -236,7 +235,7 @@ void intel_modeset_verify_crtc(struct intel_crtc *crtc,
 
 	intel_wm_state_verify(crtc, new_crtc_state);
 	verify_connector_state(state, crtc);
-	verify_crtc_state(crtc, old_crtc_state, new_crtc_state);
+	verify_crtc_state(state, crtc);
 	intel_shared_dpll_state_verify(crtc, old_crtc_state, new_crtc_state);
 	intel_mpllb_state_verify(state, new_crtc_state);
 	intel_c10pll_state_verify(state, new_crtc_state);
-- 
2.41.0

