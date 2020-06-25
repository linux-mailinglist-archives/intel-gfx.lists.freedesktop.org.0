Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F59220A41B
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2020 19:34:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9B956EBF3;
	Thu, 25 Jun 2020 17:34:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E797A6EBF3
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 17:34:26 +0000 (UTC)
IronPort-SDR: /oUXaljj4xOKjrU7wGk2g/Mb/s0e9TQzqIRC7icIc9HvgQfMfQCmwaaCKLRqvvOUHbcUHorepg
 xElzw2UEAZAw==
X-IronPort-AV: E=McAfee;i="6000,8403,9663"; a="210087185"
X-IronPort-AV: E=Sophos;i="5.75,280,1589266800"; d="scan'208";a="210087185"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2020 10:34:26 -0700
IronPort-SDR: wR6jHV9ibsPbhojLTfreO4e+IUSE7FtirJ/sK+Yk8W/fp8gqwQtwsua8w78X4jvpYdONjsXFAG
 OWGJ8E47H4RA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,280,1589266800"; d="scan'208";a="297988208"
Received: from jmorey-mobl.amr.corp.intel.com (HELO msatwood-mobl)
 ([10.209.172.245])
 by orsmga007.jf.intel.com with SMTP; 25 Jun 2020 10:34:25 -0700
Date: Thu, 25 Jun 2020 10:34:25 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <20200625173425.GB22095@msatwood-mobl>
References: <20200617180006.4130501-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200617180006.4130501-1-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Extend Wa_14010685332 to all ICP+
 PCH's
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

O Wed, Jun 17, 2020 at 11:00:06AM -0700, Matt Roper wrote:
> This workaround now also applies to TGL and RKL, so extend the PCH test
> to just capture everthing ICP and beyond.
> 
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_irq.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index 8e823ba25f5f..923822343311 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -2907,10 +2907,8 @@ static void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
>  	if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
>  		GEN3_IRQ_RESET(uncore, SDE);
>  
> -	/* Wa_14010685332:icl,jsl,ehl */
> -	if (INTEL_PCH_TYPE(dev_priv) == PCH_ICP ||
> -	    INTEL_PCH_TYPE(dev_priv) == PCH_JSP ||
> -	    INTEL_PCH_TYPE(dev_priv) == PCH_MCC) {
> +	/* Wa_14010685332:icl,jsl,ehl,tgl,rkl */
> +	if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP) {
>  		intel_uncore_rmw(uncore, SOUTH_CHICKEN1,
>  				 SBCLK_RUN_REFCLK_DIS, SBCLK_RUN_REFCLK_DIS);
>  		intel_uncore_rmw(uncore, SOUTH_CHICKEN1,
> -- 
> 2.24.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
