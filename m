Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6052552CE47
	for <lists+intel-gfx@lfdr.de>; Thu, 19 May 2022 10:25:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BC6F10F431;
	Thu, 19 May 2022 08:25:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 826FC10FDAF
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 May 2022 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652948753; x=1684484753;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=6y0I+dTXnRZJ4xUg2SLdh45EvBZIkq8Sat+wIqUXmcI=;
 b=VB3PZ9JPO1CyvqCiK9a7Sc1537OTWVflgw1SRaCdYPPSAhrYYgcX4Vd/
 NHsWWZ1tOoZKQb2WzUj625qOBS92NP2mavA91o57VDRBBdg/+7ZtETNtl
 0eoRDp1QTJqu5pCmPfdwJOOH1apteably/DerI99sOC28trv2OB5EdpJQ
 Iny4PwH+yd5TrpfsdOPiJgOu5SbjDCoXyECUcPbsxZb//B8d/7q1cCiAZ
 Dsha/GLygjpLmGmxEl0cWlDr9vukegPkhP4kPOXAOBeDIvWdguyVwPe8x
 6ExC3GXrhfrJgvFeOIOUeKhqF0MALs8wGY3eVJiE1gUmktBGEHfgbGqZW A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10351"; a="270915045"
X-IronPort-AV: E=Sophos;i="5.91,237,1647327600"; d="scan'208";a="270915045"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2022 01:25:52 -0700
X-IronPort-AV: E=Sophos;i="5.91,237,1647327600"; d="scan'208";a="598434518"
Received: from tszulist-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.146.157])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2022 01:25:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <878rqzdk22.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220518113315.1305027-1-jani.nikula@intel.com>
 <YoTsVS5AaJfNe9hE@intel.com> <878rqzdk22.fsf@intel.com>
Date: Thu, 19 May 2022 11:25:47 +0300
Message-ID: <87wneic4j8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/reg: fix undefined behavior
 due to shift overflowing the constant
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
Cc: intel-gfx@lists.freedesktop.org, Borislav Petkov <bp@suse.de>,
 Randy Dunlap <rdunlap@infradead.org>, Ruiqi GONG <gongruiqi1@huawei.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 18 May 2022, Jani Nikula <jani.nikula@intel.com> wrote:
> On Wed, 18 May 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.c=
om> wrote:
>> On Wed, May 18, 2022 at 02:33:14PM +0300, Jani Nikula wrote:
>>> Use REG_GENMASK() and REG_FIELD_PREP() to avoid errors due to
>>> -fsanitize=3Dshift.
>>
>> I presume it's just unhappy about shifting into the sign bit?
>
> Yeah, and apparently it also only happens on some GCC versions. *shrug*.
>
>>
>> Changes look correct:
>> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Thanks,
> Jani.

And pushed 1/2 to drm-intel-next.

BR,
Jani.


