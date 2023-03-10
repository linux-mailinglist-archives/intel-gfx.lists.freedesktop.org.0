Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C49506B5617
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Mar 2023 00:58:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7594F10EA2F;
	Fri, 10 Mar 2023 23:58:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E47110EA2F
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Mar 2023 23:58:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678492715; x=1710028715;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=S9k8kr9jztqJmDNl5OhKIyygY209BuGmsxA6d/HBcys=;
 b=iVJ0yhrf2OeIxvTFLvqJ3Nlqh7jcPpg3pgWQFP+SKuGHHXFnvxtMIWnv
 r0mpNJieUvfRwtMKJx+LAQnLKuT6yrIY7QntwxOyoqWj0dS2qKmLr/Bhe
 yKxNSq4GBNiUo7YV11svRSmivv1Z6zlSv9bgAQBOXnWuMXWYOyBSdnWzi
 pZRfmvxAEEkxow0Tv47KDIj/hrnJITt7GFb2qd6gUqH10ChJY6ZBQ7ot7
 eStRSz4nLcJWkKbcWLi+zUYGEaopueL0UoJGGy8kKvULdsTGOezYBWz1/
 s/HrNLSWCLziiWU0vnPGeoi3/uoGyEfIKPoV4CkaJg9viWv3HoCMsZQhU Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10645"; a="399453132"
X-IronPort-AV: E=Sophos;i="5.98,251,1673942400"; d="scan'208";a="399453132"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 15:58:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10645"; a="710469158"
X-IronPort-AV: E=Sophos;i="5.98,251,1673942400"; d="scan'208";a="710469158"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga001.jf.intel.com with SMTP; 10 Mar 2023 15:58:33 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 11 Mar 2023 01:58:32 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 11 Mar 2023 01:58:26 +0200
Message-Id: <20230310235828.17439-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230310235828.17439-1-ville.syrjala@linux.intel.com>
References: <20230310235828.17439-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/4] drm/i915: Add belts and suspenders
 locking for seamless M/N changes
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

Add some (probably overkill) locking to protect the vblank
timestamping constants updates during seamless M/N fastsets.

As everything should be naturally aligned I think the individual
pieces should probably end up updating atomically enough. So this
is only really meant to guarantee everyone sees a consistent whole.

All the drm_vblank.c usage is covered by vblank_time_lock,
and uncore.lock will take care of __intel_get_crtc_scanline()
that can also be called from outside the core vblank functionality.

Currently only crtc_clock and framedur_ns can change, but in
the future might fastset also across eg. vtotal/vblank_end
changes, so let's just grab the locks across the whole thing.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 24 +++++++++++++++++++-
 1 file changed, 23 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 410c84fd905c..5bd51198281f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5910,6 +5910,8 @@ void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state)
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	struct drm_display_mode adjusted_mode;
+	int vmax_vblank_start = 0;
+	unsigned long irqflags;
 
 	drm_mode_init(&adjusted_mode, &crtc_state->hw.adjusted_mode);
 
@@ -5917,11 +5919,28 @@ void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state)
 		adjusted_mode.crtc_vtotal = crtc_state->vrr.vmax;
 		adjusted_mode.crtc_vblank_end = crtc_state->vrr.vmax;
 		adjusted_mode.crtc_vblank_start = intel_vrr_vmin_vblank_start(crtc_state);
-		crtc->vmax_vblank_start = intel_vrr_vmax_vblank_start(crtc_state);
+		vmax_vblank_start = intel_vrr_vmax_vblank_start(crtc_state);
 	}
 
+	/*
+	 * Belts and suspenders locking to guarantee everyone sees 100%
+	 * consistent state during fastset seamless refresh rate changes.
+	 *
+	 * vblank_time_lock takes care of all drm_vblank.c stuff, and
+	 * uncore.lock takes care of __intel_get_crtc_scanline() which
+	 * may get called elsewhere as well.
+	 *
+	 * TODO maybe just protect everything (including
+	 * __intel_get_crtc_scanline()) with vblank_time_lock?
+	 * Need to audit everything to make sure it's safe.
+	 */
+	spin_lock_irqsave(&dev_priv->drm.vblank_time_lock, irqflags);
+	spin_lock(&dev_priv->uncore.lock);
+
 	drm_calc_timestamping_constants(&crtc->base, &adjusted_mode);
 
+	crtc->vmax_vblank_start = vmax_vblank_start;
+
 	crtc->mode_flags = crtc_state->mode_flags;
 
 	/*
@@ -5965,6 +5984,9 @@ void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state)
 	} else {
 		crtc->scanline_offset = 1;
 	}
+
+	spin_unlock(&dev_priv->uncore.lock);
+	spin_unlock_irqrestore(&dev_priv->drm.vblank_time_lock, irqflags);
 }
 
 /*
-- 
2.39.2

