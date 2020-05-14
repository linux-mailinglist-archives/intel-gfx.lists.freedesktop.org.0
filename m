Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3858F1D3DB6
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2020 21:40:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6413A6E3AA;
	Thu, 14 May 2020 19:40:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 138C76E3AA
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 May 2020 19:40:00 +0000 (UTC)
IronPort-SDR: Vvj8vTK5lJwf8fmFxUXj9NqIkj0CMmS58UaxsPuC9NT3KWqRe8RF6UyOAEYN+tzoTnA4WnPhN2
 slz3hTyc86jw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2020 12:39:59 -0700
IronPort-SDR: i2Ytg3X+SxmI9arMGCNDujRnNloW5LsexZN/LRONmt4uUCf8e83/nnobaVsrTXpXWwVCwfujc8
 meNRKdu2FFoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,392,1583222400"; d="scan'208";a="298812742"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by orsmga008.jf.intel.com with ESMTP; 14 May 2020 12:39:59 -0700
Date: Thu, 14 May 2020 12:41:05 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200514194104.GC15561@intel.com>
References: <20200514152145.2449-1-stanislav.lisovskiy@intel.com>
 <20200514152145.2449-5-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200514152145.2449-5-stanislav.lisovskiy@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v8 4/7] drm/i915: Plane configuration
 affects CDCLK in Gen11+
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

On Thu, May 14, 2020 at 06:21:42PM +0300, Stanislav Lisovskiy wrote:
> From: Stanislav Lisovskiy <stanislav.lisovskiY@intel.com>
> 
> So lets support it.
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index a9ab66d97360..800ae3768841 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -14569,7 +14569,7 @@ static bool active_planes_affects_min_cdclk(struct drm_i915_private *dev_priv)
>  	/* See {hsw,vlv,ivb}_plane_ratio() */
>  	return IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv) ||
>  		IS_CHERRYVIEW(dev_priv) || IS_VALLEYVIEW(dev_priv) ||
> -		IS_IVYBRIDGE(dev_priv);
> +		IS_IVYBRIDGE(dev_priv) || (INTEL_GEN(dev_priv) >= 11);
>  }
>  
>  static int intel_atomic_check_planes(struct intel_atomic_state *state)
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
