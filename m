Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB863377E0
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 16:34:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A97106EDEE;
	Thu, 11 Mar 2021 15:34:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44B0B6EDFF
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 15:34:31 +0000 (UTC)
IronPort-SDR: Oo3BcDoqtjrUgYe3wFiuKIvc0n1aTtChT8x6p9H0wycStLdJe722xx9vUx+qgkbQEsdzbpdm55
 swrGIfAhyldg==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="175797242"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="175797242"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 07:34:30 -0800
IronPort-SDR: A3boQGFWtrveBrlq2M/4duEP8lGntI6wnN3B5zB4iuzAMIeGA/U2sB0b6+2oFFN5xBP0IqE/TP
 xWzuHCCzBrHA==
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="589251663"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 07:34:29 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 07:34:02 -0800
Message-Id: <20210311153415.3024607-11-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210311153415.3024607-1-matthew.d.roper@intel.com>
References: <20210311153415.3024607-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 10/23] drm/i915/xelpd: Define plane
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
index f24aaadec70d..2280694f19c7 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -266,7 +266,7 @@ int skl_format_to_fourcc(int format, bool rgb_order, bool alpha)
 
 static u8 icl_nv12_y_plane_mask(struct drm_i915_private *i915)
 {
-	if (HAS_D12_PLANE_MINIMIZATION(i915))
+	if (DISPLAY_VER(i915) >= 13 || HAS_D12_PLANE_MINIMIZATION(i915))
 		return BIT(PLANE_SPRITE2) | BIT(PLANE_SPRITE3);
 	else
 		return BIT(PLANE_SPRITE4) | BIT(PLANE_SPRITE5);
@@ -2071,9 +2071,12 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
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
 
 	if (DISPLAY_VER(dev_priv) >= 10)
 		supported_rotations |= DRM_MODE_REFLECT_X;
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 8beb5e193ba5..a1ac15f972ee 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -2308,7 +2308,7 @@ static u32 gen8_de_port_aux_mask(struct drm_i915_private *dev_priv)
 
 static u32 gen8_de_pipe_fault_mask(struct drm_i915_private *dev_priv)
 {
-	if (HAS_D12_PLANE_MINIMIZATION(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 13 || HAS_D12_PLANE_MINIMIZATION(dev_priv))
 		return RKL_DE_PIPE_IRQ_FAULT_ERRORS;
 	else if (DISPLAY_VER(dev_priv) >= 11)
 		return GEN11_DE_PIPE_IRQ_FAULT_ERRORS;
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index aeb28d589b2b..8a55cdfc802c 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -265,7 +265,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 
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
