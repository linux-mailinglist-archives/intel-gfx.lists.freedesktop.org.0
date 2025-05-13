Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B8B6AB50E5
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 12:05:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4E0110E378;
	Tue, 13 May 2025 10:05:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y9RSu3AU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3646C10E1F9;
 Tue, 13 May 2025 10:05:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747130745; x=1778666745;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=e+/N/1vLdJkpS7sJBLatlq3wfQJwPnvLHCBdbpNj+Ok=;
 b=Y9RSu3AUjYBfS5h57/07k9BwPDVkBpOVUyZQDYQFTg54Ge3bcP9QzDGv
 zZmcfKT5XY0NvNbvD50HUj9ZbLDhooYU40PPvpavCxBnXF3VW/7QaHxlL
 X57Vx6sH27SOBIAq/EPsSQuaIu/B60ztJ1hPqwBRd4QiogvKCqTqYkuLr
 TBQXLl4+JOFxZe4OIGb1I77tBUywVWbn7XocgGrZ0lzDwb9GxxUIJh6NA
 GQDhbeiOfSQ8hZ9+4q/IjzNjsWiNbc6otRgfpUZD00dhogIilsbErGCdg
 7zNujK1PffXfylcgNCZm4YyYuAavATaAkps4pjT0rYQhf6r5xiR4DOfpB Q==;
X-CSE-ConnectionGUID: Kl8qSTQrRHCuQT+ii2TplQ==
X-CSE-MsgGUID: GQ9INNuKQ7aaYBToQf79fQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="36594481"
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="36594481"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 03:05:39 -0700
X-CSE-ConnectionGUID: I3gEG+CtRNGDFTTxj9f1dw==
X-CSE-MsgGUID: LHhynNbwTjq2ryJ1Zp7ipw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="142776757"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.221])
 by orviesa005.jf.intel.com with SMTP; 13 May 2025 03:05:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 13 May 2025 13:05:34 +0300
Date: Tue, 13 May 2025 13:05:34 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Luca Coelho <luca@coelho.fi>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/7] drm/i915: Drop PIPEDMC faults from the fault mask on
 LNL+
Message-ID: <aCMZbi1MBzevFrn7@intel.com>
References: <20250512103358.15724-1-ville.syrjala@linux.intel.com>
 <20250512103358.15724-2-ville.syrjala@linux.intel.com>
 <904dc733fc6fe6916b75a1a145cbc754413e53be.camel@coelho.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <904dc733fc6fe6916b75a1a145cbc754413e53be.camel@coelho.fi>
X-Patchwork-Hint: comment
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

On Tue, May 13, 2025 at 12:47:59PM +0300, Luca Coelho wrote:
> On Mon, 2025-05-12 at 13:33 +0300, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > On LNL+ PIPEDMC faults are reported via PIPEDMC interrupts
> > instead of the direct DE_PIPE_* reporting used on earlier
> > platforms. Drop the relevant bits from the fault mask.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_irq.c | 10 +++++++++-
> >  drivers/gpu/drm/i915/i915_reg.h                  |  4 ++--
> >  2 files changed, 11 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> > index 3e73832e5e81..a7130b14aace 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> > @@ -1016,7 +1016,15 @@ static u32 gen8_de_port_aux_mask(struct intel_display *display)
> >  
> >  static u32 gen8_de_pipe_fault_mask(struct intel_display *display)
> >  {
> > -	if (DISPLAY_VER(display) >= 14)
> > +	if (DISPLAY_VER(display) >= 20)
> > +		return MTL_PLANE_ATS_FAULT |
> > +			GEN9_PIPE_CURSOR_FAULT |
> > +			GEN11_PIPE_PLANE5_FAULT |
> > +			GEN9_PIPE_PLANE4_FAULT |
> > +			GEN9_PIPE_PLANE3_FAULT |
> > +			GEN9_PIPE_PLANE2_FAULT |
> > +			GEN9_PIPE_PLANE1_FAULT;
> > +	else if (DISPLAY_VER(display) >= 14)
> >  		return MTL_PIPEDMC_ATS_FAULT |
> >  			MTL_PLANE_ATS_FAULT |
> >  			GEN12_PIPEDMC_FAULT |
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > index 2e4190da3e0d..2d0e04eae763 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -2126,8 +2126,8 @@
> >  #define  GEN8_PIPE_CDCLK_CRC_ERROR	REG_BIT(29)
> >  #define  GEN8_PIPE_CDCLK_CRC_DONE	REG_BIT(28)
> >  #define  GEN12_PIPEDMC_INTERRUPT	REG_BIT(26) /* tgl+ */
> > -#define  GEN12_PIPEDMC_FAULT		REG_BIT(25) /* tgl+ */
> > -#define  MTL_PIPEDMC_ATS_FAULT		REG_BIT(24) /* mtl+ */
> > +#define  GEN12_PIPEDMC_FAULT		REG_BIT(25) /* tgl-mtl */
> > +#define  MTL_PIPEDMC_ATS_FAULT		REG_BIT(24) /* mtl */
> >  #define  GEN11_PIPE_PLANE7_FAULT	REG_BIT(22) /* icl/tgl */
> >  #define  GEN11_PIPE_PLANE6_FAULT	REG_BIT(21) /* icl/tgl */
> >  #define  GEN11_PIPE_PLANE5_FAULT	REG_BIT(20) /* icl+ */
> 
> Out of curiosity, what happens without this patch? Is there going to be
> possible garbage in those bits?

They seem to be unused and tied to zero. So no garbage.

> If so, isn't that an actual bug in the
> current LNL implementation and unrelated to your flip queue preparation
> work?

I noticed the issue when I was hooking up the PIPEDMC interrupts.

> 
> Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
> 
> --
> Cheers,
> Luca.

-- 
Ville Syrjälä
Intel
