Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BBDA376E8E
	for <lists+intel-gfx@lfdr.de>; Sat,  8 May 2021 04:28:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 819076E826;
	Sat,  8 May 2021 02:28:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFA5A6E826
 for <intel-gfx@lists.freedesktop.org>; Sat,  8 May 2021 02:28:29 +0000 (UTC)
IronPort-SDR: UDeXxXLUFOqdCH8emn85DWey5tQz9BvA8FthG3Vq7w6jnj0WRc2jrwYHWsl3K7jOS43eKaFPc+
 1GS7EISlqt/w==
X-IronPort-AV: E=McAfee;i="6200,9189,9977"; a="198933630"
X-IronPort-AV: E=Sophos;i="5.82,282,1613462400"; d="scan'208";a="198933630"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2021 19:28:28 -0700
IronPort-SDR: TxY/+7R3+uwZer1pjjTFWwlr78LPk7wv8RtP+mYz4clM1zR07S16zd3VJ/Xx7Xbecn/7pt3C8K
 ODz+6nwURDsA==
X-IronPort-AV: E=Sophos;i="5.82,282,1613462400"; d="scan'208";a="533910036"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2021 19:28:28 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  7 May 2021 19:27:35 -0700
Message-Id: <20210508022820.780227-4-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210508022820.780227-1-matthew.d.roper@intel.com>
References: <20210508022820.780227-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 03/48] drm/i915/xelpd: Define plane
 capabilities
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

XE_LPD's plane support is identical to RKL and ADL-S --- 5 universal + 1
cursor with NV12 UV support on planes 1-3 and NV12 Y support on planes
4-5.

v2:
 - Drop the extra 90/270 rotation check in skl_plane_check_fb(); the DRM
   property code will already prevent userspace from passing us values
   that weren't advertised.  (Lucas)

Bspec: 53657
Bspec: 49251
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 11 +++++++----
 drivers/gpu/drm/i915/i915_irq.c                    |  2 +-
 drivers/gpu/drm/i915/intel_device_info.c           |  2 +-
 3 files changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 8588b70a8241..d51a22d4b28a 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -268,7 +268,7 @@ int skl_format_to_fourcc(int format, bool rgb_order, bool alpha)
 
 static u8 icl_nv12_y_plane_mask(struct drm_i915_private *i915)
 {
-	if (HAS_D12_PLANE_MINIMIZATION(i915))
+	if (DISPLAY_VER(i915) >= 13 || HAS_D12_PLANE_MINIMIZATION(i915))
 		return BIT(PLANE_SPRITE2) | BIT(PLANE_SPRITE3);
 	else
 		return BIT(PLANE_SPRITE4) | BIT(PLANE_SPRITE5);
@@ -2094,9 +2094,12 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 	if (ret)
 		goto fail;
 
-	supported_rotations =
-		DRM_MODE_ROTATE_0 | DRM_MODE_ROTATE_90 |
-		DRM_MODE_ROTATE_180 | DRM_MODE_ROTATE_270;
+	if (DISPLAY_VER(dev_priv) >= 13)
+		supported_rotations = DRM_MODE_ROTATE_0 | DRM_MODE_ROTATE_180;
+	else
+		supported_rotations =
+			DRM_MODE_ROTATE_0 | DRM_MODE_ROTATE_90 |
+			DRM_MODE_ROTATE_180 | DRM_MODE_ROTATE_270;
 
 	if (DISPLAY_VER(dev_priv) >= 11 || IS_CANNONLAKE(dev_priv))
 		supported_rotations |= DRM_MODE_REFLECT_X;
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 009b56e4879e..957d401186d2 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -2309,7 +2309,7 @@ static u32 gen8_de_port_aux_mask(struct drm_i915_private *dev_priv)
 
 static u32 gen8_de_pipe_fault_mask(struct drm_i915_private *dev_priv)
 {
-	if (HAS_D12_PLANE_MINIMIZATION(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 13 || HAS_D12_PLANE_MINIMIZATION(dev_priv))
 		return RKL_DE_PIPE_IRQ_FAULT_ERRORS;
 	else if (DISPLAY_VER(dev_priv) >= 11)
 		return GEN11_DE_PIPE_IRQ_FAULT_ERRORS;
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 3b975ce1ff59..8cb58a238c68 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -268,7 +268,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 
 	BUILD_BUG_ON(BITS_PER_TYPE(intel_engine_mask_t) < I915_NUM_ENGINES);
 
-	if (HAS_D12_PLANE_MINIMIZATION(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 13 || HAS_D12_PLANE_MINIMIZATION(dev_priv))
 		for_each_pipe(dev_priv, pipe)
 			runtime->num_sprites[pipe] = 4;
 	else if (INTEL_GEN(dev_priv) >= 11)
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
