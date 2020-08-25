Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 388F42523BA
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 00:41:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 073946E0C5;
	Tue, 25 Aug 2020 22:41:54 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40E636E0C5
 for <Intel-gfx@lists.freedesktop.org>; Tue, 25 Aug 2020 22:41:52 +0000 (UTC)
IronPort-SDR: mnkYU9FKKL01fBo/yQCd4Y2eBb2+fFiYDOpuFhADYU8QCQZdaJ/9h3vHGbWZJ78ljOI7+hS7iC
 5cTqke3sGmnw==
X-IronPort-AV: E=McAfee;i="6000,8403,9724"; a="153630810"
X-IronPort-AV: E=Sophos;i="5.76,354,1592895600"; d="scan'208";a="153630810"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2020 15:41:51 -0700
IronPort-SDR: Ph1Rvf3ROHxd8CXSfh+86IJo5irb5wnovbzKjf/jcF2OmXIwdpqHM74ANZ7dhY3b/r8LYjkMls
 uBY9h584QgHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,354,1592895600"; d="scan'208";a="322947755"
Received: from unknown (HELO fmsmsx605.amr.corp.intel.com) ([10.18.84.215])
 by fmsmga004.fm.intel.com with ESMTP; 25 Aug 2020 15:41:51 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 25 Aug 2020 15:41:51 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 25 Aug 2020 15:41:50 -0700
Received: from fmsmsx610.amr.corp.intel.com ([10.18.126.90]) by
 fmsmsx610.amr.corp.intel.com ([10.18.126.90]) with mapi id 15.01.1713.004;
 Tue, 25 Aug 2020 15:41:50 -0700
From: "Taylor, Clinton A" <clinton.a.taylor@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [PATCH v3] drm/i915/gt: Implement WA_1406941453
Thread-Index: AQHWeypYc4wCB8++qE+bNVt0LTSbQqlJ2FKA//+S3YA=
Date: Tue, 25 Aug 2020 22:41:50 +0000
Message-ID: <533ecbcb58b247958b4de9792fc346fe@intel.com>
References: <20200805232920.15085-1-clinton.a.taylor@intel.com>
 <20200825215434.6009-1-clinton.a.taylor@intel.com>
 <20200825221117.GI3934000@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20200825221117.GI3934000@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/gt: Implement WA_1406941453
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
Cc: "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CI failed with lost value on reset

<3> [300.632894] [drm:wa_verify [i915]] *ERROR* GT_REF workaround lost on b=
efore reset! (e18c=3D3020/0, expected 80008000)
<3> [300.665974] i915/intel_workarounds_live_selftests: live_gpu_reset_work=
arounds failed with error -3

I will move the W/A to the RCS engine.

Clint


-----Original Message-----
From: Matt Roper <matthew.d.roper@intel.com> =

Sent: Tuesday, August 25, 2020 3:11 PM
To: Taylor, Clinton A <clinton.a.taylor@intel.com>
Cc: Intel-gfx@lists.freedesktop.org; Atwood, Matthew S <matthew.s.atwood@in=
tel.com>; Souza, Jose <jose.souza@intel.com>
Subject: Re: [PATCH v3] drm/i915/gt: Implement WA_1406941453
CI failed with =

On Tue, Aug 25, 2020 at 02:54:34PM -0700, clinton.a.taylor@intel.com wrote:
> From: Clint Taylor <clinton.a.taylor@intel.com>
> =

> Enable HW Default flip for small PL.
> =

> bspec: 52890
> bspec: 53508
> bspec: 53273
> =

> v2: rebase to drm-tip
> v3: move from ctx to gt workarounds. Remove whitelist.

I think we actually want to move this one to the rcs_engine_wa_init() since=
 the register appears to be part of the render engine specifically.
Since this register doesn't hold its value across engine resets[*] we want =
to re-apply the workaround any time the RCS engine is reset.

[*] There's been a bit of ambiguity and confusion about what registers do/d=
on't survive engine resets, but we're starting to get more clarity on that =
from the hardware teams now.  There's usually a field in the bspec's regist=
er description that says "GTIReset" --- if that says "DEV"
it's an engine register that should be handled in rcs_engine_wa_init (or xc=
s_engine_wa_init for other engine types), whereas if it says "BUS"
it's a GT register that should go in gt_workarounds_init.


Matt

> =

> Cc: Matt Atwood <matthew.s.atwood@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
>  drivers/gpu/drm/i915/i915_reg.h             | 1 +
>  2 files changed, 4 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c =

> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index a3f72b75c61e..0aecb97fd41c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1211,6 +1211,9 @@ gen12_gt_workarounds_init(struct drm_i915_private *=
i915,
>  			  struct i915_wa_list *wal)
>  {
>  	wa_init_mcr(i915, wal);
> +
> +	/* Wa_1406941453:gen12 */
> +	WA_SET_BIT_MASKED(GEN10_SAMPLER_MODE, ENABLE_SMALLPL);
>  }
>  =

>  static void
> diff --git a/drivers/gpu/drm/i915/i915_reg.h =

> b/drivers/gpu/drm/i915/i915_reg.h index ac691927e29d..ab4b1abd4364 =

> 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -9315,6 +9315,7 @@ enum {
>  #define   GEN11_LSN_UNSLCVC_GAFS_HALF_SF_MAXALLOC	(1 << 7)
>  =

>  #define GEN10_SAMPLER_MODE		_MMIO(0xE18C)
> +#define   ENABLE_SMALLPL			REG_BIT(15)
>  #define   GEN11_SAMPLER_ENABLE_HEADLESS_MSG	REG_BIT(5)
>  =

>  /* IVYBRIDGE DPF */
> --
> 2.28.0
> =


-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
