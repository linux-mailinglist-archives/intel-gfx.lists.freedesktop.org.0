Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33DF799E330
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2024 11:54:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D858510E092;
	Tue, 15 Oct 2024 09:54:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QvqeCzk0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E73C010E092
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2024 09:54:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728986093; x=1760522093;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=HwW4zlsmoT6rqgLh2vlPI3jglXzWcihcA/GeaKP9A84=;
 b=QvqeCzk0qnkrfiUTN+uUlZwzdHdMes6LYHimLT2UYyg//J3MVmPiGC2K
 WxNV+UlLSF4SCUS73EmI1nZCn6n2o2iYU+A3mB0d5DdfXrW55n99UBaTe
 CGyI5gsmXZUCWSLmuNoPiWrWuZpHK1YjRV22Nunt0V99f3T2iW2p2x2bM
 l86NskDqYt6OHIhnHSqlD2AIJ938A9GVkQMb8Mm7c8pXus8BiBOSf4/qz
 729ItzmDLOdPNYE/GyxE59lnawar0gmbs5rVHbgOZXD/mKylmmkU8xF9D
 reifU2tGMlTb38XVeVS/mEoDLmwpzTHwos5ksh8WAIyYr+vLtxNG2zGHy Q==;
X-CSE-ConnectionGUID: vVcBtepES/+6kBcHdySsUw==
X-CSE-MsgGUID: Esbp2Pu7QVufp5viuiLmjQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11225"; a="27812833"
X-IronPort-AV: E=Sophos;i="6.11,204,1725346800"; d="scan'208";a="27812833"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2024 02:54:52 -0700
X-CSE-ConnectionGUID: F5ilHLW6R7CZbmEcKYjeHw==
X-CSE-MsgGUID: THa5L0i3T1OFyQG8g9YHAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,204,1725346800"; d="scan'208";a="78025637"
Received: from black.fi.intel.com ([10.237.72.28])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2024 02:54:49 -0700
Date: Tue, 15 Oct 2024 12:54:46 +0300
From: Raag Jadav <raag.jadav@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 matthew.d.roper@intel.com, andi.shyti@linux.intel.com,
 intel-gfx@lists.freedesktop.org, anshuman.gupta@intel.com,
 badal.nilawar@intel.com, riana.tauro@intel.com
Subject: Re: [PATCH v2 2/4] drm/i915/dg2: Introduce DG2_WA subplatform
Message-ID: <Zw475rmCK_b3oY2u@black.fi.intel.com>
References: <20241011103250.1035316-1-raag.jadav@intel.com>
 <20241011103250.1035316-3-raag.jadav@intel.com>
 <87ikty6hse.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87ikty6hse.fsf@intel.com>
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

On Fri, Oct 11, 2024 at 01:44:01PM +0300, Jani Nikula wrote:
> On Fri, 11 Oct 2024, Raag Jadav <raag.jadav@intel.com> wrote:
> > Introduce DG2_WA subplatform for the devices that will be used in a
> > workaround and span across multiple DG2 subplatforms.
> 
> Ditto, give the subplatform a name other than "WA". Look up the specs,
> what's in common?

This WA is basically for G8 power state which reduces idle power.

I initially opted for _G8 but it didn't sit quite well with existing G10, G11 macros
which I'm guessing means something else?

Perhaps we can use _PM, but it would be a bit misleading as well, since it has nothing
to do with Linux PM.

Open to suggestions.

