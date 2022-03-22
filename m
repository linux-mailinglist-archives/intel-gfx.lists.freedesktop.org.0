Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 173EC4E39E0
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 08:47:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA88010E0A8;
	Tue, 22 Mar 2022 07:47:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E80410E0A8
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 07:47:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647935262; x=1679471262;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=r8T8c9/xTJlrn9bbqyeoJFlubm0xxT2gDZaJZKzblwU=;
 b=IK4rWFajN4BXOcs0Qqpn+J76Umwu8nX4blGh14McCWaya426P1rEP5zk
 fKL9CRY+HwrfLQP+nqAqXuxLio0J9pg1KbXHEWWlzwsDBUDQJ4B8hE4qY
 h0QynqdRIinmfxSWlFXM0BRtV2AhL1qWLz6/dkyrSI8N7oajDbFO7BRhT
 kFW+qGCk38/MlnGbmGW8oks9SR2BPh4hpvxE59T/Grj5JHdOcozE6Az8q
 cdrMmHTE36roZO6RD6CagYIO5PwsykDD21X/zfDB4k8MbYEXABGIVgnJH
 5/ebSRZY0eMryNecX6MyZeDb7pKxFcBjJDTUWvgGXlBq+OR3SKvpvRQOm w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10293"; a="238357881"
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="238357881"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 00:47:42 -0700
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="560261026"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 00:47:40 -0700
Date: Tue, 22 Mar 2022 09:48:12 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20220322074812.GA2113@intel.com>
References: <20220321104904.12425-1-stanislav.lisovskiy@intel.com>
 <8b9377677dcc1b18cd9dc95757f49f8da7beb94c.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8b9377677dcc1b18cd9dc95757f49f8da7beb94c.camel@intel.com>
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

On Mon, Mar 21, 2022 at 06:58:39PM +0200, Souza, Jose wrote:
> On Mon, 2022-03-21 at 12:49 +0200, Stanislav Lisovskiy wrote:
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
> > 
> > v2: - Added comment(Jose Souza)
> >     - Fixed 15% calculation(Jose Souza)
> > 
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 26 ++++++++++++++++++++++
> >  1 file changed, 26 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index 8888fda8b701..92d57869983a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -2325,6 +2325,32 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
> >  					dev_priv->max_cdclk_freq));
> >  	}
> >  
> > +
> > +	/*
> > +	 * HACK.  We are getting FIFO underruns, in particular
> > +	 * when PSR2 is enabled. There seem to be no existing workaround
> > +	 * or patches as of now.
> > +	 * Current idea is that it looks like for some reason the
> > +	 * DBuf prefill time isn't enough once we exit PSR2, despite its
> > +	 * theoretically correct.
> > +	 * So bump it up a bit by 15%(minimum experimental amount required
> > +	 * to get it working), if PSR2 is enabled.
> > +	 * For PSR1 there is no need in this hack, so we limit it only
> > +	 * to PSR2 and Alderlake.
> > +	 */
> > +	if (IS_ALDERLAKE_P(dev_priv)) {
> > +		struct intel_encoder *encoder;
> > +
> > +		for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
> > +			struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> > +
> > +			if (intel_dp->psr.psr2_enabled) {
> 
> Again, you can't use this, PSR could end up disabled when this atomic commit it applied.
> Please use intel_crtc_state.has_psr2.

Yes, but if PSR2 is disabled - we don't need this hack, we can live with lower
CDCLK then, thus saving power. And once PSR2 is enabled we'll have to switch it
on. I intentionally didn't want to enable it always, if PSR2 is supported in principle - we care only if its indeed enabled.
Also CDCLK is the last thing, which is being calculated, thats how architecture
is designed, so we can rely on all the states here, if you mean that.

Even if this would be not working(not aware why but still), would anyway prefer
to find someway to enable this only, when PSR2 is indeed enabled, otherwise
we would be kind of wasting power..


Stan

> 
> 
> > +				min_cdclk = DIV_ROUND_UP(min_cdclk * 115, 100);
> > +				break;
> > +			}
> > +		}
> > +	}
> > +
> >  	if (min_cdclk > dev_priv->max_cdclk_freq) {
> >  		drm_dbg_kms(&dev_priv->drm,
> >  			    "required cdclk (%d kHz) exceeds max (%d kHz)\n",
> 
