Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7592BA89A43
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Apr 2025 12:33:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 899D210E702;
	Tue, 15 Apr 2025 10:33:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TnKNW0fQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98BFB10E702;
 Tue, 15 Apr 2025 10:33:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744713193; x=1776249193;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=r46OcGCRMT8cmzcQfQ5UGCplc5gNW7dAISfleS7C4C8=;
 b=TnKNW0fQaRroh+6bAzlMgIJeFItj1G6ziI1WVHscg4d+M5q1C05IlAuh
 T/3KhPl8oetlTLgXLsDMX/lqihQwnVgU0bxpKulRrzDHpA20K5nyU0aEL
 1VzZguBe9SOTbFOsfSMUnOtvRRbpcpz0u6x2mWXIRVlOtBmnzbhYI6Ktu
 HrekKjV7bvm7J7gWnJfi6U/d4Rm/sPpOVI08omcAFUnzAE2wihitsCfDc
 8cZTwHxz60Pj18vuBGBx0QiAuHRsrdWAJp89sg/MfZ/WzxME+mZHnS1uW
 O2v7ic4VvA5hLeUK5qKvfAj6cRgq37Izh43RHXfTWYp7Mtt4h/44HXhxV g==;
X-CSE-ConnectionGUID: cNrdDujeSkegLJD9t7pO5A==
X-CSE-MsgGUID: NdT1agvbSiyFm46KwBxbNQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11403"; a="49866692"
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="49866692"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 03:33:12 -0700
X-CSE-ConnectionGUID: N7/qO0fHTBWoKR46PGvh0g==
X-CSE-MsgGUID: ko3QxOvvSAObVzIF7hFwUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="130052195"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.35])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 03:33:10 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Nemesa Garg <nemesa.garg@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, mika.kahola@intel.com
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: Re: [PATCH] drm/i915/display: Implement wa_14024400148
In-Reply-To: <20250415094633.2465122-1-nemesa.garg@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250415094633.2465122-1-nemesa.garg@intel.com>
Date: Tue, 15 Apr 2025 13:33:07 +0300
Message-ID: <87ecxtsoik.fsf@intel.com>
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

On Tue, 15 Apr 2025, Nemesa Garg <nemesa.garg@intel.com> wrote:
> Workaround recommend use polling method
> for pm_demand to finish as to avoid timeout.
>
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_pmdemand.c | 27 +++++++++++++++++--
>  1 file changed, 25 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
> index d22b5469672d..610d05b73b99 100644
> --- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
> +++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
> @@ -478,6 +478,22 @@ static bool intel_pmdemand_req_complete(struct intel_display *display)
>  		 XELPDP_PMDEMAND_REQ_ENABLE);
>  }
>  
> +static void intel_pmdemand_poll(struct intel_display *display)
> +{
> +	const unsigned int timeout_ms = 10;
> +	u32 status;
> +	int ret;
> +
> +	ret = intel_de_wait_custom(display, XELPDP_INITIATE_PMDEMAND_REQUEST(1),
> +				   XELPDP_PMDEMAND_REQ_ENABLE, 0,
> +				   50, timeout_ms, &status);
> +
> +	if (ret == -ETIMEDOUT)
> +		drm_err(display->drm,
> +			"timeout within %ums (status 0x%08x)\n",
> +			timeout_ms, status);

Imagine seeing "timeout within 10ms" in dmesg.

Timeout of what? 

> +}
> +
>  static void intel_pmdemand_wait(struct intel_display *display)
>  {
>  	if (!wait_event_timeout(display->pmdemand.waitqueue,
> @@ -508,7 +524,11 @@ void intel_pmdemand_program_dbuf(struct intel_display *display,
>  	intel_de_rmw(display, XELPDP_INITIATE_PMDEMAND_REQUEST(1), 0,
>  		     XELPDP_PMDEMAND_REQ_ENABLE);
>  
> -	intel_pmdemand_wait(display);
> +	/* Wa_14024400148 For lnl use polling method */
> +	if (DISPLAY_VER(display) == 20)
> +		intel_pmdemand_poll(display);
> +	else
> +		intel_pmdemand_wait(display);

Please just hide this within intel_pmdemand_wait() instead of
duplicating it everywhere.

>  
>  unlock:
>  	mutex_unlock(&display->pmdemand.lock);
> @@ -617,7 +637,10 @@ intel_pmdemand_program_params(struct intel_display *display,
>  	intel_de_rmw(display, XELPDP_INITIATE_PMDEMAND_REQUEST(1), 0,
>  		     XELPDP_PMDEMAND_REQ_ENABLE);
>  
> -	intel_pmdemand_wait(display);
> +	if (DISPLAY_VER(display) == 20)
> +		intel_pmdemand_poll(display);
> +	else
> +		intel_pmdemand_wait(display);
>  
>  unlock:
>  	mutex_unlock(&display->pmdemand.lock);

-- 
Jani Nikula, Intel
