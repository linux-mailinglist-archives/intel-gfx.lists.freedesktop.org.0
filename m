Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DA181A8D56
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2020 23:11:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F5D16E58E;
	Tue, 14 Apr 2020 21:11:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5E476E58E
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2020 21:11:28 +0000 (UTC)
IronPort-SDR: QMRmJNbU1BqzRcg6+CS1DkB6VF+lLXkHBltF9BO+bT/+xKpRhPw7BIGXg4MN5vjbrkTqhdhhdE
 vXolQ6kuV9EQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2020 14:11:28 -0700
IronPort-SDR: r2gxBOJHvnC1gzlS6h3ysYxvH7ZEK35MoW7fniquHsbhw4zlIVIrDHwKGeZCUKoEiNDDVeiK5B
 cuxGYTDRJdtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,384,1580803200"; d="scan'208";a="298814818"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Apr 2020 14:11:28 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Apr 2020 14:11:17 -0700
Message-Id: <20200414211118.2787489-3-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200414211118.2787489-1-matthew.d.roper@intel.com>
References: <20200414211118.2787489-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/tgl: Add Wa_14010477008:tgl
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Media decompression support should not be advertised on any display
planes for steppings A0-C0.

Bspec: 53273
Fixes: 2dfbf9d2873a ("drm/i915/tgl: Gen-12 display can decompress surfaces compressed by the media engine")
Cc: Matt Atwood <matthew.s.atwood@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_sprite.c | 17 ++++++++++++-----
 drivers/gpu/drm/i915/i915_drv.h             |  2 ++
 2 files changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index deda351719db..33d886141138 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -2817,19 +2817,25 @@ static bool skl_plane_format_mod_supported(struct drm_plane *_plane,
 	}
 }
 
-static bool gen12_plane_supports_mc_ccs(enum plane_id plane_id)
+static bool gen12_plane_supports_mc_ccs(struct drm_i915_private *dev_priv,
+					enum plane_id plane_id)
 {
+	/* Wa_14010477008:tgl[a0..c0] */
+	if (IS_TGL_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_C0))
+		return false;
+
 	return plane_id < PLANE_SPRITE4;
 }
 
 static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
 					     u32 format, u64 modifier)
 {
+	struct drm_i915_private *dev_priv = to_i915(_plane->dev);
 	struct intel_plane *plane = to_intel_plane(_plane);
 
 	switch (modifier) {
 	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
-		if (!gen12_plane_supports_mc_ccs(plane->id))
+		if (!gen12_plane_supports_mc_ccs(dev_priv, plane->id))
 			return false;
 		/* fall through */
 	case DRM_FORMAT_MOD_LINEAR:
@@ -2998,9 +3004,10 @@ static const u32 *icl_get_plane_formats(struct drm_i915_private *dev_priv,
 	}
 }
 
-static const u64 *gen12_get_plane_modifiers(enum plane_id plane_id)
+static const u64 *gen12_get_plane_modifiers(struct drm_i915_private *dev_priv,
+					    enum plane_id plane_id)
 {
-	if (gen12_plane_supports_mc_ccs(plane_id))
+	if (gen12_plane_supports_mc_ccs(dev_priv, plane_id))
 		return gen12_plane_format_modifiers_mc_ccs;
 	else
 		return gen12_plane_format_modifiers_rc_ccs;
@@ -3070,7 +3077,7 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 
 	plane->has_ccs = skl_plane_has_ccs(dev_priv, pipe, plane_id);
 	if (INTEL_GEN(dev_priv) >= 12) {
-		modifiers = gen12_get_plane_modifiers(plane_id);
+		modifiers = gen12_get_plane_modifiers(dev_priv, plane_id);
 		plane_funcs = &gen12_plane_funcs;
 	} else {
 		if (plane->has_ccs)
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index e9ee4daa9320..e256b6be5d79 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1508,6 +1508,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	(IS_ICELAKE(p) && IS_REVID(p, since, until))
 
 #define TGL_REVID_A0		0x0
+#define TGL_REVID_B0		0x1
+#define TGL_REVID_C0		0x2
 
 #define IS_TGL_REVID(p, since, until) \
 	(IS_TIGERLAKE(p) && IS_REVID(p, since, until))
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
