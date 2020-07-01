Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F175A2112EC
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 20:42:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3FF66E9A6;
	Wed,  1 Jul 2020 18:42:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29D726E9A6
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jul 2020 18:42:28 +0000 (UTC)
IronPort-SDR: +nmJmVpMUuZIcmMbFq58M4a81Nzsk3tKfWJBBgYDlGDJxQtu2ukOiXY82a3CH6ZhTvX14GdM11
 NVkPqjaBEbbw==
X-IronPort-AV: E=McAfee;i="6000,8403,9669"; a="134974962"
X-IronPort-AV: E=Sophos;i="5.75,301,1589266800"; d="scan'208";a="134974962"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2020 11:42:27 -0700
IronPort-SDR: M7ABhjJG+FfRMzU9vfTcMWOZb1yTguwwVbhozQ/QkO0GTHI0j2xI5DAyfrauhhA0imMMAZihuf
 kQVIssj5VtAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,301,1589266800"; d="scan'208";a="265482640"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by fmsmga007.fm.intel.com with ESMTP; 01 Jul 2020 11:42:27 -0700
Date: Wed, 1 Jul 2020 11:44:04 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20200701184403.GA25635@intel.com>
References: <20200630112609.9998-1-stanislav.lisovskiy@intel.com>
 <4d307447-fbf3-e39d-3627-e6b52e0e9e2e@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4d307447-fbf3-e39d-3627-e6b52e0e9e2e@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v1] drm/i915: Clamp min_cdclk to
 max_cdclk_freq to unblock 8K
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 01, 2020 at 02:20:28PM +0200, Maarten Lankhorst wrote:
> Op 30-06-2020 om 13:26 schreef Stanislav Lisovskiy:
> > We still need "Bump up CDCLK" workaround otherwise getting
> > underruns - however currently it blocks 8K as CDCLK = Pixel rate,
> > in 8K case would require CDCLK to be around 1 Ghz which is not
> > possible.
> >
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 14 +++++++++++++-
> >  1 file changed, 13 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index 45f7f33d1144..01a5bc6b08c4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -2080,9 +2080,21 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
> >  	 * Explicitly stating here that this seems to be currently
> >  	 * rather a Hack, than final solution.
> >  	 */
> > -	if (IS_TIGERLAKE(dev_priv))
> > +	if (IS_TIGERLAKE(dev_priv)) {
> >  		min_cdclk = max(min_cdclk, (int)crtc_state->pixel_rate);
> >  
> > +		/*
> > +		 * Clamp to max_cdclk_freq in order not to break an 8K,
> > +		 * but still leave W/A at place.
> > +		 */
> > +		min_cdclk = min(min_cdclk, (int)dev_priv->max_cdclk_freq);
> > +
> > +		/*
> > +		 * max_cdclk_freq check obviously not needed - just return.
> > +		 */
> > +		return min_cdclk;
> > +	}
> > +
> >  	if (min_cdclk > dev_priv->max_cdclk_freq) {
> >  		drm_dbg_kms(&dev_priv->drm,
> >  			    "required cdclk (%d kHz) exceeds max (%d kHz)\n",
> 
> Wouldn't you just have to halve pixel_rate if bigjoiner flag is set?

We dont have big joiner patches pulled in yet, this is just for the 2p2p configuration

Manasi

> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
