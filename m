Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 958CE64EA11
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Dec 2022 12:15:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCBCD10E02A;
	Fri, 16 Dec 2022 11:15:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FAD710E02A
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Dec 2022 11:15:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671189315; x=1702725315;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=xW1Ra7lke3g1t0CN/IOLZpezKttZnrKwT5oG2G19wKo=;
 b=U6WIzyQvb/P49eLfspbpXyLlBRJ5ZQ24hhelzQKSI17lNR0IOizEVbN5
 pneXreA2fvZiPTaaSMTtnEk+g7PQyT91QZbyijlYactPQHE27UEhVuKc3
 /Aa30tpxZWvxqE/nlB0vvm6L6iE6xNUKlPWy7/01lKAamR9VcmRTEjevo
 102hRtv9YgLX7BY618gLW0wVNPudMoeQpjGk5QnlNDraY+B8+8K8byJMN
 mp8zqU9NDSn4J8/3ciRZuN32jKxKcbdBUS2hJgD2hdWbmHgckALyy1Lpy
 UpnzKRUM5BA7Q0ZB34Gq/pyYfTuNmtBqdk5Bc0Qcd2zLxRC8+2WNQS95z A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="316587174"
X-IronPort-AV: E=Sophos;i="5.96,249,1665471600"; d="scan'208";a="316587174"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2022 03:15:14 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="680464331"
X-IronPort-AV: E=Sophos;i="5.96,249,1665471600"; d="scan'208";a="680464331"
Received: from iermolae-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.42.1])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2022 03:15:11 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20221216092356.3336893-1-andrzej.hajda@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221216092356.3336893-1-andrzej.hajda@intel.com>
Date: Fri, 16 Dec 2022 13:15:08 +0200
Message-ID: <878rj7vbur.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/vlv: use intel_de_rmw if
 possible
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

On Fri, 16 Dec 2022, Andrzej Hajda <andrzej.hajda@intel.com> wrote:
> The helper makes the code more compact and readable.
>
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>

[snip]

> @@ -649,23 +611,18 @@ static void intel_dsi_port_enable(struct intel_encoder *encoder,
>  	enum port port;
>  
>  	if (intel_dsi->dual_link == DSI_DUAL_LINK_FRONT_BACK) {
> -		u32 temp;
> +		u32 temp = intel_dsi->pixel_overlap;
>  		if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
> -			for_each_dsi_port(port, intel_dsi->ports) {
> -				temp = intel_de_read(dev_priv,
> -						     MIPI_CTRL(port));
> -				temp &= ~BXT_PIXEL_OVERLAP_CNT_MASK |
> -					intel_dsi->pixel_overlap <<
> -					BXT_PIXEL_OVERLAP_CNT_SHIFT;

This can't possibly be correct to begin with.

I think it's supposed to be the logical

	temp &= ~BXT_PIXEL_OVERLAP_CNT_MASK;
        temp |= intel_dsi->pixel_overlap << BXT_PIXEL_OVERLAP_CNT_SHIFT;

Nothing else makes sense, really.

I think I'd just fix that in a separate patch first, and then do the rmw
changes on top.

> -				intel_de_write(dev_priv, MIPI_CTRL(port),
> -					       temp);
> -			}
> +			for_each_dsi_port(port, intel_dsi->ports)
> +				intel_de_rmw(dev_priv, MIPI_CTRL(port),
> +					     BXT_PIXEL_OVERLAP_CNT_MASK &
> +					     ~(temp << BXT_PIXEL_OVERLAP_CNT_SHIFT),
> +					     0);
>  		} else {
> -			temp = intel_de_read(dev_priv, VLV_CHICKEN_3);
> -			temp &= ~PIXEL_OVERLAP_CNT_MASK |
> -					intel_dsi->pixel_overlap <<
> -					PIXEL_OVERLAP_CNT_SHIFT;
> -			intel_de_write(dev_priv, VLV_CHICKEN_3, temp);

Ditto here.

> +			intel_de_rmw(dev_priv, VLV_CHICKEN_3,
> +				     PIXEL_OVERLAP_CNT_MASK &
> +				     ~(temp << PIXEL_OVERLAP_CNT_SHIFT),
> +				     0);
>  		}
>  	}
>  

Everything else in the patch checks out. With the above split out and
the rmw rebased,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


-- 
Jani Nikula, Intel Open Source Graphics Center
