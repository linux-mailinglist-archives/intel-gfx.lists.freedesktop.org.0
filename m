Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8818A22CB7
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 12:52:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA25410E18D;
	Thu, 30 Jan 2025 11:52:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jwdPIS1O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8316510E18D;
 Thu, 30 Jan 2025 11:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738237918; x=1769773918;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=CYhX63T/Vuh0u7QPJiVJyozXb+rlbaODDcSmseapnsw=;
 b=jwdPIS1OkF5IXhWwx+NL9j3F2yukzITWWzuCzXIiTvN4FLkL1XFxfoWU
 gXuLU9sLcmpVRdIvXisUT/YKN5KcrIg77m9CGy6HzNmsC962b6g/M7L8e
 xhW9z6xdKljEg2xErIe9XRN8tCJZeNhn7+gSWaUXQUzZ2LkDNAf5M1KYS
 fn54auGDX7+EB8X8jMxpzrB00vyY/JdDQO1DfQlTLjweO/Q5+28NQx8x0
 GB4KNoUJ9D1pWZV6z1KnV8/2vUHlwAEyGtRe8BxpKlQzMroFVc5O0osGW
 Q486AOyV/FWCva33YuMwDxlBv5JpgWjw6TFuK16B361dvqDsfkW4/v7ou Q==;
X-CSE-ConnectionGUID: 3WbM5bbnTQWnbhRk7tltJQ==
X-CSE-MsgGUID: 7SA/8br7QoW4xTGJhxQP6w==
X-IronPort-AV: E=McAfee;i="6700,10204,11331"; a="38681694"
X-IronPort-AV: E=Sophos;i="6.13,245,1732608000"; d="scan'208";a="38681694"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 03:51:58 -0800
X-CSE-ConnectionGUID: mjFaMAwaSc6juZDdxxaezA==
X-CSE-MsgGUID: yrgGt09uQ1OdCNMQGrsl4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,245,1732608000"; d="scan'208";a="114324088"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.68])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 03:51:56 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@gmail.com>
Subject: Re: [PATCH 02/17] drm/i915/ddi: Fix HDMI port width programming in
 DDI_BUF_CTL
In-Reply-To: <20250129200221.2508101-3-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250129200221.2508101-1-imre.deak@intel.com>
 <20250129200221.2508101-3-imre.deak@intel.com>
Date: Thu, 30 Jan 2025 13:51:53 +0200
Message-ID: <87bjvo8qp2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 29 Jan 2025, Imre Deak <imre.deak@intel.com> wrote:
> From: Imre Deak <imre.deak@gmail.com>
>
> Fix the port width programming in the DDI_BUF_CTL register on MTLP+,
> where this had an off-by-one error.

Fixes: b66a8abaa48a ("drm/i915/display/mtl: Fill port width in DDI_BUF_/TRANS_DDI_FUNC_/PORT_BUF_CTL for HDMI")
Cc: <stable@vger.kernel.org> # v6.5+
Reviewed-by: Jani Nikula <jani.nikula@intel.com>

However, if this gets backported, it'll break DSI. Patch 1 needs to
accompany it.

Either add the same Fixes line to patch 1, or squash patches 1-2
together.

>
> Signed-off-by: Imre Deak <imre.deak@gmail.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 2 +-
>  drivers/gpu/drm/i915/i915_reg.h          | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index dc319f37b1be9..36e7dde422d37 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3501,7 +3501,7 @@ static void intel_ddi_enable_hdmi(struct intel_atomic_state *state,
>  		intel_de_rmw(dev_priv, XELPDP_PORT_BUF_CTL1(dev_priv, port),
>  			     XELPDP_PORT_WIDTH_MASK | XELPDP_PORT_REVERSAL, port_buf);
>  
> -		buf_ctl |= DDI_PORT_WIDTH(lane_count);
> +		buf_ctl |= DDI_PORT_WIDTH(crtc_state->lane_count);
>  
>  		if (DISPLAY_VER(dev_priv) >= 20)
>  			buf_ctl |= XE2LPD_DDI_BUF_D2D_LINK_ENABLE;
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 03da51b03fb90..04e47d0a8ab92 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -3635,7 +3635,7 @@ enum skl_power_gate {
>  #define  DDI_BUF_IS_IDLE			(1 << 7)
>  #define  DDI_BUF_CTL_TC_PHY_OWNERSHIP		REG_BIT(6)
>  #define  DDI_A_4_LANES				(1 << 4)
> -#define  DDI_PORT_WIDTH(width)			(((width) - 1) << 1)
> +#define  DDI_PORT_WIDTH(width)			(((width) == 3 ? 4 : ((width) - 1)) << 1)
>  #define  DDI_PORT_WIDTH_MASK			(7 << 1)
>  #define  DDI_PORT_WIDTH_SHIFT			1
>  #define  DDI_INIT_DISPLAY_DETECTED		(1 << 0)

-- 
Jani Nikula, Intel
