Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B347437A83E
	for <lists+intel-gfx@lfdr.de>; Tue, 11 May 2021 15:55:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24D2B6EA38;
	Tue, 11 May 2021 13:55:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8473A6EA38
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 May 2021 13:55:54 +0000 (UTC)
IronPort-SDR: I44B0E4odAsVKPwRAwJbLJX7M9fIPfcPb3i9zyjo2kO5EdwH35yb40oyScADEw+5LurPHyLGzG
 06dWqJ15p0Cw==
X-IronPort-AV: E=McAfee;i="6200,9189,9980"; a="220406649"
X-IronPort-AV: E=Sophos;i="5.82,290,1613462400"; d="scan'208";a="220406649"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 06:55:54 -0700
IronPort-SDR: anUZxi5W/sur6Kvpk+erKE1vQO8V6HJn6s05PV9PFti+5bilL9vzn8eKD3W4/K7TWCMtxNnIKp
 U0kx9NbUIw7Q==
X-IronPort-AV: E=Sophos;i="5.82,290,1613462400"; d="scan'208";a="436668633"
Received: from swatish2-mobl1.gar.corp.intel.com (HELO [10.215.194.64])
 ([10.215.194.64])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 06:55:52 -0700
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210505073235.27934-1-ankit.k.nautiyal@intel.com>
 <20210511120930.12218-1-ankit.k.nautiyal@intel.com>
From: "Sharma, Swati2" <swati2.sharma@intel.com>
Organization: Intel
Message-ID: <61fd6683-b274-bf70-e84d-819763e26f1f@intel.com>
Date: Tue, 11 May 2021 19:25:49 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210511120930.12218-1-ankit.k.nautiyal@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Use correct downstream caps
 for check Src-Ctl mode for PCON
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

On 11-May-21 5:39 PM, Ankit Nautiyal wrote:
> Fix the typo in DPCD caps used for checking SRC CTL mode of
> HDMI2.1 PCON
> 
> v2: Corrected Fixes tag (Jani Nikula).
> v3: Rebased.
> 
> Fixes: 04b6603d13be ("drm/i915/display: Configure HDMI2.1 Pcon for FRL only if Src-Ctl mode is available")
> 
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: "Ville Syrj_l_" <ville.syrjala@linux.intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Manasi Navare <manasi.d.navare@intel.com>
> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Sean Paul <seanpaul@chromium.org>
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 9a8dfdf15530..072d3edf9197 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2113,7 +2113,7 @@ void intel_dp_check_frl_training(struct intel_dp *intel_dp)
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
