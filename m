Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BED0F7A9DF2
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 21:51:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CABED10E60D;
	Thu, 21 Sep 2023 19:51:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3159A10E60B
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Sep 2023 19:51:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695325909; x=1726861909;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pcAwbHNFLSbzAlh2QGNkLKWgm1Mtpeywm8lNHDYnFpw=;
 b=LMhpRPGLYnz2YEKQ4M8/JzuIhB/2XlAv1vHJakI0WSfe1+StjM7E2ssf
 qvOlOWQJpPRTL/08KTXuNaIpoPTWLohk4sWXBye8FTHb984Q98+XEZjEx
 JW7PRy6wIQRI27SIijI/qbBmiv98iTwbh8iAPYhcXzBoceIMSQil2LAFU
 GwMTcdsUHJqUbDRVZk9zZGwUHr/N6foLw8lC0mHVL25RxUmzzX0ni/8KK
 lYLqqSI08yhKASKC6WewB0vkfTmXeJFdVx97ya9ip1GPnUfqT71QHTlIY
 BExd+wtZPjxvQSN5FlC4F+aKqXgyOEhHNb4MDpGu8295CR73IzCJW8DPE w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="379523089"
X-IronPort-AV: E=Sophos;i="6.03,166,1694761200"; d="scan'208";a="379523089"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 12:51:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="817523742"
X-IronPort-AV: E=Sophos;i="6.03,166,1694761200"; d="scan'208";a="817523742"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 12:51:47 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Sep 2023 22:51:55 +0300
Message-Id: <20230921195159.2646027-8-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230921195159.2646027-1-imre.deak@intel.com>
References: <20230921195159.2646027-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/11] drm/i915: Rename
 intel_modeset_all_pipes() to intel_modeset_all_pipes_late()
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

Rename intel_modeset_all_pipes() to intel_modeset_all_pipes_late() to
clarify when the function can be called (vs.
intel_modeset_pipes_in_mask_early()).

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c   | 2 +-
 drivers/gpu/drm/i915/display/intel_display.c | 6 +++---
 drivers/gpu/drm/i915/display/intel_display.h | 4 ++--
 drivers/gpu/drm/i915/display/skl_watermark.c | 2 +-
 4 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index b55a3f75f3928..6d7ba4d0f1306 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3170,7 +3170,7 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 	} else if (intel_cdclk_needs_modeset(&old_cdclk_state->actual,
 					     &new_cdclk_state->actual)) {
 		/* All pipes must be switched off while we change the cdclk. */
-		ret = intel_modeset_all_pipes(state, "CDCLK change");
+		ret = intel_modeset_all_pipes_late(state, "CDCLK change");
 		if (ret)
 			return ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6045e5e12e6ed..07a485dcfe7a3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5525,7 +5525,7 @@ int intel_modeset_pipes_in_mask_early(struct intel_atomic_state *state,
 }
 
 /**
- * intel_modeset_all_pipes - force a full modeset on all pipes
+ * intel_modeset_all_pipes_late - force a full modeset on all pipes
  * @state: intel atomic state
  * @reason: the reason for the full modeset
  *
@@ -5535,8 +5535,8 @@ int intel_modeset_pipes_in_mask_early(struct intel_atomic_state *state,
  *
  * Returns 0 in case of success, negative error code otherwise.
  */
-int intel_modeset_all_pipes(struct intel_atomic_state *state,
-			    const char *reason)
+int intel_modeset_all_pipes_late(struct intel_atomic_state *state,
+				 const char *reason)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_crtc *crtc;
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 3008e8b2b437e..64a5be7859331 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -515,8 +515,8 @@ void intel_update_watermarks(struct drm_i915_private *i915);
 /* modesetting */
 int intel_modeset_pipes_in_mask_early(struct intel_atomic_state *state,
 				      const char *reason, u8 pipe_mask);
-int intel_modeset_all_pipes(struct intel_atomic_state *state,
-			    const char *reason);
+int intel_modeset_all_pipes_late(struct intel_atomic_state *state,
+				 const char *reason);
 void intel_modeset_get_crtc_power_domains(struct intel_crtc_state *crtc_state,
 					  struct intel_power_domain_mask *old_domains);
 void intel_modeset_put_crtc_power_domains(struct intel_crtc *crtc,
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 64a122d3c9c01..d42f6ae86218b 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2618,7 +2618,7 @@ skl_compute_ddb(struct intel_atomic_state *state)
 
 		if (old_dbuf_state->joined_mbus != new_dbuf_state->joined_mbus) {
 			/* TODO: Implement vblank synchronized MBUS joining changes */
-			ret = intel_modeset_all_pipes(state, "MBUS joining change");
+			ret = intel_modeset_all_pipes_late(state, "MBUS joining change");
 			if (ret)
 				return ret;
 		}
-- 
2.37.2

