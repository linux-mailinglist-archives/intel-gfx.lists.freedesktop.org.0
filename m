Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ABE8B51FF06
	for <lists+intel-gfx@lfdr.de>; Mon,  9 May 2022 16:05:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E517010F1E8;
	Mon,  9 May 2022 14:05:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99EB610F0C9
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 May 2022 14:05:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652105142; x=1683641142;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=lQoUlcCnvtJpS5ql3OIoaDZFQd0P9gg20aBLkIST9pI=;
 b=m2OAGqPVXp/urjCxQeNGYzW11EWZ/1Z5rTh1mmfcd3hfAbaO8AA/tTgR
 p9naoSfLv9Fw9Bzuoa1WfOs4JFlnI50VWIc/ZOb/YqlBRFlFUZGgXzOgL
 PtkrmZoalpkzDoAt1vR0WiwiPueFH/8E9fk6ldVFiQUyirFoTr4Y+VyqE
 j0gxXXoENyYdChnS/Bieiz5PQFkqiYZeqphRmL28DVEi5A/g9SaKgb2lM
 JZ41YaiUDAU4mIzkFDjIm0tAGgoVbJwH0wCT3S0xBL9MzJPxFZJC72bIC
 JHBHMS7BGvqx4xprFOgnuJozYGo2ZFPgMbgDNtYr1ajfeOyCLPliJ/lVM w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10342"; a="266648115"
X-IronPort-AV: E=Sophos;i="5.91,211,1647327600"; d="scan'208";a="266648115"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 07:05:42 -0700
X-IronPort-AV: E=Sophos;i="5.91,211,1647327600"; d="scan'208";a="540998304"
Received: from csawicki-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.129.3])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 07:05:40 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, =?utf-8?Q?Jos=C3=A9?=
 Roberto de Souza <jose.souza@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <e0c5e815-53a8-9759-948c-c180a8ecffdd@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220505193524.276400-1-jose.souza@intel.com>
 <20220505193524.276400-5-jose.souza@intel.com>
 <e0c5e815-53a8-9759-948c-c180a8ecffdd@linux.intel.com>
Date: Mon, 09 May 2022 17:05:37 +0300
Message-ID: <87mtfqkdhq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH CI 5/7] drm/i915: Drop has_ddi from device
 info
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

On Mon, 09 May 2022, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
> On 05/05/2022 20:35, Jos=C3=A9 Roberto de Souza wrote:
>> No need to have this parameter in intel_device_info struct
>> as all platforms with display version 9 or newer, haswell or broadwell
>> supports it.
>>=20
>> As a side effect of the of removal this flag, it will not be printed
>> in dmesg during driver load anymore and developers will have to rely
>> on to check the macro and compare with platform being used and IP
>> versions of it.
>>=20
>> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
>> Signed-off-by: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
>> ---
>>   drivers/gpu/drm/i915/i915_drv.h          | 4 +++-
>>   drivers/gpu/drm/i915/i915_pci.c          | 3 ---
>>   drivers/gpu/drm/i915/intel_device_info.h | 1 -
>>   3 files changed, 3 insertions(+), 5 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915=
_drv.h
>> index 5538564bc1d25..600d8cee272da 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -1298,7 +1298,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>>   #define HAS_DP20(dev_priv)	(IS_DG2(dev_priv))
>>=20=20=20
>>   #define HAS_CDCLK_CRAWL(dev_priv)	 (INTEL_INFO(dev_priv)->display.has_=
cdclk_crawl)
>> -#define HAS_DDI(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_ddi)
>> +#define HAS_DDI(dev_priv)		 (DISPLAY_VER(dev_priv) >=3D 9 || \
>> +					  IS_BROADWELL(dev_priv) || \
>> +					  IS_HASWELL(dev_priv))
>
> This one is a bit borderline, not sure it passes Jani's criteria of=20
> simplicity, which I thought was a good one. And from the OCD angle it=20
> kind of sucks to expand the conditionals to all call sites (when it's=20
> even called from i915_irq.c, justifiably or not I don't know).
>
> What is the high level motivation for this work?

Yeah, just don't merge when there's open discussion. Get the acks.

> Also, why is this in drm-intel-gt-next? :)

Without the smiley, actually.

*ALL* refactoring like this *MUST* go through drm-intel-next.

This is now a source for conflicts for at least 4-6 weeks until we can
merge drm-intel-gt-next -> drm-next -> drm-intel-next.


BR,
Jani.


>
> Regards,
>
> Tvrtko
>
>
>>   #define HAS_FPGA_DBG_UNCLAIMED(dev_priv) (INTEL_INFO(dev_priv)->displa=
y.has_fpga_dbg)
>>   #define HAS_PSR(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_psr)
>>   #define HAS_PSR_HW_TRACKING(dev_priv) \
>> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915=
_pci.c
>> index 2dc0284629d30..a0693d9ff9cee 100644
>> --- a/drivers/gpu/drm/i915/i915_pci.c
>> +++ b/drivers/gpu/drm/i915/i915_pci.c
>> @@ -535,7 +535,6 @@ static const struct intel_device_info vlv_info =3D {
>>   	.platform_engine_mask =3D BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VEC=
S0), \
>>   	.display.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B=
) | \
>>   		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP), \
>> -	.display.has_ddi =3D 1, \
>>   	.display.has_fpga_dbg =3D 1, \
>>   	.display.has_dp_mst =3D 1, \
>>   	.has_rc6p =3D 0 /* RC6p removed-by HSW */, \
>> @@ -683,7 +682,6 @@ static const struct intel_device_info skl_gt4_info =
=3D {
>>   		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP) | \
>>   		BIT(TRANSCODER_DSI_A) | BIT(TRANSCODER_DSI_C), \
>>   	.has_64bit_reloc =3D 1, \
>> -	.display.has_ddi =3D 1, \
>>   	.display.has_fpga_dbg =3D 1, \
>>   	.display.fbc_mask =3D BIT(INTEL_FBC_A), \
>>   	.display.has_hdcp =3D 1, \
>> @@ -932,7 +930,6 @@ static const struct intel_device_info adl_s_info =3D=
 {
>>   	.dbuf.size =3D 4096,							\
>>   	.dbuf.slice_mask =3D BIT(DBUF_S1) | BIT(DBUF_S2) | BIT(DBUF_S3) |		\
>>   		BIT(DBUF_S4),							\
>> -	.display.has_ddi =3D 1,							\
>>   	.display.has_dmc =3D 1,							\
>>   	.display.has_dp_mst =3D 1,						\
>>   	.display.has_dsb =3D 1,							\
>> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/=
i915/intel_device_info.h
>> index bef65e3f02c55..bc71ce48763ad 100644
>> --- a/drivers/gpu/drm/i915/intel_device_info.h
>> +++ b/drivers/gpu/drm/i915/intel_device_info.h
>> @@ -167,7 +167,6 @@ enum intel_ppgtt_type {
>>   	func(cursor_needs_physical); \
>>   	func(has_cdclk_crawl); \
>>   	func(has_dmc); \
>> -	func(has_ddi); \
>>   	func(has_dp_mst); \
>>   	func(has_dsb); \
>>   	func(has_dsc); \

--=20
Jani Nikula, Intel Open Source Graphics Center
