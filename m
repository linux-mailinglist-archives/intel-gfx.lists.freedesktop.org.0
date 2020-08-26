Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E659252650
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 06:34:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F69B6E9F2;
	Wed, 26 Aug 2020 04:34:51 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B042F6E9F2
 for <Intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 04:34:49 +0000 (UTC)
IronPort-SDR: LfT5qt/bXPGEpBUaU7Er7agGierqbnGEAkG4H4hxMbUX2jFfGLW4qx5owz/rMDZHU9f3o37xsL
 3brGQVpOKsow==
X-IronPort-AV: E=McAfee;i="6000,8403,9724"; a="217782099"
X-IronPort-AV: E=Sophos;i="5.76,354,1592895600"; d="scan'208";a="217782099"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2020 21:34:49 -0700
IronPort-SDR: MdM6pGilw2rGmtQo95U4gjKHQoq3lplNTeG6WEMzcK4wDhDgva0L4iGi03MO7qKEYj5pj1BIqg
 5lvA8sVm3n4Q==
X-IronPort-AV: E=Sophos;i="5.76,354,1592895600"; d="scan'208";a="474626383"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2020 21:34:48 -0700
Date: Tue, 25 Aug 2020 21:34:47 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: clinton.a.taylor@intel.com
Message-ID: <20200826043447.GQ3934000@mdroper-desk1.amr.corp.intel.com>
References: <20200805232920.15085-1-clinton.a.taylor@intel.com>
 <20200826025724.20944-1-clinton.a.taylor@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200826025724.20944-1-clinton.a.taylor@intel.com>
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915/gt: Implement WA_1406941453
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Aug 25, 2020 at 07:57:24PM -0700, clinton.a.taylor@intel.com wrote:
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
> v4: move to rcs WA init
> =

> Cc: Matt Atwood <matthew.s.atwood@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 7 +++++++
>  drivers/gpu/drm/i915/i915_reg.h             | 1 +
>  2 files changed, 8 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/dr=
m/i915/gt/intel_workarounds.c
> index a3f72b75c61e..b0a7cb056633 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1725,6 +1725,13 @@ rcs_engine_wa_init(struct intel_engine_cs *engine,=
 struct i915_wa_list *wal)
>  			     FF_DOP_CLOCK_GATE_DISABLE);
>  	}
>  =

> +	if (IS_GEN(i915, 12)) {
> +		/* Wa_1406941453:gen12 */
> +		wa_masked_en(wal,
> +			     GEN10_SAMPLER_MODE,
> +			     ENABLE_SMALLPL);
> +	}
> +
>  	if (IS_GEN(i915, 11)) {
>  		/* This is not an Wa. Enable for better image quality */
>  		wa_masked_en(wal,
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index ac691927e29d..ab4b1abd4364 100644
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
> -- =

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
