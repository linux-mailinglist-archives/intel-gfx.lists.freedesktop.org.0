Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13470467478
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Dec 2021 11:03:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 143717379F;
	Fri,  3 Dec 2021 10:03:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86BF97379F
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Dec 2021 10:03:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10186"; a="300336857"
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="300336857"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2021 02:03:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="655901913"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 03 Dec 2021 02:03:42 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 Dec 2021 12:03:41 +0200
Date: Fri, 3 Dec 2021 12:03:41 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <Yanrfe7qJARD4Shd@intel.com>
References: <20211203094041.18399-1-stanislav.lisovskiy@intel.com>
 <20211203094041.18399-4-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211203094041.18399-4-stanislav.lisovskiy@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org, jani.saarinen@intel.co
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 03, 2021 at 11:40:41AM +0200, Stanislav Lisovskiy wrote:
> In terms of async flip optimization we don't to allocate
> extra ddb space, so lets skip it.
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 24 ++++++++++++++++++------
>  1 file changed, 18 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 0b45d1d61d0f..e1594f43bb1b 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -5245,9 +5245,15 @@ skl_allocate_plane_ddb(struct intel_atomic_state *state,
>  			break;
>  
>  		rate = crtc_state->plane_data_rate[plane_id];
> -		extra = min_t(u16, alloc_size,
> -			      DIV64_U64_ROUND_UP(alloc_size * rate,
> -						 total_data_rate));
> +
> +		if (IS_DG2(dev_priv) && crtc_state->uapi.async_flip) {

We should have a sensible function for this.

> +			extra = 0;

Aren't we going to get the WARN(alloc_size != 0) if this
is the only enabled plane?

> +		} else {
> +			extra = min_t(u16, alloc_size,
> +				      DIV64_U64_ROUND_UP(alloc_size * rate,
> +							 total_data_rate));
> +		}
> +
>  		total[plane_id] = wm->wm[level].min_ddb_alloc + extra;
>  		alloc_size -= extra;
>  		total_data_rate -= rate;
> @@ -5256,9 +5262,15 @@ skl_allocate_plane_ddb(struct intel_atomic_state *state,
>  			break;
>  
>  		rate = crtc_state->uv_plane_data_rate[plane_id];
> -		extra = min_t(u16, alloc_size,
> -			      DIV64_U64_ROUND_UP(alloc_size * rate,
> -						 total_data_rate));
> +
> +		if (IS_DG2(dev_priv) && crtc_state->uapi.async_flip) {
> +			extra = 0;
> +		} else {
> +			extra = min_t(u16, alloc_size,
> +				      DIV64_U64_ROUND_UP(alloc_size * rate,
> +							 total_data_rate));
> +		}
> +
>  		uv_total[plane_id] = wm->uv_wm[level].min_ddb_alloc + extra;
>  		alloc_size -= extra;
>  		total_data_rate -= rate;
> -- 
> 2.24.1.485.gad05a3d8e5

-- 
Ville Syrjälä
Intel
