Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ACA93DA92A
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 18:34:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 604C26EDED;
	Thu, 29 Jul 2021 16:34:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89C616EDED;
 Thu, 29 Jul 2021 16:34:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10060"; a="212960709"
X-IronPort-AV: E=Sophos;i="5.84,278,1620716400"; d="scan'208";a="212960709"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2021 09:33:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,278,1620716400"; d="scan'208";a="476465572"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga008.fm.intel.com with ESMTP; 29 Jul 2021 09:33:42 -0700
Received: from [10.249.142.82] (mwajdecz-MOBL.ger.corp.intel.com
 [10.249.142.82])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 16TGXfuq005357; Thu, 29 Jul 2021 17:33:42 +0100
To: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210728211144.15322-1-vinay.belgaumkar@intel.com>
 <20210728211144.15322-8-vinay.belgaumkar@intel.com>
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
Message-ID: <52f85865-5b0e-3966-bd2e-2ca36cffcf64@intel.com>
Date: Thu, 29 Jul 2021 18:33:41 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210728211144.15322-8-vinay.belgaumkar@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 07/14] drm/i915/guc/slpc: Add methods to set
 min/max frequency
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 28.07.2021 23:11, Vinay Belgaumkar wrote:
> Add param set h2g helpers to set the min and max frequencies
> for use by SLPC.
> 
> v2: Address review comments (Michal W)
> v3: Check for positive error code (Michal W)
> v4: Print generic error in set_param (Michal W)
> 
> Signed-off-by: Sundaresan Sujaritha <sujaritha.sundaresan@intel.com>
> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c | 89 +++++++++++++++++++++
>  drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h |  2 +
>  2 files changed, 91 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> index da3e1f8844a9..0959cc9e104a 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> @@ -109,6 +109,21 @@ static u32 slpc_get_state(struct intel_guc_slpc *slpc)
>  	return data->header.global_state;
>  }
>  
> +static int guc_action_slpc_set_param(struct intel_guc *guc, u8 id, u32 value)
> +{
> +	u32 request[] = {
> +		GUC_ACTION_HOST2GUC_PC_SLPC_REQUEST,
> +		SLPC_EVENT(SLPC_EVENT_PARAMETER_SET, 2),
> +		id,
> +		value,
> +	};
> +	int ret;
> +
> +	ret = intel_guc_send(guc, request, ARRAY_SIZE(request));
> +
> +	return ret > 0 ? -EPROTO : ret;
> +}
> +
>  static bool slpc_is_running(struct intel_guc_slpc *slpc)
>  {
>  	return slpc_get_state(slpc) == SLPC_GLOBAL_STATE_RUNNING;
> @@ -146,6 +161,22 @@ static int slpc_query_task_state(struct intel_guc_slpc *slpc)
>  	return ret;
>  }
>  
> +static int slpc_set_param(struct intel_guc_slpc *slpc, u8 id, u32 value)
> +{
> +	struct intel_guc *guc = slpc_to_guc(slpc);
> +	struct drm_i915_private *i915 = slpc_to_i915(slpc);
> +	int ret;
> +
> +	GEM_BUG_ON(id >= SLPC_MAX_PARAM);
> +
> +	ret = guc_action_slpc_set_param(guc, id, value);
> +	if (ret)
> +		drm_err(&i915->drm, "Failed to set param %d to %u (%pe)\n",
> +				id, value, ERR_PTR(ret));
> +
> +	return ret;
> +}
> +
>  static const char *slpc_global_state_to_string(enum slpc_global_state state)
>  {
>  	switch (state) {
> @@ -260,6 +291,64 @@ static void slpc_shared_data_reset(struct slpc_shared_data *data)
>  				SLPC_PARAM_TASK_DISABLE_DCC);
>  }
>  
> +/**
> + * intel_guc_slpc_set_max_freq() - Set max frequency limit for SLPC.
> + * @slpc: pointer to intel_guc_slpc.
> + * @val: frequency (MHz)
> + *
> + * This function will invoke GuC SLPC action to update the max frequency
> + * limit for unslice.
> + *
> + * Return: 0 on success, non-zero error code on failure.
> + */
> +int intel_guc_slpc_set_max_freq(struct intel_guc_slpc *slpc, u32 val)
> +{
> +	struct drm_i915_private *i915 = slpc_to_i915(slpc);
> +	intel_wakeref_t wakeref;
> +	int ret;
> +
> +	with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
> +		ret = slpc_set_param(slpc,
> +			       SLPC_PARAM_GLOBAL_MAX_GT_UNSLICE_FREQ_MHZ,
> +			       val);
> +
> +		/* Return standardized err code for sysfs calls */
> +		if (ret)
> +			ret = -EIO;
> +	}
> +
> +	return ret;
> +}
> +
> +/**
> + * intel_guc_slpc_set_min_freq() - Set min frequency limit for SLPC.
> + * @slpc: pointer to intel_guc_slpc.
> + * @val: frequency (MHz)
> + *
> + * This function will invoke GuC SLPC action to update the min unslice
> + * frequency.
> + *
> + * Return: 0 on success, non-zero error code on failure.
> + */
> +int intel_guc_slpc_set_min_freq(struct intel_guc_slpc *slpc, u32 val)
> +{
> +	struct drm_i915_private *i915 = slpc_to_i915(slpc);
> +	intel_wakeref_t wakeref;
> +	int ret;
> +
> +	with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
> +		ret = slpc_set_param(slpc,
> +			       SLPC_PARAM_GLOBAL_MIN_GT_UNSLICE_FREQ_MHZ,
> +			       val);
> +
> +		/* Return standardized err code for sysfs calls */
> +		if (ret)
> +			ret = -EIO;
> +	}
> +
> +	return ret;
> +}
> +
>  /*
>   * intel_guc_slpc_enable() - Start SLPC
>   * @slpc: pointer to intel_guc_slpc.
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
> index bc139682ad0f..788d87ff7b58 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
> @@ -29,5 +29,7 @@ void intel_guc_slpc_init_early(struct intel_guc_slpc *slpc);
>  int intel_guc_slpc_init(struct intel_guc_slpc *slpc);
>  int intel_guc_slpc_enable(struct intel_guc_slpc *slpc);
>  void intel_guc_slpc_fini(struct intel_guc_slpc *slpc);
> +int intel_guc_slpc_set_max_freq(struct intel_guc_slpc *slpc, u32 val);
> +int intel_guc_slpc_set_min_freq(struct intel_guc_slpc *slpc, u32 val);
>  
>  #endif
> 

Reviewed-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
