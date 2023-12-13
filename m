Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F08CC8116BD
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 16:29:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1925110E07F;
	Wed, 13 Dec 2023 15:29:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAF0B10E081
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 15:29:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702481356; x=1734017356;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=NQSvVd/qQ0knF8aoXwMOvQnhvMJRPmaw2/8HrpfCsZ4=;
 b=Lv4uGi5LRJWVR3pgsCBgEmafJSivQoI4DFst0PxoCnJ9EbIZT7IlFT/3
 H9q8IpgD07/d9eTkV+slIRh9VgbqwaNgjtomEWvz4uops4M+RaHx8x2VD
 /ts26XRKt6d/zHocAlYfmaL9oq9aRHsWSPcOb88GMefM2aL8aXXzGhCcU
 eLw2ao+8cLurVEO26kflTsWCSgvvUlP+5vzABr59sunnqBHnkexIsFHtC
 nc09nmb/revYskVUa6yKpvW4F/7XRXA1/eZZMLQR1jg4dqHgWWlBQo67R
 2oadKiUjbqqLgdrLYKVST9kdViSOEguq8yXA42L2nO4kyWzatzJ6LhdOx A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="2061589"
X-IronPort-AV: E=Sophos;i="6.04,273,1695711600"; 
   d="scan'208";a="2061589"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 07:29:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="767250332"
X-IronPort-AV: E=Sophos;i="6.04,273,1695711600"; d="scan'208";a="767250332"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 13 Dec 2023 07:29:13 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 13 Dec 2023 17:29:12 +0200
Date: Wed, 13 Dec 2023 17:29:12 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Subject: Re: [PATCH 9/9] Revert "drm/i915/xe2lpd: Treat cursor plane as
 regular plane for DDB allocation"
Message-ID: <ZXnNyF6F-v3C72hz@intel.com>
References: <20231213102519.13500-1-ville.syrjala@linux.intel.com>
 <20231213102519.13500-10-ville.syrjala@linux.intel.com>
 <ZXmVT5b18dJ7emvp@intel.com> <ZXnKejc3qC3QtrY2@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZXnKejc3qC3QtrY2@intel.com>
X-Patchwork-Hint: comment
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org,
 Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 13, 2023 at 05:15:06PM +0200, Ville Syrj�l� wrote:
> On Wed, Dec 13, 2023 at 01:28:15PM +0200, Lisovskiy, Stanislav wrote:
> > On Wed, Dec 13, 2023 at 12:25:19PM +0200, Ville Syrjala wrote:
> > > From: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> > > 
> > > This reverts commit cfeff354f70bb1d0deb0279506e3f7989bc16e28.
> > > 
> > > A core design consideration with legacy cursor updates is that the
> > > cursor must not touch any other plane, even if we were to force it
> > > to take the slow path. That is the real reason why the cursor uses
> > > a fixed ddb allocation, not because bspec says so.
> > > 
> > > Treating cursors as any other plane during ddb allocation
> > > violates that, which means we can now pull other planes into
> > > fully unsynced legacy cursor mailbox commits. That is
> > > definitely not something we've ever considered when designing
> > > the rest of the code. The noarm+arm register write split in
> > > particular makes that dangerous as previous updates can get
> > > disarmed pretty much at any random time, and not necessarily
> > > in an order that is actually safe (eg. against ddb overlaps).
> > > 
> > > So if we were to do this then:
> > > - someone needs to expend the appropriate amount of brain
> > >   cells thinking through all the tricky details
> > 
> > So question is how can we avoid pulling other planes to the commit?..
> 
> By preallocating the ddb, as we do already.

I guess one thing we could consider is allcating the cursor ddb
based on the cursors real size (as opposed to always allocating for
256x256 cursor), and not doing a mailbox update when changing size.
But as we learn in https://gitlab.freedesktop.org/drm/intel/-/issues/7687:
- current userspace always uses 256x256 until the PLANE_SIZE_HINTS
  stuff (or something similar) lands, so there is no point
- it would lead to worse power consumption with smaller cursors
  as there isn't enough extra ddb. The fact that we currently 
  allocate the minimum for 256x256 means smallers cursor sizes
  are more efficient. Some tests I did also indicated that the
  current code does not give optimal values even if we let it
  fully calculate the extra ddb like in the reverted commit here.
  We really need someone to take a proper look at how to tune
  the ddb allocation for optimal power consumption...

