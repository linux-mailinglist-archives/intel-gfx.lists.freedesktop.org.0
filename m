Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F6E533B05
	for <lists+intel-gfx@lfdr.de>; Wed, 25 May 2022 12:55:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AB0A10F1A4;
	Wed, 25 May 2022 10:55:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3042E10F236
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 May 2022 10:55:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653476132; x=1685012132;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=q+vzjHGC7GmSp9e9TdS8AsxgS8RY0njqIqk3dGM6wrY=;
 b=Tb5niXp6oBsYfdE5c3FbByfZGMNK8Z2M+AvWmGgd4BhVr94E2jDqHiWw
 zLF3QdwC37Sf8bZ5vw6nF99L/6WygG27ZZN0C7SSJfw+JrM4Jr7OkGdE7
 2XJNCD1FCRQ3qLBaxAr/HGfTS5HEiGEaxATT+19+a5UcFGWoY3LR2QqsF
 QDDXBeQrEdmLBsvA0IPNJhPc0u3X2JSnWjYs9T3FAZzzg0ma+pAcpsWdT
 U+njL6kGVtHToKKPrpzrt0MPd40nEQbVnXtwWCv6TMK5DRm3tvIJly7GF
 5HVIRcUqUJ7L66xfL+Fj1Zg6PoLFIQ/QEkLYppm42M3knUQTKqF4otOcS A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10357"; a="336834819"
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="336834819"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 03:55:31 -0700
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="703950308"
Received: from mwardyn-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.249.149.191])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 03:55:30 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <Yo4Ht6NMavN8Hjfy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220510104242.6099-1-ville.syrjala@linux.intel.com>
 <20220510104242.6099-13-ville.syrjala@linux.intel.com>
 <87pmk2uhm2.fsf@intel.com> <Yo4Ht6NMavN8Hjfy@intel.com>
Date: Wed, 25 May 2022 13:55:27 +0300
Message-ID: <87bkvlvq3k.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 12/15] drm/i915/bios: Split VBT data into
 per-panel vs. global parts
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 25 May 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, May 25, 2022 at 11:44:05AM +0300, Jani Nikula wrote:
>> On Tue, 10 May 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >
>> > Move the panel specific VBT parsing to happen during the
>> > output probing stage. Needs to be done because the VBT
>> > parsing will need to look at the EDID to determine
>> > the correct panel_type on some machines.
>> >
>> > We split the parsed VBT data (i915->vbt) along the same
>> > boundary. For the moment we just hoist all the panel
>> > specific stuff into connector->panel.vbt since that seems
>> > like the most convenient place for eg. the backlight code.
>>=20
>> For a lot of stuff I was thinking we'd hang this stuff off of the
>> encoder, but I guess for panel stuff this makes sense. Child device
>> stuff in the encoder then.
>
> Yeah, not really sure where to stuff it all. Also a bunch of it might
> just be able to be disappeared eventually. Just took the easiest
> approach here for the moment.
>
>>=20
>> >  drivers/gpu/drm/i915/i915_drv.h               |  63 ---
>>=20
>> Gotta love this.
>>=20
>> > diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/d=
rm/i915/display/intel_drrs.c
>> > index 166caf293f7b..7da4a9cbe4ba 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_drrs.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
>> > @@ -217,9 +217,6 @@ static void intel_drrs_frontbuffer_update(struct d=
rm_i915_private *dev_priv,
>> >  {
>> >  	struct intel_crtc *crtc;
>> >=20=20
>> > -	if (dev_priv->vbt.drrs_type !=3D DRRS_TYPE_SEAMLESS)
>> > -		return;
>>=20
>> I think this was the only unexplained thing in the entire monster patch
>> that I could spot. With that explained, even just in reply,
>
> This gets called for the whole device, so we don't know which
> panel we're dealing with here. It was just a micro optimization
> to avoid having to look through the crtcs to figure out which ones
> are affected, so dropping it won't cause any functional changes.

Ah, thanks. I guess it could be a separate patch, but *shrug*. R-b
stands either way.

>
>>=20
>> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>
> Thanks.
>
>>=20
>> > -
>> >  	for_each_intel_crtc(&dev_priv->drm, crtc) {
>> >  		unsigned int frontbuffer_bits;
>> >=20=20
>>=20
>> --=20
>> Jani Nikula, Intel Open Source Graphics Center

--=20
Jani Nikula, Intel Open Source Graphics Center