> > Signed-off-by: Raag Jadav <raag.jadav@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_drv.h          |  2 ++
> >  drivers/gpu/drm/i915/intel_device_info.c | 34 +++++++++++++++++-------
> >  drivers/gpu/drm/i915/intel_device_info.h |  5 +++-
> >  3 files changed, 31 insertions(+), 10 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> > index 39f6614a0a99..0a68cd9379e8 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.h
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > @@ -548,6 +548,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
> >  	IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G11)
> >  #define IS_DG2_G12(i915) \
> >  	IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G12)
> > +#define IS_DG2_WA(i915) \
> > +	IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_WA)
> >  #define IS_RAPTORLAKE_S(i915) \
> >  	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_S, INTEL_SUBPLATFORM_RPL)
> >  #define IS_ALDERLAKE_P_N(i915) \
> > diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> > index 3c47c625993e..674ab2a4d75e 100644
> > --- a/drivers/gpu/drm/i915/intel_device_info.c
> > +++ b/drivers/gpu/drm/i915/intel_device_info.c
> > @@ -200,6 +200,15 @@ static const u16 subplatform_g12_ids[] = {
> >  	INTEL_DG2_G12_IDS(ID),
> >  };
> >  
> > +static const u16 subplatform_dg2_wa_ids[] = {
> > +	INTEL_DG2_WA_IDS(ID),
> > +};
> > +
> > +static const u16 subplatform_dg2_ids[] = {
> > +	INTEL_DG2_IDS(ID),
> > +	INTEL_ATS_M_IDS(ID),
> > +};
> 
> Nope, you don't need this.
> 
> > +
> >  static const u16 subplatform_arl_ids[] = {
> >  	INTEL_ARL_IDS(ID),
> >  };
> > @@ -252,15 +261,22 @@ static void intel_device_info_subplatform_init(struct drm_i915_private *i915)
> >  		if (find_devid(devid, subplatform_rplu_ids,
> >  			       ARRAY_SIZE(subplatform_rplu_ids)))
> >  			mask |= BIT(INTEL_SUBPLATFORM_RPLU);
> > -	} else if (find_devid(devid, subplatform_g10_ids,
> > -			      ARRAY_SIZE(subplatform_g10_ids))) {
> > -		mask = BIT(INTEL_SUBPLATFORM_G10);
> > -	} else if (find_devid(devid, subplatform_g11_ids,
> > -			      ARRAY_SIZE(subplatform_g11_ids))) {
> > -		mask = BIT(INTEL_SUBPLATFORM_G11);
> > -	} else if (find_devid(devid, subplatform_g12_ids,
> > -			      ARRAY_SIZE(subplatform_g12_ids))) {
> > -		mask = BIT(INTEL_SUBPLATFORM_G12);
> > +	} else if (find_devid(devid, subplatform_dg2_ids,
> > +			      ARRAY_SIZE(subplatform_dg2_ids))) {
> 
> Nope. Just hoist the below checks to higher level.

With that, won't we need to duplicate wa_ids check for each?

> > +		if (find_devid(devid, subplatform_g10_ids,
> > +			       ARRAY_SIZE(subplatform_g10_ids)))
> > +			mask = BIT(INTEL_SUBPLATFORM_G10);
> > +		else if (find_devid(devid, subplatform_g11_ids,
> > +				    ARRAY_SIZE(subplatform_g11_ids)))
> > +			mask = BIT(INTEL_SUBPLATFORM_G11);
> > +		else if (find_devid(devid, subplatform_g12_ids,
> > +				    ARRAY_SIZE(subplatform_g12_ids)))
> > +			mask = BIT(INTEL_SUBPLATFORM_G12);
> > +
> > +		/* DG2 WA ids span across multiple subplatforms */
> > +		if (find_devid(devid, subplatform_dg2_wa_ids,
> > +			       ARRAY_SIZE(subplatform_dg2_wa_ids)))
> > +			mask |= BIT(INTEL_SUBPLATFORM_WA);
> >  	} else if (find_devid(devid, subplatform_arl_ids,
> >  			      ARRAY_SIZE(subplatform_arl_ids))) {
> >  		mask = BIT(INTEL_SUBPLATFORM_ARL);
> > diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> > index 643ff1bf74ee..c3623e859c78 100644
> > --- a/drivers/gpu/drm/i915/intel_device_info.h
> > +++ b/drivers/gpu/drm/i915/intel_device_info.h
> > @@ -95,9 +95,11 @@ enum intel_platform {
> >  /*
> >   * Subplatform bits share the same namespace per parent platform. In other words
> >   * it is fine for the same bit to be used on multiple parent platforms.
> > + * Devices can belong to multiple subplatforms if needed, so it's possible to set
> > + * multiple bits for same device.
> >   */
> >  
> > -#define INTEL_SUBPLATFORM_BITS (3)
> > +#define INTEL_SUBPLATFORM_BITS (4)
> >  #define INTEL_SUBPLATFORM_MASK (BIT(INTEL_SUBPLATFORM_BITS) - 1)
> >  
> >  /* HSW/BDW/SKL/KBL/CFL */
> > @@ -114,6 +116,7 @@ enum intel_platform {
> >  #define INTEL_SUBPLATFORM_G10	0
> >  #define INTEL_SUBPLATFORM_G11	1
> >  #define INTEL_SUBPLATFORM_G12	2
> > +#define INTEL_SUBPLATFORM_WA	3
> >  
> >  /* ADL */
> >  #define INTEL_SUBPLATFORM_RPL	0
> 
> -- 
> Jani Nikula, Intel
