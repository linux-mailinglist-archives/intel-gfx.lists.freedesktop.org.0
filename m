Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD4337A3E8
	for <lists+intel-gfx@lfdr.de>; Tue, 11 May 2021 11:41:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAAD56EA11;
	Tue, 11 May 2021 09:41:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 508A36EA11
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 May 2021 09:41:33 +0000 (UTC)
IronPort-SDR: fgP7mAU567sZSraBhFa3Ks+uLfl8iSVPACgW3g8xPP9+lsYyEBqQB3NfqBVU3wuIaLw6RZuHcQ
 0cOSLmLjVTjw==
X-IronPort-AV: E=McAfee;i="6200,9189,9980"; a="178993455"
X-IronPort-AV: E=Sophos;i="5.82,290,1613462400"; d="scan'208";a="178993455"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 02:41:32 -0700
IronPort-SDR: pjVCUWUJWSWelIHcs78t9ridq74rUcFFr0uJq4zN9dJWsi4KJ3PVeokp33Z2hOtDoWaT6CQ7ul
 CqrroWZxzXtw==
X-IronPort-AV: E=Sophos;i="5.82,290,1613462400"; d="scan'208";a="436571261"
Received: from swatish2-mobl1.gar.corp.intel.com (HELO [10.215.194.64])
 ([10.215.194.64])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 02:41:31 -0700
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210429084242.14353-1-ankit.k.nautiyal@intel.com>
From: "Sharma, Swati2" <swati2.sharma@intel.com>
Organization: Intel
Message-ID: <f6702fd7-154d-b32f-9eee-397bb9cb49fe@intel.com>
Date: Tue, 11 May 2021 15:11:28 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210429084242.14353-1-ankit.k.nautiyal@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use correct downstream caps for
 check Src-Ctl mode for PCON
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reviewed-by: Swati Sharma <swati2.sharma@intel.com>

On 29-Apr-21 2:12 PM, Ankit Nautiyal wrote:
> Fix the typo in DPCD caps used for checking SRC CTL mode of
> HDMI2.1 PCON
> 
> Fixes: 04b6603d13be (drm/i915/display: Configure HDMI2.1 Pcon for FRL
> only if Src-Ctl mode is available)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index dfa7da928ae5..b3e82aa8b4f8 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2112,7 +2112,7 @@ void intel_dp_check_frl_training(struct intel_dp *intel_dp)
>   	 * -PCON supports SRC_CTL_MODE (VESA DP2.0-HDMI2.1 PCON Spec Draft-1 Sec-7)
>   	 * -sink is HDMI2.1
>   	 */
> -	if (!(intel_dp->dpcd[2] & DP_PCON_SOURCE_CTL_MODE) ||
> +	if (!(intel_dp->downstream_ports[2] & DP_PCON_SOURCE_CTL_MODE) ||
>   	    !intel_dp_is_hdmi_2_1_sink(intel_dp) ||
>   	    intel_dp->frl.is_trained)
>   		return;
> 

-- 
~Swati Sharma
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
