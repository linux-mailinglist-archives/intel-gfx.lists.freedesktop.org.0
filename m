Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96E668FE6E1
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 14:56:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1CF810E93D;
	Thu,  6 Jun 2024 12:56:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bk5h4z7+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E52710E93D
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 12:56:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717678573; x=1749214573;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=U3YT4X3zJT22EwPp9d14S70FveqBJs7wTr+ihipWpUY=;
 b=bk5h4z7++m3hzwmaAG/gmAetukfolVsm7cEDf5fRO/DR2lUpFnfqHqs2
 MVSBGNrLvVY3IL7IxLANCVF4Ldk7xubv5EUlB6D8R0h2seh0MQZQhfWMY
 9bPfrPbTqSLDK6hWCGul4aMuEL1nOFZPrzCD7aSWLQcvPgXSl8dAM2PUE
 Snz1jyvbJ16iY3v9plGU3FbVlKCS31Rq1NBZXmZ/EeL0eo9Ue83u9N30P
 fJ5Im22lKg4OJbE58sK66enVQHBrwKghMXh0CdIBFENxHA2bq0sFsdkHP
 HdiCSEQIcSSs0sXSn5lamj38I0aJbh7teUuo88LFwPxfp4eVdk4GPG0jN g==;
X-CSE-ConnectionGUID: oG4NjIufTrikVyFXf+vvog==
X-CSE-MsgGUID: o/9f8o9NS/uaHQAQD2bG9Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14182524"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14182524"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 05:56:12 -0700
X-CSE-ConnectionGUID: spDVfGIMTBaYGC6CLZfsLw==
X-CSE-MsgGUID: 9aTdCCAiRQChgDp4i0vImg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="37966559"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 Jun 2024 05:56:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 06 Jun 2024 15:56:08 +0300
Date: Thu, 6 Jun 2024 15:56:08 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 6/7] drm/i915: Enable pipeDMC fault interrupts on tgl+
Message-ID: <ZmGx6IsRDZSSdI8n@intel.com>
References: <20240605111832.21373-1-ville.syrjala@linux.intel.com>
 <20240605111832.21373-7-ville.syrjala@linux.intel.com>
 <87tti69u0f.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87tti69u0f.fsf@intel.com>
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

On Thu, Jun 06, 2024 at 02:43:12PM +0300, Jani Nikula wrote:
> On Wed, 05 Jun 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > PipeDMC has its own fault interrupt. Enable that so that
> > we can know if things are failing.
> >
> > While at it, define the other pipeDMC interrupt as well, even
> > though we're not currently using it.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_irq.c | 15 +++++++++++++--
> >  drivers/gpu/drm/i915/i915_reg.h                  |  2 ++
> >  2 files changed, 15 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> > index 219f7693207d..6eb14ffc3c1b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> > @@ -836,13 +836,24 @@ static u32 gen8_de_port_aux_mask(struct drm_i915_private *dev_priv)
> >  static u32 gen8_de_pipe_fault_mask(struct drm_i915_private *dev_priv)
> >  {
> >  	if (DISPLAY_VER(dev_priv) >= 13 || HAS_D12_PLANE_MINIMIZATION(dev_priv))
> > -		return GEN9_PIPE_CURSOR_FAULT |
> > +		return GEN12_PIPEDMC_FAULT |
> > +			GEN9_PIPE_CURSOR_FAULT |
> >  			GEN11_PIPE_PLANE5_FAULT |
> >  			GEN9_PIPE_PLANE4_FAULT |
> >  			GEN9_PIPE_PLANE3_FAULT |
> >  			GEN9_PIPE_PLANE2_FAULT |
> >  			GEN9_PIPE_PLANE1_FAULT;
> > -	else if (DISPLAY_VER(dev_priv) >= 11)
> > +	else if (DISPLAY_VER(dev_priv) == 12)
> > +		return GEN12_PIPEDMC_FAULT |
> > +			GEN9_PIPE_CURSOR_FAULT |
> > +			GEN11_PIPE_PLANE7_FAULT |
> > +			GEN11_PIPE_PLANE6_FAULT |
> > +			GEN11_PIPE_PLANE5_FAULT |
> > +			GEN9_PIPE_PLANE4_FAULT |
> > +			GEN9_PIPE_PLANE3_FAULT |
> > +			GEN9_PIPE_PLANE2_FAULT |
> > +			GEN9_PIPE_PLANE1_FAULT;
> > +	else if (DISPLAY_VER(dev_priv) == 11)
> >  		return GEN9_PIPE_CURSOR_FAULT |
> >  			GEN11_PIPE_PLANE7_FAULT |
> >  			GEN11_PIPE_PLANE6_FAULT |
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > index b85e12bb4781..8cd5abc52a2d 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -2625,6 +2625,8 @@
> >  #define  GEN8_PIPE_FIFO_UNDERRUN	REG_BIT(31)
> >  #define  GEN8_PIPE_CDCLK_CRC_ERROR	REG_BIT(29)
> >  #define  GEN8_PIPE_CDCLK_CRC_DONE	REG_BIT(28)
> > +#define  GEN12_PIPEDMC_INTERRUPT	REG_BIT(26) /* tgl+ */
> > +#define  GEN12_PIPEDMC_FAULT		REG_BIT(25) /* tgl+ */
> 
> Marked as pipedmc gtt fault in the spec.

I did ponder about adding _GTT to all the fault bits, but it looks
like at least the plane fault bits are supposed to be set for both
GTT and ATS faults (despite still being named foo_gtt_fault in the
spec). It's not clear whether that same behaviour should hold for
other hardware units as well. So I decided to stick with the current
"no _GTT in the name" for all the non-ATS fault bits.

> 
> There's also pipe dmc error at bit 17... but the description says
> "simple flp queue done interrupt"... *sigh*

Yeah, that'll need more digging at some point.

-- 
Ville Syrjälä
Intel
