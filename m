Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 558451D3DA5
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2020 21:37:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA1956E3A8;
	Thu, 14 May 2020 19:37:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FA576E3A8
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 May 2020 19:37:11 +0000 (UTC)
IronPort-SDR: O/aDsvugMPAJ8xDIZ06+nYTeh6ZNO8hcI33fZ7VEJse//+/O3WKEFHLeJLv6xFdsS1ujnSj4Cd
 1MMAOOGXSnhg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2020 12:37:10 -0700
IronPort-SDR: Ge3qRsw20PL+9DbuafEZoBuHRa2INGTE4lPNzH4wucb4ZHrY3YSBsS/VQ6ScgUABfcg/+8Sa4w
 lZKBczTwYPCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,392,1583222400"; d="scan'208";a="266354443"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by orsmga006.jf.intel.com with ESMTP; 14 May 2020 12:37:10 -0700
Date: Thu, 14 May 2020 12:38:16 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200514193816.GB15561@intel.com>
References: <20200514152145.2449-1-stanislav.lisovskiy@intel.com>
 <20200514152145.2449-4-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200514152145.2449-4-stanislav.lisovskiy@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v8 3/7] drm/i915: Check plane configuration
 properly
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 14, 2020 at 06:21:41PM +0300, Stanislav Lisovskiy wrote:
> From: Stanislav Lisovskiy <stanislav.lisovskiY@intel.com>
> 
> Checking with hweight8 if plane configuration had
> changed seems to be wrong as different plane configs
> can result in a same hamming weight.
> So lets check the bitmask itself.
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index e93a553a344d..a9ab66d97360 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -14614,7 +14614,13 @@ static int intel_atomic_check_planes(struct intel_atomic_state *state)
>  		old_active_planes = old_crtc_state->active_planes & ~BIT(PLANE_CURSOR);
>  		new_active_planes = new_crtc_state->active_planes & ~BIT(PLANE_CURSOR);
>  
> -		if (hweight8(old_active_planes) == hweight8(new_active_planes))
> +		/*
> +		 * Not only the number of planes, but if the plane configuration had
> +		 * changed might already mean we need to recompute min CDCLK,
> +		 * because different planes might consume different amount of Dbuf bandwidth
> +		 * according to formula: Bw per plane = Pixel rate * bpp * pipe/plane scale factor
> +		 */
> +		if (old_active_planes == new_active_planes)
>  			continue;
>  
>  		ret = intel_crtc_add_planes_to_state(state, crtc, new_active_planes);
> -- 
> 2.24.1.485.gad05a3d8e5
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
