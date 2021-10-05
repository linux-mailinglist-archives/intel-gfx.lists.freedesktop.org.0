Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 589C142239F
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Oct 2021 12:34:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1860E6EB27;
	Tue,  5 Oct 2021 10:34:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD5A96EB27
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Oct 2021 10:34:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10127"; a="226019272"
X-IronPort-AV: E=Sophos;i="5.85,348,1624345200"; d="scan'208";a="226019272"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2021 03:34:27 -0700
X-IronPort-AV: E=Sophos;i="5.85,348,1624345200"; d="scan'208";a="487974114"
Received: from gionascu-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.249.40.237])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2021 03:34:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Nautiyal\, Ankit K" <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, animesh.manna@intel.com, "Deak\,
 Imre" <imre.deak@intel.com>
In-Reply-To: <a3b08a93-e583-8f61-ee04-a76b8800a798@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211005071531.2274972-1-ankit.k.nautiyal@intel.com>
 <87lf3728zx.fsf@intel.com> <a3b08a93-e583-8f61-ee04-a76b8800a798@intel.com>
Date: Tue, 05 Oct 2021 13:34:21 +0300
Message-ID: <87bl43221e.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Remove check for low
 voltage sku for max dp source rate
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


Cc: Imre, I think you were involved in adding the checks.

BR,
Jani.

On Tue, 05 Oct 2021, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
> On 10/5/2021 1:34 PM, Jani Nikula wrote:
>> On Tue, 05 Oct 2021, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>>> The low voltage sku check can be ignored as OEMs need to consider that
>>> when designing the board and then put any limits in VBT.
>> "can" or "must"?
>>
>> VBT has been notoriously buggy over the years, and we need to safeguard
>> against that. Are there any cases where having these checks are wrong?
>
> Hi Jani,
>
> Bspec page for Combo PHY PLL frequencies now says "OEM must use VBT to=20
> specify a maximum that is tolerated by the board design" for the rates=20
> above 5.4G.
>
> Earlier it was mentioned that rates > 5.4G were supported on SKUs with=20
> Higher I/O Voltage.
>
> There was an instance where on an ADL-S board, where VBT was showing as=20
> HBR3 supporting for a combo phy port,=C2=A0 but we were reading the IO=20
> voltage as 0.85V in is_low_voltage_sku()
>
> (Specifically, we were reading Register_PORT_COMP_DW3 bits 24-25 as 0)=20
> for a combo PHY port, and therefore we were limiting the BW to 5.4Gbps
>
> Due to this, 8k@60 mode was getting pruned on the board for that combo=20
> phy port. On removing the low_voltage_sku( ) the mode was able to be set=
=20
> properly.
>
> Incidentally, with Windows 8k@60 was also coming up on the same board on=
=20
> same port.
>
> So I had checked with HW team and GOP/VBT team if driver should consider=
=20
> the low voltage sku check.=C2=A0 As per their response we 'can' ignore th=
e=20
> check and rely on the VBT, as OEM should limit the rate as per board=20
> design. The Bspec was also updated to reflect the same.
>
> So IMHO we need not limit the rate as per is_low_voltage_sku check, as=20
> this limiting of the rate through VBT is a must for the OEMs.
>
> I should perhaps change the wording of the commit message to convey the=20
> same.
>
>
> Thanks & Regards,
>
> Ankit
>
>
>>
>> BR,
>> Jani.
>>
>>> Same is now changed in Bspec (53720).
>>>
>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/intel_dp.c | 32 +++----------------------
>>>   1 file changed, 3 insertions(+), 29 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/=
i915/display/intel_dp.c
>>> index 74a657ae131a..75c364c3c88e 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>> @@ -297,23 +297,13 @@ static int dg2_max_source_rate(struct intel_dp *i=
ntel_dp)
>>>   	return intel_dp_is_edp(intel_dp) ? 810000 : 1350000;
>>>   }
>>>=20=20=20
>>> -static bool is_low_voltage_sku(struct drm_i915_private *i915, enum phy=
 phy)
>>> -{
>>> -	u32 voltage;
>>> -
>>> -	voltage =3D intel_de_read(i915, ICL_PORT_COMP_DW3(phy)) & VOLTAGE_INF=
O_MASK;
>>> -
>>> -	return voltage =3D=3D VOLTAGE_INFO_0_85V;
>>> -}
>>> -
>>>   static int icl_max_source_rate(struct intel_dp *intel_dp)
>>>   {
>>>   	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
>>>   	struct drm_i915_private *dev_priv =3D to_i915(dig_port->base.base.de=
v);
>>>   	enum phy phy =3D intel_port_to_phy(dev_priv, dig_port->base.port);
>>>=20=20=20
>>> -	if (intel_phy_is_combo(dev_priv, phy) &&
>>> -	    (is_low_voltage_sku(dev_priv, phy) || !intel_dp_is_edp(intel_dp)))
>>> +	if (intel_phy_is_combo(dev_priv, phy) && !intel_dp_is_edp(intel_dp))
>>>   		return 540000;
>>>=20=20=20
>>>   	return 810000;
>>> @@ -321,23 +311,7 @@ static int icl_max_source_rate(struct intel_dp *in=
tel_dp)
>>>=20=20=20
>>>   static int ehl_max_source_rate(struct intel_dp *intel_dp)
>>>   {
>>> -	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
>>> -	struct drm_i915_private *dev_priv =3D to_i915(dig_port->base.base.dev=
);
>>> -	enum phy phy =3D intel_port_to_phy(dev_priv, dig_port->base.port);
>>> -
>>> -	if (intel_dp_is_edp(intel_dp) || is_low_voltage_sku(dev_priv, phy))
>>> -		return 540000;
>>> -
>>> -	return 810000;
>>> -}
>>> -
>>> -static int dg1_max_source_rate(struct intel_dp *intel_dp)
>>> -{
>>> -	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
>>> -	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
>>> -	enum phy phy =3D intel_port_to_phy(i915, dig_port->base.port);
>>> -
>>> -	if (intel_phy_is_combo(i915, phy) && is_low_voltage_sku(i915, phy))
>>> +	if (intel_dp_is_edp(intel_dp))
>>>   		return 540000;
>>>=20=20=20
>>>   	return 810000;
>>> @@ -380,7 +354,7 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
>>>   			max_rate =3D dg2_max_source_rate(intel_dp);
>>>   		else if (IS_ALDERLAKE_P(dev_priv) || IS_ALDERLAKE_S(dev_priv) ||
>>>   			 IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))
>>> -			max_rate =3D dg1_max_source_rate(intel_dp);
>>> +			max_rate =3D 810000;
>>>   		else if (IS_JSL_EHL(dev_priv))
>>>   			max_rate =3D ehl_max_source_rate(intel_dp);
>>>   		else

--=20
Jani Nikula, Intel Open Source Graphics Center
