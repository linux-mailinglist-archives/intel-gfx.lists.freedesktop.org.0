Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B23C94D42F6
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 09:59:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 098F810FB30;
	Thu, 10 Mar 2022 08:59:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D869B10F2F9
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Mar 2022 08:59:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646902760; x=1678438760;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=7d4Gu4lituijd2KfVOIJ8k8jnJrQFNMYGDYBDWZ82do=;
 b=DRhXxxTq63GkrGUVURt8xBeIFTDOUx/DwB7qRpUwLPYQP6Jfx0YSagHx
 B5jfAzUJTN5HbIiguixMpg++OpEsfxkHD4BlUqMXLD49aibt0w1idFYXx
 sbMuohzGIgc64+wR5n3fMKSAtD9pmRtdAtb8k4QKdl4aa6CNAmKfJP+Zb
 6kl5hZkkniDwJw5qpKHygIgNUBYARDBoQtCC3cxAt0FJngTnTsd/X22Io
 8njB0d2WpzsULCvIAh9V3yfSQuASxIB7TpH0NfcOYdm5sT8dv2OLk8apk
 G8ZTi3zXBiTo8xn3uRLUrzEkpRyn84sFmsYrmQzllS2P4/l8pS0vfHjYL Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="254932835"
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="254932835"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 00:59:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="554552854"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga008.jf.intel.com with SMTP; 10 Mar 2022 00:59:16 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Mar 2022 10:59:16 +0200
Date: Thu, 10 Mar 2022 10:59:16 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <Yim95BuOf0E93cuY@intel.com>
References: <20220303191207.27931-1-ville.syrjala@linux.intel.com>
 <20220303191207.27931-9-ville.syrjala@linux.intel.com>
 <20220310082256.GC20808@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220310082256.GC20808@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 8/9] drm/i915: Fix DBUF bandwidth vs.
 cdclk handling
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

On Thu, Mar 10, 2022 at 10:22:56AM +0200, Lisovskiy, Stanislav wrote:
> On Thu, Mar 03, 2022 at 09:12:06PM +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Make the dbuf bandwidth min cdclk calculations match the spec
> > more closely. Supposedly the arbiter can only guarantee an equal
> > share of the total bandwidth of the slice to each active plane
> > on that slice. 
> 
> So are we assuming or really know this? May be we should ask
> Arthur(or may be you did already) because could be it works
> somehow differently yet again.

It's what the spec formula says atm. Also IIRC when I asked Art 
about this and he said it's like that to account for the worst
case behaviour of the arbiter.

