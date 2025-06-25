Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41CE2AE7F68
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jun 2025 12:33:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 191D810E6D4;
	Wed, 25 Jun 2025 10:33:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n7y8WIvg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6289010E6D4;
 Wed, 25 Jun 2025 10:33:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750847610; x=1782383610;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Eb7LTWnHCebjehV0VLTsh3W1o1Aq4taeKt+LDnLzs8Y=;
 b=n7y8WIvgAFPv2Hv9vvRZYZeK/zSq0uS/CeSGhEHbJ8hHHhYl+URzE47s
 hr/WWvgWnl6E8HhGl/GJbRlgUndhZgeFAyYjIGZ3nV/sqmgFOb4aVCHvT
 LqneWSppQJ9huRIm5gLO8x8OpzEIjuVLlbnJblJa/tdusJMp27kpchqn2
 17WxhW4Xku6xZSA9cTedMdAGvpjYSm/jnOUefjMNmHGd/QAbrrgc2bPiQ
 yXKatMLAfz1zPIUymKs5dt3mr2df0lyi3IlUg0IXDjWA3KQviKEw2V8sE
 h5hSF5HS9S7PskZzXvjdxUKnTuD7ki88uBrcTnBmmMs6hVz2rwlIrIIgk A==;
X-CSE-ConnectionGUID: DrFheOcoQyGKWBLxvG2OYQ==
X-CSE-MsgGUID: R3pXnwkSQdmt3gdvqiHU3w==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="52830308"
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="52830308"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 03:33:30 -0700
X-CSE-ConnectionGUID: IeTMOH4YSHOGInRpk2HRQQ==
X-CSE-MsgGUID: eNAOyEoySV+LVC4uisqOXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="151799018"
Received: from monicael-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.78])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 03:33:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	imre.deak@intel.com
Subject: [CI v2 10/16] drm/i915/cdclk: abstract intel_cdclk_min_cdclk()
Date: Wed, 25 Jun 2025 13:32:28 +0300
Message-Id: <af768e7fc32d8fa8ddcbbe2683266c30ae3b925d.1750847509.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1750847509.git.jani.nikula@intel.com>
References: <cover.1750847509.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Add intel_cdclk_min_cdclk() helper to avoid looking at struct
intel_cdclk_state internals outside of intel_cdclk.c.

Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 5 +++++
 drivers/gpu/drm/i915/display/intel_cdclk.h | 1 +
 drivers/gpu/drm/i915/display/intel_plane.c | 4 ++--
 3 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 51485c777b62..1fc82844458b 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3839,3 +3839,8 @@ int intel_cdclk_logical(const struct intel_cdclk_state *cdclk_state)
 {
 	return cdclk_state->logical.cdclk;
 }
+
+int intel_cdclk_min_cdclk(const struct intel_cdclk_state *cdclk_state, enum pipe pipe)
+{
+	return cdclk_state->min_cdclk[pipe];
+}
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index 20a66f613072..ef6ad9d04c20 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -98,5 +98,6 @@ int intel_cdclk_init(struct intel_display *display);
 void intel_cdclk_debugfs_register(struct intel_display *display);
 
 int intel_cdclk_logical(const struct intel_cdclk_state *cdclk_state);
+int intel_cdclk_min_cdclk(const struct intel_cdclk_state *cdclk_state, enum pipe pipe);
 
 #endif /* __INTEL_CDCLK_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index eae926d998ff..7c28ef677107 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -333,7 +333,7 @@ int intel_plane_calc_min_cdclk(struct intel_atomic_state *state,
 	 * display blinking due to constant cdclk changes.
 	 */
 	if (new_crtc_state->min_cdclk[plane->id] <=
-	    cdclk_state->min_cdclk[crtc->pipe])
+	    intel_cdclk_min_cdclk(cdclk_state, crtc->pipe))
 		return 0;
 
 	drm_dbg_kms(display->drm,
@@ -341,7 +341,7 @@ int intel_plane_calc_min_cdclk(struct intel_atomic_state *state,
 		    plane->base.base.id, plane->base.name,
 		    new_crtc_state->min_cdclk[plane->id],
 		    crtc->base.base.id, crtc->base.name,
-		    cdclk_state->min_cdclk[crtc->pipe]);
+		    intel_cdclk_min_cdclk(cdclk_state, crtc->pipe));
 	*need_cdclk_calc = true;
 
 	return 0;
-- 
2.39.5

