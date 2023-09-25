Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 684F97AD267
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Sep 2023 09:55:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E985010E161;
	Mon, 25 Sep 2023 07:55:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2274110E161
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Sep 2023 07:55:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695628510; x=1727164510;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=4jRsPlcgORxoWy7kckF+1Q0+3CRc8GC5gh9m1Gx2jy4=;
 b=Ld1HSysaI5jCfNenETux4iBfo9v/gJytPEy8Hf6xzpwGu2C+n5FXKQ8+
 TpwH5mjESII4rGqk7jTL2vrwLmSCP5GbmLYjgBQUxQHIVGpwdS5hhua4/
 IdSRXgrUy7ld6nt67XFoqcoyZrZt7nYdcjE4AifFxgvP2zFL8+9tp457Q
 ypJUvwAL8oOU5hMLXfGJyBEYSclo9ihEgyMevOM6HDrtRwhwLApRtaV4S
 24GBppE4qJ741d38Z1N11onN6lQa4a4P6Bm9FuBdbH47GPDLFvnPiXq3X
 khvB1hiUHBEsqOSSjub4iJBEJ7vVqdYzC4791g9G+N5YRilcSCgIdpaY2 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="383954794"
X-IronPort-AV: E=Sophos;i="6.03,174,1694761200"; d="scan'208";a="383954794"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2023 00:54:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="783386916"
X-IronPort-AV: E=Sophos;i="6.03,174,1694761200"; d="scan'208";a="783386916"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2023 00:54:55 -0700
Date: Mon, 25 Sep 2023 10:54:51 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZRE8y0r8nXvfB/H0@intel.com>
References: <20230914192659.757475-1-imre.deak@intel.com>
 <20230914192659.757475-26-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230914192659.757475-26-imre.deak@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 25/25] drm/i915/dp_mst: Check BW
 limitations only after all streams are computed
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

On Thu, Sep 14, 2023 at 10:26:59PM +0300, Imre Deak wrote:
> After the previous patch the BW limits on the whole MST topology will be
> checked after computing the state for all the streams in the topology.
> Accordingly remove the check during the stream's encoder compute config
> step, to prevent failing an atomic commit due to a BW limit, if this can
> be resolved only by reducing the BW of other streams on the same MST
> link.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 11 ++---------
>  1 file changed, 2 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index bcfd5f19d994f..64867289174d9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -121,15 +121,8 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
>  		if (slots == -EDEADLK)
>  			return slots;
>  
> -		if (slots >= 0) {
> -			ret = drm_dp_mst_atomic_check(state);
> -			/*
> -			 * If we got slots >= 0 and we can fit those based on check
> -			 * then we can exit the loop. Otherwise keep trying.
> -			 */
> -			if (!ret)
> -				break;
> -		}
> +		if (slots >= 0)
> +			break;
>  	}
>  
>  	/* We failed to find a proper bpp/timeslots, return error */
> -- 
> 2.37.2
> 
