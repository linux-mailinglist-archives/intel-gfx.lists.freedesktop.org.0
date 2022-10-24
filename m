Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B8D60B104
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 18:15:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C28A10E470;
	Mon, 24 Oct 2022 16:15:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DF7510E41B
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 16:15:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666628127; x=1698164127;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=b0kVaT2ENK2Q8kcpwq3EsrF/MVcdLYEyIyBRBDJ3TFc=;
 b=QttA7WVR1prHRpxDFk15HO+2SaL9N8RZstX+bNU6kG6FfYdloGs6E0eS
 5jK+9Xpp4bwOKcPkb+OHSp+MdVf5OYAeGko8TDiK/EX+0lP3FHn3i98U+
 bRRXNmLzmZnaZxmZ54W1lf34aVUbE49qDk1K35DiRr87NdynmnZ3VsBmZ
 Wp/AfEL1toQiH8r1zM0imsdB88yMcsu3k01IK22HSPipQsAZ/AYQFi7Cu
 T+l9zOwmYqg7dTmOT3iDR7yCFzKwpDnq8z9lFHOf1cNMqDVDmJq+5a+KG
 Jg9cN0xG0Kd75EfJtGllLDGQ3O20qGQl5blGqHmYbeyhwj/yGVPe+dOWu w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="294863113"
X-IronPort-AV: E=Sophos;i="5.95,209,1661842800"; d="scan'208";a="294863113"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 09:15:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="756625344"
X-IronPort-AV: E=Sophos;i="5.95,209,1661842800"; d="scan'208";a="756625344"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga004.jf.intel.com with SMTP; 24 Oct 2022 09:15:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Oct 2022 19:15:24 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Oct 2022 19:15:12 +0300
Message-Id: <20221024161514.5340-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221024161514.5340-1-ville.syrjala@linux.intel.com>
References: <20221024161514.5340-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/5] drm/i915: Assert {pre,
 post}_csc_lut were assigned sensibly
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

Since we now have the extra step from hw.(de)gamma_lut into
{pre,post}_csc_lut let's make sure we didn't forget to assign
them appropriately. Ie. basically making sure intel_color_check()
was called when necessary (and that it did its job suitable well).

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c   | 20 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_color.h   |  1 +
 drivers/gpu/drm/i915/display/intel_display.c |  2 ++
 3 files changed, 23 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 2b37e3c2dc3b..f1d207e0e1b5 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1359,6 +1359,26 @@ static u32 i9xx_gamma_mode(struct intel_crtc_state *crtc_state)
 		return GAMMA_MODE_MODE_10BIT; /* i965+ only */
 }
 
+void intel_color_assert_luts(const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+
+	/* make sure {pre,post}_csc_lut were correctly assigned */
+	if (DISPLAY_VER(i915) >= 10 || HAS_GMCH(i915)) {
+		drm_WARN_ON(&i915->drm,
+			    crtc_state->pre_csc_lut != crtc_state->hw.degamma_lut);
+		drm_WARN_ON(&i915->drm,
+			    crtc_state->post_csc_lut != crtc_state->hw.gamma_lut);
+	} else {
+		drm_WARN_ON(&i915->drm,
+			    crtc_state->pre_csc_lut != crtc_state->hw.degamma_lut &&
+			    crtc_state->pre_csc_lut != crtc_state->hw.gamma_lut);
+		drm_WARN_ON(&i915->drm,
+			    crtc_state->post_csc_lut != crtc_state->hw.degamma_lut &&
+			    crtc_state->post_csc_lut != crtc_state->hw.gamma_lut);
+	}
+}
+
 static void intel_assign_luts(struct intel_crtc_state *crtc_state)
 {
 	drm_property_replace_blob(&crtc_state->pre_csc_lut,
diff --git a/drivers/gpu/drm/i915/display/intel_color.h b/drivers/gpu/drm/i915/display/intel_color.h
index 04984e6000b6..e1d423922f98 100644
--- a/drivers/gpu/drm/i915/display/intel_color.h
+++ b/drivers/gpu/drm/i915/display/intel_color.h
@@ -24,5 +24,6 @@ int intel_color_get_gamma_bit_precision(const struct intel_crtc_state *crtc_stat
 bool intel_color_lut_equal(struct drm_property_blob *blob1,
 			   struct drm_property_blob *blob2,
 			   u32 gamma_mode, u32 bit_precision);
+void intel_color_assert_luts(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_COLOR_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 30a2ce8e3c54..54501bdc37b4 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6886,6 +6886,8 @@ static int intel_atomic_check(struct drm_device *dev,
 
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
+		intel_color_assert_luts(new_crtc_state);
+
 		ret = intel_async_flip_check_hw(state, crtc);
 		if (ret)
 			goto fail;
-- 
2.37.4

