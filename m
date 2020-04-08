Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A6E51A1E56
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 11:53:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B18596E082;
	Wed,  8 Apr 2020 09:53:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D888B6E082
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2020 09:53:54 +0000 (UTC)
IronPort-SDR: iNV4yP0vAJx5z1Qw54P++HrPQZL8gLjX8gYJTyLeGXSJYVKbMQGv6y8ogDkV0KuZFBxy7/OMmB
 gEasXAW8zd/w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2020 02:53:54 -0700
IronPort-SDR: TH599Bv79G1MNytz/mxGGWQkekeVjUTRL3PaVunpHzapHZ3VCRmghNLgId52x/sbaEp3bU24Ry
 hbXHmh3Y6v6A==
X-IronPort-AV: E=Sophos;i="5.72,357,1580803200"; d="scan'208";a="425080596"
Received: from slinke-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.60.237])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2020 02:53:52 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Kishore Kadiyala <kishore.kadiyala@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200408084734.8834-1-kishore.kadiyala@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200408084734.8834-1-kishore.kadiyala@intel.com>
Date: Wed, 08 Apr 2020 12:53:49 +0300
Message-ID: <871royi9qq.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Add Plane color encoding
 support for YCBCR_BT2020
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
Cc: Kishore Kadiyala <kishore.kadiyala@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 08 Apr 2020, Kishore Kadiyala <kishore.kadiyala@intel.com> wrote:
> Currently the plane property doesn't have support for YCBCR_BT2020,
> which enables the corresponding color conversion mode on plane CSC.
> This propery setting is confined only to HDR Planes as there is
> limitation in SDR Planes.
>
> V2: Enabling support for YCBCT_BT2020 for HDR planes on
>     platforms GLK & ICL
>
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_sprite.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
> index deda351719db..4c25d90d16ce 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -3031,6 +3031,7 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
>  	struct intel_plane *plane;
>  	enum drm_plane_type plane_type;
>  	unsigned int supported_rotations;
> +	unsigned int supported_csc;
>  	const u64 *modifiers;
>  	const u32 *formats;
>  	int num_formats;
> @@ -3105,9 +3106,14 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
>  					   DRM_MODE_ROTATE_0,
>  					   supported_rotations);
>  
> +	supported_csc = BIT(DRM_COLOR_YCBCR_BT601) | BIT(DRM_COLOR_YCBCR_BT709);
> +
> +	if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv) &&
> +					(icl_is_hdr_plane(dev_priv, plane_id)))

This is incorrect and/or misleading in so many levels.

First, the precedence means this is

	(gen >= 10 || (is_glk && icl_is_hdr_plane))

Second, it's odd to have an icl_ prefixed function used only on glk.

Third, icl_is_hdr_plane() internally has gen >= 11. So the right hand
part of the || is always false.

Fourth, there's no point in wrapping the icl_is_hdr_plane() in parens.

Fifth, does this really apply to gen 10 cnl?

BR,
Jani.


> +		supported_csc |= BIT(DRM_COLOR_YCBCR_BT2020);
> +
>  	drm_plane_create_color_properties(&plane->base,
> -					  BIT(DRM_COLOR_YCBCR_BT601) |
> -					  BIT(DRM_COLOR_YCBCR_BT709),
> +					  supported_csc,
>  					  BIT(DRM_COLOR_YCBCR_LIMITED_RANGE) |
>  					  BIT(DRM_COLOR_YCBCR_FULL_RANGE),
>  					  DRM_COLOR_YCBCR_BT709,

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
