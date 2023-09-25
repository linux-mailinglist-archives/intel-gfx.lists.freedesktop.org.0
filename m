Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25CA87AD23E
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Sep 2023 09:47:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 818E210E1E9;
	Mon, 25 Sep 2023 07:47:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB2DF10E161
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Sep 2023 07:47:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695628022; x=1727164022;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=PgClJ4WG29v6nXzUOGEHll1HppWpnhtZ+N2ilrpZeWQ=;
 b=kEB+JrkyiREl35o6hWSnp6V1xY0dy9TOI4QIj4u0eFY8NIdEdkKTKR3n
 cdoDyMgxPpIK6fOKduH8fuUNr69xNTrtrH+1wBUWj6cGx+xApsqKE/o7/
 xb91CYbVejyEgLO7LU9U8dvXufV3k/6HqLnPMdjuUxJSG2rUHtgKBkxhi
 iyKtGW+eI5Kg35Qi1swLkvbhHt4sIrUxZprDIHPESZTdqG4u/cz+cuKeB
 HIW6+ErzUe58BpzIGoE0V9PQQCn/NmvlFnS5l7D94toSgpgupHFvDBRnL
 pruI1CWSdBgUC9WTdacAXPs2yjZ+9tLQBIq+7qXF5PFyYhoG7oHoYtmNP g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="445298646"
X-IronPort-AV: E=Sophos;i="6.03,174,1694761200"; d="scan'208";a="445298646"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2023 00:47:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="741842807"
X-IronPort-AV: E=Sophos;i="6.03,174,1694761200"; d="scan'208";a="741842807"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2023 00:47:00 -0700
Date: Mon, 25 Sep 2023 10:46:57 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZRE68WJkoQv9O5hn@intel.com>
References: <20230824080517.693621-1-imre.deak@intel.com>
 <20230824080517.693621-23-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230824080517.693621-23-imre.deak@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 22/22] drm/i915/dp_mst: Check BW
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

On Thu, Aug 24, 2023 at 11:05:17AM +0300, Imre Deak wrote:
> After the previous patch the BW limits on the whole MST topology will be
> checked after computing the state for all the streams in the topology.
> Accordingly remove the check during the stream's encoder compute config
> step, to prevent failing an atomic commit due to a BW limit, if this can
> be resolved only by reducing the BW of other streams on the same MST
> link.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 11 ++---------
>  1 file changed, 2 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 3c9b3a2ac88a2..1d6d0fe6c3047 100644
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
