Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDFA4810FE3
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 12:28:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A13710E728;
	Wed, 13 Dec 2023 11:28:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E37A10E728
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 11:28:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702466908; x=1734002908;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=gQUGdrM04iGbqdRlstpKI6mks6R7WnsJ0jKA5WdCKEM=;
 b=DZXr8ykVtAtbn40Z9psVgSEHXLHC9bKZPOvGoRf2hFyN2z4/g1893+Ge
 nET7USUkuNzfZyxt5cAtZkSJet72eJ8zTiDb8VyeEEER2T/PVbQdsspE7
 tyaWEtbsYbQ8rvm0JFxFUh+xhJeBvlyuRvpUGRB7kCiYrXXh8207Zt9rh
 UWPHE5uvvC+yV9ENVTKS/e5A4FIMYeO+jPetCF7Jbo9UX8z7MOt8YWnKN
 ZuzXyEhSAnfBPnsSFjPUVlTfhm9n2OYHn2FGzwx/GDNUdpgLMh0dptJW1
 Wdr9bntDdzZNhkftSAo2S/EBiij+O20MNNuojBVDAtjBKRSDHlxgbGK5/ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="398793793"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="398793793"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 03:28:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="750079783"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="750079783"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 03:28:26 -0800
Date: Wed, 13 Dec 2023 13:28:15 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 9/9] Revert "drm/i915/xe2lpd: Treat cursor plane as
 regular plane for DDB allocation"
Message-ID: <ZXmVT5b18dJ7emvp@intel.com>
References: <20231213102519.13500-1-ville.syrjala@linux.intel.com>
 <20231213102519.13500-10-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231213102519.13500-10-ville.syrjala@linux.intel.com>
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

On Wed, Dec 13, 2023 at 12:25:19PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> This reverts commit cfeff354f70bb1d0deb0279506e3f7989bc16e28.
> 
> A core design consideration with legacy cursor updates is that the
> cursor must not touch any other plane, even if we were to force it
> to take the slow path. That is the real reason why the cursor uses
> a fixed ddb allocation, not because bspec says so.
> 
> Treating cursors as any other plane during ddb allocation
> violates that, which means we can now pull other planes into
> fully unsynced legacy cursor mailbox commits. That is
> definitely not something we've ever considered when designing
> the rest of the code. The noarm+arm register write split in
> particular makes that dangerous as previous updates can get
> disarmed pretty much at any random time, and not necessarily
> in an order that is actually safe (eg. against ddb overlaps).
> 
> So if we were to do this then:
> - someone needs to expend the appropriate amount of brain
>   cells thinking through all the tricky details

So question is how can we avoid pulling other planes to the commit?..


Stan

> - we should do it for all skl+ platforms since all
>   of those have double buffered wm/ddb registers. The current
>   arbitrary mtl+ cutoff doesn't really make sense
> 
> For the moment just go back to the original behaviour where
> the cursor's ddb alloation does not change outside of
> modeset/fastset. As of now anything else isn't safe.
> 
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  .../gpu/drm/i915/display/intel_atomic_plane.c    |  6 +++---
>  drivers/gpu/drm/i915/display/skl_watermark.c     | 16 +++++++---------
>  2 files changed, 10 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> index 06c2455bdd78..76d77d5a0409 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -217,6 +217,9 @@ intel_plane_relative_data_rate(const struct intel_crtc_state *crtc_state,
>  	int width, height;
>  	unsigned int rel_data_rate;
>  
> +	if (plane->id == PLANE_CURSOR)
> +		return 0;
> +
>  	if (!plane_state->uapi.visible)
>  		return 0;
>  
> @@ -244,9 +247,6 @@ intel_plane_relative_data_rate(const struct intel_crtc_state *crtc_state,
>  
>  	rel_data_rate = width * height * fb->format->cpp[color_plane];
>  
> -	if (plane->id == PLANE_CURSOR)
> -		return rel_data_rate;
> -
>  	return intel_adjusted_rate(&plane_state->uapi.src,
>  				   &plane_state->uapi.dst,
>  				   rel_data_rate);
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 56588d6e24ae..051a02ac01a4 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -1367,7 +1367,7 @@ skl_total_relative_data_rate(const struct intel_crtc_state *crtc_state)
>  	u64 data_rate = 0;
>  
>  	for_each_plane_id_on_crtc(crtc, plane_id) {
> -		if (plane_id == PLANE_CURSOR && DISPLAY_VER(i915) < 20)
> +		if (plane_id == PLANE_CURSOR)
>  			continue;
>  
>  		data_rate += crtc_state->rel_data_rate[plane_id];
> @@ -1514,12 +1514,10 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
>  		return 0;
>  
>  	/* Allocate fixed number of blocks for cursor. */
> -	if (DISPLAY_VER(i915) < 20) {
> -		cursor_size = skl_cursor_allocation(crtc_state, num_active);
> -		iter.size -= cursor_size;
> -		skl_ddb_entry_init(&crtc_state->wm.skl.plane_ddb[PLANE_CURSOR],
> -				   alloc->end - cursor_size, alloc->end);
> -	}
> +	cursor_size = skl_cursor_allocation(crtc_state, num_active);
> +	iter.size -= cursor_size;
> +	skl_ddb_entry_init(&crtc_state->wm.skl.plane_ddb[PLANE_CURSOR],
> +			   alloc->end - cursor_size, alloc->end);
>  
>  	iter.data_rate = skl_total_relative_data_rate(crtc_state);
>  
> @@ -1533,7 +1531,7 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
>  			const struct skl_plane_wm *wm =
>  				&crtc_state->wm.skl.optimal.planes[plane_id];
>  
> -			if (plane_id == PLANE_CURSOR && DISPLAY_VER(i915) < 20) {
> +			if (plane_id == PLANE_CURSOR) {
>  				const struct skl_ddb_entry *ddb =
>  					&crtc_state->wm.skl.plane_ddb[plane_id];
>  
> @@ -1581,7 +1579,7 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
>  		const struct skl_plane_wm *wm =
>  			&crtc_state->wm.skl.optimal.planes[plane_id];
>  
> -		if (plane_id == PLANE_CURSOR && DISPLAY_VER(i915) < 20)
> +		if (plane_id == PLANE_CURSOR)
>  			continue;
>  
>  		if (DISPLAY_VER(i915) < 11 &&
> -- 
> 2.41.0
> 