> 
> > 
> > 
> > Stan
> > 
> > > - we should do it for all skl+ platforms since all
> > >   of those have double buffered wm/ddb registers. The current
> > >   arbitrary mtl+ cutoff doesn't really make sense
> > > 
> > > For the moment just go back to the original behaviour where
> > > the cursor's ddb alloation does not change outside of
> > > modeset/fastset. As of now anything else isn't safe.
> > > 
> > > Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > Cc: Matt Roper <matthew.d.roper@intel.com>
> > > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > > Signed-off-by: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> > > ---
> > >  .../gpu/drm/i915/display/intel_atomic_plane.c    |  6 +++---
> > >  drivers/gpu/drm/i915/display/skl_watermark.c     | 16 +++++++---------
> > >  2 files changed, 10 insertions(+), 12 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > index 06c2455bdd78..76d77d5a0409 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > @@ -217,6 +217,9 @@ intel_plane_relative_data_rate(const struct intel_crtc_state *crtc_state,
> > >  	int width, height;
> > >  	unsigned int rel_data_rate;
> > >  
> > > +	if (plane->id == PLANE_CURSOR)
> > > +		return 0;
> > > +
> > >  	if (!plane_state->uapi.visible)
> > >  		return 0;
> > >  
> > > @@ -244,9 +247,6 @@ intel_plane_relative_data_rate(const struct intel_crtc_state *crtc_state,
> > >  
> > >  	rel_data_rate = width * height * fb->format->cpp[color_plane];
> > >  
> > > -	if (plane->id == PLANE_CURSOR)
> > > -		return rel_data_rate;
> > > -
> > >  	return intel_adjusted_rate(&plane_state->uapi.src,
> > >  				   &plane_state->uapi.dst,
> > >  				   rel_data_rate);
> > > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> > > index 56588d6e24ae..051a02ac01a4 100644
> > > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> > > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> > > @@ -1367,7 +1367,7 @@ skl_total_relative_data_rate(const struct intel_crtc_state *crtc_state)
> > >  	u64 data_rate = 0;
> > >  
> > >  	for_each_plane_id_on_crtc(crtc, plane_id) {
> > > -		if (plane_id == PLANE_CURSOR && DISPLAY_VER(i915) < 20)
> > > +		if (plane_id == PLANE_CURSOR)
> > >  			continue;
> > >  
> > >  		data_rate += crtc_state->rel_data_rate[plane_id];
> > > @@ -1514,12 +1514,10 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
> > >  		return 0;
> > >  
> > >  	/* Allocate fixed number of blocks for cursor. */
> > > -	if (DISPLAY_VER(i915) < 20) {
> > > -		cursor_size = skl_cursor_allocation(crtc_state, num_active);
> > > -		iter.size -= cursor_size;
> > > -		skl_ddb_entry_init(&crtc_state->wm.skl.plane_ddb[PLANE_CURSOR],
> > > -				   alloc->end - cursor_size, alloc->end);
> > > -	}
> > > +	cursor_size = skl_cursor_allocation(crtc_state, num_active);
> > > +	iter.size -= cursor_size;
> > > +	skl_ddb_entry_init(&crtc_state->wm.skl.plane_ddb[PLANE_CURSOR],
> > > +			   alloc->end - cursor_size, alloc->end);
> > >  
> > >  	iter.data_rate = skl_total_relative_data_rate(crtc_state);
> > >  
> > > @@ -1533,7 +1531,7 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
> > >  			const struct skl_plane_wm *wm =
> > >  				&crtc_state->wm.skl.optimal.planes[plane_id];
> > >  
> > > -			if (plane_id == PLANE_CURSOR && DISPLAY_VER(i915) < 20) {
> > > +			if (plane_id == PLANE_CURSOR) {
> > >  				const struct skl_ddb_entry *ddb =
> > >  					&crtc_state->wm.skl.plane_ddb[plane_id];
> > >  
> > > @@ -1581,7 +1579,7 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
> > >  		const struct skl_plane_wm *wm =
> > >  			&crtc_state->wm.skl.optimal.planes[plane_id];
> > >  
> > > -		if (plane_id == PLANE_CURSOR && DISPLAY_VER(i915) < 20)
> > > +		if (plane_id == PLANE_CURSOR)
> > >  			continue;
> > >  
> > >  		if (DISPLAY_VER(i915) < 11 &&
> > > -- 
> > > 2.41.0
> > > 
> 
> -- 
> Ville Syrj�l�
> Intel

-- 
Ville Syrj�l�
Intel
