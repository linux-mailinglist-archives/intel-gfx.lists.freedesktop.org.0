Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE926871FDB
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Mar 2024 14:16:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55FD0112AC1;
	Tue,  5 Mar 2024 13:16:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ILGUYBI+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18225112AC1
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Mar 2024 13:16:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709644595; x=1741180595;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=uOaiAOP1DwgGRKsFouL2jLZpI21EbU5QTWqzJtkBHgw=;
 b=ILGUYBI+okAYsa7f2IHqn48Lu8asKhlk7w1Pmqa4wApKmCf5mPccgE++
 uUP039a9JfxvewCyOBFeI56IZD+AZcL1KdAKqV3UnddXhET3JE+Ob9PTR
 rlP0AUh60crFZmVN9NLcvSFpyYEX0HL5y2yaaRVVQuoY9zM6AYgJ5C4yy
 eJjKCZ//fWNyL0uJ3apfDzcVDrX5RGE6K3t++9YnzzAR5LAFYgJz8bsPZ
 dBmC1UdQAGAyMGd2o9kcDTyMWQeluXNE+v/o3cmXkg+A9TAq/9A+4GYP1
 gBxBmey2tcCjRbmYEmfHAyulZpgvyCJBuFWe+3JqxCmdrZTxi6DfbzNNO Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="4360066"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; 
   d="scan'208";a="4360066"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 05:16:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="827773766"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; d="scan'208";a="827773766"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 05 Mar 2024 05:16:31 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 05 Mar 2024 15:16:30 +0200
Date: Tue, 5 Mar 2024 15:16:30 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Animesh Manna <animesh.manna@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.nikula@intel.com,
 jouni.hogander@intel.com, arun.r.murthy@intel.com
Subject: Re: [PATCH v2] drm/i915/panelreplay: Move out psr_init_dpcd() from
 init_connector()
Message-ID: <ZecbLi41i3zNFs6E@intel.com>
References: <20240229043716.4065760-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240229043716.4065760-1-animesh.manna@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 29, 2024 at 10:07:16AM +0530, Animesh Manna wrote:
> Move psr_init_dpcd() from init-connector to connector-detect
> function. The dpcd probe for checking panel replay capability
> for external dp connector is causing delay during boot which can
> be optimized by moving dpcd probe to connector specific detect().
> 
> v1: Initial version.
> v2: Add details in commit description. [Jani]
> 
> Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/10284
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c  | 3 +++
>  drivers/gpu/drm/i915/display/intel_psr.c | 3 ---
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 6ece2c563c7a..b485ec320085 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5709,6 +5709,9 @@ intel_dp_detect(struct drm_connector *connector,
>  	if (ret == 1)
>  		intel_connector->base.epoch_counter++;
>  
> +	if (!intel_dp_is_edp(intel_dp))
> +		intel_psr_init_dpcd(intel_dp);
> +
>  	intel_dp_detect_dsc_caps(intel_dp, intel_connector);
>  
>  	intel_dp_configure_mst(intel_dp);

What is the story with panel replay vs. mst?

> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 72cadad09db5..6927785fd6ff 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -2883,9 +2883,6 @@ void intel_psr_init(struct intel_dp *intel_dp)
>  	if (!(HAS_PSR(dev_priv) || HAS_DP20(dev_priv)))
>  		return;
>  
> -	if (!intel_dp_is_edp(intel_dp))
> -		intel_psr_init_dpcd(intel_dp);
> -
>  	/*
>  	 * HSW spec explicitly says PSR is tied to port A.
>  	 * BDW+ platforms have a instance of PSR registers per transcoder but
> -- 
> 2.29.0

-- 
Ville Syrjälä
Intel
