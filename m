Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD74427F098
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 19:33:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 435B46E7E2;
	Wed, 30 Sep 2020 17:33:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B57816E7E2
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Sep 2020 17:33:14 +0000 (UTC)
IronPort-SDR: udVPqTqU77HKDUYXQdGD7EiR6V8nupwRsknuTdE+3Eru0QEIiq9IExSOF3VQzWClfqU036fQ11
 +1FOjYGE9u0A==
X-IronPort-AV: E=McAfee;i="6000,8403,9760"; a="180665539"
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="180665539"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 10:33:14 -0700
IronPort-SDR: eN5W83YxAWIsSzN3CWQuXH0s2pdJ1Q4mw3snTqSjsR1+RNJDyVhUugM6t+Xh/CpXtATjPe+P+i
 ZAIMWFRJMSpw==
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="294099532"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 10:33:14 -0700
Date: Wed, 30 Sep 2020 10:33:13 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20200930173313.GC2245633@mdroper-desk1.amr.corp.intel.com>
References: <20200930064234.85769-1-lucas.demarchi@intel.com>
 <20200930064234.85769-20-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200930064234.85769-20-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH v6 19/24] drm/i915/dg1: enable PORT C/D aka
 D/E
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 29, 2020 at 11:42:29PM -0700, Lucas De Marchi wrote:
> For DG1 we have a little of mix up wrt to DDI/port names and indexes.
> Bspec refers to the ports as DDIA, DDIB, DDI USBC1 and DDI USBC2
> (besides the DDIA, DDIB, DDIC, DDID), but the previous naming is the
> most unambiguous one. This means that for any register on Display Engine
> we should use the index of A, B, D and E. However in some places this is
> not true:
> 
> - VBT: uses C and D and have to be mapped to D/E
> 
> - IO/Combo: uses C and D, but we already differentiate those when
>   we created the phy vs port distinction.
> 
> Ths additional mapping for VBT and phy are already covered in previous
> patches, so now we can initialize the DDI as D/E.

I don't see a pressing need to keep this separate from patch 13; it's
probably easier to just roll patch 13 into this patch and enable all of
the outputs at once after we have all the plumbing in place.

> 
> Cc: Clinton Taylor <Clinton.A.Taylor@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 18 ++++++++++++------
>  1 file changed, 12 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 43fe5867a8ae..6a63fb0136d4 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7332,10 +7332,7 @@ bool intel_phy_is_combo(struct drm_i915_private *dev_priv, enum phy phy)
>  {
>  	if (phy == PHY_NONE)
>  		return false;
> -	else if (IS_DG1(dev_priv))
> -		/* FIXME: Enable only two ports for now */
> -		return phy <= PHY_B;
> -	else if (IS_ROCKETLAKE(dev_priv))
> +	else if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))
>  		return phy <= PHY_D;
>  	else if (IS_ELKHARTLAKE(dev_priv))
>  		return phy <= PHY_C;
> @@ -7359,7 +7356,7 @@ bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
>  
>  enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port)
>  {
> -	if (IS_ROCKETLAKE(i915) && port >= PORT_D)
> +	if ((IS_DG1(i915) || IS_ROCKETLAKE(i915)) && port >= PORT_D)
>  		return (enum phy)port - 1;
>  	else if (IS_ELKHARTLAKE(i915) && port == PORT_D)
>  		return PHY_A;
> @@ -17128,9 +17125,18 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
>  		return;
>  
>  	if (IS_DG1(dev_priv)) {

We could just add IS_DG1 to the IS_ROCKETLAKE condition for the block
below since they're now the same thing.

In fact it might be worth explicitly mentioning the similarity to RKL in
the commit message.


Matt

> -		/* FIXME: Enable only two ports for now */
>  		intel_ddi_init(dev_priv, PORT_A);
>  		intel_ddi_init(dev_priv, PORT_B);
> +
> +		/*
> +		 * Bspec lists the ports as A, B, C (USBC1) and D (USBC2).
> +		 * However from the Display Engine perspective all registers are
> +		 * actually wired to handle C and D as offsets of D/E. Instead
> +		 * of fighting all our macros for handling them specially for
> +		 * DG1, just call them D/E
> +		 */
> +		intel_ddi_init(dev_priv, PORT_D);
> +		intel_ddi_init(dev_priv, PORT_E);
>  	} else if (IS_ROCKETLAKE(dev_priv)) {
>  		intel_ddi_init(dev_priv, PORT_A);
>  		intel_ddi_init(dev_priv, PORT_B);
> -- 
> 2.28.0
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
