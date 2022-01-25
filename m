Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C4D49B2FC
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jan 2022 12:36:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 988E910F2E1;
	Tue, 25 Jan 2022 11:36:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B1E210F2E1
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jan 2022 11:36:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643110584; x=1674646584;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=uYWCgeJl1RvR5HYTqj5xJKbRR8+bsyWQaAM3xYV2L14=;
 b=V1rdwwM7uVpb9eCApLjz3PtjrU8EDx4yFMa3G9vXwgr510aY/0O8Y5Sh
 r4vFtNIrRNrB523/fQJAbxBbFMV++88wv6NAJXkZsilk84M+8VcUqTosZ
 9UZAHyq9kD5uiYM/TtGYu7iu+HWRipa/V5o9qFaSB+de+5cBk/AC404aw
 /W6qBI5MtyWx4N74WjvoXVOM0RUDqBy1EXIZyw+tUSnMLP+Z09d3j0dGg
 /HAlTgQG4dQRmyOGym8mWVS1XIs32hQ2F9u86cOoMMWjbhYqoK1909dcv
 RUKW7TTuHfmayKdI4exNEuJHxAesBHAG0fon5LhBx2H67Xj/XVoh/mjAg w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10237"; a="245115175"
X-IronPort-AV: E=Sophos;i="5.88,314,1635231600"; d="scan'208";a="245115175"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2022 03:36:08 -0800
X-IronPort-AV: E=Sophos;i="5.88,314,1635231600"; d="scan'208";a="534691676"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2022 03:36:07 -0800
Date: Tue, 25 Jan 2022 13:36:09 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20220125113609.GA14653@intel.com>
References: <20220124090653.14547-5-stanislav.lisovskiy@intel.com>
 <20220124135234.12030-1-stanislav.lisovskiy@intel.com>
 <Ye72PeF4SS4ccqy4@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Ye72PeF4SS4ccqy4@intel.com>
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

On Mon, Jan 24, 2022 at 08:55:57PM +0200, Ville Syrjälä wrote:
> On Mon, Jan 24, 2022 at 03:52:34PM +0200, Stanislav Lisovskiy wrote:
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
> > v4: - Renamed needs_min_ddb as s/needs/use/ to match
> >       the wm0 counterpart(Ville Syrjälä)
> >     - Added plane->async_flip check to use_min_ddb(now
> >       passing plane as a parameter to do that)(Ville Syrjälä)
> >     - Account for use_min_ddb also when calculating total data rate
> >       (Ville Syrjälä)
> > 
> > v5:
> >     - Use for_each_intel_plane_on_crtc instead of for_each_intel_plane_id
> >       to get plane->async_flip check and account for all planes(Ville Syrjälä)
> >     - Fix line wrapping(Ville Syrjälä)
> >     - Set plane data rate conditionally, avoiding on redundant assignment
> >       (Ville Syrjälä)
> >     - Removed redundant whitespace(Ville Syrjälä)
> >     - Handle use_min_ddb case in skl_plane_relative_data_rate instead of
> >       icl_get_total_relative_data_rate(Ville Syrjälä)
> > 
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/intel_pm.c | 18 ++++++++++++++++++
> >  1 file changed, 18 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> > index 0bb4c941f950..bb147e5a77b6 100644
> > --- a/drivers/gpu/drm/i915/intel_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > @@ -4906,6 +4906,16 @@ static u8 skl_compute_dbuf_slices(struct intel_crtc *crtc, u8 active_pipes)
> >  	return active_pipes & BIT(pipe) ? BIT(DBUF_S1) : 0;
> >  }
> >  
> > +static bool use_min_ddb(const struct intel_crtc_state *crtc_state,
> > +			struct intel_plane *plane)
> > +{
> > +	struct drm_i915_private *i915 = to_i915(plane->base.dev);
> > +
> > +	return DISPLAY_VER(i915) >= 13 &&
> > +	       crtc_state->uapi.async_flip &&
> > +	       plane->async_flip;
> > +}
> > +
> >  static bool use_minimal_wm0_only(const struct intel_crtc_state *crtc_state,
> >  				 struct intel_plane *plane)
> >  {
> > @@ -4934,6 +4944,14 @@ skl_plane_relative_data_rate(const struct intel_crtc_state *crtc_state,
> >  	if (plane->id == PLANE_CURSOR)
> >  		return 0;
> >  
> > +	/*
> > +	 * We calculate extra ddb based on ratio plane rate/total data rate
> > +	 * in case, in some cases we should not allocate extra ddb for the plane,
> > +	 * so do not count its data rate, if this is the case.
> > +	 */
> > +	if (use_min_ddb(crtc_state, plane))
> > +		return 0;
> > +
> >  	if (color_plane == 1 &&
> >  	    !intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier))
> >  		return 0;
> 
> Yeah this looks nice and simple. Only minor nit is that I'd probably
> have put it after this ccs vs. planar related thing which is a more
> static decision than the async flip optimization.
> 
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

I guess the first patch in this series is also ok?

Just wondering, if I can push it now.

Stan

> 
> > -- 
> > 2.24.1.485.gad05a3d8e5
> 
> -- 
> Ville Syrjälä
> Intel
