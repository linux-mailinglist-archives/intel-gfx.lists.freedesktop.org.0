Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE4389BC37
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 11:46:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 166B51123A0;
	Mon,  8 Apr 2024 09:46:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m22wf9Wx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 580F21123A0
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Apr 2024 09:46:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712569611; x=1744105611;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=sTIOK9yXC+YvYMbJxITIcAu0hTYwGClqYxKAU28wqkQ=;
 b=m22wf9WxTPV1Gig+Tz0iky9FZZMiw3GQVVbnuMpelP7v/MJGSxCCA3UO
 +N1S5fZOxOz98FW9v34QDfpK/tu2lF5+6DDcEFGSmjpWrYMDb+HjyClHw
 EoNNM2mYAFo8Z4UJDYnffXrcDmaAskp2NloftpWIjSJahuapjxUYrlq/V
 A+9S6FjS+aqh1/FnXBmdGw6kQlJir+hZNl4nSSYe+mHwnlYuBQW0k9zId
 cyewi9vXcPnvqq5ldWBs1eyDZtNo0LyYzV8ZPDTwZqPXZilKlSvCtke/K
 voPyBLicnkDWmgSDm1UQeIVNXZkIPzZB0qB9Gjf8IengxDv+DnSriZvGG w==;
X-CSE-ConnectionGUID: XDC8cWqpTLecVKUUX+pX7g==
X-CSE-MsgGUID: 6gjN+tqlRyeOgUkOk6D0zQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11037"; a="7704038"
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; 
   d="scan'208";a="7704038"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 02:46:51 -0700
X-CSE-ConnectionGUID: QjVFcwJaQNC5YwuIRUNGdw==
X-CSE-MsgGUID: 8ZalVSh7SCqLWSZAFLOG2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="19700434"
Received: from bauinger-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.42.71])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 02:46:50 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/3] drm/i915/lspcon: Separate out function to get
 expected mode
In-Reply-To: <20240408050558.865396-2-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240408050558.865396-1-ankit.k.nautiyal@intel.com>
 <20240408050558.865396-2-ankit.k.nautiyal@intel.com>
Date: Mon, 08 Apr 2024 12:46:46 +0300
Message-ID: <871q7gb309.fsf@intel.com>
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

On Mon, 08 Apr 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Reuse code to wake native aux channel and get the expected lspcon
> mode.
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_lspcon.c | 18 ++++++++++--------
>  1 file changed, 10 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
> index 1d048fa98561..36e8d9fb2bbb 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> @@ -240,6 +240,13 @@ static bool lspcon_wake_native_aux_ch(struct intel_lspcon *lspcon)
>  	return true;
>  }
>  
> +static
> +enum drm_lspcon_mode lspcon_get_expected_mode(struct intel_lspcon *lspcon)
> +{
> +	return lspcon_wake_native_aux_ch(lspcon) ?
> +		DRM_LSPCON_MODE_PCON : DRM_LSPCON_MODE_LS;
> +}
> +
>  static bool lspcon_probe(struct intel_lspcon *lspcon)
>  {
>  	int retry;
> @@ -249,9 +256,7 @@ static bool lspcon_probe(struct intel_lspcon *lspcon)
>  	struct i2c_adapter *ddc = &intel_dp->aux.ddc;
>  	enum drm_lspcon_mode expected_mode;
>  
> -	expected_mode = lspcon_wake_native_aux_ch(lspcon) ?
> -			DRM_LSPCON_MODE_PCON : DRM_LSPCON_MODE_LS;
> -
> +	expected_mode = lspcon_get_expected_mode(lspcon);
>  	/* Lets probe the adaptor and check its type */
>  	for (retry = 0; retry < 6; retry++) {
>  		if (retry)
> @@ -713,12 +718,9 @@ void lspcon_resume(struct intel_digital_port *dig_port)
>  		}
>  	}
>  
> -	if (lspcon_wake_native_aux_ch(lspcon)) {
> -		expected_mode = DRM_LSPCON_MODE_PCON;
> +	expected_mode = lspcon_get_expected_mode(lspcon);
> +	if (expected_mode == DRM_LSPCON_MODE_PCON)
>  		lspcon_resume_in_pcon_wa(lspcon);
> -	} else {
> -		expected_mode = DRM_LSPCON_MODE_LS;
> -	}
>  
>  	if (lspcon_wait_mode(lspcon, expected_mode) == DRM_LSPCON_MODE_PCON)
>  		return;

-- 
Jani Nikula, Intel
