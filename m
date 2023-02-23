Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 851D26A0B6D
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Feb 2023 15:02:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF0D710E4DF;
	Thu, 23 Feb 2023 14:02:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4EF510E4DF
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Feb 2023 14:02:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677160922; x=1708696922;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=17xETAQEJf33RNx4+wWQMexXhQz8/+dXFpppW94qp28=;
 b=ESaBZJ3wpuPiJYRBDFZvBOoo3Hir07lM4SQI8HwsmMYRSbDucACmKq9Q
 REKir+5r8e0RAQheuXsq8dOMJoRmsTVZ5w9Rm81Be0mvsBH/JD7bM0ldZ
 Y8t8maO5qdhW+zzR2yAwdm6Ovbs9Dmh5QTrGybMU4hHHKDi2Tf05IeDpt
 erq9cccxwklLyQ29FCEAy0aSTaBS2aEcLATe8ifAx4D/AtixdJEvNIY4B
 V4U07a5Y0Lrs7POKBQuO1rTJwYEDAqDIfIVu86TCVoIfksOHutwAFYGkx
 TTwCsDQjOrB03QwhlMqgD6/8Wnm1XMFkeardL08BBvw36lnXBJcpXH3BN Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="334585046"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="334585046"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2023 06:01:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="781890537"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="781890537"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga002.fm.intel.com with SMTP; 23 Feb 2023 06:01:23 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 23 Feb 2023 16:01:22 +0200
Date: Thu, 23 Feb 2023 16:01:22 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
Message-ID: <Y/dxsrXKK4Ew9uHt@intel.com>
References: <20230125185234.21599-1-ville.syrjala@linux.intel.com>
 <20230125185234.21599-6-ville.syrjala@linux.intel.com>
 <bb9a6acc5aa70d2b89f9a31f36a8eaf3d8e2bdb1.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <bb9a6acc5aa70d2b89f9a31f36a8eaf3d8e2bdb1.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: Mask page table errors on
 gen2/3 with FBC
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 23, 2023 at 12:46:21PM +0000, Govindapillai, Vinod wrote:
> Hi
> 
> Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> 
> BR
> vinod
> 
> PS: With this patch seems my comment for the prev patch in this series might not be relevant.

Aye.

On a related note, sometimes I do muse about unifying all 
the (non-vlv/chv) gmch platform irq code into just one
copy, but in this case that wouldn't really change
anything anyway since we need different values for
different platforms.

Thaks for the review.

> 
> On Wed, 2023-01-25 at 20:52 +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > FBC on gen2/3 seems to trigger page table errors. No visual
> > artifacts are visible, and essentially the same FBC
> > code works on gen4 so these seem entirely spurious. There
> > are also hints in gen3 bspec indicating that certain bits
> > in PGTBL_ER are just not wired up correctly in the
> > hardware.
> > 
> > Ideally we'd want to mask out only the bogus bits, but
> > sadly there is no mask for PGTBL_ER, and instead we are
> > forced to mask out all page table errors via EMR :(
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_irq.c | 22 ++++++++++++++++++++--
> >  1 file changed, 20 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> > index 081b79d00521..496f76bf42f3 100644
> > --- a/drivers/gpu/drm/i915/i915_irq.c
> > +++ b/drivers/gpu/drm/i915/i915_irq.c
> > @@ -3473,8 +3473,23 @@ static void i8xx_irq_reset(struct drm_i915_private *dev_priv)
> >  
> >  static u32 i9xx_error_mask(struct drm_i915_private *i915)
> >  {
> > -       return ~(I915_ERROR_PAGE_TABLE |
> > -                I915_ERROR_MEMORY_REFRESH);
> > +       /*
> > +        * On gen2/3 FBC generates (seemingly spurious)
> > +        * display INVALID_GTT/INVALID_GTT_PTE table errors.
> > +        *
> > +        * Also gen3 bspec has this to say:
> > +        * "DISPA_INVALID_GTT_PTE
> > +        "  [DevNapa] : Reserved. This bit does not reflect the page
> > +        "              table error for the display plane A."
> > +        *
> > +        * Unfortunately we can't mask off individual PGTBL_ER bits,
> > +        * so we just have to mask off all page table errors via EMR.
> > +        */
> > +       if (HAS_FBC(i915))
> > +               return ~I915_ERROR_MEMORY_REFRESH;
> > +       else
> > +               return ~(I915_ERROR_PAGE_TABLE |
> > +                        I915_ERROR_MEMORY_REFRESH);
> >  }
> >  
> >  static void i8xx_irq_postinstall(struct drm_i915_private *dev_priv)
> > @@ -3762,6 +3777,9 @@ static u32 i965_error_mask(struct drm_i915_private *i915)
> >         /*
> >          * Enable some error detection, note the instruction error mask
> >          * bit is reserved, so we leave it masked.
> > +        *
> > +        * i965 FBC no longer generates spurious GTT errors,
> > +        * so we can always enable the page table errors.
> >          */
> >         if (IS_G4X(i915))
> >                 return ~(GM45_ERROR_PAGE_TABLE |
> 

-- 
Ville Syrjälä
Intel
