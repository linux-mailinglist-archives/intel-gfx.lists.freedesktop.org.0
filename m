Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 450A766295C
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Jan 2023 16:08:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C73310E44F;
	Mon,  9 Jan 2023 15:08:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8224210E440
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Jan 2023 15:08:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673276882; x=1704812882;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=2r1pbMUT7WE6PrTuI5R0ue7iKcL/V8PWTpOUyDZbUvc=;
 b=mdYaHFwf/E5E58bbbtk7uIc6GCUdoNjo/gpG04p2v6FubULl3sMkCXal
 OhHibtpdZMX1Zeh7Xj8UcLD5pNGvAG2uEHb2fiHfIQOxObrbT1MPj6/dl
 JpE2aLfndjXJF2RQ/Q7MkgzO1mBmhUig5cqeJtAlSH4Jb9WlTzJBZIJm1
 2JQ07ajVnrRMok6XnTsd5h/KnziG10t4AH/y0iEp245oCSwnn9V4I2jxG
 Aj4QZcfdnN0ael/U+7McjHYsnZSh7Qn2djTCG3b1ipeELiwo5GHj+BrxX
 99M4kbZhaBoJ4H9qRHYkcx9JJdq2KVpQaRs6Kl+VE4Ir4KkI+s60oOQWK Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="409135028"
X-IronPort-AV: E=Sophos;i="5.96,311,1665471600"; d="scan'208";a="409135028"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2023 07:06:51 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="780710089"
X-IronPort-AV: E=Sophos;i="5.96,311,1665471600"; d="scan'208";a="780710089"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2023 07:06:49 -0800
Date: Mon, 9 Jan 2023 17:06:41 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <Y7wtgey35LMnHn4S@intel.com>
References: <20230102113937.9263-1-stanislav.lisovskiy@intel.com>
 <Y7RYnHQEFntiPLYV@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y7RYnHQEFntiPLYV@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Implement workaround for DP2 UHBR
 bandwidth check
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 03, 2023 at 11:32:28AM -0500, Rodrigo Vivi wrote:
> 
> on the subject: This is not a hw workaround. Please remove the workaround from
> the subject and the wrong comment.
> 
> "The HSD given is a 'feature' rather than 'bugeco' so no workaround details are
> present here."
> 
> 
> On Mon, Jan 02, 2023 at 01:39:37PM +0200, Stanislav Lisovskiy wrote:
> > According to spec, we should check if output_bpp * pixel_rate is less
> > than DDI clock * 72, if UHBR is used.
> > 
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 11 +++++++++++
> >  1 file changed, 11 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index bf80f296a8fdb..13baf3cb5f934 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -1582,6 +1582,17 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
> >  		drm_dbg_kms(&dev_priv->drm, "DSC: compressed bpp %d slice count %d\n",
> >  			    pipe_config->dsc.compressed_bpp,
> >  			    pipe_config->dsc.slice_count);
> > +
> > +		/* wa1406899791 */
> 
> even if it was a bugeco, the notation doesn't follow the standard.
> 
> But anyway, as I pointed out, this is not a workaround so
> you probably just want a
> 
> HSDES: 1406899791
> BSPEC: 49259
> 
> in your commit msg.

Ok, will add this thanks.

> 
> Also maybe a "Fixes:" tag pointing to the commit that added the sequence
> but didn't added this part of the sequence?
> 
> > +		if (intel_dp_is_uhbr(pipe_config)) {
> > +			int output_bpp = pipe_config->dsc.compressed_bpp;
> > +
> > +			if (output_bpp * adjusted_mode->crtc_clock >=
> > +			    pipe_config->port_clock * 72) {
> > +				drm_dbg_kms(&dev_priv->drm, "DP2 UHBR check failed\n");
> 
> some probably dummy question:
> do we need to add a check for the DP 2.0 above as well?
> or it is unecessary/redundant?

I think this check is more related to hardware limitation, rather than
DP 2.0 standard. I mean if it was even not DP 2.0, but still UHBR I really doubt
that this limitation wouldn't be essential still.

Stan

> 
> > +				return -EINVAL;
> > +			}
> > +		}
> >  	}
> >  	/*
> >  	 * VDSC engine operates at 1 Pixel per clock, so if peak pixel rate
> > -- 
> > 2.37.3
> > 
