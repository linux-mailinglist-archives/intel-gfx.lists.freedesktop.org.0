Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D4280C9FF
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Dec 2023 13:40:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D515310E3DE;
	Mon, 11 Dec 2023 12:40:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6462C10E3DE
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Dec 2023 12:40:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702298441; x=1733834441;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=xhREqBr/qMQjjggJilqjg68vxUtxNFK7o7ixaRIwdGE=;
 b=l3iu/FQkb5+tC05J9r9C9T+i8+c0YO+VVVLKvauVlmeeopAYHCTB2sVA
 KPjppGmQRShMMKXHguAkMFaiDg0bVM+80wxz53neBVHGNQb/JsANZ64cY
 7DT2++BzMzLgs89dwGk3LqUF+qZZtBNoimjXVdzls8C9J1wBVOeitLw3I
 yppWHykcz3+d20gX3Tz0kK4TWmxOZ7AW3X0T/ScLrePeCCJmKhvFzjvMH
 cgwrs2nld9FMibyZW+13EjUHZsaZHzzBaSrTKtA1R1lTy0S9I31XuBJPy
 taOoJe223F0KAKT/4eCHrPzXQ9yFPwB49jYa2MoEVCb7kf1EvLfporWkG w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10920"; a="7994971"
X-IronPort-AV: E=Sophos;i="6.04,267,1695711600"; 
   d="scan'208";a="7994971"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2023 04:40:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10920"; a="916830441"
X-IronPort-AV: E=Sophos;i="6.04,267,1695711600"; d="scan'208";a="916830441"
Received: from kbalak2x-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.63.68])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2023 04:40:38 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915: Fix ADL+ tiled plane stride when the POT
 stride is smaller than the original
In-Reply-To: <ZXNjZ6i0lMbSc5nx@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231204202443.31247-1-ville.syrjala@linux.intel.com>
 <ZXNjZ6i0lMbSc5nx@intel.com>
Date: Mon, 11 Dec 2023 14:40:36 +0200
Message-ID: <87msugyksb.fsf@intel.com>
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
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 08 Dec 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Mon, Dec 04, 2023 at 10:24:43PM +0200, Ville Syrjala wrote:
>> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>=20
>> plane_view_scanout_stride() currently assumes that we had to pad the
>> mapping stride with dummy pages in order to align it. But that is not
>> the case if the original fb stride exceeds the aligned stride used
>> to populate the remapped view, which is calculated from the user
>> specified framebuffer width rather than the user specified framebuffer
>> stride.
>>=20
>> Ignore the original fb stride in this case and just stick to the POT
>> aligned stride. Getting this wrong will cause the plane to fetch the
>> wrong data, and can lead to fault errors if the page tables at the
>> bogus location aren't even populated.
>>=20
>> TODO: figure out if this is OK for CCS, or if we should instead increase
>> the width of the view to cover the entire user specified fb stride
>> instead...
>>=20
>> Cc: Imre Deak <imre.deak@intel.com>
>> Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
>> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Doh. Apparently I forgot to tag this for stable...
>
> Jani, can you include this w/ cc:stable in the next -fixes pull please?
>
> commit 01a39f1c4f12 ("drm/i915: Fix ADL+ tiled plane stride when the POT =
stride is smaller than the original")

Picked up to drm-intel-fixes with cc: stable.

Thanks,
Jani.


>
>> ---
>>  drivers/gpu/drm/i915/display/intel_fb.c | 3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i=
915/display/intel_fb.c
>> index 33a693460420..ab634a4c86d1 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fb.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
>> @@ -1381,7 +1381,8 @@ plane_view_scanout_stride(const struct intel_frame=
buffer *fb, int color_plane,
>>  	struct drm_i915_private *i915 =3D to_i915(fb->base.dev);
>>  	unsigned int stride_tiles;
>>=20=20
>> -	if (IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) >=3D 14)
>> +	if ((IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) >=3D 14) &&
>> +	    src_stride_tiles < dst_stride_tiles)
>>  		stride_tiles =3D src_stride_tiles;
>>  	else
>>  		stride_tiles =3D dst_stride_tiles;
>> --=20
>> 2.41.0

--=20
Jani Nikula, Intel
