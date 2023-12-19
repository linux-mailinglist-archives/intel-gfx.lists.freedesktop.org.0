Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D3EA4818806
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Dec 2023 13:53:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B6C710E496;
	Tue, 19 Dec 2023 12:53:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00AF310E496
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Dec 2023 12:53:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702990384; x=1734526384;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=q7SVNX6xcaV/Z2GnFt8jlBeLFVHq8E1HABXS1/kod3M=;
 b=Uz9BN7ifoeVAAg1fBXULn4LuMBYTTNC5/wvr6gpBWNDGQL5qAuYTpOex
 105gNDvsIgCv+GkvEJh6K9RcnZ00l/w1zrhjjdcf8euge49jJIn0kg6Yt
 zd3HzLoWDwP1owR2WKUjniu9WvHlqBFv2AV40JD4+VH92/zWVXsgbZTEe
 vpvNNky4L6+bav9koD6Ov0M8h2a1/OcJoMDEI75KX6susEDak0afr+MGg
 azhOjQTQr9Zbmh+egsDLitlu2t2Y2GMS56xfK3uSTFRs9kF8HzjSxskzw
 onoEU76gt8escOQDKZLVH103KtH5vyftSXdgyefYt6u8AA4rS8mXMb3zi Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="17210799"
X-IronPort-AV: E=Sophos;i="6.04,288,1695711600"; d="scan'208";a="17210799"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2023 04:53:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="769227606"
X-IronPort-AV: E=Sophos;i="6.04,288,1695711600"; d="scan'208";a="769227606"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 19 Dec 2023 04:53:01 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 19 Dec 2023 14:53:00 +0200
Date: Tue, 19 Dec 2023 14:53:00 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH 2/2] drm/i915/hdcp: fix intel_hdcp_get_repeater_ctl()
 error return value
Message-ID: <ZYGSLNMf8y00wFOo@intel.com>
References: <20231219104746.1065431-1-jani.nikula@intel.com>
 <20231219104746.1065431-2-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231219104746.1065431-2-jani.nikula@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Dec 19, 2023 at 12:47:46PM +0200, Jani Nikula wrote:
> intel_hdcp_get_repeater_ctl() is supposed to return unsigned register
> contents. Returning negative error values is unexpected, and none of the
> callers check for that.
> 
> Sort of fix the error cases by returning 0. I don't think we should hit
> these cases anyway, and using 0 for the registers is safer than
> 0xffffffea (-EINVAL).
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index f9010094ff29..ee29fcb860e4 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -347,7 +347,7 @@ u32 intel_hdcp_get_repeater_ctl(struct drm_i915_private *i915,
>  		default:
>  			drm_err(&i915->drm, "Unknown transcoder %d\n",
>  				cpu_transcoder);

These should probably be MISSING_CASE() as well.

Anyways,
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> -			return -EINVAL;
> +			return 0;
>  		}
>  	}
>  
> @@ -364,7 +364,7 @@ u32 intel_hdcp_get_repeater_ctl(struct drm_i915_private *i915,
>  		return HDCP_DDIE_REP_PRESENT | HDCP_DDIE_SHA1_M0;
>  	default:
>  		drm_err(&i915->drm, "Unknown port %d\n", port);
> -		return -EINVAL;
> +		return 0;
>  	}
>  }
>  
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
