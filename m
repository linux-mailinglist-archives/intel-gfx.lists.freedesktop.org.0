Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28F801F1495
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jun 2020 10:39:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C9EB6E4A6;
	Mon,  8 Jun 2020 08:39:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2CB36E4A6
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jun 2020 08:39:27 +0000 (UTC)
IronPort-SDR: a4H0x08zzov6lqLenCSMwleF5lnVo3F+w/wvALKABvpm1a96eMQ3YvCQrHKrH3qmJjACunTXyJ
 7DOE5wvR0iYA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2020 01:39:26 -0700
IronPort-SDR: R2yc5Dv2Edi04bWHGWf+W9hyqRk9nxxvD/wHN+1X0CdD47hL2TyoMfcrPrMMzmiURvp6t9bhYW
 lIj4mwdr3Vfg==
X-IronPort-AV: E=Sophos;i="5.73,487,1583222400"; d="scan'208";a="446657685"
Received: from unknown (HELO intel.com) ([10.237.72.89])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2020 01:39:25 -0700
Date: Mon, 8 Jun 2020 11:35:40 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20200608083540.GA22223@intel.com>
References: <20200608065552.21728-1-stanislav.lisovskiy@intel.com>
 <87img2x91h.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87img2x91h.fsf@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] Revert "drm/i915: Remove unneeded hack now
 for CDCLK"
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

On Mon, Jun 08, 2020 at 11:21:14AM +0300, Jani Nikula wrote:
> On Mon, 08 Jun 2020, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> wrote:
> > This reverts commit 82ea174dc5425d4e85e25d0c4ba961a2e494392a.
> >
> 
> Please explain why. What's going on, why we need the revert.
> 
> It's fine to reply here, the commit message can be amended by whoever
> applies the patch.

Yes, 

Unfortunately according to our recent findings there is still some
unidentified factor, requiring CDCLK to be set higher - otherwise we 
still get underruns on some multipipe configurations, despite CDCLK being set
according to BSpec formula. So getting again back into debug mode to
indentify the cause, meanwhile setting CDCLK=Pixel rate back in order
to remove regression in 10% of the cases due to FIFO underruns.

Stan 

> 
> BR,
> Jani.
> 
> 
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > Fixes: cd1915460861 ("drm/i915: Adjust CDCLK accordingly to our DBuf bw needs")
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 12 ++++++++++++
> >  1 file changed, 12 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index 08468b121d02..45f7f33d1144 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -2071,6 +2071,18 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
> >  	/* Account for additional needs from the planes */
> >  	min_cdclk = max(intel_planes_min_cdclk(crtc_state), min_cdclk);
> >  
> > +	/*
> > +	 * HACK. Currently for TGL platforms we calculate
> > +	 * min_cdclk initially based on pixel_rate divided
> > +	 * by 2, accounting for also plane requirements,
> > +	 * however in some cases the lowest possible CDCLK
> > +	 * doesn't work and causing the underruns.
> > +	 * Explicitly stating here that this seems to be currently
> > +	 * rather a Hack, than final solution.
> > +	 */
> > +	if (IS_TIGERLAKE(dev_priv))
> > +		min_cdclk = max(min_cdclk, (int)crtc_state->pixel_rate);
> > +
> >  	if (min_cdclk > dev_priv->max_cdclk_freq) {
> >  		drm_dbg_kms(&dev_priv->drm,
> >  			    "required cdclk (%d kHz) exceeds max (%d kHz)\n",
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
