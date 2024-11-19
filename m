Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B5B89D2506
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2024 12:39:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9CB910E61D;
	Tue, 19 Nov 2024 11:39:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KrJ7JdIS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E0FB10E61D;
 Tue, 19 Nov 2024 11:39:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732016384; x=1763552384;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=61FGsbj4kt2c24O4GTiyLTwXpaS7o8ZVMBRlAJyaWJo=;
 b=KrJ7JdISlzm7RqsADdVXbswfNUmWZValtQ+812ErU6Wi2uDY1VSgJhd8
 EQMmIMmZDC/oRMrul7+IiWi7Y/XOdIEZM+dkI5vMxSFZIYtiwhK7I9lJz
 D11hvyiITIXWIJZjhPGzxx25DpB8U+jNawduBTZnlzTwaE6g+qdqAoNJB
 AMhmTOXMtJ07TpEdQmeuokx0D+naD7r+3J12/Cw+84jJSJRBAMCLg2sUb
 jP0OOY99rL8phaHNxNNzMWMvm1nY8X3qvpADRJe971VUhghfX3C+ezm8T
 kptzzzcEV5umSWQvrMQi7jkaKSxphFFocRtgqZS01EKufEOzIeJ9jCMOh A==;
X-CSE-ConnectionGUID: W3J2DSYfSi2F25JAW30dQg==
X-CSE-MsgGUID: EK6sADAQTU6kqYc6A0r+dg==
X-IronPort-AV: E=McAfee;i="6700,10204,11260"; a="31941858"
X-IronPort-AV: E=Sophos;i="6.12,165,1728975600"; d="scan'208";a="31941858"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2024 03:39:44 -0800
X-CSE-ConnectionGUID: q+xQ25ctQt+1jCASYp0Uug==
X-CSE-MsgGUID: +njuSac+Sgi3lwPHHRxs6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,165,1728975600"; d="scan'208";a="112821014"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2024 03:39:43 -0800
Date: Tue, 19 Nov 2024 13:40:16 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 11/11] drm/i915/ddi: simplify
 intel_ddi_get_encoder_pipes() slightly
Message-ID: <Zzx5IKsm7us1CcBP@ideak-desk.fi.intel.com>
References: <cover.1731941270.git.jani.nikula@intel.com>
 <0aa1274597fa84a0dc3c9ccf7bb20997d1d154bf.1731941270.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0aa1274597fa84a0dc3c9ccf7bb20997d1d154bf.1731941270.git.jani.nikula@intel.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 18, 2024 at 04:49:06PM +0200, Jani Nikula wrote:
> Use a temporary variable for DDI mode to simplify the conditions. This
> is in line with the other places that read DDI mode.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 33628cbc0f72..e25b712bf03b 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -818,7 +818,7 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
>  	mst_pipe_mask = 0;
>  	for_each_pipe(dev_priv, p) {
>  		enum transcoder cpu_transcoder = (enum transcoder)p;
> -		unsigned int port_mask, ddi_select;
> +		u32 port_mask, ddi_select, ddi_mode;
>  		intel_wakeref_t trans_wakeref;
>  
>  		trans_wakeref = intel_display_power_get_if_enabled(dev_priv,
> @@ -842,9 +842,10 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
>  		if ((tmp & port_mask) != ddi_select)
>  			continue;
>  
> -		if ((tmp & TRANS_DDI_MODE_SELECT_MASK) == TRANS_DDI_MODE_SELECT_DP_MST ||
> -		    (HAS_DP20(display) &&
> -		     (tmp & TRANS_DDI_MODE_SELECT_MASK) == TRANS_DDI_MODE_SELECT_FDI_OR_128B132B))
> +		ddi_mode = tmp & TRANS_DDI_MODE_SELECT_MASK;
> +
> +		if (ddi_mode == TRANS_DDI_MODE_SELECT_DP_MST ||
> +		    (ddi_mode == TRANS_DDI_MODE_SELECT_FDI_OR_128B132B && HAS_DP20(display)))

nit: the above condition and the fdi counterpart is used elsewhere too,
so could use a helper. The patchset looks ok regardless:

Reviewed-by: Imre Deak <imre.deak@intel.com>

>  			mst_pipe_mask |= BIT(p);
>  
>  		*pipe_mask |= BIT(p);
> -- 
> 2.39.5
> 
