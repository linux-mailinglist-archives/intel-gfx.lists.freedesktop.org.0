Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF1594DDB6E
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Mar 2022 15:19:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D927110E9EA;
	Fri, 18 Mar 2022 14:19:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E75B210E9DA
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Mar 2022 14:19:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647613142; x=1679149142;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Efb3rIA5h4ZsjaHATky+HiDz3hyCRAJfdyRpNv6wJMw=;
 b=mwpTFAvzbHdJgnwmrQLJ2B71zirK0NRw6PBCYomvCGUlxO5okXZU3059
 7SjltMmsItR5hLN1UhrmF7+5FU29nJ09uosBjtX7ezuqzQSOl5qawAIpA
 7FTe6wjoXK3rgHcR+6O5/Lb3KzpPQ8nIxAcdi+HniFRJ3d29KHs4zyVu5
 nCAPliZkdmjkub4KFdAVCQkZwm3+b0zH/EFjxYAZtYmOfJ6MMKRXbFBp1
 SeRq2Qw3mV6xYCSV+f8PtAlfmJBicMKZK/ZeJp/NdiZwCa3aofBp2gHxn
 m1t26CevSq1qbnzrSg+0BFFqh3FeXJ7YjIO9jf3w75LO0KWRgmpde5hTK A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="237089375"
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="237089375"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2022 07:19:02 -0700
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="558461821"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2022 07:19:01 -0700
Date: Fri, 18 Mar 2022 16:19:32 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20220318141932.GA8492@intel.com>
References: <20220318085226.7348-1-stanislav.lisovskiy@intel.com>
 <530cc6962b181ee01e9c00a38190ab27e5940215.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <530cc6962b181ee01e9c00a38190ab27e5940215.camel@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/adl_p: Increase CDCLK by 15% if
 PSR2 is used
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

On Fri, Mar 18, 2022 at 02:21:10PM +0200, Souza, Jose wrote:
> On Fri, 2022-03-18 at 10:52 +0200, Stanislav Lisovskiy wrote:
> > We are currently getting FIFO underruns, in particular
> > when PSR2 is enabled. There seem to be no existing workaround
> > or patches, which can fix that issue(were expecting some recent
> > selective fetch update and DBuf bw/SAGV fixes to help,
> > which unfortunately didn't).
> > Current idea is that it looks like for some reason the
> > DBuf prefill time isn't enough once we exit PSR2, despite its
> > theoretically correct.
> > So bump it up a bit by 15%(minimum experimental amount required
> > to get it working), if PSR2 is enabled.
> > For PSR1 there is no need in this hack, so we limit it only
> > to PSR2 and Alderlake.
> 
> It this workaround meant to be permanent? If yes we should file a HSD and get hardware folks feedback.

Nope, I hope we figure out some more elegant solution at some point.

> 
> > 
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 13 +++++++++++++
> >  1 file changed, 13 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index 8888fda8b701..095b79950788 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -2325,6 +2325,19 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
> >  					dev_priv->max_cdclk_freq));
> >  	}
> >  
> 
> Please add some comment in the code about this workaround.
> 
> 
> > +	if (IS_ALDERLAKE_P(dev_priv)) {
> > +		struct intel_encoder *encoder;
> > +
> > +		for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
> > +			struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> > +
> > +			if (intel_dp->psr.psr2_enabled) {
> 
> You should check the has_psr2 in the crtc_state, PSR2 could be disabled when this state is committed.
> 
> > +				min_cdclk = DIV_ROUND_UP(min_cdclk * 100, 85);
> 
> This is not increasing by 15%.
> 
> min_cdclk = 500
> 500 * 100 = 50000
> 50000 / 85 = 588.235294118
> 
> While 15% of 500 is 75.
> 
> Also if there is two CRTCs with PSR2 enabled you will bump min_cdclk twice.
> 
> > +				break;

No, we won't bump up it twice, because we initialize min_cdclk here from pixel rate initially
and only then apply all those dirty hacks and optimizations. There is similar code above as
well.
For each crtc we call this function but as starting point always its pixel rate is used,
then the max() of those would be the actual new cdclk.

As for 15%, good point took this from expression above in that func, but indeed this is 
no a 15%.

Stan

> > +			}
> > +		}
> > +	}
> > +
> >  	if (min_cdclk > dev_priv->max_cdclk_freq) {
> >  		drm_dbg_kms(&dev_priv->drm,
> >  			    "required cdclk (%d kHz) exceeds max (%d kHz)\n",
> 
