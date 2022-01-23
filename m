Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C9AF497582
	for <lists+intel-gfx@lfdr.de>; Sun, 23 Jan 2022 21:34:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9555110E11D;
	Sun, 23 Jan 2022 20:34:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2FA910E11D
 for <intel-gfx@lists.freedesktop.org>; Sun, 23 Jan 2022 20:34:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642970057; x=1674506057;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=QRlpUvMGkW3m/aothrXO1a3q10xz8MjWBUEqfugwPqc=;
 b=F/u7tFe4VbYS5QS8wuSDKQtzJcTxjboTn+TzojLum67B41U+JAlIFW1T
 ZNWwOSYcfAomWpaHalycyvY+EAZoWWMqrLy6z12AA64WxZDcS7iVYf5of
 CqOewgOj6uRICOWyo/wUdT1P3dRakgjQbMe+o0rr1+RlGdJDHv+DSGsbR
 BMn2ojC3kv6thU5ojV6KI3gkkwlnU+irfDfhriW/5J22/3JAwXa2pp+vi
 gpKhMJ/+11jVKyVGn498xjNUFk214zdZ+24LR0dohMglRGVUO9tdfO91M
 JGQ3KJaxbEbUY5RupTq107bOYnXmvndqyy9pY9LDrCeXSOxMK30WHeKO/ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10236"; a="233281244"
X-IronPort-AV: E=Sophos;i="5.88,310,1635231600"; d="scan'208";a="233281244"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2022 12:34:17 -0800
X-IronPort-AV: E=Sophos;i="5.88,310,1635231600"; d="scan'208";a="478827918"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2022 12:34:15 -0800
Date: Sun, 23 Jan 2022 22:34:17 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20220123203417.GA27532@intel.com>
References: <20220121080615.9936-1-stanislav.lisovskiy@intel.com>
 <20220121080615.9936-5-stanislav.lisovskiy@intel.com>
 <YeqhtJd1nmuFDsPI@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YeqhtJd1nmuFDsPI@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Don't allocate extra ddb
 during async flip for DG2
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 21, 2022 at 02:06:12PM +0200, Ville Syrjälä wrote:
> On Fri, Jan 21, 2022 at 10:06:15AM +0200, Stanislav Lisovskiy wrote:
> > In terms of async flip optimization we don't to allocate
> > extra ddb space, so lets skip it.
> > 
> > v2: - Extracted min ddb async flip check to separate function
> >       (Ville Syrjälä)
> >     - Used this function to prevent false positive WARN
> >       to be triggered(Ville Syrjälä)
> > 
> > v3: - Renamed dg2_need_min_ddb to need_min_ddb thus making
> >       it more universal.
> >     - Also used DISPLAY_VER instead of IS_DG2(Ville Syrjälä)
> >     - Use rate = 0 instead of just setting extra = 0, thus
> >       letting other planes to use extra ddb and avoiding WARN
> >       (Ville Syrjälä)
> > 
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/intel_pm.c | 17 +++++++++++++++++
> >  1 file changed, 17 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> > index 5fb022a2a4d7..18fb35c480ef 100644
> > --- a/drivers/gpu/drm/i915/intel_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > @@ -5118,6 +5118,12 @@ static bool icl_need_wm1_wa(struct drm_i915_private *i915,
> >  	       (IS_DISPLAY_VER(i915, 12, 13) && plane_id == PLANE_CURSOR);
> >  }
> >  
> > +static bool needs_min_ddb(struct drm_i915_private *i915,
> > +			  struct intel_crtc_state *crtc_state)
> 
> s/needs/use/ to match the wm0 counterpart?
> 
> Could use a comment as well perhaps, or maybe just put this right
> next to the wm0 counterpart so the reader can see both together and
> make the connection.
> 
> Hmm. Actually I think this would also need the plane->async_flip
> check here too or else we'll drop all the planes to min ddb
> instead of just the plane doing async flips.
> 
> Oh, and I think we need this same thing when calculating the
> total_data_rate or else the numbers won't match.

Yes, there seems to be a problem with that approach, we use ratio
from data plane_data_rate/total_data_rate to determine how we split
extra ddb blocks, however if plane data rate can be just set as 0
here localle, total_data_rate is obtained from crtc_state->plane_data_rate,
which is being calculated first.
So if we trick icl_get_total_relative_data_rate function to calculate
total_data_rate corresponding to rate = 0, we will then have 
crtc_state->plane_data_rate[plane_id] set to 0, which is probably
not what we want.

Or should I just edit icl_get_total_relative_data_rate so that it
still calculates crtc_state->plane_data_rate properly however, the
doesn't add those to total_data_rate, if use_min_ddb(plane) is set?

Stan

> 
> > +{
> > +	return DISPLAY_VER(i915) >= 13 && crtc_state->uapi.async_flip;
> > +}
> > +
> >  static int
> >  skl_allocate_plane_ddb(struct intel_atomic_state *state,
> >  		       struct intel_crtc *crtc)
> > @@ -5225,9 +5231,14 @@ skl_allocate_plane_ddb(struct intel_atomic_state *state,
> >  			break;
> >  
> >  		rate = crtc_state->plane_data_rate[plane_id];
> > +
> > +		if (needs_min_ddb(dev_priv, crtc_state))
> > +			rate = 0;
> > +
> >  		extra = min_t(u16, alloc_size,
> >  			      DIV64_U64_ROUND_UP(alloc_size * rate,
> >  						 total_data_rate));
> > +
> >  		total[plane_id] = wm->wm[level].min_ddb_alloc + extra;
> >  		alloc_size -= extra;
> >  		total_data_rate -= rate;
> > @@ -5236,13 +5247,19 @@ skl_allocate_plane_ddb(struct intel_atomic_state *state,
> >  			break;
> >  
> >  		rate = crtc_state->uv_plane_data_rate[plane_id];
> > +
> > +		if (needs_min_ddb(dev_priv, crtc_state))
> > +			rate = 0;
> > +
> >  		extra = min_t(u16, alloc_size,
> >  			      DIV64_U64_ROUND_UP(alloc_size * rate,
> >  						 total_data_rate));
> > +
> >  		uv_total[plane_id] = wm->uv_wm[level].min_ddb_alloc + extra;
> >  		alloc_size -= extra;
> >  		total_data_rate -= rate;
> >  	}
> > +
> >  	drm_WARN_ON(&dev_priv->drm, alloc_size != 0 || total_data_rate != 0);
> >  
> >  	/* Set the actual DDB start/end points for each plane */
> > -- 
> > 2.24.1.485.gad05a3d8e5
> 
> -- 
> Ville Syrjälä
> Intel
