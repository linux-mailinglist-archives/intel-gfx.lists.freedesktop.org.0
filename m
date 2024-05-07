Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1158BDDB1
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2024 11:03:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8035710E2D3;
	Tue,  7 May 2024 09:03:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NEMnfQZC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5444210E2D3;
 Tue,  7 May 2024 09:03:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715072597; x=1746608597;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=dlbpu//HdoToxJGXM29l3a91r6EB8ka6Q+x9LgF+0o0=;
 b=NEMnfQZCoqT8EUk78POW17niVBjwxcKpsGrgwpqJcDfBfeqNxqbKbx3b
 P7ZJffaBRqDvlJEYtJuyXeVcCoVxcgcEzzJRpvUSNCJdPbGToEN3OXEWW
 rs+VIcC455bdU42DFwdGabBGMS/a61NoGmVkYQvs6SxNoxrPafowQTX21
 Gflw2xkW54xYr+oHB441zVD6Y+SSV0HyN4CaE74ANg4jfz619tF39P0gU
 AunfOjSiFxOHJx8Ba2KPMBg3Rr2JaoRXh8Z84B1TyreqBWNoinF+BwVga
 fylRi1b63nm8z9miUZeW6S/Lv2eBDDLvxeeNbeRvT849ti/W/XZany0ET g==;
X-CSE-ConnectionGUID: /KbEqYwERi+HD3sfwrA7hQ==
X-CSE-MsgGUID: oxS4cPVUQfWfXsoiimJOjw==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="11013518"
X-IronPort-AV: E=Sophos;i="6.07,260,1708416000"; d="scan'208";a="11013518"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2024 02:02:54 -0700
X-CSE-ConnectionGUID: KZSK+hmqS4CvLEug/IMeCw==
X-CSE-MsgGUID: 3Zu9jipYQYy2LCFHUEfNuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,260,1708416000"; d="scan'208";a="28452016"
Received: from mklonows-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.16])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2024 02:02:52 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/9] drm/i915: Clean up skl+ plane stride limits
In-Reply-To: <ZjkHaZOdijUrHrci@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240506125718.26001-1-ville.syrjala@linux.intel.com>
 <20240506125718.26001-3-ville.syrjala@linux.intel.com>
 <874jbbm3zk.fsf@intel.com> <ZjkHaZOdijUrHrci@intel.com>
Date: Tue, 07 May 2024 12:02:49 +0300
Message-ID: <87jzk6kn9i.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Mon, 06 May 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Mon, May 06, 2024 at 05:03:59PM +0300, Jani Nikula wrote:
>> On Mon, 06 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >
>> > skl_plane_max_stride() is pretty messy. Streamline it and
>> > split it into clear skl+ vs. adl+ variants.
>> >
>> > TODO: Deal with icl and tgl strude limits properly
>> >
>> > Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> > ---
>> >  .../drm/i915/display/skl_universal_plane.c    | 65 +++++++++++--------
>> >  1 file changed, 37 insertions(+), 28 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/driv=
ers/gpu/drm/i915/display/skl_universal_plane.c
>> > index 0a8e781a3648..b8103d6ebc1f 100644
>> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> > @@ -461,41 +461,46 @@ static int icl_plane_max_height(const struct drm=
_framebuffer *fb,
>> >  }
>> >=20=20
>> >  static unsigned int
>> > -skl_plane_max_stride(struct intel_plane *plane,
>> > -		     u32 pixel_format, u64 modifier,
>> > -		     unsigned int rotation)
>> > +plane_max_stride(struct intel_plane *plane,
>> > +		 u32 pixel_format, u64 modifier,
>> > +		 unsigned int rotation,
>> > +		 unsigned int max_pixels,
>> > +		 unsigned int max_bytes)
>> >  {
>> > -	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
>> >  	const struct drm_format_info *info =3D drm_format_info(pixel_format);
>> >  	int cpp =3D info->cpp[0];
>> > -	int max_horizontal_pixels =3D 8192;
>> > -	int max_stride_bytes;
>> > -
>> > -	if (DISPLAY_VER(i915) >=3D 13) {
>> > -		/*
>> > -		 * The stride in bytes must not exceed of the size
>> > -		 * of 128K bytes. For pixel formats of 64bpp will allow
>> > -		 * for a 16K pixel surface.
>> > -		 */
>> > -		max_stride_bytes =3D 131072;
>> > -		if (cpp =3D=3D 8)
>> > -			max_horizontal_pixels =3D 16384;
>>=20
>> The commit message doesn't mention anything about this being dropped.
>
> 16k pixels * 8 cpp =3D=3D 128k bytes, so it's completely redundant.

Right. The old one was just so hard to read. :/

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
>>=20
>> BR,
>> Jani.
>>=20
>> > -		else
>> > -			max_horizontal_pixels =3D 65536;
>> > -	} else {
>> > -		/*
>> > -		 * "The stride in bytes must not exceed the
>> > -		 * of the size of 8K pixels and 32K bytes."
>> > -		 */
>> > -		max_stride_bytes =3D 32768;
>> > -	}
>> >=20=20
>> >  	if (drm_rotation_90_or_270(rotation))
>> > -		return min(max_horizontal_pixels, max_stride_bytes / cpp);
>> > +		return min(max_pixels, max_bytes / cpp);
>> >  	else
>> > -		return min(max_horizontal_pixels * cpp, max_stride_bytes);
>> > +		return min(max_pixels * cpp, max_bytes);
>> >  }
>> >=20=20
>> > +static unsigned int
>> > +adl_plane_max_stride(struct intel_plane *plane,
>> > +		     u32 pixel_format, u64 modifier,
>> > +		     unsigned int rotation)
>> > +{
>> > +	unsigned int max_pixels =3D 65536; /* PLANE_OFFSET limit */
>> > +	unsigned int max_bytes =3D 128 * 1024;
>> > +
>> > +	return plane_max_stride(plane, pixel_format,
>> > +				modifier, rotation,
>> > +				max_pixels, max_bytes);
>> > +}
>> > +
>> > +static unsigned int
>> > +skl_plane_max_stride(struct intel_plane *plane,
>> > +		     u32 pixel_format, u64 modifier,
>> > +		     unsigned int rotation)
>> > +{
>> > +	unsigned int max_pixels =3D 8192; /* PLANE_OFFSET limit */
>> > +	unsigned int max_bytes =3D 32 * 1024;
>> > +
>> > +	return plane_max_stride(plane, pixel_format,
>> > +				modifier, rotation,
>> > +				max_pixels, max_bytes);
>> > +}
>> >=20=20
>> >  /* Preoffset values for YUV to RGB Conversion */
>> >  #define PREOFF_YUV_TO_RGB_HI		0x1800
>> > @@ -2357,7 +2362,11 @@ skl_universal_plane_create(struct drm_i915_priv=
ate *dev_priv,
>> >  		plane->min_cdclk =3D skl_plane_min_cdclk;
>> >  	}
>> >=20=20
>> > -	plane->max_stride =3D skl_plane_max_stride;
>> > +	if (DISPLAY_VER(dev_priv) >=3D 13)
>> > +		plane->max_stride =3D adl_plane_max_stride;
>> > +	else
>> > +		plane->max_stride =3D skl_plane_max_stride;
>> > +
>> >  	if (DISPLAY_VER(dev_priv) >=3D 11) {
>> >  		plane->update_noarm =3D icl_plane_update_noarm;
>> >  		plane->update_arm =3D icl_plane_update_arm;
>>=20
>> --=20
>> Jani Nikula, Intel

--=20
Jani Nikula, Intel
