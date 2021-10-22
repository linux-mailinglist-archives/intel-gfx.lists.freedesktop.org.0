Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E1B8437F4B
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Oct 2021 22:23:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F20589C94;
	Fri, 22 Oct 2021 20:23:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 755F389C94
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Oct 2021 20:23:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10145"; a="229324621"
X-IronPort-AV: E=Sophos;i="5.87,173,1631602800"; d="scan'208";a="229324621"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2021 13:23:12 -0700
X-IronPort-AV: E=Sophos;i="5.87,173,1631602800"; d="scan'208";a="484812000"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2021 13:23:09 -0700
Date: Fri, 22 Oct 2021 23:23:05 +0300
From: Imre Deak <imre.deak@intel.com>
To: Vandita Kulkarni <vandita.kulkarni@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.nikula@intel.com,
 matthew.d.roper@intel.com, ville.syrjala@linux.intel.com
Message-ID: <20211022202305.GA1980572@ideak-desk.fi.intel.com>
References: <20211019151435.20477-1-vandita.kulkarni@intel.com>
 <20211019151435.20477-4-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211019151435.20477-4-vandita.kulkarni@intel.com>
Subject: Re: [Intel-gfx] [V2 3/4] drm/i915/dsi/xelpd: Disable DC states in
 Video mode
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

On Tue, Oct 19, 2021 at 08:44:34PM +0530, Vandita Kulkarni wrote:
> MIPI DSI transcoder cannot be in video mode to support any of the
> display C states.
> 
> Bspec: 49195 (For DC*co DSI transcoders cannot be in video mode)
> Bspec: 49193 (Hardware does not support DC5 or DC6 with MIPI DSI enabled)
> Bspec: 49188 (desc of DSI_DCSTATE_CTL talks about cmd mode PM control

So none of the DC states (except DC6v which the driver doesn't support)
are supported in DSI video mode and DC3co is supported in command mode.
The selection between video vs. command mode happens using a VBT flag
and I can't see anything that would prevent using command mode on XELPD.
If the support for it is missing, should it be disabled explicitly or at
least a notice printed that DC states are not yet supported?

> v2: Align to the power domain ordering (Jani)
>     Add bspec references (Imre)
> 
> Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index d88da0d0f05a..b989ddd3d023 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -3106,6 +3106,7 @@ intel_display_power_put_mask_in_set(struct drm_i915_private *i915,
>  	BIT_ULL(POWER_DOMAIN_MODESET) |			\
>  	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
>  	BIT_ULL(POWER_DOMAIN_AUX_B) |			\
> +	BIT_ULL(POWER_DOMAIN_PORT_DSI) |		\
>  	BIT_ULL(POWER_DOMAIN_INIT))
>  
>  #define XELPD_AUX_IO_D_XELPD_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_D_XELPD)
> -- 
> 2.32.0
> 
