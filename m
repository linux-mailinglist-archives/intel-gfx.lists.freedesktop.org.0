Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 438487D7108
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 17:37:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4054E10E0E9;
	Wed, 25 Oct 2023 15:37:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96EF710E0E9
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 15:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698248243; x=1729784243;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Z62a6Xk1Hdhg/e1BHu86uoNDnS0vpJPTjabFX7vaw1Q=;
 b=QthakyYa/TPsLhUgYiLfY/el0LDmEv9Oi31S5JWwOm29KMIfzAtaTN8R
 18dBa5EXFRSnTCJYfukg41cwzojYjZh5eJNVWpc03dwtsfiBi7q6BICkH
 tG2bVulo1sICY+XbCLAlklQ0DpP8g1gtLaRXyUEhsDkOMwdxBKgZm5Vr5
 35NPQiSxR+5pslcQsV0gCgoaWxTHV2vBQIMWf8dpJRrMwq9zgmlwYe1+N
 V6ULcUe0CYBtdiZHFSpyUdKe8KmDOJwAHOSvx+qwVvpADbHngp+TF4naR
 DZOvxYLfdiGunYWNYAHqto1icgigU+Begdtbt8QkdmCFmqdoeNqD8AWol w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="5948744"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; 
   d="scan'208";a="5948744"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 08:37:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="875543816"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="875543816"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 08:37:20 -0700
Date: Wed, 25 Oct 2023 18:37:50 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <ZTk2LYDATZ7t3m43@ideak-desk.fi.intel.com>
References: <20231024010925.3949910-1-imre.deak@intel.com>
 <20231024010925.3949910-11-imre.deak@intel.com>
 <ZTkz_lk_BfrJZTLY@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZTkz_lk_BfrJZTLY@intel.com>
Subject: Re: [Intel-gfx] [PATCH 10/29] drm/i915/dp: Specify the FEC overhead
 as an increment vs. a remainder
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 25, 2023 at 06:27:58PM +0300, Ville Syrjälä wrote:
> On Tue, Oct 24, 2023 at 04:09:06AM +0300, Imre Deak wrote:
> > A follow-up patch will add up all the overheads on a DP link, where it
> > makes more sense to specify each overhead factor in terms of the added
> > overhead amount vs. the reciprocal remainder (of usable BW remaining
> > after deducting the overhead). Prepare for that here, keeping the
> > existing behavior.
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 2048649b420b2..0c0f026fb3161 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -85,8 +85,8 @@
> >  #define DP_DSC_MAX_ENC_THROUGHPUT_0		340000
> >  #define DP_DSC_MAX_ENC_THROUGHPUT_1		400000
> >  
> > -/* DP DSC FEC Overhead factor = 1/(0.972261) */
> > -#define DP_DSC_FEC_OVERHEAD_FACTOR		972261
> 
> Does anyone know where this magic number comes from?
> 
> AFAICS we should have 250 LL + 5 FEC_PARITY_PH + 1 CD_ADJ, which
> gives us the 256/250 = 2.4% number. In addition there's the
> extra parity marker symbol insterted every 128 FEC blocks,
> which makes the total overhead 2.4015625%, which is still
> not that magic number.

IIRC it's mentioned in the bpsec audio programming sequence, but the
rational for it isn't detailed. I suppose it could be the 2.4% FEC
overhead + a fixed overhead for DSC EOC symbols; but the latter is not
really fixed, it depends on the video mode/slice count etc. as I
commented on later.

> 
> > +/* DP DSC FEC Overhead factor = 1/(0.972261) = 1.028530 ppm */
> > +#define DP_DSC_FEC_OVERHEAD_FACTOR		1028530
> >  
> >  /* Compliance test status bits  */
> >  #define INTEL_DP_RESOLUTION_SHIFT_MASK	0
> > @@ -680,8 +680,8 @@ int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
> >  
> >  u32 intel_dp_mode_to_fec_clock(u32 mode_clock)
> >  {
> > -	return div_u64(mul_u32_u32(mode_clock, 1000000U),
> > -		       DP_DSC_FEC_OVERHEAD_FACTOR);
> > +	return div_u64(mul_u32_u32(mode_clock, DP_DSC_FEC_OVERHEAD_FACTOR),
> > +		       1000000U);
> >  }
> >  
> >  static int
> > -- 
> > 2.39.2
> 
> -- 
> Ville Syrjälä
> Intel
