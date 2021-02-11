Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A7DB3182E0
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Feb 2021 02:05:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A2346EDA7;
	Thu, 11 Feb 2021 01:05:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B054D6EDA7
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Feb 2021 01:05:40 +0000 (UTC)
IronPort-SDR: v83Z1delUAGNaTIZgIVmsvt163g33z7BLrsmCwH/UfB3cZtBpZwfnY4Y/z0yvqWtx1Qz97CTIt
 FHmlREkvCAjg==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="243665479"
X-IronPort-AV: E=Sophos;i="5.81,169,1610438400"; d="scan'208";a="243665479"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2021 17:05:39 -0800
IronPort-SDR: hNiGbQB1dT8UhWldR6LSWR9rsXT1eZ9GjZpfvC0LtdtXNUnSDBPhhzi7MfYwdyGQbNifEb9ZeE
 ltPG8Mcp7O8w==
X-IronPort-AV: E=Sophos;i="5.81,169,1610438400"; d="scan'208";a="588148368"
Received: from sganes2-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.30.225])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2021 17:05:39 -0800
Date: Wed, 10 Feb 2021 17:05:38 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20210211010538.2cwqdwhlnak5wco2@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20210128192413.1715802-1-matthew.d.roper@intel.com>
 <20210128192413.1715802-5-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210128192413.1715802-5-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH 04/18] drm/i915/display13: Define plane
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 28, 2021 at 11:23:59AM -0800, Matt Roper wrote:
>Display13's plane support is identical to RKL --- 5 universal + 1 cursor
>with NV12 UV support on planes 1-3 and NV12 Y support on planes 4-5.
>
>Bspec: 53657
>Bspec: 49251
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_sprite.c | 16 ++++++++++++----
> drivers/gpu/drm/i915/i915_irq.c             |  2 +-
> drivers/gpu/drm/i915/intel_device_info.c    |  2 +-
> 3 files changed, 14 insertions(+), 6 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
>index ec931a08ff28..81bb5eb1cd15 100644
>--- a/drivers/gpu/drm/i915/display/intel_sprite.c
>+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
>@@ -382,7 +382,7 @@ int intel_plane_check_src_coordinates(struct intel_plane_state *plane_state)
>
> static u8 icl_nv12_y_plane_mask(struct drm_i915_private *i915)
> {
>-	if (HAS_D12_PLANE_MINIMIZATION(i915))
>+	if (HAS_DISPLAY13(i915) || HAS_D12_PLANE_MINIMIZATION(i915))
> 		return BIT(PLANE_SPRITE2) | BIT(PLANE_SPRITE3);
> 	else
> 		return BIT(PLANE_SPRITE4) | BIT(PLANE_SPRITE5);
>@@ -2322,6 +2322,11 @@ static int skl_plane_check_fb(const struct intel_crtc_state *crtc_state,
> 	}
>
> 	if (drm_rotation_90_or_270(rotation)) {
>+		if (HAS_DISPLAY13(dev_priv)) {
>+			DRM_DEBUG_KMS("90/270 rotation not supported on this platform\n");
>+			return -EINVAL;
>+		}
>+

these are already forbidden in skl_universal_plane_create(), I don't
think we need the additional check here, do we?

with that removed or explained

Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

> 		if (fb->modifier != I915_FORMAT_MOD_Y_TILED &&
> 		    fb->modifier != I915_FORMAT_MOD_Yf_TILED) {
> 			drm_dbg_kms(&dev_priv->drm,
>@@ -3338,9 +3343,12 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
> 	if (ret)
> 		goto fail;
>
>-	supported_rotations =
>-		DRM_MODE_ROTATE_0 | DRM_MODE_ROTATE_90 |
>-		DRM_MODE_ROTATE_180 | DRM_MODE_ROTATE_270;
>+	if (HAS_DISPLAY13(dev_priv))
>+		supported_rotations = DRM_MODE_ROTATE_0 | DRM_MODE_ROTATE_180;
>+	else
>+		supported_rotations =
>+			DRM_MODE_ROTATE_0 | DRM_MODE_ROTATE_90 |
>+			DRM_MODE_ROTATE_180 | DRM_MODE_ROTATE_270;
>
> 	if (INTEL_GEN(dev_priv) >= 10)
> 		supported_rotations |= DRM_MODE_REFLECT_X;
>diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
>index 407b42706a14..bb4fad71c429 100644
>--- a/drivers/gpu/drm/i915/i915_irq.c
>+++ b/drivers/gpu/drm/i915/i915_irq.c
>@@ -2290,7 +2290,7 @@ static u32 gen8_de_port_aux_mask(struct drm_i915_private *dev_priv)
>
> static u32 gen8_de_pipe_fault_mask(struct drm_i915_private *dev_priv)
> {
>-	if (HAS_D12_PLANE_MINIMIZATION(dev_priv))
>+	if (HAS_DISPLAY13(dev_priv) || HAS_D12_PLANE_MINIMIZATION(dev_priv))
> 		return RKL_DE_PIPE_IRQ_FAULT_ERRORS;
> 	else if (INTEL_GEN(dev_priv) >= 11)
> 		return GEN11_DE_PIPE_IRQ_FAULT_ERRORS;
>diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
>index 92ad3e7d1f6f..200d4eceaa4e 100644
>--- a/drivers/gpu/drm/i915/intel_device_info.c
>+++ b/drivers/gpu/drm/i915/intel_device_info.c
>@@ -265,7 +265,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
>
> 	BUILD_BUG_ON(BITS_PER_TYPE(intel_engine_mask_t) < I915_NUM_ENGINES);
>
>-	if (HAS_D12_PLANE_MINIMIZATION(dev_priv))
>+	if (HAS_DISPLAY13(dev_priv) || HAS_D12_PLANE_MINIMIZATION(dev_priv))
> 		for_each_pipe(dev_priv, pipe)
> 			runtime->num_sprites[pipe] = 4;
> 	else if (INTEL_GEN(dev_priv) >= 11)
>-- 
>2.25.4
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
