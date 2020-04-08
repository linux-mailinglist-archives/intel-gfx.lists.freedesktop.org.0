Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E091A1D9C
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 10:51:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 560C86E217;
	Wed,  8 Apr 2020 08:51:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F5AC6E217
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2020 08:51:23 +0000 (UTC)
IronPort-SDR: Nj6BS3z4Hzg0n5JV0UDuJZCdrFohBbB0+D0vHG6XnmmOomCuNVvMaqIldxyPoeMpht/2UGW98H
 SvNBr1ejrtfA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2020 01:51:22 -0700
IronPort-SDR: +FDAqLdR48YMaGeIrLHGCX5mo/IcjKXdVGgSAVqpymy3d2PwzmhyhG5+k3vBBd6qk75sNhGSY7
 KSEG1qtME8bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,357,1580803200"; d="scan'208";a="330478327"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga001.jf.intel.com with ESMTP; 08 Apr 2020 01:51:22 -0700
Received: from fmsmsx123.amr.corp.intel.com (10.18.125.38) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 8 Apr 2020 01:51:22 -0700
Received: from bgsmsx155.gar.corp.intel.com (10.224.48.102) by
 fmsmsx123.amr.corp.intel.com (10.18.125.38) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 8 Apr 2020 01:51:21 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.111]) by
 BGSMSX155.gar.corp.intel.com ([169.254.12.231]) with mapi id 14.03.0439.000;
 Wed, 8 Apr 2020 14:21:19 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Kadiyala, Kishore" <kishore.kadiyala@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2] drm/i915: Add Plane color encoding support for
 YCBCR_BT2020
Thread-Index: AQHWDYJjGgrNMHAyI0Ko8JZ7N5hzJahu6i9A
Date: Wed, 8 Apr 2020 08:51:18 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F824494EE@BGSMSX104.gar.corp.intel.com>
References: <20200408084734.8834-1-kishore.kadiyala@intel.com>
In-Reply-To: <20200408084734.8834-1-kishore.kadiyala@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Kadiyala, Kishore <kishore.kadiyala@intel.com>
> Sent: Wednesday, April 8, 2020 2:18 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Kadiyala, Kishore <kishore.kadiyala@intel.com>; Ville Syrjala
> <ville.syrjala@linux.intel.com>; Shankar, Uma <uma.shankar@intel.com>
> Subject: [PATCH v2] drm/i915: Add Plane color encoding support for YCBCR_BT2020
> 
> Currently the plane property doesn't have support for YCBCR_BT2020, which enables
> the corresponding color conversion mode on plane CSC.
> This propery setting is confined only to HDR Planes as there is limitation in SDR
> Planes.

Append that this restriction is for ICL+

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
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c
> b/drivers/gpu/drm/i915/display/intel_sprite.c
> index deda351719db..4c25d90d16ce 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -3031,6 +3031,7 @@ skl_universal_plane_create(struct drm_i915_private
> *dev_priv,
>  	struct intel_plane *plane;
>  	enum drm_plane_type plane_type;
>  	unsigned int supported_rotations;
> +	unsigned int supported_csc;
>  	const u64 *modifiers;
>  	const u32 *formats;
>  	int num_formats;
> @@ -3105,9 +3106,14 @@ skl_universal_plane_create(struct drm_i915_private
> *dev_priv,
>  					   DRM_MODE_ROTATE_0,
>  					   supported_rotations);
> 
> +	supported_csc = BIT(DRM_COLOR_YCBCR_BT601) |
> +BIT(DRM_COLOR_YCBCR_BT709);
> +
> +	if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv) &&
> +					(icl_is_hdr_plane(dev_priv, plane_id)))

Refine this condition to enable for all GLK planes and restrict this only to bottom 3 HDR planes
for ICL. Will be good to mention a comment as well that ICL SDR planes have some issues with BT2020
conversion, hence not enabling it on those planes for ICL.

> +		supported_csc |= BIT(DRM_COLOR_YCBCR_BT2020);
> +
>  	drm_plane_create_color_properties(&plane->base,
> -					  BIT(DRM_COLOR_YCBCR_BT601) |
> -					  BIT(DRM_COLOR_YCBCR_BT709),
> +					  supported_csc,

Handle the BT2020 format in glk_plane_color_ctl as well for GLK.

> BIT(DRM_COLOR_YCBCR_LIMITED_RANGE) |
>  					  BIT(DRM_COLOR_YCBCR_FULL_RANGE),
>  					  DRM_COLOR_YCBCR_BT709,
> --
> 2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