>
>>
>>>=20
>>> References: https://lore.kernel.org/r/20220405151517.29753-12-bp@alien8=
.de
>>> Reported-by: Borislav Petkov <bp@suse.de>
>>> Reported-by: Ruiqi GONG <gongruiqi1@huawei.com>
>>> Cc: Randy Dunlap <rdunlap@infradead.org>
>>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>> ---
>>>  drivers/gpu/drm/i915/i915_reg.h | 32 ++++++++++++++++----------------
>>>  1 file changed, 16 insertions(+), 16 deletions(-)
>>>=20
>>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i91=
5_reg.h
>>> index 321a08281a3f..dff3f88d8090 100644
>>> --- a/drivers/gpu/drm/i915/i915_reg.h
>>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>>> @@ -7607,25 +7607,25 @@ enum skl_power_gate {
>>>  #define _PORT_CLK_SEL_A			0x46100
>>>  #define _PORT_CLK_SEL_B			0x46104
>>>  #define PORT_CLK_SEL(port) _MMIO_PORT(port, _PORT_CLK_SEL_A, _PORT_CLK=
_SEL_B)
>>> -#define  PORT_CLK_SEL_LCPLL_2700	(0 << 29)
>>> -#define  PORT_CLK_SEL_LCPLL_1350	(1 << 29)
>>> -#define  PORT_CLK_SEL_LCPLL_810		(2 << 29)
>>> -#define  PORT_CLK_SEL_SPLL		(3 << 29)
>>> -#define  PORT_CLK_SEL_WRPLL(pll)	(((pll) + 4) << 29)
>>> -#define  PORT_CLK_SEL_WRPLL1		(4 << 29)
>>> -#define  PORT_CLK_SEL_WRPLL2		(5 << 29)
>>> -#define  PORT_CLK_SEL_NONE		(7 << 29)
>>> -#define  PORT_CLK_SEL_MASK		(7 << 29)
>>> +#define  PORT_CLK_SEL_MASK		REG_GENMASK(31, 29)
>>> +#define  PORT_CLK_SEL_LCPLL_2700	REG_FIELD_PREP(PORT_CLK_SEL_MASK, 0)
>>> +#define  PORT_CLK_SEL_LCPLL_1350	REG_FIELD_PREP(PORT_CLK_SEL_MASK, 1)
>>> +#define  PORT_CLK_SEL_LCPLL_810		REG_FIELD_PREP(PORT_CLK_SEL_MASK, 2)
>>> +#define  PORT_CLK_SEL_SPLL		REG_FIELD_PREP(PORT_CLK_SEL_MASK, 3)
>>> +#define  PORT_CLK_SEL_WRPLL(pll)	REG_FIELD_PREP(PORT_CLK_SEL_MASK, 4 +=
 (pll))
>>> +#define  PORT_CLK_SEL_WRPLL1		REG_FIELD_PREP(PORT_CLK_SEL_MASK, 4)
>>> +#define  PORT_CLK_SEL_WRPLL2		REG_FIELD_PREP(PORT_CLK_SEL_MASK, 5)
>>> +#define  PORT_CLK_SEL_NONE		REG_FIELD_PREP(PORT_CLK_SEL_MASK, 7)
>>>=20=20
>>>  /* On ICL+ this is the same as PORT_CLK_SEL, but all bits change. */
>>>  #define DDI_CLK_SEL(port)		PORT_CLK_SEL(port)
>>> -#define  DDI_CLK_SEL_NONE		(0x0 << 28)
>>> -#define  DDI_CLK_SEL_MG			(0x8 << 28)
>>> -#define  DDI_CLK_SEL_TBT_162		(0xC << 28)
>>> -#define  DDI_CLK_SEL_TBT_270		(0xD << 28)
>>> -#define  DDI_CLK_SEL_TBT_540		(0xE << 28)
>>> -#define  DDI_CLK_SEL_TBT_810		(0xF << 28)
>>> -#define  DDI_CLK_SEL_MASK		(0xF << 28)
>>> +#define  DDI_CLK_SEL_MASK		REG_GENMASK(31, 28)
>>> +#define  DDI_CLK_SEL_NONE		REG_FIELD_PREP(DDI_CLK_SEL_MASK, 0x0)
>>> +#define  DDI_CLK_SEL_MG			REG_FIELD_PREP(DDI_CLK_SEL_MASK, 0x8)
>>> +#define  DDI_CLK_SEL_TBT_162		REG_FIELD_PREP(DDI_CLK_SEL_MASK, 0xC)
>>> +#define  DDI_CLK_SEL_TBT_270		REG_FIELD_PREP(DDI_CLK_SEL_MASK, 0xD)
>>> +#define  DDI_CLK_SEL_TBT_540		REG_FIELD_PREP(DDI_CLK_SEL_MASK, 0xE)
>>> +#define  DDI_CLK_SEL_TBT_810		REG_FIELD_PREP(DDI_CLK_SEL_MASK, 0xF)
>>>=20=20
>>>  /* Transcoder clock selection */
>>>  #define _TRANS_CLK_SEL_A		0x46140
>>> --=20
>>> 2.30.2

--=20
Jani Nikula, Intel Open Source Graphics Center
