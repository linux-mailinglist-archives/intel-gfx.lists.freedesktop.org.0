Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 361C565095E
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Dec 2022 10:35:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2FE010E15B;
	Mon, 19 Dec 2022 09:35:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3915E10E15B
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Dec 2022 09:35:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671442523; x=1702978523;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=0/AEjWX4R51TSanM2/d1pYB4QzI3n3dFLeB/rzWcu/o=;
 b=QUq1R84lUCAHFJXruCf9hdiJfRb6VgQnAQZXsLHV5SOEeuzmNHtXxodU
 cQ42SmgGiVBVqMksbX3FW1+8SoBVe1uMuVesRYghiu9JovPbzj0bUrnO9
 +SyMT7+XOyyGhxm1HI141O0UKuz73TKy0ugq20hzaG5eyrBF1yATiilY2
 /+YIVwk/5Pe/e07Rr4ahatotvrQ0uq4mAQukix576uLU7O6gwwXk5L/VI
 rL5iJjPu2YvpEkKrd7hWY6VbAMyJCf93tQzViojpeVHfikKfcC53cziWE
 Ti8fFLd+f3eCohSxIklqrcnCSjeQ4L0V1YNr1aKemyiEhFdS0UaOjpWRf A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10565"; a="320481520"
X-IronPort-AV: E=Sophos;i="5.96,255,1665471600"; d="scan'208";a="320481520"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2022 01:35:21 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10565"; a="792820106"
X-IronPort-AV: E=Sophos;i="5.96,255,1665471600"; d="scan'208";a="792820106"
Received: from nmarjano-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.61.168])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2022 01:35:18 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20221219092428.2515430-1-andrzej.hajda@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221219092428.2515430-1-andrzej.hajda@intel.com>
Date: Mon, 19 Dec 2022 11:35:16 +0200
Message-ID: <87wn6nu46j.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display/vlv: fix pixel overlap
 register update
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 19 Dec 2022, Andrzej Hajda <andrzej.hajda@intel.com> wrote:
> To update properly bits in the register the mask should be used
> to clear old value and then the result should be or-ed with new
> value, for such updates there is separate helper intel_de_rmw.
>
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>

Seems like the right thing to do.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/vlv_dsi.c | 24 +++++++++---------------
>  1 file changed, 9 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
> index 662bdb656aa304..f5268997a3e172 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -649,23 +649,17 @@ static void intel_dsi_port_enable(struct intel_encoder *encoder,
>  	enum port port;
>  
>  	if (intel_dsi->dual_link == DSI_DUAL_LINK_FRONT_BACK) {
> -		u32 temp;
> +		u32 temp = intel_dsi->pixel_overlap;
> +
>  		if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
> -			for_each_dsi_port(port, intel_dsi->ports) {
> -				temp = intel_de_read(dev_priv,
> -						     MIPI_CTRL(port));
> -				temp &= ~BXT_PIXEL_OVERLAP_CNT_MASK |
> -					intel_dsi->pixel_overlap <<
> -					BXT_PIXEL_OVERLAP_CNT_SHIFT;
> -				intel_de_write(dev_priv, MIPI_CTRL(port),
> -					       temp);
> -			}
> +			for_each_dsi_port(port, intel_dsi->ports)
> +				intel_de_rmw(dev_priv, MIPI_CTRL(port),
> +					     BXT_PIXEL_OVERLAP_CNT_MASK,
> +					     temp << BXT_PIXEL_OVERLAP_CNT_SHIFT);
>  		} else {
> -			temp = intel_de_read(dev_priv, VLV_CHICKEN_3);
> -			temp &= ~PIXEL_OVERLAP_CNT_MASK |
> -					intel_dsi->pixel_overlap <<
> -					PIXEL_OVERLAP_CNT_SHIFT;
> -			intel_de_write(dev_priv, VLV_CHICKEN_3, temp);
> +			intel_de_rmw(dev_priv, VLV_CHICKEN_3,
> +				     PIXEL_OVERLAP_CNT_MASK,
> +				     temp << PIXEL_OVERLAP_CNT_SHIFT);
>  		}
>  	}

-- 
Jani Nikula, Intel Open Source Graphics Center
