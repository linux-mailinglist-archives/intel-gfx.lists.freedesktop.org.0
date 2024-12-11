Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8DDD9EC431
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2024 06:22:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4F7C10E08F;
	Wed, 11 Dec 2024 05:22:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gvqG/5Jr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A064B10E08F
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2024 05:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733894525; x=1765430525;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ybOVoQvY1nCdko6WWkcZ90rGlK4qM0nKZmuf0V0PSAk=;
 b=gvqG/5JrwOFGn7TgqVGQ/ogPFGdMGRCcWo9ZEKi3WfQ4NFSCYNh4OP9T
 MAJPIVuJJZDbX/vmsQcZdMhQ/HeoI33oY5E9DMb6p/5TN21uJFwSsnzSN
 0dhR/K5LOC17LCwKSTtYNnoyeBou+ad2dE/6p60nrjePGtdQV2wSwsF8u
 YW/lKzR6xAk02Fj2OEuxscXdRqu6kCNePu+fni/eQYfI5SVFHD4dgsYnr
 XLyWTaIJB+FfILo7PctQF3DjYsCRjfl/JGFZXFaVI1nNnjzNNiQxeI7Ar
 +TzdxIRWiJ175mnzghL+MH1kqW01vTQvBgb26OT7kibmbr7u2yfcluxc5 A==;
X-CSE-ConnectionGUID: b8N2LzNmRpqW7f9WjPz8Rg==
X-CSE-MsgGUID: uPwC2nVoTy6remkNwd6wsQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="37097188"
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="37097188"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 21:22:02 -0800
X-CSE-ConnectionGUID: IFuH7xA4SQmD4usU7nEdRw==
X-CSE-MsgGUID: 8ftSZamqRkOWQuUHyWvQ0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="96020938"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 21:21:56 -0800
Date: Wed, 11 Dec 2024 07:21:54 +0200
From: Raag Jadav <raag.jadav@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Cc: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, matthew.d.roper@intel.com,
 intel-gfx@lists.freedesktop.org, anshuman.gupta@intel.com,
 badal.nilawar@intel.com, riana.tauro@intel.com
Subject: Re: [PATCH v3 4/4] drm/i915/dg2: Implement Wa_14022698537
Message-ID: <Z1khch4UxdICMGxT@black.fi.intel.com>
References: <20241030143418.410406-1-raag.jadav@intel.com>
 <20241030143418.410406-5-raag.jadav@intel.com>
 <Z1g5heTT1rwTcdt9@ashyti-mobl2.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z1g5heTT1rwTcdt9@ashyti-mobl2.lan>
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

On Tue, Dec 10, 2024 at 01:52:21PM +0100, Andi Shyti wrote:
> Hi Raag,
> 
> > +/* Wa_14022698537:dg2 */
> > +static void i915_enable_g8(struct drm_i915_private *i915)
> > +{
> > +	if (IS_DG2(i915)) {
> > +		if (IS_DG2_D(i915) && !intel_match_g8_cpu())
> > +			return;
> > +
> > +		snb_pcode_write_p(&i915->uncore, PCODE_POWER_SETUP,
> > +				  POWER_SETUP_SUBCOMMAND_G8_ENABLE, 0, 0);
> > +	}
> 
> In the workaround description there an "else if" which I am not
> understanding. I it suggesting to do nothing or is it suggesting
> to do the same thing?

We do the same thing (apply WA) except when the _D IDs are not paired
with whitelisted CPUs. What I did here is added a return call with
inverted CPU logic and got rid of the else part. I know it looks quirky
but does the job.

> > +}
> > +
> >  static int i915_pcode_init(struct drm_i915_private *i915)
> >  {
> >  	struct intel_gt *gt;
> > @@ -428,6 +442,7 @@ static int i915_pcode_init(struct drm_i915_private *i915)
> >  		}
> >  	}
> >  
> > +	i915_enable_g8(i915);
> >  	return 0;
> >  }
> >  
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > index 89e4381f8baa..d400c77423a5 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -3617,6 +3617,7 @@
> >  #define	    POWER_SETUP_I1_WATTS		REG_BIT(31)
> >  #define	    POWER_SETUP_I1_SHIFT		6	/* 10.6 fixed point format */
> >  #define	    POWER_SETUP_I1_DATA_MASK		REG_GENMASK(15, 0)
> > +#define     POWER_SETUP_SUBCOMMAND_G8_ENABLE	0x6
> 
> for aesthetics 0x06 would look better, but this should be
> changed everywhere in the file because single digit hex values
> are used. It's better to keep uniformity in the style.

I agree about uniformity but perhaps a separate filewide patch would
be much cleaner IMHO. Let's keep it as it is for now.

> >  #define GEN12_PCODE_READ_SAGV_BLOCK_TIME_US	0x23
> >  #define   XEHP_PCODE_FREQUENCY_CONFIG		0x6e	/* pvc */
> >  /* XEHP_PCODE_FREQUENCY_CONFIG sub-commands (param1) */
> > -- 
> > 2.34.1
