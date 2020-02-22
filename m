Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE27168B9B
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Feb 2020 02:39:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 023426E3A6;
	Sat, 22 Feb 2020 01:39:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5306B6E3A6
 for <intel-gfx@lists.freedesktop.org>; Sat, 22 Feb 2020 01:39:21 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Feb 2020 17:39:20 -0800
X-IronPort-AV: E=Sophos;i="5.70,470,1574150400"; d="scan'208";a="240497105"
Received: from ldmartin-desk1.jf.intel.com ([134.134.244.69])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Feb 2020 17:39:20 -0800
Date: Fri, 21 Feb 2020 17:39:14 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200222013914.4ddtcdf274cvzhdy@ldmartin-desk1.jf.intel.com>
References: <20200222002824.17103-1-lucas.demarchi@intel.com>
 <4a1fc6a341c803943cd79c9a1961bd37ec5e5cb8.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4a1fc6a341c803943cd79c9a1961bd37ec5e5cb8.camel@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Add Wa_1608008084
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "michel.thierry@intel.com" <michel.thierry@intel.com>,
 "ramlingam.c@intel.com" <ramlingam.c@intel.com>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 21, 2020 at 04:36:53PM -0800, Jose Souza wrote:
>+ CCing people involved in the patch fixed.
>
>On Fri, 2020-02-21 at 16:28 -0800, Lucas De Marchi wrote:
>> Wa_1608008084 is an additional WA that applies to writes on FF_MODE2
>> register. We can't read it back either from CPU or GPU. Since the
>> other
>> bits should be 0, recommendation to handle Wa_1604555607 is to
>> actually
>> just write the timer value.
>>
>> Do a write only and don't try to read it, neither before or after
>> the WA is applied.
>>
>> Fixes: ff690b2111ba ("drm/i915/tgl: Implement Wa_1604555607")
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> ---
>>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 22 ++++++++++---------
>> --
>>  1 file changed, 10 insertions(+), 12 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> index 887e0dc701f7..0d76e1d6ec87 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> @@ -580,24 +580,22 @@ static void icl_ctx_workarounds_init(struct
>> intel_engine_cs *engine,
>>  static void tgl_ctx_workarounds_init(struct intel_engine_cs *engine,
>>  				     struct i915_wa_list *wal)
>>  {
>> -	u32 val;
>> -
>>  	/* Wa_1409142259:tgl */
>>  	WA_SET_BIT_MASKED(GEN11_COMMON_SLICE_CHICKEN3,
>>  			  GEN12_DISABLE_CPS_AWARE_COLOR_PIPE);
>>
>> -	/* Wa_1604555607:tgl */
>> -	val =3D intel_uncore_read(engine->uncore, FF_MODE2);
>> -	val &=3D ~FF_MODE2_TDS_TIMER_MASK;
>> -	val |=3D FF_MODE2_TDS_TIMER_128;
>>  	/*
>> -	 * FIXME: FF_MODE2 register is not readable till TGL B0. We can
>> -	 * enable verification of WA from the later steppings, which
>> enables
>> -	 * the read of FF_MODE2.
>> +	 * Wa_1604555607:gen12
>> +	 * FF_MODE2 register is not readable till TGL B0, either by CPU
>> or GPU.
>
>The line above could be removed as the comments above explain it
>better, also BSpec don't say that it will be fixed in B0.

1604555607 was documented to be fixed in B0. Just saw it's not anymore.

>
>With that:
>Reviewed-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>

thanks
Lucas De Marchi

>
>> +	 *
>> +	 * Wa_1608008084:gen12
>> +	 * FF_MODE2 register will return the wrong value when read. The
>> default =

>> +	 * value for this register is zero for all fields and there are
>> no bit
>> +	 * masks. So instead of doing a RMW we should just write the
>> TDS timer
>> +	 * value for Wa_1604555607.
>>  	 */
>> -	wa_add(wal, FF_MODE2, FF_MODE2_TDS_TIMER_MASK, val,
>> -	       IS_TGL_REVID(engine->i915, TGL_REVID_A0, TGL_REVID_A0) ?
>> 0 :
>> -			    FF_MODE2_TDS_TIMER_MASK);
>> +	wa_add(wal, FF_MODE2, FF_MODE2_TDS_TIMER_MASK,
>> +	       FF_MODE2_TDS_TIMER_128, 0);
>>  }
>>
>>  static void
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
