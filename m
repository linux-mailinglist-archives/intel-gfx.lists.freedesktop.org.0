Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6137141EB98
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Oct 2021 13:18:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CA796EDF7;
	Fri,  1 Oct 2021 11:18:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C1D06EDF7
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Oct 2021 11:18:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10123"; a="247961768"
X-IronPort-AV: E=Sophos;i="5.85,337,1624345200"; d="scan'208";a="247961768"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2021 04:18:19 -0700
X-IronPort-AV: E=Sophos;i="5.85,337,1624345200"; d="scan'208";a="709742159"
Received: from kdoertel-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.222.34])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2021 04:18:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
In-Reply-To: <YVbs71EKg3PklL8T@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211001100316.26441-1-jani.nikula@intel.com>
 <YVbs71EKg3PklL8T@intel.com>
Date: Fri, 01 Oct 2021 14:18:14 +0300
Message-ID: <875yuht2mh.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/reg: add AUD_TCA_DP_2DOT0_CTRL
 registers
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

On Fri, 01 Oct 2021, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Fri, Oct 01, 2021 at 01:03:16PM +0300, Jani Nikula wrote:
>> For controlling the audio SDP split.
>>=20
>> Bspec: 63837
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_reg.h | 5 +++++
>>  1 file changed, 5 insertions(+)
>>=20
>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915=
_reg.h
>> index 3a20a55d2512..0d2d89ea376b 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -9763,6 +9763,11 @@ enum {
>>  #define   AUDIO_CP_READY(trans)		((1 << 1) << ((trans) * 4))
>>  #define   AUDIO_ELD_VALID(trans)	((1 << 0) << ((trans) * 4))
>>=20=20
>> +#define _AUD_TCA_DP_2DOT0_CTRL		0x650bc
>> +#define _AUD_TCB_DP_2DOT0_CTRL		0x651bc
>> +#define AUD_DP_2DOT0_CTRL(trans)	_MMIO_TRANS(trans, _AUD_TCA_DP_2DOT0_C=
TRL, _AUD_TCB_DP_2DOT0_CTRL)
>> +#define  AUD_ENABLE_SDP_SPLIT		REG_BIT(31)
>
> Don't need the other bits? Most of the do say we don't need to
> program then. But the hblank guardband thing looks like maybe
> we might need it in some cases?

Yeah, always the battle what to include. This was a for a specific case
that's still brewing, and getting the registers defined is the low
hanging fruit.

>
> Either way, what you have here matches my spec so
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks,
Jani.


>
>> +
>>  #define HSW_AUD_CHICKENBIT			_MMIO(0x65f10)
>>  #define   SKL_AUD_CODEC_WAKE_SIGNAL		(1 << 15)
>>=20=20
>> --=20
>> 2.30.2

--=20
Jani Nikula, Intel Open Source Graphics Center
