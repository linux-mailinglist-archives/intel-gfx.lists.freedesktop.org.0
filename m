Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B9384E39E7
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 08:49:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D43D710E52B;
	Tue, 22 Mar 2022 07:49:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE0EA10E52B
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 07:49:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647935353; x=1679471353;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=aJXtCDT2tRVOE0zDd+0bKClnIAVI7/ylbR7mBxpSN8Y=;
 b=j7b/BasNjSuuYcOlozBY4h44ySho6ewyvqchV68Z772Ijy6fIJU7fv4P
 4lHJcu/qMc87mf3wBVTZnMTgb/+r8TpMJTYo+TeioX9NYp1RrhpMnW5MM
 PZ5rOYFwN9kZ5UQx+esGOeWEHuFvVKFKxq6m3megBOPGuYupt0A2c2/6h
 Q1RrA+gokRl16h5DVquZtW3A3UGgz6s28IV0E4jWttqAE1kYnV9FKJ2iD
 jj6PRMJkkUNU1YEiXqZY1puINEf3exXJig5pVzWiHN94oLNZkASq6fZQi
 3V+LgEGCnEFKYuplvSJ7r7rnenNDXXQGXYLmDDNmYPdsV14BIRbfoYKwy w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10293"; a="237695403"
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="237695403"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 00:49:11 -0700
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="692460846"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 00:49:10 -0700
Date: Tue, 22 Mar 2022 09:49:47 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20220322074947.GB2113@intel.com>
References: <20220321104904.12425-1-stanislav.lisovskiy@intel.com>
 <b57a419ab01f7e8881ece99d0cd3bd415942651c.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b57a419ab01f7e8881ece99d0cd3bd415942651c.camel@intel.com>
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

On Mon, Mar 21, 2022 at 07:01:27PM +0200, Souza, Jose wrote:
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
> 
> 
> And please check if we can only apply this when two or more pipes are enabled.
> Otherwise this will impact power numbers in the case that is matters most.

That one I can check. Probably need someone at office to disconnect all the pipes, except eDP to see
if its still reproducible, however I think I've seen it already happening.

Stan

> 
> > +		struct intel_encoder *encoder;
> > +
> > +		for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
> > +			struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> > +
> > +			if (intel_dp->psr.psr2_enabled) {
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
