Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA0F420ABE9
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2020 07:41:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1A696E265;
	Fri, 26 Jun 2020 05:41:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82CDA6E265
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jun 2020 05:41:55 +0000 (UTC)
IronPort-SDR: cwNJR1jbA3rMfBFTqP5H4k1Kctt0hjPCfCtpLzx5SKyoys24INppqrgLh92MckTTwyefkebQI+
 NRZ8vOEWVRGQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9663"; a="143440319"
X-IronPort-AV: E=Sophos;i="5.75,282,1589266800"; d="scan'208";a="143440319"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2020 22:41:55 -0700
IronPort-SDR: 1BU1+0GFP39z2PNY2ZSqTDfaBFQh0o/eOENUhtWa/7890QHvXa27U596iMxG/0+j1ACqEJ7NMe
 /VjzjG7gCk8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,282,1589266800"; d="scan'208";a="264132379"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by fmsmga007.fm.intel.com with SMTP; 25 Jun 2020 22:41:55 -0700
Date: Thu, 25 Jun 2020 22:41:55 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
Message-ID: <20200626054155.GI544333@mdroper-desk1.amr.corp.intel.com>
References: <20200617180006.4130501-1-matthew.d.roper@intel.com>
 <20200625173425.GB22095@msatwood-mobl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200625173425.GB22095@msatwood-mobl>
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 25, 2020 at 10:34:25AM -0700, Matt Atwood wrote:
> O Wed, Jun 17, 2020 at 11:00:06AM -0700, Matt Roper wrote:
> > This workaround now also applies to TGL and RKL, so extend the PCH test
> > to just capture everthing ICP and beyond.
> > 
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>

Applied to dinq.  Thanks for the review.


Matt

> > ---
> >  drivers/gpu/drm/i915/i915_irq.c | 6 ++----
> >  1 file changed, 2 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> > index 8e823ba25f5f..923822343311 100644
> > --- a/drivers/gpu/drm/i915/i915_irq.c
> > +++ b/drivers/gpu/drm/i915/i915_irq.c
> > @@ -2907,10 +2907,8 @@ static void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
> >  	if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
> >  		GEN3_IRQ_RESET(uncore, SDE);
> >  
> > -	/* Wa_14010685332:icl,jsl,ehl */
> > -	if (INTEL_PCH_TYPE(dev_priv) == PCH_ICP ||
> > -	    INTEL_PCH_TYPE(dev_priv) == PCH_JSP ||
> > -	    INTEL_PCH_TYPE(dev_priv) == PCH_MCC) {
> > +	/* Wa_14010685332:icl,jsl,ehl,tgl,rkl */
> > +	if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP) {
> >  		intel_uncore_rmw(uncore, SOUTH_CHICKEN1,
> >  				 SBCLK_RUN_REFCLK_DIS, SBCLK_RUN_REFCLK_DIS);
> >  		intel_uncore_rmw(uncore, SOUTH_CHICKEN1,
> > -- 
> > 2.24.1
> > 
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx

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
