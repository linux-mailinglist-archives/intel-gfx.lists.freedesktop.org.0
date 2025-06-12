Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2800FAD6FDA
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 14:13:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B440A10E7E9;
	Thu, 12 Jun 2025 12:13:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ESekGxhv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13BAE10E80A;
 Thu, 12 Jun 2025 12:13:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749730384; x=1781266384;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9c0UgBJU06oh0uJEqNRLDRh1vsyqLNlEc0dKCVnsRlM=;
 b=ESekGxhvKP59qSPLnd9arzOnsAyvKFleXu1mhy/VVYf1lLPC0U3lXFEx
 OmkIaPzEooxHsonqkEi9JF0Mg1YKThSKVj83NJ0tjBxVF14IjysQtOYPk
 Im4l43NdgNmxEnkGZAXB+7Mqbq/m2aLe48NMeB5Mj79DdNnQJe0yJN/BY
 qWBOmlWzvOVG0+GIljiJAdThLm/mkxp52VZ5DhXFYGXFdJFfJ09gHiEMT
 Guyh5r2iC+4It4GA6v4nl/l0wN3SCPL4rRyj6e1UgTODONj3FDsaOKF2D
 oJQpFNXzNh2PGuR7wpF1jBKdzMRlBvOj4zCjCZkxwFwVuI6OC+kq/tugq A==;
X-CSE-ConnectionGUID: MzLQzOexTVy8hfAK/T8w0Q==
X-CSE-MsgGUID: UgiE5YxFQvKVtYJrafAHTw==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="74438545"
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="74438545"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 05:13:04 -0700
X-CSE-ConnectionGUID: 2vdULLr0RJGNMhw203HUnA==
X-CSE-MsgGUID: SHJu9Sh1QXmEVz9lZJFGuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="152493853"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.242])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 05:13:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 10/16] drm/i915/cdclk: abstract intel_cdclk_min_cdclk()
Date: Thu, 12 Jun 2025 15:12:05 +0300
Message-Id: <827256a1f69bc98880d7576c6f6bfa48eb27fd9a.1749730224.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1749730224.git.jani.nikula@intel.com>
References: <cover.1749730224.git.jani.nikula@intel.com>
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

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_cdclk.c        | 5 +++++
 drivers/gpu/drm/i915/display/intel_cdclk.h        | 1 +
 3 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 15ede7678636..1e9b906c3e44 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
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
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 5082d2b64ce5..05e94fcd8326 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3842,3 +3842,8 @@ int intel_cdclk_logical(const struct intel_cdclk_state *cdclk_state)
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
-- 
2.39.5

