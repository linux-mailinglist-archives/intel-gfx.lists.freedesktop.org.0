Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A222A5B5E9B
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 18:55:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F62B10E44F;
	Mon, 12 Sep 2022 16:55:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98D5110E2F0
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 16:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663001699; x=1694537699;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=adBTRgZN8zBV/kabJYeIdBEUDPunt4PqzpCGIZ7ovKA=;
 b=PwLPA9uA7U/SpcOUShxNVSO4w365AKcEW+WyXLiME1kqDMZKmJWw849G
 EAuy31KdItWDPfLsBiOx/ofGquv2p33jWqypAy90X0s2GkfjyoANYtPMw
 MQ7SxrTNyr3LImrCW0OJyqcSBix1MtXETJbG6lnqgrLIjXXZj34WXTgl4
 El+A9exXvggvgIdECyzZ3LwebmjbxZfA1H3ZhNeHymuSTPW/kQSUqwZFj
 wESgxoB7703s42/bVA07P01KNC0KOFaS1eQswA1G2NenNQ7wnRVT2M/PA
 LXsmygj4vnqQKCb+X4l3v413X9HqRIe+RCr76ZcEETdPbe6XK7DMFGuvp Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="284937244"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="284937244"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 09:54:59 -0700
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="944711741"
Received: from abijaz-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.58.140])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 09:54:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Sep 2022 19:54:26 +0300
Message-Id: <6063f354baa5bac8c0b3fa64577effacab284bb6.1662999695.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1662999695.git.jani.nikula@intel.com>
References: <cover.1662999695.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/15] drm/i915: un-inline icl_hdr_plane_mask()
 to simplify includes
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This lets us drop the heavy intel_display.h include from intel_sprite.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_sprite.h        | 9 +--------
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 5 +++++
 drivers/gpu/drm/i915/display/skl_universal_plane.h | 1 +
 3 files changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sprite.h b/drivers/gpu/drm/i915/display/intel_sprite.h
index 4f63e4967731..4635c7ad23f9 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.h
+++ b/drivers/gpu/drm/i915/display/intel_sprite.h
@@ -8,14 +8,13 @@
 
 #include <linux/types.h>
 
-#include "intel_display.h"
-
 struct drm_device;
 struct drm_display_mode;
 struct drm_file;
 struct drm_i915_private;
 struct intel_crtc_state;
 struct intel_plane_state;
+enum pipe;
 
 /*
  * FIXME: We should instead only take spinlocks once for the entire update
@@ -34,12 +33,6 @@ int intel_sprite_set_colorkey_ioctl(struct drm_device *dev, void *data,
 int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state);
 int chv_plane_check_rotation(const struct intel_plane_state *plane_state);
 
-static inline u8 icl_hdr_plane_mask(void)
-{
-	return BIT(PLANE_PRIMARY) |
-		BIT(PLANE_SPRITE0) | BIT(PLANE_SPRITE1);
-}
-
 int ivb_plane_min_cdclk(const struct intel_crtc_state *crtc_state,
 			const struct intel_plane_state *plane_state);
 int hsw_plane_min_cdclk(const struct intel_crtc_state *crtc_state,
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 7cb713043408..46e10b369a3d 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -246,6 +246,11 @@ bool icl_is_nv12_y_plane(struct drm_i915_private *dev_priv,
 		icl_nv12_y_plane_mask(dev_priv) & BIT(plane_id);
 }
 
+u8 icl_hdr_plane_mask(void)
+{
+	return BIT(PLANE_PRIMARY) | BIT(PLANE_SPRITE0) | BIT(PLANE_SPRITE1);
+}
+
 bool icl_is_hdr_plane(struct drm_i915_private *dev_priv, enum plane_id plane_id)
 {
 	return DISPLAY_VER(dev_priv) >= 11 &&
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.h b/drivers/gpu/drm/i915/display/skl_universal_plane.h
index 351040b64dc7..be64c201f9b3 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.h
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.h
@@ -30,6 +30,7 @@ int skl_calc_main_surface_offset(const struct intel_plane_state *plane_state,
 
 bool icl_is_nv12_y_plane(struct drm_i915_private *dev_priv,
 			 enum plane_id plane_id);
+u8 icl_hdr_plane_mask(void);
 bool icl_is_hdr_plane(struct drm_i915_private *dev_priv, enum plane_id plane_id);
 
 #endif
-- 
2.34.1

