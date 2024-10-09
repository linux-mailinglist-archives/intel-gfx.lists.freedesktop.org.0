Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94BC69974D8
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 20:22:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E2EA10E7BF;
	Wed,  9 Oct 2024 18:22:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IFNkjtRx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A88E10E7BF
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2024 18:22:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728498153; x=1760034153;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=pkn0E3hq9chSDnYqGfJ0mLF8FiT3B8uQcdYWrXjp1Yg=;
 b=IFNkjtRxnoVJm7RlFBuqoVhomNtjuB4j8ntH1hlafSyRJRIa9M0zf9W6
 hbRTp2rfgoZGt+PUKEzOyZOLsrnNaexNpUNm88+DREhZ7IHgYX3LGdTM0
 MoQhuUZjR+OP05gNrSp6Ken/jwVtiuUuU76O/BfxpjwYSsLFaB3QU4jt7
 6dx9nCU4JsEJounF6b587E3T6CTErMUMHcAt34Yt6d5EkKKwmPqQAm6KB
 7Mdf9FHoZLTrhSdyPbO/igQ2JC742zGYR8rr8QRnYDjcAPpvnil3wIMql
 Ld1ID2ZPBA4hzROyHWfpXp56iNTCS2jRWzym/F4Zfx3NoPaZfrIY05NrX Q==;
X-CSE-ConnectionGUID: EwK3jSM6S3SYZaTrVn3kuQ==
X-CSE-MsgGUID: tRCZwRo/TGmJ5X6w7fbQeQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="15439013"
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="15439013"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 11:22:33 -0700
X-CSE-ConnectionGUID: GcBtoiYdRSuJR8yp142FTQ==
X-CSE-MsgGUID: JoFFGASNSoGF26R/9qYtSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="76430437"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 09 Oct 2024 11:22:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Oct 2024 21:22:29 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 8/9] drm/i915: Relocate xe AUX hack
Date: Wed,  9 Oct 2024 21:22:06 +0300
Message-ID: <20241009182207.22900-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241009182207.22900-1-ville.syrjala@linux.intel.com>
References: <20241009182207.22900-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Move the xe AUX neutering out from skl_get_plane_caps() into the
caller so that it'll be easier to refactor skl_get_plane_caps()
into a more readable shape. This isn't really hardware specific
anyway, and just some kind of bug/misfeature of xe.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/skl_universal_plane.c    | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index c85bb1fea92f..bcb48d8932d2 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2598,9 +2598,6 @@ static u8 skl_get_plane_caps(struct drm_i915_private *i915,
 	if (HAS_4TILE(i915))
 		caps |= INTEL_PLANE_CAP_TILING_4;
 
-	if (!IS_ENABLED(I915) && !HAS_FLAT_CCS(i915))
-		return caps;
-
 	if (skl_plane_has_rc_ccs(i915, pipe, plane_id)) {
 		caps |= INTEL_PLANE_CAP_CCS_RC;
 		if (DISPLAY_VER(i915) >= 12)
@@ -2629,6 +2626,7 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 	const u32 *formats;
 	int num_formats;
 	int ret;
+	u8 caps;
 
 	plane = intel_plane_alloc();
 	if (IS_ERR(plane))
@@ -2716,8 +2714,15 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 	else
 		plane_type = DRM_PLANE_TYPE_OVERLAY;
 
-	modifiers = intel_fb_plane_get_modifiers(dev_priv,
-						 skl_get_plane_caps(dev_priv, pipe, plane_id));
+	caps = skl_get_plane_caps(dev_priv, pipe, plane_id);
+
+	/* FIXME: xe has problems with AUX */
+	if (!IS_ENABLED(I915) && !HAS_FLAT_CCS(dev_priv))
+		caps &= ~(INTEL_PLANE_CAP_CCS_RC |
+			  INTEL_PLANE_CAP_CCS_RC_CC |
+			  INTEL_PLANE_CAP_CCS_MC);
+
+	modifiers = intel_fb_plane_get_modifiers(dev_priv, caps);
 
 	ret = drm_universal_plane_init(&dev_priv->drm, &plane->base,
 				       0, plane_funcs,
-- 
2.45.2

