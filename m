Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04E3E4979BE
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jan 2022 08:42:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36DA010E7F4;
	Mon, 24 Jan 2022 07:42:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48C7210E7E6
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jan 2022 07:42:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643010145; x=1674546145;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=DFaayIm3edUeTyE2qb/JCWKJSRaXXTgeor8wpG25mVQ=;
 b=CcvRjcSFVE4Wft7Aqg22dGATfOvAZFxGCg270THi4aw69g41RbTgmnPR
 XOFoLYf8hTTnYiF2ml2nhtjWf3CrNXO+YtxNfb5qqsYGtYO9xOX3XFx0+
 hoouRdOXmPcosmLLOpKl0eCCUA/QKyah9pzZMtIPsOX4cXTg5hKpqAudy
 SHiALJG9W9SODUxF497wvrZNUewVB97TAzn6oHSx5DLna4o39V0w5DoQ4
 CASlTYTzhJixacDOjKVJj0L5vtMUEUmzll49cYoQH6FgqyBRWg1EggGCL
 wSooYbL/YTG+oQ3Nxv8nJwGxhIfo6v5p0ZdaO35k/SrOX16O1a1tmk9Cb Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10236"; a="226660275"
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="226660275"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2022 23:42:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="534112712"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga008.jf.intel.com with SMTP; 23 Jan 2022 23:42:21 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Jan 2022 09:42:20 +0200
Date: Mon, 24 Jan 2022 09:42:20 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <Ye5YXNKZjgLSK3dx@intel.com>
References: <20220121080615.9936-1-stanislav.lisovskiy@intel.com>
 <20220121080615.9936-5-stanislav.lisovskiy@intel.com>
 <YeqhtJd1nmuFDsPI@intel.com> <20220123203417.GA27532@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220123203417.GA27532@intel.com>
X-Patchwork-Hint: comment
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

On Sun, Jan 23, 2022 at 10:34:17PM +0200, Lisovskiy, Stanislav wrote:
> On Fri, Jan 21, 2022 at 02:06:12PM +0200, Ville Syrjälä wrote:
> > On Fri, Jan 21, 2022 at 10:06:15AM +0200, Stanislav Lisovskiy wrote:
> > > In terms of async flip optimization we don't to allocate
> > > extra ddb space, so lets skip it.
> > > 
> > > v2: - Extracted min ddb async flip check to separate function
> > >       (Ville Syrjälä)
> > >     - Used this function to prevent false positive WARN
> > >       to be triggered(Ville Syrjälä)
> > > 
> > > v3: - Renamed dg2_need_min_ddb to need_min_ddb thus making
> > >       it more universal.
> > >     - Also used DISPLAY_VER instead of IS_DG2(Ville Syrjälä)
> > >     - Use rate = 0 instead of just setting extra = 0, thus
> > >       letting other planes to use extra ddb and avoiding WARN
> > >       (Ville Syrjälä)
> > > 
> > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/intel_pm.c | 17 +++++++++++++++++
> > >  1 file changed, 17 insertions(+)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> > > index 5fb022a2a4d7..18fb35c480ef 100644
> > > --- a/drivers/gpu/drm/i915/intel_pm.c
> > > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > > @@ -5118,6 +5118,12 @@ static bool icl_need_wm1_wa(struct drm_i915_private *i915,
> > >  	       (IS_DISPLAY_VER(i915, 12, 13) && plane_id == PLANE_CURSOR);
> > >  }
> > >  
> > > +static bool needs_min_ddb(struct drm_i915_private *i915,
> > > +			  struct intel_crtc_state *crtc_state)
> > 
> > s/needs/use/ to match the wm0 counterpart?
> > 
> > Could use a comment as well perhaps, or maybe just put this right
> > next to the wm0 counterpart so the reader can see both together and
> > make the connection.
> > 
> > Hmm. Actually I think this would also need the plane->async_flip
> > check here too or else we'll drop all the planes to min ddb
> > instead of just the plane doing async flips.
> > 
> > Oh, and I think we need this same thing when calculating the
> > total_data_rate or else the numbers won't match.
> 
> Yes, there seems to be a problem with that approach, we use ratio
> from data plane_data_rate/total_data_rate to determine how we split
> extra ddb blocks, however if plane data rate can be just set as 0
> here localle, total_data_rate is obtained from crtc_state->plane_data_rate,
> which is being calculated first.
> So if we trick icl_get_total_relative_data_rate function to calculate
> total_data_rate corresponding to rate = 0, we will then have 
> crtc_state->plane_data_rate[plane_id] set to 0, which is probably
> not what we want.

These are just the relative data rates so they're not actually used for
anything else. So I guess we could even set them to 0. Though I don't
even recall if the current code really works or not. I think there
might have been some problem with calculating these that I perhaps fixed
with my latest ddb series (or maybe I already fixed it with some earlier
series, can't remember anymore).

> 
> Or should I just edit icl_get_total_relative_data_rate so that it
> still calculates crtc_state->plane_data_rate properly however, the
> doesn't add those to total_data_rate, if use_min_ddb(plane) is set?

This should work too. Can't immediately think why one approach would
be strictly better than the other.

-- 
Ville Syrjälä
Intel
