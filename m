Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE69520F08
	for <lists+intel-gfx@lfdr.de>; Tue, 10 May 2022 09:49:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A040D89C59;
	Tue, 10 May 2022 07:48:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4911C10E1E3
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 May 2022 07:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652168938; x=1683704938;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=1rmqtFk2BjDIvAUYDBG+cinmkCZcG6I6DwEH4in5IZg=;
 b=mqOyd9ryOQ3A4bYgmR0EXG5x0O94dhvJ9ESkyXvHSYDI9LqsuANjHJbl
 VaUOUv/dXH2CcfjJDZchYx+pOJcAkYuysmmZC0sKRJ3G5MeQixRUy4fsw
 ieVOoG64d56XJom5ehhiVjDTYlCEN+jr2jOaZW9W568DCj1tjz41vllzX
 He2mfHkmj9zK+2i9KWzUmLJ1VJr12hT3mfpzI6V1U+JqMQspg930C922/
 srOsaNuNIJlpJb6Ra7pqLsORoTfaY4WDa+B1plOIU9dZOtx2q5MNowmxc
 CR18f/e5kvyNioDze9eR0irQrbDcN4FyYxnWodFOjpaHUQZ5R5YNrgDFa w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10342"; a="266883410"
X-IronPort-AV: E=Sophos;i="5.91,213,1647327600"; d="scan'208";a="266883410"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2022 00:48:57 -0700
X-IronPort-AV: E=Sophos;i="5.91,213,1647327600"; d="scan'208";a="593371250"
Received: from akulikow-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.144.37])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2022 00:48:55 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>, "tvrtko.ursulin@linux.intel.com"
 <tvrtko.ursulin@linux.intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
In-Reply-To: <9cae873e3623a45391d9c6ccf7f1d117022c7198.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220505193524.276400-1-jose.souza@intel.com>
 <20220505193524.276400-5-jose.souza@intel.com>
 <e0c5e815-53a8-9759-948c-c180a8ecffdd@linux.intel.com>
 <87mtfqkdhq.fsf@intel.com>
 <9cae873e3623a45391d9c6ccf7f1d117022c7198.camel@intel.com>
Date: Tue, 10 May 2022 10:48:53 +0300
Message-ID: <877d6tkeu2.fsf@intel.com>
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

On Mon, 09 May 2022, "Souza, Jose" <jose.souza@intel.com> wrote:
> On Mon, 2022-05-09 at 17:05 +0300, Jani Nikula wrote:
>> On Mon, 09 May 2022, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wro=
te:
>> > On 05/05/2022 20:35, Jos=C3=A9 Roberto de Souza wrote:
>> > > No need to have this parameter in intel_device_info struct
>> > > as all platforms with display version 9 or newer, haswell or broadwe=
ll
>> > > supports it.
>> > >=20
>> > > As a side effect of the of removal this flag, it will not be printed
>> > > in dmesg during driver load anymore and developers will have to rely
>> > > on to check the macro and compare with platform being used and IP
>> > > versions of it.
>> > >=20
>> > > Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
>> > > Signed-off-by: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
>> > > ---
>> > >   drivers/gpu/drm/i915/i915_drv.h          | 4 +++-
>> > >   drivers/gpu/drm/i915/i915_pci.c          | 3 ---
>> > >   drivers/gpu/drm/i915/intel_device_info.h | 1 -
>> > >   3 files changed, 3 insertions(+), 5 deletions(-)
>> > >=20
>> > > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/=
i915_drv.h
>> > > index 5538564bc1d25..600d8cee272da 100644
>> > > --- a/drivers/gpu/drm/i915/i915_drv.h
>> > > +++ b/drivers/gpu/drm/i915/i915_drv.h
>> > > @@ -1298,7 +1298,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *=
i915,
>> > >   #define HAS_DP20(dev_priv)	(IS_DG2(dev_priv))
>> > >=20=20=20
>> > >   #define HAS_CDCLK_CRAWL(dev_priv)	 (INTEL_INFO(dev_priv)->display.=
has_cdclk_crawl)
>> > > -#define HAS_DDI(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_ddi)
>> > > +#define HAS_DDI(dev_priv)		 (DISPLAY_VER(dev_priv) >=3D 9 || \
>> > > +					  IS_BROADWELL(dev_priv) || \
>> > > +					  IS_HASWELL(dev_priv))
>> >=20
>> > This one is a bit borderline, not sure it passes Jani's criteria of=20
>> > simplicity, which I thought was a good one. And from the OCD angle it=
=20
>> > kind of sucks to expand the conditionals to all call sites (when it's=
=20
>> > even called from i915_irq.c, justifiably or not I don't know).
>> >=20
>> > What is the high level motivation for this work?
>>=20
>> Yeah, just don't merge when there's open discussion. Get the acks.
>
> Sorry, I thought that for this ones we were good to go.
>
>>=20
>> > Also, why is this in drm-intel-gt-next? :)
>>=20
>> Without the smiley, actually.
>>=20
>> *ALL* refactoring like this *MUST* go through drm-intel-next.
>
> My understating was that if it was touching GT it should go to
> drm-intel-gt-next.

