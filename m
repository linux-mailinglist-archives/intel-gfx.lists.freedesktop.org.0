Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0887286CCBE
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Feb 2024 16:21:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FC1910E498;
	Thu, 29 Feb 2024 15:21:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kmsbpiLm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44A3110E498
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Feb 2024 15:21:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709220094; x=1740756094;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=X+ZGD21fVM9m3JGDcP22rTjZWRLJ0RLm9sp2Ekjb9oI=;
 b=kmsbpiLmp6MUkHsNEfbyNrALxF2qDeSxZGY/JvUUdlgnIZ9RpS0yGnak
 UvfMv7hKWGeD5nHecxqjsdDsRfi0WYqJeEBrBWoGstEa/UQj8enG5xb7y
 yoaZ+oNKaKLnIS5IbPrryCjs/djTumHLxtqfoZTLyC857scjyf0Ue85Eo
 0k3+crkSDwuXRkASKhbB1Zls2PH7ADSrzpFcWIH/E3Ok65Z/5asSZtSNn
 D7mQzPettjbkVwNxZIhHvSWjDMIeM/prnB0/Z6L5bm8VHLhc31t18kM2c
 7U1GCuryqyRnzpUcEkpS372tP/d4vd88QMY/3ww0RUADGlgtbFsdmB9ba g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="15110299"
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; d="scan'208";a="15110299"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 07:21:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; d="scan'208";a="12417761"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 07:21:32 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 09/12] drm/i915: Skip intel_crtc_state_dump() if debugs
 aren't enabled
In-Reply-To: <87ttlr70w0.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240215164055.30585-1-ville.syrjala@linux.intel.com>
 <20240215164055.30585-10-ville.syrjala@linux.intel.com>
 <87ttlr70w0.fsf@intel.com>
Date: Thu, 29 Feb 2024 17:21:29 +0200
Message-ID: <87plwf70ue.fsf@intel.com>
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

On Thu, 29 Feb 2024, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Thu, 15 Feb 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>
>> intel_crtc_state_dump() does a whole boatload of string formatting
>> which is all wasted energy if the debugs aren't even enabled. Skip
>> the whole thing in that case.
>
> I wonder how something like this would work to skip it in a more generic
> fashion:

In the mean time,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> index 9cc473e5d353..0adc8020ae4f 100644
> --- a/include/drm/drm_print.h
> +++ b/include/drm/drm_print.h
> @@ -206,7 +206,8 @@ drm_vprintf(struct drm_printer *p, const char *fmt, v=
a_list *va)
>  {
>         struct va_format vaf =3D { .fmt =3D fmt, .va =3D va };
>=20=20
> -       p->printfn(p, &vaf);
> +       if (p->printfn)
> +               p->printfn(p, &vaf);
>  }
>=20=20
>  /**
> @@ -330,7 +331,7 @@ static inline struct drm_printer drm_dbg_printer(stru=
ct drm_device *drm,
>                                                  const char *prefix)
>  {
>         struct drm_printer p =3D {
> -               .printfn =3D __drm_printfn_dbg,
> +               .printfn =3D drm_debug_enabled(category) ? __drm_printfn_=
dbg : NULL,
>                 .arg =3D drm,
>                 .prefix =3D prefix,
>                 .category =3D category,
>
>>
>> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 3 +++
>>  1 file changed, 3 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/driv=
ers/gpu/drm/i915/display/intel_crtc_state_dump.c
>> index b5b9b99213cf..cd78c200d483 100644
>> --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
>> +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
>> @@ -192,6 +192,9 @@ void intel_crtc_state_dump(const struct intel_crtc_s=
tate *pipe_config,
>>  	char buf[64];
>>  	int i;
>>=20=20
>> +	if (!drm_debug_enabled(DRM_UT_KMS))
>> +		return;
>> +
>>  	p =3D drm_dbg_printer(&i915->drm, DRM_UT_KMS, NULL);
>>=20=20
>>  	drm_printf(&p, "[CRTC:%d:%s] enable: %s [%s]\n",

--=20
Jani Nikula, Intel
