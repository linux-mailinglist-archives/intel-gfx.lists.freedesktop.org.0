Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 685CC7A7A19
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 13:09:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE41210E170;
	Wed, 20 Sep 2023 11:09:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64C3410E170
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Sep 2023 11:09:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695208151; x=1726744151;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=8Cy1ir3JcnqqeWCEtGxGjPBtkQ4X8KJhXDbBIsWW9LM=;
 b=hJokLquvk/O/k/R5e3fhDbr1WrNIczD3K6g0MCMjbT5WCF+HU7ciEedI
 e8W0Fhtdppp1boHVFwpH4eZIrmv95hPF4avkPsj4MZ2TX/fcWrgSu/ArF
 XZd5LDa3pK4lQlX98T1uRStzjAyt8HrQFWmFZDYBkUoH4Ds+HGJwIbum1
 yjAeuJHa+YhTHtpA06KaP11UX9TkLBRXnt8cYTlXsU3JrH+x3z3+/9z7h
 OamZjaYca0xm8JIyR0gvznSBQdVCy/VnY78QHTXbgvH2PK1Ro+xYovn/2
 GlkquboAN8k/QtKEC9TuH9/XtRHdg6saONvuy1GLRn2H2vtF3RY68hcy0 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="365241070"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="365241070"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 04:09:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="781649946"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="781649946"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by orsmga001.jf.intel.com with SMTP; 20 Sep 2023 04:09:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 20 Sep 2023 14:09:07 +0300
Date: Wed, 20 Sep 2023 14:09:07 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <ZQrS0_ZGNLihp397@intel.com>
References: <20230913150356.9477-1-ville.syrjala@linux.intel.com>
 <20230913150356.9477-2-ville.syrjala@linux.intel.com>
 <87led1ryj0.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87led1ryj0.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Require FEC for DSC on DP-MST
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
Cc: intel-gfx@lists.freedesktop.org, Luca Coelho <luciano.coelho@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Sep 20, 2023 at 12:20:51PM +0300, Jani Nikula wrote:
> On Wed, 13 Sep 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > The current check just asserts that we need FEC to use DSC
> > with (non-eDP) DP-SST. But MST also needs FEC for DSC. Just
> > check for !eDP instead to cover all the cases correctly.
> 
> 128b/132b won't have crtc->fec_enable set, as it's part of channel
> encoding. We don't need to explicitly enable it in hardware, the
> 128b/132b bandwidth computations take it into account in the equation,
> but we can't skip DSC based on !crtc_state->fec_enable either.

Hmm. Right. I suppose we need a uhbr check here as well then.

> 
> BR,
> Jani.
> 
> 
> >
> > Cc: Luca Coelho <luciano.coelho@intel.com>
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 2cde8ac513bb..41f180f2879e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -1380,7 +1380,7 @@ static bool intel_dp_supports_fec(struct intel_dp *intel_dp,
> >  static bool intel_dp_supports_dsc(struct intel_dp *intel_dp,
> >  				  const struct intel_crtc_state *crtc_state)
> >  {
> > -	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP) && !crtc_state->fec_enable)
> > +	if (!intel_dp_is_edp(intel_dp) && !crtc_state->fec_enable)
> >  		return false;
> >  
> >  	return intel_dsc_source_support(crtc_state) &&
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
