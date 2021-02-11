Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A21AE3182F9
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Feb 2021 02:17:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F6296EDBA;
	Thu, 11 Feb 2021 01:17:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D00DE6EDAA
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Feb 2021 01:17:08 +0000 (UTC)
IronPort-SDR: VnfQ+gz98tEQMIuNtYLYyiVpgrx2Q3u0iwlpvKh01+N3ktT6lE3D2ZA+DFXzLIDrBojNnI2SZP
 JcQzkV0ZQsAQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="181404565"
X-IronPort-AV: E=Sophos;i="5.81,169,1610438400"; d="scan'208";a="181404565"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2021 17:17:07 -0800
IronPort-SDR: 6fY2yq7HFWGaPzENmo/yopCMaFoR3rzr7vTmyj6/hVu8C9QVaYgxO82GXW/yf1QHOr3Z5Xj0Ls
 ROBCyrgIRjbw==
X-IronPort-AV: E=Sophos;i="5.81,169,1610438400"; d="scan'208";a="586797898"
Received: from sganes2-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.30.225])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2021 17:17:07 -0800
Date: Wed, 10 Feb 2021 17:17:03 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20210211011703.we73bn5elntcupiq@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20210128192413.1715802-1-matthew.d.roper@intel.com>
 <20210128192413.1715802-6-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210128192413.1715802-6-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH 05/18] drm/i915/display13: Support 128k
 plane stride
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
Cc: intel-gfx@lists.freedesktop.org,
 Juha-Pekka =?utf-8?B?SGVpa2tpbMOk?= <juha-pekka.heikkila@intel.com>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 28, 2021 at 11:24:00AM -0800, Matt Roper wrote:
>From: Juha-Pekka Heikkil=E4 <juha-pekka.heikkila@intel.com>
>
>Display13 supports plane strides up to 128KB.
>
>Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
>Signed-off-by: Juha-Pekka Heikkil=E4 <juha-pekka.heikkila@intel.com>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_display.c |  6 ++++-
> drivers/gpu/drm/i915/display/intel_sprite.c  | 24 ++++++++++++++++++--
> drivers/gpu/drm/i915/i915_reg.h              |  2 ++
> 3 files changed, 29 insertions(+), 3 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/dr=
m/i915/display/intel_display.c
>index d013b0fab128..f56237aaa7b5 100644
>--- a/drivers/gpu/drm/i915/display/intel_display.c
>+++ b/drivers/gpu/drm/i915/display/intel_display.c
>@@ -8396,7 +8396,11 @@ skl_get_initial_plane_config(struct intel_crtc *crt=
c,
>
> 	val =3D intel_de_read(dev_priv, PLANE_STRIDE(pipe, plane_id));
> 	stride_mult =3D skl_plane_stride_mult(fb, 0, DRM_MODE_ROTATE_0);
>-	fb->pitches[0] =3D (val & 0x3ff) * stride_mult;
>+
>+	if (HAS_DISPLAY13(dev_priv))
>+		fb->pitches[0] =3D (val & PLANE_STRIDE_MASK_D13) * stride_mult;
>+	else
>+		fb->pitches[0] =3D (val & PLANE_STRIDE_MASK) * stride_mult;
>
> 	aligned_height =3D intel_fb_align_height(fb, 0, fb->height);
>
>diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm=
/i915/display/intel_sprite.c
>index 81bb5eb1cd15..c858ba6dc026 100644
>--- a/drivers/gpu/drm/i915/display/intel_sprite.c
>+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
>@@ -572,17 +572,37 @@ skl_plane_max_stride(struct intel_plane *plane,
> 		     u32 pixel_format, u64 modifier,
> 		     unsigned int rotation)
> {
>+	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
> 	const struct drm_format_info *info =3D drm_format_info(pixel_format);
> 	int cpp =3D info->cpp[0];
>+	int max_horizontal_pixels =3D 8192;
>+	int max_stride_bytes;
>+
>+	if (HAS_DISPLAY13(i915)) {
>+		/*
>+		 * The stride in bytes must not exceed of the size
>+		 * of 128K bytes. For pixel formats of 64bpp will allow
>+		 * for a 16K pixel surface.
>+		 */
>+		max_stride_bytes =3D 131072;
>+		if (cpp =3D=3D 8)
>+			max_horizontal_pixels =3D 16384;

missing here:

	else
		max_horizontal_pixels =3D 65536;


Also, we are starting to overcomplicate skl_plane_max_stride().
Time to start setting plane->max_stride based on the platform?
Although this could be done after landing this patch. With the fix
above:


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>+	} else {
>+		/*
>+		 * "The stride in bytes must not exceed the
>+		 * of the size of 8K pixels and 32K bytes."
>+		 */
>+		max_stride_bytes =3D 32768;
>+	}
>
> 	/*
> 	 * "The stride in bytes must not exceed the
> 	 * of the size of 8K pixels and 32K bytes."
> 	 */
> 	if (drm_rotation_90_or_270(rotation))
>-		return min(8192, 32768 / cpp);
>+		return min(max_horizontal_pixels, max_stride_bytes / cpp);
> 	else
>-		return min(8192 * cpp, 32768);
>+		return min(max_horizontal_pixels * cpp, max_stride_bytes);
> }
>
> static void
>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_r=
eg.h
>index a57593f7d7b1..9dfa4d711d6f 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h
>@@ -7198,6 +7198,8 @@ enum {
> 	_PIPE(pipe, _PLANE_STRIDE_3_A, _PLANE_STRIDE_3_B)
> #define PLANE_STRIDE(pipe, plane)	\
> 	_MMIO_PLANE(plane, _PLANE_STRIDE_1(pipe), _PLANE_STRIDE_2(pipe))
>+#define PLANE_STRIDE_MASK REG_GENMASK(10, 0)
>+#define PLANE_STRIDE_MASK_D13 REG_GENMASK(11, 0)
>
> #define _PLANE_POS_1_B				0x7118c
> #define _PLANE_POS_2_B				0x7128c
>-- =

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
