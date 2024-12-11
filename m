Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BEB29EC844
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2024 10:04:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A449810EAC6;
	Wed, 11 Dec 2024 09:04:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BMg/0ai6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 955ED10EAC6
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2024 09:04:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733907866; x=1765443866;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=CLotP4EpnghgZYxJnyxhB/6Wad/g5VGgLU8TIKRC+No=;
 b=BMg/0ai6aX7INDSFCWbf/vBXO71MFvuLGbas+ZDLrKRgG+9NGnaNbPJL
 PVyvKKe4m0haf6TWNNgtgZZAKosBGgKqX9cC+chb/HTpiCZPSGCy1GPuM
 UBL6NJalaykF0GcKUQVKtNhQ16POM4+qkFYGZhptT4KyENtwRz8Zxo1Wh
 vElgwgNd5gDtko7VBZ4lhAadvna72yWP3g/OBQ0MV1AawmSw46n/rNA0Z
 EpWg/JeygB2up15etcpf/CcL+ae9jAm46Oz/b8DhuS/w3AAALq/EYN0rj
 i9FrH28BpyJJPBG07pwcSOC7RKffr5UpNdWbkT5X9XW2qee3ycAxVM7fT w==;
X-CSE-ConnectionGUID: X4BNoAPJSCCRkf6LusCsmg==
X-CSE-MsgGUID: Pnkps0ouQUChQO/2N2Sdxw==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="34402979"
X-IronPort-AV: E=Sophos;i="6.12,225,1728975600"; d="scan'208";a="34402979"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 01:04:25 -0800
X-CSE-ConnectionGUID: lCwL8L1pS7GygDHDLGmZjw==
X-CSE-MsgGUID: QNn4s5/XTNqkttUBL+dfeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,225,1728975600"; d="scan'208";a="96199072"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.26])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 01:04:21 -0800
Date: Wed, 11 Dec 2024 10:04:17 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Raag Jadav <raag.jadav@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 matthew.d.roper@intel.com, intel-gfx@lists.freedesktop.org,
 anshuman.gupta@intel.com, badal.nilawar@intel.com, riana.tauro@intel.com
Subject: Re: [PATCH v3 4/4] drm/i915/dg2: Implement Wa_14022698537
Message-ID: <Z1lVkec1_HZzSz5O@ashyti-mobl2.lan>
References: <20241030143418.410406-1-raag.jadav@intel.com>
 <20241030143418.410406-5-raag.jadav@intel.com>
 <Z1g5heTT1rwTcdt9@ashyti-mobl2.lan>
 <Z1khch4UxdICMGxT@black.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z1khch4UxdICMGxT@black.fi.intel.com>
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

On Wed, Dec 11, 2024 at 07:21:54AM +0200, Raag Jadav wrote:
> On Tue, Dec 10, 2024 at 01:52:21PM +0100, Andi Shyti wrote:
> > Hi Raag,
> > 
> > > +/* Wa_14022698537:dg2 */
> > > +static void i915_enable_g8(struct drm_i915_private *i915)
> > > +{
> > > +	if (IS_DG2(i915)) {
> > > +		if (IS_DG2_D(i915) && !intel_match_g8_cpu())
> > > +			return;
> > > +
> > > +		snb_pcode_write_p(&i915->uncore, PCODE_POWER_SETUP,
> > > +				  POWER_SETUP_SUBCOMMAND_G8_ENABLE, 0, 0);
> > > +	}
> > 
> > In the workaround description there an "else if" which I am not
> > understanding. I it suggesting to do nothing or is it suggesting
> > to do the same thing?
> 
> We do the same thing (apply WA) except when the _D IDs are not paired
> with whitelisted CPUs. What I did here is added a return call with
> inverted CPU logic and got rid of the else part. I know it looks quirky
> but does the job.

Thanks... the document is weirdly fromatted and I wanted to make
sure everything is aligned.

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

> > > +}
> > > +
> > >  static int i915_pcode_init(struct drm_i915_private *i915)
> > >  {
> > >  	struct intel_gt *gt;
> > > @@ -428,6 +442,7 @@ static int i915_pcode_init(struct drm_i915_private *i915)
> > >  		}
> > >  	}
> > >  
> > > +	i915_enable_g8(i915);
> > >  	return 0;
> > >  }
> > >  
> > > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > > index 89e4381f8baa..d400c77423a5 100644
> > > --- a/drivers/gpu/drm/i915/i915_reg.h
> > > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > > @@ -3617,6 +3617,7 @@
> > >  #define	    POWER_SETUP_I1_WATTS		REG_BIT(31)
> > >  #define	    POWER_SETUP_I1_SHIFT		6	/* 10.6 fixed point format */
> > >  #define	    POWER_SETUP_I1_DATA_MASK		REG_GENMASK(15, 0)
> > > +#define     POWER_SETUP_SUBCOMMAND_G8_ENABLE	0x6
> > 
> > for aesthetics 0x06 would look better, but this should be
> > changed everywhere in the file because single digit hex values
> > are used. It's better to keep uniformity in the style.
> 
> I agree about uniformity but perhaps a separate filewide patch would
> be much cleaner IMHO. Let's keep it as it is for now.

Yes, that was my point. The problem with a separate patch is that
you would screw up git blame because you would touch so many
lines with a trivial change. Therefore, it's better to leave it
as it is.

Thanks,
Andi

> > >  #define GEN12_PCODE_READ_SAGV_BLOCK_TIME_US	0x23
> > >  #define   XEHP_PCODE_FREQUENCY_CONFIG		0x6e	/* pvc */
> > >  /* XEHP_PCODE_FREQUENCY_CONFIG sub-commands (param1) */
> > > -- 
> > > 2.34.1