More like, if you change gt/gem features or functionality or refactor
them in any significant way, they go via drm-intel-gt-next. Stuff that
affects i915 core or display most likely should go via drm-intel-next.

BR,
Jani.


>
>>=20
>> This is now a source for conflicts for at least 4-6 weeks until we can
>> merge drm-intel-gt-next -> drm-next -> drm-intel-next.
>>=20
>>=20
>> BR,
>> Jani.
>>=20
>>=20
>> >=20
>> > Regards,
>> >=20
>> > Tvrtko
>> >=20
>> >=20
>> > >   #define HAS_FPGA_DBG_UNCLAIMED(dev_priv) (INTEL_INFO(dev_priv)->di=
splay.has_fpga_dbg)
>> > >   #define HAS_PSR(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_psr)
>> > >   #define HAS_PSR_HW_TRACKING(dev_priv) \
>> > > diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/=
i915_pci.c
>> > > index 2dc0284629d30..a0693d9ff9cee 100644
>> > > --- a/drivers/gpu/drm/i915/i915_pci.c
>> > > +++ b/drivers/gpu/drm/i915/i915_pci.c
>> > > @@ -535,7 +535,6 @@ static const struct intel_device_info vlv_info =
=3D {
>> > >   	.platform_engine_mask =3D BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT=
(VECS0), \
>> > >   	.display.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCOD=
ER_B) | \
>> > >   		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP), \
>> > > -	.display.has_ddi =3D 1, \
>> > >   	.display.has_fpga_dbg =3D 1, \
>> > >   	.display.has_dp_mst =3D 1, \
>> > >   	.has_rc6p =3D 0 /* RC6p removed-by HSW */, \
>> > > @@ -683,7 +682,6 @@ static const struct intel_device_info skl_gt4_in=
fo =3D {
>> > >   		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP) | \
>> > >   		BIT(TRANSCODER_DSI_A) | BIT(TRANSCODER_DSI_C), \
>> > >   	.has_64bit_reloc =3D 1, \
>> > > -	.display.has_ddi =3D 1, \
>> > >   	.display.has_fpga_dbg =3D 1, \
>> > >   	.display.fbc_mask =3D BIT(INTEL_FBC_A), \
>> > >   	.display.has_hdcp =3D 1, \
>> > > @@ -932,7 +930,6 @@ static const struct intel_device_info adl_s_info=
 =3D {
>> > >   	.dbuf.size =3D 4096,							\
>> > >   	.dbuf.slice_mask =3D BIT(DBUF_S1) | BIT(DBUF_S2) | BIT(DBUF_S3) |=
		\
>> > >   		BIT(DBUF_S4),							\
>> > > -	.display.has_ddi =3D 1,							\
>> > >   	.display.has_dmc =3D 1,							\
>> > >   	.display.has_dp_mst =3D 1,						\
>> > >   	.display.has_dsb =3D 1,							\
>> > > diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/=
drm/i915/intel_device_info.h
>> > > index bef65e3f02c55..bc71ce48763ad 100644
>> > > --- a/drivers/gpu/drm/i915/intel_device_info.h
>> > > +++ b/drivers/gpu/drm/i915/intel_device_info.h
>> > > @@ -167,7 +167,6 @@ enum intel_ppgtt_type {
>> > >   	func(cursor_needs_physical); \
>> > >   	func(has_cdclk_crawl); \
>> > >   	func(has_dmc); \
>> > > -	func(has_ddi); \
>> > >   	func(has_dp_mst); \
>> > >   	func(has_dsb); \
>> > >   	func(has_dsc); \
>>=20
>

--=20
Jani Nikula, Intel Open Source Graphics Center
