Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C27C15F9E61
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Oct 2022 14:09:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1919D10E4B2;
	Mon, 10 Oct 2022 12:09:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12B0C10E4B2
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Oct 2022 12:09:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665403742; x=1696939742;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=UA1h3WJGP2USB83O3Trlgy9wjJ/t/2aWffHN3pqfVQU=;
 b=gE8iEg89ZZv7G5Bkx9QRr+IoiWbnlNnw5KtiqYrdQ+4PjjwX8q6V4Xs7
 tgnLIPhfdWwdrRl0H4awd6MEpfpgukMCKRbaBvmvw3jJgPYAEZFIFH2dZ
 bY6gGknO/tDN4AoNJy6twOAucUJseMxiFFRL0Y2n7cTu1qtmwRdhTmkHq
 SuFFPIWJylGPAnkfweqEAqAA/fOQiDmeUGP3Vfeiv0qvDlDMCEryQnZjh
 m/FK6B1sW/8GU/+YdAfmDVoJ8u/J4IlkYf6C78uvU8Xs2n/yV+8hBLHvG
 87YYC+l0KC72FtJCnZxyCycbUHaWE6UobjXFVdQQijw1VZKYKowSftsub Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10495"; a="305235843"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="305235843"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 05:09:01 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10495"; a="768365069"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="768365069"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.10.52])
 ([10.213.10.52])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 05:09:00 -0700
Message-ID: <18be1fa7-4d91-f04b-f19e-15c360691586@intel.com>
Date: Mon, 10 Oct 2022 14:08:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.3.1
Content-Language: en-US
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20221010083447.139768-1-vinod.govindapillai@intel.com>
 <20221010083447.139768-2-vinod.govindapillai@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20221010083447.139768-2-vinod.govindapillai@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/display: ignore long HPDs
 based on a flag
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 10.10.2022 10:34, Vinod Govindapillai wrote:
> Some panels generate long HPD events even while connected to
> the port. This cause some unexpected CI execution issues. A
> new flag is added to track if such spurious long HPDs can be
> ignored and are not processed further if the flag is set.
> 
> v2: Address patch styling comments (Jani Nikula)
> 
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>

Yeah, especially bat-rpls-2 is quite buggy[1] (500 long HPDs per log).
Do you plan to integrate it to CI? I guess i915 should be immune to such 
misbehavior anyway.

[1]: 
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12228/bat-rpls-2/dmesg0.txt

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej


> ---
>   drivers/gpu/drm/i915/display/intel_display_core.h | 11 +++++++++++
>   drivers/gpu/drm/i915/display/intel_dp.c           |  7 +++++++
>   2 files changed, 18 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> index 96cf994b0ad1..f84a2e760ef4 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -170,6 +170,17 @@ struct intel_hotplug {
>   	 * blocked behind the non-DP one.
>   	 */
>   	struct workqueue_struct *dp_wq;
> +
> +	/*
> +	 * Flag to track if long HPDs need not to be processed
> +	 *
> +	 * Some panels generate long HPDs while keep connected to the port.
> +	 * This can cause issues with CI tests results. In CI systems we
> +	 * don't expect to disconnect the panels and could ignore the long
> +	 * HPDs generated from the faulty panels. This flag can be used as
> +	 * cue to ignore the long HPDs and can be set / unset using debugfs.
> +	 */
> +	bool ignore_long_hpd;
>   };
>   
>   struct intel_vbt_data {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 70b06806ec0d..87a0d01d8003 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5092,6 +5092,13 @@ intel_dp_hpd_pulse(struct intel_digital_port *dig_port, bool long_hpd)
>   		return IRQ_HANDLED;
>   	}
>   
> +	if (i915->display.hotplug.ignore_long_hpd && long_hpd) {
> +		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] ignoring long hpd\n",
> +			    dig_port->base.base.base.id,
> +			    dig_port->base.base.name);
> +		return IRQ_HANDLED;
> +	}
> +
>   	drm_dbg_kms(&i915->drm, "got hpd irq on [ENCODER:%d:%s] - %s\n",
>   		    dig_port->base.base.base.id,
>   		    dig_port->base.base.name,

