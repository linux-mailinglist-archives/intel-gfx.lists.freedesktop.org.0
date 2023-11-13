Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B139E7EA17D
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Nov 2023 17:48:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F157B10E16F;
	Mon, 13 Nov 2023 16:48:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9428210E16F
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Nov 2023 16:48:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699894103; x=1731430103;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=Da0Xxa6nsvPigycB5BdIFN01G/PWR+A33O13w3KJzhA=;
 b=ZVhiDioKWZJ43EGWLS5GHO2hEeaLVK3X4CoadA/uZggD1U8tGEqV+bOB
 2tSjVpwGfW5urzj1r+HW//8qcjAzFod1Zz0ZSYJ9CB5Bkhnu5V0pUR12J
 p87hW9G9iDJy6szb0ekeh9eGZlCqSI9PloQGQ6360C8Fc0V0YvueczAdr
 WFn6JcPPBPzkDo/pY1Cs08MCbI3s6KMYhhla0xrpM93jIkcvRbiyKqt0u
 PZ/0w5IBRn8PzOT4sClad1g6BazdAx6AVrCaJYRIpS9u5rw5fRoPkejEZ
 8O/swcTk+EHvB3cqU0lu/TwPnwNVwiiywyHRPAxUyqHoXGKppvgRgvyXO Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="456958447"
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; d="scan'208";a="456958447"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2023 08:48:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="767970502"
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; d="scan'208";a="767970502"
Received: from cgheban-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.92])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2023 08:48:21 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20231113142051.258864-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231113142051.258864-1-imre.deak@intel.com>
Date: Mon, 13 Nov 2023 18:48:18 +0200
Message-ID: <87fs19tx9p.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: Tune down FEC detection
 timeout error message
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

On Mon, 13 Nov 2023, Imre Deak <imre.deak@intel.com> wrote:
> At least a Realtek DP branch device with the
>
> OUI 00-e0-4c dev-ID Dp1.4 HW-rev 1.0 SW-rev 131.1
>
> device identification doesn't report detecting the FEC decoding start
> symbol. Tune down the corresponding error to a debug message.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 0712a5200ad35..f70af660dfcfa 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2257,8 +2257,8 @@ static void wait_for_fec_detected(struct drm_dp_aux *aux, bool enabled)
>  		return;
>  
>  	if (err == -ETIMEDOUT)
> -		drm_err(&i915->drm, "Timeout waiting for FEC %s to get detected\n",
> -			str_enabled_disabled(enabled));
> +		drm_dbg_kms(&i915->drm, "Timeout waiting for FEC %s to get detected\n",
> +			    str_enabled_disabled(enabled));
>  	else
>  		drm_dbg_kms(&i915->drm, "FEC detected status read error: %d\n", status);
>  }

-- 
Jani Nikula, Intel
