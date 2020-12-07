Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C0D2D0C80
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Dec 2020 10:02:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EB5789E8C;
	Mon,  7 Dec 2020 09:02:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17AF589E8C
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Dec 2020 09:02:03 +0000 (UTC)
IronPort-SDR: 0pjl4BYkJtbi5K4kRIWYuqVU0jhMmHrJ83mvDDf09pPWFZJHgs9fR+za+dGnyutqEO29XrKwau
 XxmUAr2Zez6A==
X-IronPort-AV: E=McAfee;i="6000,8403,9827"; a="153482917"
X-IronPort-AV: E=Sophos;i="5.78,399,1599548400"; d="scan'208";a="153482917"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2020 01:02:01 -0800
IronPort-SDR: aCUyh66i5+DOkHAf/o9L3dRnPl6tjHq4xcroojTwSIDaIE3SY1iSudEnR0E1khk4YEudhXxDPX
 jSewqIag7KjA==
X-IronPort-AV: E=Sophos;i="5.78,399,1599548400"; d="scan'208";a="317041775"
Received: from aknautiy-mobl.gar.corp.intel.com (HELO [10.213.64.115])
 ([10.213.64.115])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2020 01:02:00 -0800
To: Manasi Navare <manasi.d.navare@intel.com>, intel-gfx@lists.freedesktop.org
References: <20201204205804.25225-1-manasi.d.navare@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <d6bc504f-d23c-143f-6d5e-e8117d56d2e6@intel.com>
Date: Mon, 7 Dec 2020 14:31:57 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <20201204205804.25225-1-manasi.d.navare@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/dp: Compute the correct
 slice count for VDSC on DP
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 12/5/2020 2:28 AM, Manasi Navare wrote:
> This patch fixes the slice count computation algorithm
> for calculating the slice count based on Peak pixel rate
> and the max slice width allowed on the DSC engines.
> We need to ensure slice count > min slice count req
> as per DP spec based on peak pixel rate and that it is
> greater than min slice count based on the max slice width
> advertised by DPCD. So use max of these two.
> In the prev patch we were using min of these 2 causing it
> to violate the max slice width limitation causing a blank
> screen on 8K@60.
>
> Fixes: d9218c8f6cf4 ("drm/i915/dp: Add helpers for Compressed BPP and Slice Count for DSC")
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 2d4d5e95af84..cb5e42c3ecd5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -615,7 +615,7 @@ static u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
>   		return 0;
>   	}
>   	/* Also take into account max slice width */
> -	min_slice_count = min_t(u8, min_slice_count,
> +	min_slice_count = max_t(u8, min_slice_count,
>   				DIV_ROUND_UP(mode_hdisplay,
>   					     max_slice_width));


Change looks good to me.

'min_slice_count' is essentially the least no. of slices that would be 
sufficient. So max of the two values would be correct.

Also tested with this change on an 8k panel, we are able get 8 DSC 
slices with this change, which is correct for 8k@60 resolution.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

>   
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
