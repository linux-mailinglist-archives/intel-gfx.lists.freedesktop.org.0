Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D82194024E9
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Sep 2021 10:11:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE93489D5F;
	Tue,  7 Sep 2021 08:11:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 604B789D5F
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Sep 2021 08:11:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10099"; a="200338702"
X-IronPort-AV: E=Sophos;i="5.85,274,1624345200"; d="scan'208";a="200338702"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2021 01:11:50 -0700
X-IronPort-AV: E=Sophos;i="5.85,274,1624345200"; d="scan'208";a="546625630"
Received: from hoermank-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.214.32])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2021 01:11:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Nautiyal\, Ankit K" <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: =?utf-8?Q?Jos=C3=A9?= Roberto de Souza <jose.souza@intel.com>
In-Reply-To: <4f363a2a-484f-c896-3647-cfc72ac59428@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1629811722.git.jani.nikula@intel.com>
 <17ff3112bb2bc3f7fb759306f9f24c4a84147e01.1629811722.git.jani.nikula@intel.com>
 <4f363a2a-484f-c896-3647-cfc72ac59428@intel.com>
Date: Tue, 07 Sep 2021 11:11:43 +0300
Message-ID: <877dfs954w.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915/bios: use alternate aux
 channel directly from child data
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

On Thu, 26 Aug 2021, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
> On 8/24/2021 7:04 PM, Jani Nikula wrote:
>> Avoid extra caching of the data.
>>
>> Cc: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_bios.c | 26 +++++++++++------------
>>   drivers/gpu/drm/i915/i915_drv.h           |  1 -
>>   2 files changed, 12 insertions(+), 15 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm=
/i915/display/intel_bios.c
>> index 10b2beddc121..674f1424fcc2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> @@ -1565,28 +1565,29 @@ static enum port get_port_by_aux_ch(struct drm_i=
915_private *i915, u8 aux_ch)
>>   	for_each_port(port) {
>>   		info =3D &i915->vbt.ddi_port_info[port];
>>=20=20=20
>> -		if (info->devdata && aux_ch =3D=3D info->alternate_aux_channel)
>> +		if (info->devdata && aux_ch =3D=3D info->devdata->child.aux_channel)
>>   			return port;
>>   	}
>>=20=20=20
>>   	return PORT_NONE;
>>   }
>>=20=20=20
>> -static void sanitize_aux_ch(struct drm_i915_private *i915,
>> +static void sanitize_aux_ch(struct intel_bios_encoder_data *devdata,
>>   			    enum port port)
>>   {
>> -	struct ddi_vbt_port_info *info =3D &i915->vbt.ddi_port_info[port];
>> +	struct drm_i915_private *i915 =3D devdata->i915;
>> +	struct ddi_vbt_port_info *info;
>>   	struct child_device_config *child;
>>   	enum port p;
>>=20=20=20
>> -	p =3D get_port_by_aux_ch(i915, info->alternate_aux_channel);
>> +	p =3D get_port_by_aux_ch(i915, devdata->child.aux_channel);
>>   	if (p =3D=3D PORT_NONE)
>>   		return;
>>=20=20=20
>>   	drm_dbg_kms(&i915->drm,
>>   		    "port %c trying to use the same AUX CH (0x%x) as port %c, "
>>   		    "disabling port %c DP support\n",
>> -		    port_name(port), info->alternate_aux_channel,
>> +		    port_name(port), devdata->child.aux_channel,
>>   		    port_name(p), port_name(p));
>>=20=20=20
>>   	/*
>> @@ -1602,7 +1603,7 @@ static void sanitize_aux_ch(struct drm_i915_privat=
e *i915,
>>   	child =3D &info->devdata->child;
>>=20=20=20
>>   	child->device_type &=3D ~DEVICE_TYPE_DISPLAYPORT_OUTPUT;
>> -	info->alternate_aux_channel =3D 0;
>> +	child->aux_channel =3D 0;
>>   }
>>=20=20=20
>>   static const u8 cnp_ddc_pin_map[] =3D {
>> @@ -1980,11 +1981,8 @@ static void parse_ddi_port(struct drm_i915_privat=
e *i915,
>>   		}
>>   	}
>>=20=20=20
>> -	if (is_dp) {
>> -		info->alternate_aux_channel =3D child->aux_channel;
>> -
>> -		sanitize_aux_ch(i915, port);
>> -	}
>> +	if (is_dp)
>> +		sanitize_aux_ch(devdata, port);
>>=20=20=20
>>   	hdmi_level_shift =3D _intel_bios_hdmi_level_shift(devdata);
>>   	if (hdmi_level_shift >=3D 0) {
>> @@ -2863,7 +2861,7 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i915=
_private *i915,
>>   		&i915->vbt.ddi_port_info[port];
>>   	enum aux_ch aux_ch;
>>=20=20=20
>> -	if (!info->alternate_aux_channel) {
>> +	if (!info->devdata->child.aux_channel) {
>
> Hi Jani,
>
> The series and the change make sense to me.
>
>  From the CI results it seems that cases with LVDS panel connected are=20
> getting issues here.
>
> Apparently info->devdata is not set in this case. I guess that,=20
> parse_ddi_port() returns early before info->devdata gets set.
>
> I think without the patch, this situation is not encountered due to the=20
> fact that 'info->alternate_aux_channel, is initialized to 0.
>
> With this change, perhaps we should check for 'info->devdata' before=20
> checking for info->devdata->child.aux_channel.
>
> (This will translate to checking for 'devdata' in the final patch as it=20
> removes ddi_port_info).
>
> Hope it helps.

Yes, indeed, thanks for figuring this out!

And thanks for the reviews.

BR,
Jani.


>
> Regards,
>
> Ankit
>
>
>>   		aux_ch =3D (enum aux_ch)port;
>>=20=20=20
>>   		drm_dbg_kms(&i915->drm,
>> @@ -2879,7 +2877,7 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i915=
_private *i915,
>>   	 * ADL-S VBT uses PHY based mapping. Combo PHYs A,B,C,D,E
>>   	 * map to DDI A,TC1,TC2,TC3,TC4 respectively.
>>   	 */
>> -	switch (info->alternate_aux_channel) {
>> +	switch (info->devdata->child.aux_channel) {
>>   	case DP_AUX_A:
>>   		aux_ch =3D AUX_CH_A;
>>   		break;
>> @@ -2940,7 +2938,7 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i915=
_private *i915,
>>   			aux_ch =3D AUX_CH_I;
>>   		break;
>>   	default:
>> -		MISSING_CASE(info->alternate_aux_channel);
>> +		MISSING_CASE(info->devdata->child.aux_channel);
>>   		aux_ch =3D AUX_CH_A;
>>   		break;
>>   	}
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915=
_drv.h
>> index a0dead9f9222..91097526cd96 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -640,7 +640,6 @@ struct ddi_vbt_port_info {
>>   	/* Non-NULL if port present. */
>>   	struct intel_bios_encoder_data *devdata;
>>=20=20=20
>> -	u8 alternate_aux_channel;
>>   	u8 alternate_ddc_pin;
>>   };
>>=20=20=20

--=20
Jani Nikula, Intel Open Source Graphics Center
