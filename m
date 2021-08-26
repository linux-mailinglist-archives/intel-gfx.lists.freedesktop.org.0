Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 93BAC3F8EE1
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Aug 2021 21:44:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD0AE6E8A4;
	Thu, 26 Aug 2021 19:44:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 119D16E8A4
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Aug 2021 19:44:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10088"; a="217863507"
X-IronPort-AV: E=Sophos;i="5.84,354,1620716400"; d="scan'208";a="217863507"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2021 12:44:30 -0700
X-IronPort-AV: E=Sophos;i="5.84,354,1620716400"; d="scan'208";a="643973702"
Received: from fbenmlih-mobile.amr.corp.intel.com (HELO intel.com)
 ([10.255.36.148])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2021 12:44:29 -0700
Date: Thu, 26 Aug 2021 15:44:27 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <YSfvGwcZ/H59AWrX@intel.com>
References: <cover.1629906431.git.jani.nikula@intel.com>
 <b86132ac63f43f79e51eb63f948beccba85bf449.1629906431.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b86132ac63f43f79e51eb63f948beccba85bf449.1629906431.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915/fdi: convert BUG()'s to
 MISSING_CASE()
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 25, 2021 at 06:47:52PM +0300, Jani Nikula wrote:
> These shouldn't happen, but in the off chance they do, we'll want a
> warning rather than panic.

looks better indeed:

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fdi.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
> index cc83a6532a71..fc09b781f15f 100644
> --- a/drivers/gpu/drm/i915/display/intel_fdi.c
> +++ b/drivers/gpu/drm/i915/display/intel_fdi.c
> @@ -93,7 +93,8 @@ static int ilk_check_fdi_lanes(struct drm_device *dev, enum pipe pipe,
>  		}
>  		return 0;
>  	default:
> -		BUG();
> +		MISSING_CASE(pipe);
> +		return 0;
>  	}
>  }
>  
> @@ -217,7 +218,7 @@ static void ivb_update_fdi_bc_bifurcation(const struct intel_crtc_state *crtc_st
>  
>  		break;
>  	default:
> -		BUG();
> +		MISSING_CASE(crtc->pipe);
>  	}
>  }
>  
> -- 
> 2.20.1
> 
