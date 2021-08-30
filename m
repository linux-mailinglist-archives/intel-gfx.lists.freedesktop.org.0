Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8CCA3FB395
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Aug 2021 12:07:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1168689BD5;
	Mon, 30 Aug 2021 10:07:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1097489BD5
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Aug 2021 10:07:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10091"; a="197809130"
X-IronPort-AV: E=Sophos;i="5.84,363,1620716400"; d="scan'208";a="197809130"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2021 03:07:35 -0700
X-IronPort-AV: E=Sophos;i="5.84,363,1620716400"; d="scan'208";a="530150737"
Received: from anikolae-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.249.47.21])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2021 03:07:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org,
 Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
In-Reply-To: <YSjHXg7gViK8n2Ib@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210826141830.889-1-jani.nikula@intel.com>
 <YSjHXg7gViK8n2Ib@intel.com>
Date: Mon, 30 Aug 2021 13:07:31 +0300
Message-ID: <87a6kzckkc.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915: remove unused i915->active_pipes
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

On Fri, 27 Aug 2021, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Aug 26, 2021 at 05:18:30PM +0300, Jani Nikula wrote:
>> Apparently the last reader of i915->active_pipes was removed with commit
>> ef79d62b5ce5 ("drm/i915: Encapsulate dbuf state handling harder"), and
>> now it's only ever written to. Remove it completely.
>>=20
>> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed.

BR,
Jani.


>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display.c | 4 +---
>>  drivers/gpu/drm/i915/i915_drv.h              | 6 ------
>>  2 files changed, 1 insertion(+), 9 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/=
drm/i915/display/intel_display.c
>> index fe5ad599c218..a692971b0209 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -3781,7 +3781,6 @@ static void intel_crtc_disable_noatomic(struct int=
el_crtc *crtc,
>>=20=20
>>  	intel_display_power_put_all_in_set(dev_priv, &crtc->enabled_power_doma=
ins);
>>=20=20
>> -	dev_priv->active_pipes &=3D ~BIT(pipe);
>>  	cdclk_state->min_cdclk[pipe] =3D 0;
>>  	cdclk_state->min_voltage_level[pipe] =3D 0;
>>  	cdclk_state->active_pipes &=3D ~BIT(pipe);
>> @@ -12351,8 +12350,7 @@ static void intel_modeset_readout_hw_state(struc=
t drm_device *dev)
>>  			    enableddisabled(crtc_state->hw.active));
>>  	}
>>=20=20
>> -	dev_priv->active_pipes =3D cdclk_state->active_pipes =3D
>> -		dbuf_state->active_pipes =3D active_pipes;
>> +	cdclk_state->active_pipes =3D dbuf_state->active_pipes =3D active_pipe=
s;
>>=20=20
>>  	readout_plane_state(dev_priv);
>>=20=20
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915=
_drv.h
>> index f64ba566fe8c..033031169d74 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -1015,12 +1015,6 @@ struct drm_i915_private {
>>=20=20
>>  	struct list_head global_obj_list;
>>=20=20
>> -	/*
>> -	 * For reading active_pipes holding any crtc lock is
>> -	 * sufficient, for writing must hold all of them.
>> -	 */
>> -	u8 active_pipes;
>> -
>>  	struct i915_wa_list gt_wa_list;
>>=20=20
>>  	struct i915_frontbuffer_tracking fb_tracking;
>> --=20
>> 2.20.1

--=20
Jani Nikula, Intel Open Source Graphics Center
