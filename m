Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DBA334BD89E
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Feb 2022 10:42:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 170191128DC;
	Mon, 21 Feb 2022 09:42:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA3FD11292D
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Feb 2022 09:42:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645436546; x=1676972546;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=y89rjDc0tq09H3b+5IYfwiSoNWDRVIwv7s2Tkm5pjCw=;
 b=ZsQL0b9dP67xq9mqNAFvzaAiR0qZUmtttRhQwYk0uPoyEuWESmhoWNam
 Hxgz4Hjh2aZGEZOgt1rmAKprdnAB3aHHeL4NadxWe0cstgIHK4KDS7llR
 A8YHHIDucvTYZUS1w/v+QuFwMG11lDWBtGeioCR1e0p86oRXgLiKc6KpQ
 oWZCETcNm2/Win+kEyC0LygePgRQCwN/XIr76lDabyJdpYVVuLuGTMwJO
 Vk8NB9hvdaX2tKwE0RE7mA4+WPYiYFqZsXDHG6bJHiGzGuFgSJDZXWpjM
 SNdfg+MCF4bbYbnHFiErhbQ/Uw4axInqRF4LARW5xFQNzxLMcei1QV2ix g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10264"; a="312220062"
X-IronPort-AV: E=Sophos;i="5.88,385,1635231600"; d="scan'208";a="312220062"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 01:42:24 -0800
X-IronPort-AV: E=Sophos;i="5.88,385,1635231600"; d="scan'208";a="507577800"
Received: from mkilleen-mobl1.ger.corp.intel.com (HELO [10.213.218.216])
 ([10.213.218.216])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 01:42:23 -0800
Message-ID: <bb4c0d15-07f5-6f03-4a20-390a5b5967ff@linux.intel.com>
Date: Mon, 21 Feb 2022 09:42:21 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220215163545.2175730-1-matthew.d.roper@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220215163545.2175730-1-matthew.d.roper@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: Print PHY name properly on
 calibration error
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


On 15/02/2022 16:35, Matt Roper wrote:
> We need to use phy_name() to convert the PHY value into a human-readable
> character in the error message.
> 
> Fixes: a6a128116e55 ("drm/i915/dg2: Wait for SNPS PHY calibration during display init")

I picked this for drm-intel-fixes, and as it did not apply cleanly, 
noticed in the process that a6a128116e55 is all the way back in 5.15. I 
reckon you didn't want to copy stable because it is just a log message 
tweak?

Regards,

Tvrtko

> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_snps_phy.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> index 8573a458811a..8fd00de981fc 100644
> --- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> @@ -35,7 +35,7 @@ void intel_snps_phy_wait_for_calibration(struct drm_i915_private *i915)
>   		if (intel_de_wait_for_clear(i915, ICL_PHY_MISC(phy),
>   					    DG2_PHY_DP_TX_ACK_MASK, 25))
>   			drm_err(&i915->drm, "SNPS PHY %c failed to calibrate after 25ms.\n",
> -				phy);
> +				phy_name(phy));
>   	}
>   }
>   
