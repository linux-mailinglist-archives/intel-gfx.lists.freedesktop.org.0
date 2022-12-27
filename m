Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E427656C48
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Dec 2022 16:07:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB1EC10E07C;
	Tue, 27 Dec 2022 15:07:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6450A10E07C
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Dec 2022 15:07:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672153645; x=1703689645;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=ZsTrVYmXyi4Lm9Oo6efJaBEyEOdPTJvOIfRf0NeDOpA=;
 b=RJJE/O+GuWAg8LGVP9NURls022D8n5062/FpFGrhEWz7oAUPU4ZzutYd
 5IKhqgmb3IzUkEmyArVVTv79CjQedRYNgLclWiVPjDmTSSP6hmrpvK0f2
 2qiUL7jdS0cTeYoXoz9i4P7qQ4MkhT81ixHevyRAlx6OK+6pbQqSBZATe
 JealZWveB+gNprWcwgdNT5KSbXYDyuKyeVLg+jvekQBnNFwwYodQay5+u
 zYNGJ9KBlyibOtbZzI5hhdwBoTpafIvjmn0sHjhu4ODrFzA64rgdA6WEw
 xsFrK97jUsDPKfCYssmmdVB5QKjl3jKI51TclrqITbwJ9JTQsi4Xty8ET w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10573"; a="301072884"
X-IronPort-AV: E=Sophos;i="5.96,278,1665471600"; d="scan'208";a="301072884"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Dec 2022 07:07:23 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10573"; a="741752623"
X-IronPort-AV: E=Sophos;i="5.96,278,1665471600"; d="scan'208";a="741752623"
Received: from lsitkiew-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.8.250])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Dec 2022 07:07:22 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <Y6HJ5H7ddL7j2Omy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221220140105.313333-1-jani.nikula@intel.com>
 <Y6HJ5H7ddL7j2Omy@intel.com>
Date: Tue, 27 Dec 2022 17:07:20 +0200
Message-ID: <87o7ro28d3.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsi: fix MIPI_BKLT_EN_1 native
 GPIO index
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

On Tue, 20 Dec 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Tue, Dec 20, 2022 at 04:01:05PM +0200, Jani Nikula wrote:
>> Due to copy-paste fail, MIPI_BKLT_EN_1 would always use PPS index 1,
>> never 0. Fix the sloppiest commit in recent memory.
>>=20
>> Fixes: f087cfe6fcff ("drm/i915/dsi: add support for ICL+ native MIPI GPI=
O sequence")
>> Reported-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, I pushed this before holidays.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/=
drm/i915/display/intel_dsi_vbt.c
>> index 41f025f089d9..2cbc1292ab38 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
>> @@ -430,7 +430,7 @@ static void icl_native_gpio_set_value(struct drm_i91=
5_private *dev_priv,
>>  		break;
>>  	case MIPI_BKLT_EN_1:
>>  	case MIPI_BKLT_EN_2:
>> -		index =3D gpio =3D=3D MIPI_AVDD_EN_1 ? 0 : 1;
>> +		index =3D gpio =3D=3D MIPI_BKLT_EN_1 ? 0 : 1;
>>=20=20
>>  		intel_de_rmw(dev_priv, PP_CONTROL(index), EDP_BLC_ENABLE,
>>  			     value ? EDP_BLC_ENABLE : 0);
>> --=20
>> 2.34.1

--=20
Jani Nikula, Intel Open Source Graphics Center
