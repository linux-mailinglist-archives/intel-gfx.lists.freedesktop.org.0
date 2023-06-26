Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6443973DF58
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jun 2023 14:35:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF75E10E1F4;
	Mon, 26 Jun 2023 12:35:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4ED710E0D3
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jun 2023 12:35:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687782927; x=1719318927;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=hC3oloL1xpfjh6kz/X571u28llzEB9DL+38FhHrWoRk=;
 b=OO2MBiyIQ9+AeDMvxUH2tujeRJPePDe6YcWKFsWAYhNCm89SVqRKrvPy
 c8GtOsQ7aPU2uPIoL1CWdzVD9PZTgTCgSxwohyU/XsMzVVrpisfSlBUai
 JA4kIexSsP1Bdrjgy1j07W4q2WClhebD+Hnywg8aayC43Tey8WyWc4WEO
 DHFakf6jgnSHP3lq7yd3SccHx1sywjx7wWyZP+rN0qqhWQR+ftDGfuBRO
 S1rxKGACuXxr21cauu/FiMIC7z0OTCxDVvx0q51J/zajFgbKScAiyUi59
 MeJWe2OpqTmzJ0ahoLjyCL0VFTor/VZcfGqmfZtAzwEH6ZfE4h5/Xm44b A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10752"; a="427249601"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="427249601"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 05:35:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10752"; a="719341675"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="719341675"
Received: from avhiruda-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.41.186])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 05:35:24 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Ankit
 Nautiyal <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZIm0tjXL3sR6xwPf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230614040749.1702127-1-ankit.k.nautiyal@intel.com>
 <ZIm0tjXL3sR6xwPf@intel.com>
Date: Mon, 26 Jun 2023 15:35:09 +0300
Message-ID: <87edlyv1tu.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display : Remove support for
 interlace mode
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

On Wed, 14 Jun 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Jun 14, 2023 at 09:37:49AM +0530, Ankit Nautiyal wrote:
>> There are multiple panels with which Interlace mode is seen to cause
>> flickering (interlacing artifacts) with different platforms.
>>=20
>> The issue is seen with both HDMI, DP with CML, CFL, ICL, EHL with
>> different display models from Acer, Benq, Dell etc.
>> There are some models where the issue is not seen with same setup.
>>=20
>> Due to this, cases where multiple display are configured in clone mode,
>> sometimes interlaced mode gets picked up in one of the displays
>> and flickers are seen.
>>=20
>> Since its difficult to pin point if issue is due to the HW or due to
>> panels, removing interlace mode for DP and HDMI till this is
>> root caused.
>
> I though people already confirmewd the problem on non-Intel hw?
> So seems pretty clear that it's the displays themselves that are
> garbage.

Moreover, later means never. If you brush it under the carpet, nobody's
ever going to root cause it.

BR,
Jani.


>
>>=20
>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8395
>>=20
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp.c   | 3 ---
>>  drivers/gpu/drm/i915/display/intel_hdmi.c | 3 ---
>>  2 files changed, 6 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i=
915/display/intel_dp.c
>> index f4192fda1a76..78d8ceb590a3 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -5665,9 +5665,6 @@ intel_dp_init_connector(struct intel_digital_port =
*dig_port,
>>  	drm_connector_init(dev, connector, &intel_dp_connector_funcs, type);
>>  	drm_connector_helper_add(connector, &intel_dp_connector_helper_funcs);
>>=20=20
>> -	if (!HAS_GMCH(dev_priv) && DISPLAY_VER(dev_priv) < 12)
>> -		connector->interlace_allowed =3D true;
>> -
>>  	intel_connector->polled =3D DRM_CONNECTOR_POLL_HPD;
>>=20=20
>>  	intel_dp_aux_init(intel_dp);
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm=
/i915/display/intel_hdmi.c
>> index 7ac5e6c5e00d..9b3ea307ef40 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> @@ -2998,9 +2998,6 @@ void intel_hdmi_init_connector(struct intel_digita=
l_port *dig_port,
>>  				    ddc);
>>  	drm_connector_helper_add(connector, &intel_hdmi_connector_helper_funcs=
);
>>=20=20
>> -	if (DISPLAY_VER(dev_priv) < 12)
>> -		connector->interlace_allowed =3D true;
>> -
>>  	connector->stereo_allowed =3D true;
>>=20=20
>>  	if (DISPLAY_VER(dev_priv) >=3D 10)
>> --=20
>> 2.40.1

--=20
Jani Nikula, Intel Open Source Graphics Center