> 
> > So we take the max bandwidth of any of the planes
> > on each slice and multiply that by the number of active planes
> > on the slice to get a worst case estimate on how much bandwidth
> > we require.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_bw.c    | 159 +++++++++++++++------
> >  drivers/gpu/drm/i915/display/intel_bw.h    |  10 +-
> >  drivers/gpu/drm/i915/display/intel_cdclk.c |  67 ++++-----
> >  drivers/gpu/drm/i915/display/intel_cdclk.h |   2 +
> >  4 files changed, 148 insertions(+), 90 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> > index 56eebccd16e2..ed86f3e3c66c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bw.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> > @@ -692,12 +692,34 @@ static bool intel_bw_state_changed(struct drm_i915_private *i915,
> >  		enum dbuf_slice slice;
> >  
> >  		for_each_dbuf_slice(i915, slice) {
> > -			if (old_crtc_bw->used_bw[slice] != new_crtc_bw->used_bw[slice])
> > +			if (old_crtc_bw->max_bw[slice] != new_crtc_bw->max_bw[slice] ||
> > +			    old_crtc_bw->active_planes[slice] != new_crtc_bw->active_planes[slice])
> >  				return true;
> >  		}
> >  	}
> >  
> > -	return old_bw_state->min_cdclk != new_bw_state->min_cdclk;
> > +	return false;
> > +}
> > +
> > +static void skl_plane_calc_dbuf_bw(struct intel_bw_state *bw_state,
> > +				   struct intel_crtc *crtc,
> > +				   enum plane_id plane_id,
> > +				   const struct skl_ddb_entry *ddb,
> > +				   unsigned int data_rate)
> > +{
> > +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> > +	struct intel_dbuf_bw *crtc_bw = &bw_state->dbuf_bw[crtc->pipe];
> > +	unsigned int dbuf_mask = skl_ddb_dbuf_slice_mask(i915, ddb);
> > +	enum dbuf_slice slice;
> > +
> > +	/*
> > +	 * The arbiter can only really guarantee an
> > +	 * equal share of the total bw to each plane.
> > +	 */
> > +	for_each_dbuf_slice_in_mask(i915, slice, dbuf_mask) {
> > +		crtc_bw->max_bw[slice] = max(crtc_bw->max_bw[slice], data_rate);
> 
> So does the crtc_bw->max_bw[slice] not store plane data rate which consumes
> the most, I guess? Wondering should we name it bit somewhat differently.
> Like max_plane_bw or smth, because crtc_bw->max_bw[slice] sounds more like
> total bw consumed by slice, but not plane.

Naming is hard.

> 
> > +		crtc_bw->active_planes[slice] |= BIT(plane_id);
> > +	}
> >  }
> >  
> >  static void skl_crtc_calc_dbuf_bw(struct intel_bw_state *bw_state,
> > @@ -708,46 +730,77 @@ static void skl_crtc_calc_dbuf_bw(struct intel_bw_state *bw_state,
> >  	struct intel_dbuf_bw *crtc_bw = &bw_state->dbuf_bw[crtc->pipe];
> >  	enum plane_id plane_id;
> >  
> > -	memset(&crtc_bw->used_bw, 0, sizeof(crtc_bw->used_bw));
> > +	memset(crtc_bw, 0, sizeof(*crtc_bw));
> >  
> >  	if (!crtc_state->hw.active)
> >  		return;
> >  
> >  	for_each_plane_id_on_crtc(crtc, plane_id) {
> > -		const struct skl_ddb_entry *ddb =
> > -			&crtc_state->wm.skl.plane_ddb[plane_id];
> > -		unsigned int data_rate = crtc_state->data_rate[plane_id];
> > -		unsigned int dbuf_mask = skl_ddb_dbuf_slice_mask(i915, ddb);
> > -		enum dbuf_slice slice;
> > -
> > -		for_each_dbuf_slice_in_mask(i915, slice, dbuf_mask)
> > -			crtc_bw->used_bw[slice] += data_rate;
> > +		/*
> > +		 * We assume cursors are small enough
> > +		 * to not cause bandwidth problems.
> > +		 */
> > +		if (plane_id == PLANE_CURSOR)
> > +			continue;
> > +
> > +		skl_plane_calc_dbuf_bw(bw_state, crtc, plane_id,
> > +				       &crtc_state->wm.skl.plane_ddb[plane_id],
> > +				       crtc_state->data_rate[plane_id]);
> > +
> > +		if (DISPLAY_VER(i915) < 11)
> > +			skl_plane_calc_dbuf_bw(bw_state, crtc, plane_id,
> > +					       &crtc_state->wm.skl.plane_ddb_y[plane_id],
> > +					       crtc_state->data_rate[plane_id]);
> >  	}
> > +}
> > +
> > +/* "Maximum Data Buffer Bandwidth" */
> > +static int
> > +intel_bw_dbuf_min_cdclk(struct drm_i915_private *i915,
> > +			const struct intel_bw_state *bw_state)
> > +{
> > +	unsigned int total_max_bw = 0;
> > +	enum dbuf_slice slice;
> >  
> > -	if (DISPLAY_VER(i915) >= 11)
> > -		return;
> > +	for_each_dbuf_slice(i915, slice) {
> > +		int num_active_planes = 0;
> > +		unsigned int max_bw = 0;
> > +		enum pipe pipe;
> >  
> > -	for_each_plane_id_on_crtc(crtc, plane_id) {
> > -		const struct skl_ddb_entry *ddb =
> > -			&crtc_state->wm.skl.plane_ddb_y[plane_id];
> > -		unsigned int data_rate = crtc_state->data_rate_y[plane_id];
> > -		unsigned int dbuf_mask = skl_ddb_dbuf_slice_mask(i915, ddb);
> > -		enum dbuf_slice slice;
> > +		/*
> > +		 * The arbiter can only really guarantee an
> > +		 * equal share of the total bw to each plane.
> > +		 */
> > +		for_each_pipe(i915, pipe) {
> > +			const struct intel_dbuf_bw *crtc_bw = &bw_state->dbuf_bw[pipe];
> >  
> > -		for_each_dbuf_slice_in_mask(i915, slice, dbuf_mask)
> > -			crtc_bw->used_bw[slice] += data_rate;
> > +			max_bw = max(crtc_bw->max_bw[slice], max_bw);
> > +			num_active_planes += hweight8(crtc_bw->active_planes[slice]);
> > +		}
> > +		max_bw *= num_active_planes;
> 
> So we are now putting much more strict limitation here. I.e assuming that if there are
> lets say planes 1,2,3. Plane 1 consumes 3000, Plane 2 consumes 1000, Plane 3 consumes 1000.
> 
> All together they consume 5000 so we kinda derive CDCLK from there(i.e 5000/64)
> This is basically what formula also says in the BSpec, i.e it just instruct us
> to add all those planes and check that we don't exceed CDCLK * 64 in total.
> 
> However now we are going to take plane 1, since it consumes the most and multiply that 3000
> by 3, i.e get 9000 instead of 5000, which would result in a way higher CDCLK.
> 
> I think you got this assumption from that place in BSpec:
> 
> DBUF maximum plane bandwidth MB/s = DBUF maximum pipe bandwidth / number of enabled planes
> 
> In fact sounds just about right, would be probably still nice to clarify that from HW
> team. I remember we even discussed that long time back in the office days.
 
Yeah, that bspec formula takes the total available bandwidth for the DBUF 
slice, divides that by the number of active planes using the slice, and
checks each plane against that. So should be exactly what I do here,
except in reverse.
 
-- 
Ville Syrjälä
Intel
