Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5E51DD46B
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2020 19:31:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABF266E182;
	Thu, 21 May 2020 17:31:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B10246E182
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2020 17:31:01 +0000 (UTC)
IronPort-SDR: rzOGgDTWSglrZ1p+5+bT3TrIJWCv1X/CXpg5FUADm/s/LmTbm14WANHLmlrXAU0oVWERYfHWHL
 afYOwz09U8hg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2020 10:31:01 -0700
IronPort-SDR: XyDBeT+OVIwaASfqLmnITfbk0S8OqAud9dpI7rPiv5KC+kH1O+AklA0ju3ijwNt/kqDucND3nf
 fkYrjHC5hNCQ==
X-IronPort-AV: E=Sophos;i="5.73,418,1583222400"; d="scan'208";a="440535796"
Received: from angelatr-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.195.74])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2020 10:31:00 -0700
Date: Thu, 21 May 2020 10:30:58 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200521173058.lsncnnkw343bsofw@ldmartin-desk1>
X-Patchwork-Hint: ignore
References: <20200521003803.18936-1-lucas.demarchi@intel.com>
 <20200521003803.18936-9-lucas.demarchi@intel.com>
 <7a5b61a80cd1839cf4cbf0891805d620b9bbdc96.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7a5b61a80cd1839cf4cbf0891805d620b9bbdc96.camel@intel.com>
Subject: Re: [Intel-gfx] [PATCH 08/37] drm/i915: make intel_{uncore,
 de}_rmw() more useful
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Auld,
 Matthew" <matthew.auld@intel.com>,
 "fernando.pacheco@intel.com" <fernando.pacheco@intel.com>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 21, 2020 at 10:24:49AM -0700, Jose Souza wrote:
>On Wed, 2020-05-20 at 17:37 -0700, Lucas De Marchi wrote:
>> Return the old value read so some places of the code can still do the
>> rmw but add warnings/errors about the value it read.
>>
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_de.h |  4 ++--
>>  drivers/gpu/drm/i915/intel_uncore.h     | 10 +++++++---
>>  2 files changed, 9 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i=
915/display/intel_de.h
>> index 00da10bf35f5..d5441b1ba2fe 100644
>> --- a/drivers/gpu/drm/i915/display/intel_de.h
>> +++ b/drivers/gpu/drm/i915/display/intel_de.h
>> @@ -42,10 +42,10 @@ intel_de_write_fw(struct drm_i915_private *i915, i91=
5_reg_t reg, u32 val)
>>  	intel_uncore_write_fw(&i915->uncore, reg, val);
>>  }
>>
>
>Maybe add function documentation with this new information about the retur=
n?

yeah... just not sure about the usefulness since the only place I
intended to use it I ended up doing something different. So I'm still
not sure. Maybe wait a user to appear.

thanks

Lucas De Marchi

>
>With that:
>
>Reviewed-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
>
>>
>> -static inline void
>> +static inline u32
>>  intel_de_rmw(struct drm_i915_private *i915, i915_reg_t reg, u32 clear, =
u32 set)
>>  {
>> -	intel_uncore_rmw(&i915->uncore, reg, clear, set);
>> +	return intel_uncore_rmw(&i915->uncore, reg, clear, set);
>>  }
>>
>>  static inline int
>> diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/=
intel_uncore.h
>> index 8d3aa8b9acf9..5da43b56fa11 100644
>> --- a/drivers/gpu/drm/i915/intel_uncore.h
>> +++ b/drivers/gpu/drm/i915/intel_uncore.h
>> @@ -379,8 +379,8 @@ intel_uncore_read64_2x32(struct intel_uncore *uncore,
>>  #define intel_uncore_write64_fw(...) __raw_uncore_write64(__VA_ARGS__)
>>  #define intel_uncore_posting_read_fw(...) ((void)intel_uncore_read_fw(_=
_VA_ARGS__))
>>
>> -static inline void intel_uncore_rmw(struct intel_uncore *uncore,
>> -				    i915_reg_t reg, u32 clear, u32 set)
>> +static inline u32 intel_uncore_rmw(struct intel_uncore *uncore,
>> +				   i915_reg_t reg, u32 clear, u32 set)
>>  {
>>  	u32 old, val;
>>
>> @@ -388,9 +388,11 @@ static inline void intel_uncore_rmw(struct intel_un=
core *uncore,
>>  	val =3D (old & ~clear) | set;
>>  	if (val !=3D old)
>>  		intel_uncore_write(uncore, reg, val);
>> +
>> +	return old;
>>  }
>>
>> -static inline void intel_uncore_rmw_fw(struct intel_uncore *uncore,
>> +static inline u32 intel_uncore_rmw_fw(struct intel_uncore *uncore,
>>  				       i915_reg_t reg, u32 clear, u32 set)
>>  {
>>  	u32 old, val;
>> @@ -399,6 +401,8 @@ static inline void intel_uncore_rmw_fw(struct intel_=
uncore *uncore,
>>  	val =3D (old & ~clear) | set;
>>  	if (val !=3D old)
>>  		intel_uncore_write_fw(uncore, reg, val);
>> +
>> +	return old;
>>  }
>>
>>  static inline int intel_uncore_write_and_verify(struct intel_uncore *un=
core,
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
