Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAD3B89BC51
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 11:50:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D08071123B1;
	Mon,  8 Apr 2024 09:50:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FZCWboDJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E637E1123B1
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Apr 2024 09:50:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712569840; x=1744105840;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=YwGbvJPABsQnpQFmwU0DSlvsj2wRys0lJRAxvci/mC4=;
 b=FZCWboDJpMm/6BNQk3rg/FbtEJi5wXtAZe02EpkIu8GlM76Tfdx2EfPR
 ZB9Zo0Baanh38/VmSXZ0xny5gBQLffAv+eGZIk6UlU/CoTPnDblmBzwQw
 GZzrq1OttEjesDQlCMnmPylSOL8bwnSM0Z4Lep3QYuiV+0VdDNwiyS/LJ
 cQSriygGvnLlGOpcLXnmWNDZ/y9a0VYGE68DX2wqLD1uTCjcoHrdW90Fc
 rZhB8BG7qHmvG/M1y1UUzLLQ1w8jvIVCTwFkkmLEf9rcwZK64zVQiEgbz
 feISqHzxZhn6g5ypuxqWgj5iYyzbsxXW7Gk8BGfcQW4eemI8+Mavl1NPB g==;
X-CSE-ConnectionGUID: 6l9ugdpNRwGM3ISxYKW7IQ==
X-CSE-MsgGUID: imOrFb7CRtqeZm8tjF5CEg==
X-IronPort-AV: E=McAfee;i="6600,9927,11037"; a="8416477"
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; 
   d="scan'208";a="8416477"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 02:50:39 -0700
X-CSE-ConnectionGUID: fg8UdWfMRBKUTzxzGwDnSQ==
X-CSE-MsgGUID: +9qjTao2T+2Xe79dTw0Obg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="57297325"
Received: from bauinger-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.42.71])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 02:50:38 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/3] drm/i915/lspcon: Separate out function to set pcon
 mode
In-Reply-To: <20240408050558.865396-3-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240408050558.865396-1-ankit.k.nautiyal@intel.com>
 <20240408050558.865396-3-ankit.k.nautiyal@intel.com>
Date: Mon, 08 Apr 2024 12:50:34 +0300
Message-ID: <87y19o9o9h.fsf@intel.com>
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
> Currently lspcon_probe tries to probe for LSPCON and also set the
> PCON mode on the LSPCON. If any of these fails, it returns fail
> resulting in error message. So even if there is nothing connected to
> LSPCON port we get error messages for probe failure.
>
> Separate out the function to set pcon mode from the lspcon_probe
> function, and show the error message only when the set pcon mode fails.
> Do not show error message if no LSPCON is detected.
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_lspcon.c | 24 ++++++++++++++-------
>  1 file changed, 16 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
> index 36e8d9fb2bbb..16ee0dc179f7 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> @@ -277,17 +277,22 @@ static bool lspcon_probe(struct intel_lspcon *lspcon)
>  	drm_dbg_kms(&i915->drm, "LSPCON detected\n");
>  	lspcon->mode = lspcon_wait_mode(lspcon, expected_mode);
>  
> +	return true;
> +}
> +
> +static bool lspcon_set_pcon_mode(struct intel_lspcon *lspcon)
> +{
>  	/*
>  	 * In the SW state machine, lets Put LSPCON in PCON mode only.
>  	 * In this way, it will work with both HDMI 1.4 sinks as well as HDMI
>  	 * 2.0 sinks.
>  	 */
> -	if (lspcon->mode != DRM_LSPCON_MODE_PCON) {
> -		if (lspcon_change_mode(lspcon, DRM_LSPCON_MODE_PCON) < 0) {
> -			drm_err(&i915->drm, "LSPCON mode change to PCON failed\n");
> -			return false;
> -		}
> -	}
> +	if (lspcon->mode == DRM_LSPCON_MODE_PCON)
> +		return true;
> +
> +	if (lspcon_change_mode(lspcon, DRM_LSPCON_MODE_PCON) < 0)
> +		return false;
> +
>  	return true;
>  }
>  
> @@ -671,8 +676,11 @@ bool lspcon_init(struct intel_digital_port *dig_port)
>  	lspcon->active = false;
>  	lspcon->mode = DRM_LSPCON_MODE_INVALID;
>  
> -	if (!lspcon_probe(lspcon)) {
> -		drm_err(&i915->drm, "Failed to probe lspcon\n");
> +	if (!lspcon_probe(lspcon))
> +		return false;
> +
> +	if (!lspcon_set_pcon_mode(lspcon)) {
> +		drm_err(&i915->drm, "LSPCON mode change to PCON failed\n");
>  		return false;
>  	}

-- 
Jani Nikula, Intel
