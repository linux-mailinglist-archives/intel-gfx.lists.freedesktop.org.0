Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A84F4DDB90
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Mar 2022 15:22:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58D8010E9EE;
	Fri, 18 Mar 2022 14:22:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 319B710E9F3
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Mar 2022 14:22:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647613349; x=1679149349;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=4pr/MtFubG3VMBbRM7ZcZvHtykZQ+9OiVq9uQMPbPh4=;
 b=UhhpLzZgLfVCVSiZgYo+XYAptm1T6q+Ykd75DHOcmG/QlLVI2IL13vqw
 atYmW+69Rf4lHSPUdmooJYpr4WjmQ5sxzCCzhi5bXNaCZXXxg36ifZ3OL
 mXCtWZZg1Yw5UofFBT+6Hz7vhAVeVwByUD8EvD3ZdRMPCSls093G7EvJs
 yAfU4kBFtwwE7+evY9JZC1vWSvHzO1yRrHhitu5hERyA9efxmT9dSWsJ8
 Iq7xMvpQomwhpXyrg5g+DyU59arnAzxnFyVoBtvyFB3J3rWyHUdL2K0pb
 RtKfD1LrUrl4fwRE5Oektpq1/wNbR9oIO/e8ig/yDlwhE8dmXP+Sd9ZUt A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="317860876"
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="317860876"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2022 07:22:28 -0700
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="691334678"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2022 07:22:27 -0700
Date: Fri, 18 Mar 2022 16:22:52 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20220318142252.GA8522@intel.com>
References: <20220318085226.7348-1-stanislav.lisovskiy@intel.com>
 <530cc6962b181ee01e9c00a38190ab27e5940215.camel@intel.com>
 <f60950ea65708dc7f093f5939efb164225b186c6.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f60950ea65708dc7f093f5939efb164225b186c6.camel@intel.com>
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

On Fri, Mar 18, 2022 at 02:27:53PM +0200, Souza, Jose wrote:
> On Fri, 2022-03-18 at 05:22 -0700, José Roberto de Souza wrote:
> > On Fri, 2022-03-18 at 10:52 +0200, Stanislav Lisovskiy wrote:
> > > We are currently getting FIFO underruns, in particular
> > > when PSR2 is enabled. There seem to be no existing workaround
> > > or patches, which can fix that issue(were expecting some recent
> > > selective fetch update and DBuf bw/SAGV fixes to help,
> > > which unfortunately didn't).
> > > Current idea is that it looks like for some reason the
> > > DBuf prefill time isn't enough once we exit PSR2, despite its
> > > theoretically correct.
> > > So bump it up a bit by 15%(minimum experimental amount required
> > > to get it working), if PSR2 is enabled.
> > > For PSR1 there is no need in this hack, so we limit it only
> > > to PSR2 and Alderlake.
> > 
> > It this workaround meant to be permanent? If yes we should file a HSD and get hardware folks feedback.
> > 
> > > 
> > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_cdclk.c | 13 +++++++++++++
> > >  1 file changed, 13 insertions(+)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > index 8888fda8b701..095b79950788 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > @@ -2325,6 +2325,19 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
> > >  					dev_priv->max_cdclk_freq));
> > >  	}
> > >  
> > 
> > Please add some comment in the code about this workaround.
> > 
> > 
> > > +	if (IS_ALDERLAKE_P(dev_priv)) {
> > > +		struct intel_encoder *encoder;
> > > +
> > > +		for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
> > > +			struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> > > +
> > > +			if (intel_dp->psr.psr2_enabled) {
> > 
> > You should check the has_psr2 in the crtc_state, PSR2 could be disabled when this state is committed.
> 
> Ah and if a remember correctly those underruns only happens in a scenario with 4 pipes enabled? or it also happens with 2 and 3 pipes?
> Anyways would be better to narrow down the cases where the workaround is applied.
> So for at least in a case with a single pipe enabled we can have the lowest cdclk as possible. 

I was thinking the same initially, but this underrun is observed in lesser pipe cases, when PSR2 
is enabled.

Stan

> 
> > 
> > > +				min_cdclk = DIV_ROUND_UP(min_cdclk * 100, 85);
> > 
> > This is not increasing by 15%.
> > 
> > min_cdclk = 500
> > 500 * 100 = 50000
> > 50000 / 85 = 588.235294118
> > 
> > While 15% of 500 is 75.
> > 
> > Also if there is two CRTCs with PSR2 enabled you will bump min_cdclk twice.
> > 
> > > +				break;
> > > +			}
> > > +		}
> > > +	}
> > > +
> > >  	if (min_cdclk > dev_priv->max_cdclk_freq) {
> > >  		drm_dbg_kms(&dev_priv->drm,
> > >  			    "required cdclk (%d kHz) exceeds max (%d kHz)\n",
> > 
> 
