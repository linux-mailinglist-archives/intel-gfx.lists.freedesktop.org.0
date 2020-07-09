Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E3AE21A1CC
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 16:07:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B2996EA79;
	Thu,  9 Jul 2020 14:07:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D50ED6EA79
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 14:07:14 +0000 (UTC)
IronPort-SDR: u4o1hDaXcUUtQfk6dZkaD/to88Z1mmMCkM+KGziTfcr1uD0RcTPihf/gSlE9N2H5bCMJ0yUjEy
 CF8Bn51c5VRQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9676"; a="136222073"
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="136222073"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 07:07:14 -0700
IronPort-SDR: eYmZqdiU8H5mPxqvHatdjo+WMlfOYykw/SGwuULMhSAbPeSs+VAfSHtU5M9it/GK5qMAczIrRh
 iQesYhX0Zxhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="298081882"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 09 Jul 2020 07:07:11 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 09 Jul 2020 17:07:11 +0300
Date: Thu, 9 Jul 2020 17:07:11 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200709140711.GB6112@intel.com>
References: <20200708212947.40178-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200708212947.40178-1-jose.souza@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Implement WAs 18011464164 and
 22010931296
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 08, 2020 at 02:29:47PM -0700, Jos=E9 Roberto de Souza wrote:
> As today those 2 WAs have different implementation between TGL and DG1
> WA pages but checking the HSD it is clear that DG1 implementation
> should be used for both,

I couldn't really find any conclusions in any of the hsds to say that
disabling the TE DOP clock gating is sufficient to deal with the other
issues. However the dg1 w/a page does say that, so I guess it's good
enough.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> also to do so is easier as we just need to
> extend WA 1407928979 to B* stepping.
> =

> Both WAs are need to fix some possible render corruptions.
> =

> DG1 initial patches were not merged yet, as soon it is this WAs should
> be applied to DG1 as well.
> =

> BSpec: 53508
> BSpec: 52890
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 13 ++++++++-----
>  1 file changed, 8 insertions(+), 5 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/dr=
m/i915/gt/intel_workarounds.c
> index 2da366821dda..3d31b763d9c9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1649,11 +1649,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine,=
 struct i915_wa_list *wal)
>  			    GEN7_SARCHKMD,
>  			    GEN7_DISABLE_SAMPLER_PREFETCH);
>  =

> -		/* Wa_1407928979:tgl */
> -		wa_write_or(wal,
> -			    GEN7_FF_THREAD_MODE,
> -			    GEN12_FF_TESSELATION_DOP_GATE_DISABLE);
> -
>  		/* Wa_1408615072:tgl */
>  		wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE2,
>  			    VSUNIT_CLKGATE_DIS_TGL);
> @@ -1677,6 +1672,14 @@ rcs_engine_wa_init(struct intel_engine_cs *engine,=
 struct i915_wa_list *wal)
>  		 * Wa_14010229206:tgl
>  		 */
>  		wa_masked_en(wal, GEN9_ROW_CHICKEN4, GEN12_DISABLE_TDL_PUSH);
> +
> +		/*
> +		 * Wa_1407928979:tgl A*
> +		 * Wa_18011464164:tgl B0+
> +		 * Wa_22010931296:tgl B0+
> +		 */
> +		wa_write_or(wal, GEN7_FF_THREAD_MODE,
> +			    GEN12_FF_TESSELATION_DOP_GATE_DISABLE);
>  	}
>  =

>  	if (IS_GEN(i915, 11)) {
> -- =

> 2.27.0

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
