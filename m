Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 726AC6AC4F5
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Mar 2023 16:28:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E1C010E262;
	Mon,  6 Mar 2023 15:28:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27D6310E262
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Mar 2023 15:28:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678116528; x=1709652528;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=5WVi1/qFeKAY/4snCtY3xh6i5ZfV0Cj1/udg7wX+ETQ=;
 b=Hpb+5leSXF8selJU3MY6k2pnDOfYRQYS1qqD5Zk0RI8k1w0fS8OH3+TQ
 gqhmjoMy8ItgfgYHaA49XlDAEgu9WziMl08RGxHTGmHlCTO59yFqWNBQD
 /QE1CY0B0lTVLdXcbyxkxispWUvo1pGFv+fBBqyM0qQY/bKHt2AZA7458
 /oaZjZNGYX5tLe7YbhueqiJrRKwCTSyPQ2OxJ1/8RH2f9wWOC7ngIAGLK
 dlq10FLcuk5P4PrVgZNh+4JZPX0G+7vVqdZlmNDnP1a782s1r81vG6oRN
 zfnEFpct6xo+wXIhrlvmtVyh419z88+x9GcjK34MMbHdrbQk4wwzj9T/d w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="363201205"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="363201205"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 07:28:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="669476755"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="669476755"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 06 Mar 2023 07:28:45 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 06 Mar 2023 17:28:44 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Mar 2023 17:28:39 +0200
Message-Id: <20230306152841.6563-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230306152841.6563-1-ville.syrjala@linux.intel.com>
References: <20230306152841.6563-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915: Add belts and suspenders locking
 for seamless M/N changes
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 24 +++++++++++++++++++-
 1 file changed, 23 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a1fbdf32bd21..020320468967 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5908,6 +5908,8 @@ void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state)
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	struct drm_display_mode adjusted_mode;
+	int vmax_vblank_start = 0;
+	unsigned long irqflags;
 
 	drm_mode_init(&adjusted_mode, &crtc_state->hw.adjusted_mode);
 
@@ -5915,11 +5917,28 @@ void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state)
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
@@ -5963,6 +5982,9 @@ void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state)
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

