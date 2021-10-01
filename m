Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A857B41E92E
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Oct 2021 10:50:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 528376E44A;
	Fri,  1 Oct 2021 08:49:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B05C6E44A
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Oct 2021 08:49:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10123"; a="247932362"
X-IronPort-AV: E=Sophos;i="5.85,337,1624345200"; d="scan'208";a="247932362"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2021 01:49:57 -0700
X-IronPort-AV: E=Sophos;i="5.85,337,1624345200"; d="scan'208";a="556196753"
Received: from kdoertel-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.222.34])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2021 01:49:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
In-Reply-To: <87ilyiuzst.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1632992608.git.jani.nikula@intel.com>
 <427d27eb4e5daca208d496d6c2ffc91ed90ba714.1632992608.git.jani.nikula@intel.com>
 <YVWHB94gggUJ4aOB@intel.com> <87ilyiuzst.fsf@intel.com>
Date: Fri, 01 Oct 2021 11:49:54 +0300
Message-ID: <87tui1t9hp.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/fdi: move fdi modeset asserts
 to intel_fdi.c
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

On Thu, 30 Sep 2021, Jani Nikula <jani.nikula@intel.com> wrote:
> On Thu, 30 Sep 2021, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.c=
om> wrote:
>> On Thu, Sep 30, 2021 at 12:22:58PM +0300, Jani Nikula wrote:
>> <snip>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm=
/i915/display/intel_fdi.c
>>> index af01d1fa761e..02d3294bad7b 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_fdi.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_fdi.c
>>> @@ -10,6 +10,97 @@
>>>  #include "intel_fdi.h"
>>>  #include "intel_sideband.h"
>>>=20=20
>>> +static void assert_fdi_tx(struct drm_i915_private *dev_priv,
>>> +			  enum pipe pipe, bool state)
>>> +{
>>> +	bool cur_state;
>>> +
>>> +	if (HAS_DDI(dev_priv)) {
>>> +		/*
>>> +		 * DDI does not have a specific FDI_TX register.
>>> +		 *
>>> +		 * FDI is never fed from EDP transcoder
>>> +		 * so pipe->transcoder cast is fine here.
>>> +		 */
>>> +		enum transcoder cpu_transcoder =3D (enum transcoder)pipe;
>>> +		cur_state =3D intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transco=
der)) & TRANS_DDI_FUNC_ENABLE;
>>> +	} else {
>>> +		cur_state =3D intel_de_read(dev_priv, FDI_TX_CTL(pipe)) & FDI_TX_ENA=
BLE;
>>> +	}
>>> +	I915_STATE_WARN(cur_state !=3D state,
>>> +			"FDI TX state assertion failure (expected %s, current %s)\n",
>>> +			onoff(state), onoff(cur_state));
>>> +}
>>> +
>>> +void assert_fdi_tx_enabled(struct drm_i915_private *i915, enum pipe pi=
pe)
>>> +{
>>> +	assert_fdi_tx(i915, pipe, true);
>>> +}
>>> +
>>> +void assert_fdi_tx_disabled(struct drm_i915_private *i915, enum pipe p=
ipe)
>>> +{
>>> +	assert_fdi_tx(i915, pipe, false);
>>> +}
>>
>> For these wrappers I could argue that static inlines would be less
>> loc overall, while still wouldn't need any extra struct definitions/etc.
>> in the header. But not performance sensitive so from that pov static
>> inline is pointless.
>
> I didn't actually check the compiler output, but I think even
> performance wise it'll probably end up being just one function call
> either way. It's just a question which side of the call the logic
> is. But agreed, doesn't really matter.
>
> Anyway, the main argument I have for avoiding static inlines is to not
> set an example to cargo cult from. They should be the exception, not the
> rule. I think both the driver and the team have grown big enough to
> require a style that promotes better structure. Because let's face it,
> people look at what's there, copy the style, and not think of all the
> subtleties.
>
>> Anyways, this approach seems fine to me. For the series
>> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Thanks,
> Jani.

And pushed.

BR,
Jani.


--=20
Jani Nikula, Intel Open Source Graphics Center
