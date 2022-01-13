Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED1CF48D17B
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 05:14:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0F4F10F895;
	Thu, 13 Jan 2022 04:14:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50AC410F8A0
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jan 2022 04:14:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642047264; x=1673583264;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=HqmzxWotPZ5xcFx8QfBhtAVgpw/LaWw80PNOTNhBUGA=;
 b=kC6VRqmdP8ijqhJXx+vxlVkbA6KtZzfGPb0BO7Bd3ID+KaqtkGarQGjs
 4TbAo2Eh4Kg8ldbG17g1vNV+3Yl5wSgyd6UbaLOiICffbhJrknYBk7oQz
 +SHtWOTbnXM9ZRxdpuPlebNqXpm1QhvJBfUWfUxXIg0ZYjzyhDqMusA7H
 TTVKdcQYywpspHEuFuP6OLLHUkb6M+zZP8f7I82ivhqy9PhImlndUBfXa
 icf0If5a5AD2xMn6Rta6DpAU4icLlCqczy8lyVJ/eIjCjq9slQILxE0O9
 0OT/Ok0abkCEktf6x2+ftUOEkA41ew1AqA+5ixnF/FyA6gmcaGj46Owaz A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10225"; a="330275917"
X-IronPort-AV: E=Sophos;i="5.88,284,1635231600"; d="scan'208";a="330275917"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 20:14:23 -0800
X-IronPort-AV: E=Sophos;i="5.88,284,1635231600"; d="scan'208";a="515777005"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 20:14:23 -0800
Date: Wed, 12 Jan 2022 20:14:22 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <Yd+nHsmm9oKzzVDJ@mdroper-desk1.amr.corp.intel.com>
References: <20220111051600.3429104-1-matthew.d.roper@intel.com>
 <20220111051600.3429104-4-matthew.d.roper@intel.com>
 <Yd7vQ3uSLisEwnxq@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Yd7vQ3uSLisEwnxq@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 03/11] drm/i915: Parameterize ECOSKPD
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 12, 2022 at 05:09:55PM +0200, Ville Syrjälä wrote:
> On Mon, Jan 10, 2022 at 09:15:52PM -0800, Matt Roper wrote:
> > Combine the separate render and blitter register definitions into a
> > single definition.  We already know we have some workarounds on an
> > upcoming platform that will need to update the ECOSKPD register for
> > other engines too, so this helps pave the way for that.
> > 
> > Cc: Jani Nikula <jani.nikula@linux.intel.com>
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_workarounds.c |  2 +-
> >  drivers/gpu/drm/i915/gvt/handlers.c         |  4 ++--
> >  drivers/gpu/drm/i915/i915_reg.h             | 14 ++++++--------
> >  drivers/gpu/drm/i915/intel_pm.c             |  6 ++++--
> >  4 files changed, 13 insertions(+), 13 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index ab3277a3d593..2d87dc81cd63 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -2536,7 +2536,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> >  		 * they are already accustomed to from before contexts were
> >  		 * enabled.
> >  		 */
> > -		wa_add(wal, ECOSKPD,
> > +		wa_add(wal, ECOSKPD(RENDER_RING_BASE),
> >  		       0, _MASKED_BIT_ENABLE(ECO_CONSTANT_BUFFER_SR_DISABLE),
> >  		       0 /* XXX bit doesn't stick on Broadwater */,
> >  		       true);
> > diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
> > index 3938df0db188..329d30a36f4f 100644
> > --- a/drivers/gpu/drm/i915/gvt/handlers.c
> > +++ b/drivers/gpu/drm/i915/gvt/handlers.c
> > @@ -2877,9 +2877,9 @@ static int init_generic_mmio_info(struct intel_gvt *gvt)
> >  
> >  	MMIO_D(_MMIO(0x3c), D_ALL);
> >  	MMIO_D(_MMIO(0x860), D_ALL);
> > -	MMIO_D(ECOSKPD, D_ALL);
> > +	MMIO_D(ECOSKPD(RENDER_RING_BASE), D_ALL);
> >  	MMIO_D(_MMIO(0x121d0), D_ALL);
> > -	MMIO_D(GEN6_BLITTER_ECOSKPD, D_ALL);
> > +	MMIO_D(ECOSKPD(BLT_RING_BASE), D_ALL);
> >  	MMIO_D(_MMIO(0x41d0), D_ALL);
> >  	MMIO_D(GAC_ECO_BITS, D_ALL);
> >  	MMIO_D(_MMIO(0x6200), D_ALL);
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > index 3ef332833c4c..a4c9d2005c46 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -2858,10 +2858,12 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
> >  #define GFX_FLSH_CNTL	_MMIO(0x2170) /* 915+ only */
> >  #define GFX_FLSH_CNTL_GEN6	_MMIO(0x101008)
> >  #define   GFX_FLSH_CNTL_EN	(1 << 0)
> > -#define ECOSKPD		_MMIO(0x21d0)
> > -#define   ECO_CONSTANT_BUFFER_SR_DISABLE REG_BIT(4)
> > -#define   ECO_GATING_CX_ONLY	(1 << 3)
> > -#define   ECO_FLIP_DONE		(1 << 0)
> > +#define ECOSKPD(base)		_MMIO((base) + 0x1d0)
> > +#define   ECO_CONSTANT_BUFFER_SR_DISABLE	REG_BIT(4)
> > +#define   ECO_GATING_CX_ONLY			REG_BIT(3)
> > +#define   GEN6_BLITTER_FBC_NOTIFY		REG_BIT(3)
> > +#define   ECO_FLIP_DONE				REG_BIT(0)
> > +#define   GEN6_BLITTER_LOCK_SHIFT		16
> 
> This looks messy. The register contents are (mostly?) unique for
> each engine, so this is making it rather hard to see which register
> takes which bits. I think we should at least group the bits clearly
> based on which engine they belong to.

Makes sense.  I'll send a follow-up patch tomorrow that reorganizes this
a bit.


Matt

> 
> >  
> >  #define CACHE_MODE_0_GEN7	_MMIO(0x7000) /* IVB+ */
> >  #define RC_OP_FLUSH_ENABLE (1 << 0)
> > @@ -2871,10 +2873,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
> >  #define   GEN8_4x4_STC_OPTIMIZATION_DISABLE	(1 << 6)
> >  #define   GEN9_PARTIAL_RESOLVE_IN_VC_DISABLE	(1 << 1)
> >  
> > -#define GEN6_BLITTER_ECOSKPD	_MMIO(0x221d0)
> > -#define   GEN6_BLITTER_LOCK_SHIFT			16
> > -#define   GEN6_BLITTER_FBC_NOTIFY			(1 << 3)
> > -
> >  #define GEN6_RC_SLEEP_PSMI_CONTROL	_MMIO(0x2050)
> >  #define   GEN6_PSMI_SLEEP_MSG_DISABLE	(1 << 0)
> >  #define   GEN12_WAIT_FOR_EVENT_POWER_DOWN_DISABLE REG_BIT(7)
> > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> > index 8b357ec35a4a..2d0955d13776 100644
> > --- a/drivers/gpu/drm/i915/intel_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > @@ -7868,10 +7868,12 @@ static void gen3_init_clock_gating(struct drm_i915_private *dev_priv)
> >  	intel_uncore_write(&dev_priv->uncore, D_STATE, dstate);
> >  
> >  	if (IS_PINEVIEW(dev_priv))
> > -		intel_uncore_write(&dev_priv->uncore, ECOSKPD, _MASKED_BIT_ENABLE(ECO_GATING_CX_ONLY));
> > +		intel_uncore_write(&dev_priv->uncore, ECOSKPD(RENDER_RING_BASE),
> > +				   _MASKED_BIT_ENABLE(ECO_GATING_CX_ONLY));
> >  
> >  	/* IIR "flip pending" means done if this bit is set */
> > -	intel_uncore_write(&dev_priv->uncore, ECOSKPD, _MASKED_BIT_DISABLE(ECO_FLIP_DONE));
> > +	intel_uncore_write(&dev_priv->uncore, ECOSKPD(RENDER_RING_BASE),
> > +			   _MASKED_BIT_DISABLE(ECO_FLIP_DONE));
> >  
> >  	/* interrupts should cause a wake up from C3 */
> >  	intel_uncore_write(&dev_priv->uncore, INSTPM, _MASKED_BIT_ENABLE(INSTPM_AGPBUSY_INT_EN));
> > -- 
> > 2.34.1
> 
> -- 
> Ville Syrjälä
> Intel

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
