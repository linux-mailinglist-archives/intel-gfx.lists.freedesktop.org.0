Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F087FBB9B
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Nov 2023 14:31:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3D4E10E526;
	Tue, 28 Nov 2023 13:31:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5474710E526
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Nov 2023 13:31:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701178284; x=1732714284;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ifymiw8JPCoW4guga1+O30TdKV2LBvm/ZDknTZ4vakM=;
 b=EHrtvU4MAttg78PJTlhoHHOXxtUtFCtXurEjboc3ariXrhKWCkLUBEdX
 xUcmPuqQ4kp3tojCd8MnKcClxNkhFPNUuUplpLcQB9DicIw81nREozKWP
 5UKp2o2Jui78w+zIJ2K/LPVt1Kk2RhnXChkAKJzDxd32cz1D9HG5X/FRi
 9/CniLXON7Oow7QTMBlh+5Fgj9UiGhRWQ2Y6Jrw6VdhpXZLk58VvKV9vl
 KoIFS+L5m68E2RouDLa6Thyd7MVfumqosJh/N5YvYBr5gzYp/Z1KvkvvH
 u5SHZoGb1rh//0LWSOfgWWgij5iPr1Hdk49gKproUyoWvx1L9rH3b0scE A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="392673020"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="392673020"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 05:31:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="761935529"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="761935529"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 28 Nov 2023 05:31:21 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 Nov 2023 15:31:20 +0200
Date: Tue, 28 Nov 2023 15:31:20 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Message-ID: <ZWXrqMxQtFC7uXyp@intel.com>
References: <20231123074120.1641630-1-jouni.hogander@intel.com>
 <20231123074120.1641630-4-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231123074120.1641630-4-jouni.hogander@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v6 3/4] drm/i915/display: Handle invalid
 fb_modifier in intel_fb_modifier_to_tiling
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

On Thu, Nov 23, 2023 at 09:41:19AM +0200, Jouni Högander wrote:
> Lookup_modifier is returning INTEL_PLANE_CAP_TILING_4 on invalid
> fb_modifier value. Use lookup_modifier_or_null in
> intel_fb_modifier_to_tiling and return I915_TILING_NONE in case
> lookup_modifier_or_null returns null.
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fb.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index a235ec0f192d..f63f56b24b11 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -303,7 +303,14 @@ lookup_format_info(const struct drm_format_info formats[],
>  
>  unsigned int intel_fb_modifier_to_tiling(u64 fb_modifier)
>  {
> -	u8 tiling_caps = lookup_modifier(fb_modifier)->plane_caps &
> +	const struct intel_modifier_desc *md;
> +	u8 tiling_caps;
> +
> +	md = lookup_modifier_or_null(fb_modifier);
> +	if (!md)
> +		return I915_TILING_NONE;
> +
> +	tiling_caps = lookup_modifier_or_null(fb_modifier)->plane_caps &
>  			 INTEL_PLANE_CAP_TILING_MASK;
>  
>  	switch (tiling_caps) {
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
