Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 777F53C35E7
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Jul 2021 19:47:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AAB389FD9;
	Sat, 10 Jul 2021 17:47:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BEDD89EAE;
 Sat, 10 Jul 2021 17:47:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10041"; a="209879051"
X-IronPort-AV: E=Sophos;i="5.84,229,1620716400"; d="scan'208";a="209879051"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2021 10:47:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,229,1620716400"; d="scan'208";a="650407412"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga005.fm.intel.com with ESMTP; 10 Jul 2021 10:47:13 -0700
Received: from [10.249.151.15] (mwajdecz-MOBL.ger.corp.intel.com
 [10.249.151.15])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 16AHlAKS002292; Sat, 10 Jul 2021 18:47:11 +0100
To: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210710012026.19705-1-vinay.belgaumkar@intel.com>
 <20210710012026.19705-9-vinay.belgaumkar@intel.com>
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
Message-ID: <9afe2754-72d9-c3ab-f5b6-c261c28e3bbc@intel.com>
Date: Sat, 10 Jul 2021 19:47:10 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210710012026.19705-9-vinay.belgaumkar@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 08/16] drm/i915/guc/slpc: Add methods to set
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



On 10.07.2021 03:20, Vinay Belgaumkar wrote:
> Add param set h2g helpers to set the min and max frequencies
> for use by SLPC.
> 
> Signed-off-by: Sundaresan Sujaritha <sujaritha.sundaresan@intel.com>
> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c | 94 +++++++++++++++++++++
>  drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h |  2 +
>  2 files changed, 96 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> index e579408d1c19..19cb26479942 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> @@ -106,6 +106,19 @@ static int slpc_send(struct intel_guc_slpc *slpc,
>  	return intel_guc_send(guc, action, in_len);
>  }
>  
> +static int host2guc_slpc_set_param(struct intel_guc_slpc *slpc,
> +				   u32 id, u32 value)
> +{
> +	struct slpc_event_input data = {0};
> +
> +	data.header.value = SLPC_EVENT(SLPC_EVENT_PARAMETER_SET, 2);
> +	data.args[0] = id;
> +	data.args[1] = value;
> +
> +	return slpc_send(slpc, &data, 4);

as suggested before, use of explicit function like:

static int guc_action_slpc_param(guc, u32 id, u32 value)
{
	u32 request[] = {
		INTEL_GUC_ACTION_SLPC_REQUEST,
		SLPC_EVENT(SLPC_EVENT_PARAMETER_SET, 2),
		id,
		value,
	};

	return intel_guc_send(guc, request, ARRAY_SIZE(request));
}

will be simpler/cleaner

> +}
> +
> +
>  static bool slpc_running(struct intel_guc_slpc *slpc)
>  {
>  	struct slpc_shared_data *data;
> @@ -134,6 +147,19 @@ static int host2guc_slpc_query_task_state(struct intel_guc_slpc *slpc)
>  	return slpc_send(slpc, &data, 4);
>  }
>  
> +static int slpc_set_param(struct intel_guc_slpc *slpc, u32 id, u32 value)
> +{
> +	struct drm_i915_private *i915 = slpc_to_i915(slpc);
> +	GEM_BUG_ON(id >= SLPC_MAX_PARAM);
> +
> +	if (host2guc_slpc_set_param(slpc, id, value)) {
> +		drm_err(&i915->drm, "Unable to set param %x", id);

missing \n
what about printing value to be set ?
what about printing send error %pe ?

> +		return -EIO;
> +	}
> +
> +	return 0;
> +}
> +
>  static int slpc_read_task_state(struct intel_guc_slpc *slpc)
>  {
>  	return host2guc_slpc_query_task_state(slpc);
> @@ -218,6 +244,74 @@ int intel_guc_slpc_init(struct intel_guc_slpc *slpc)
>  	return slpc_shared_data_init(slpc);
>  }
>  
> +/**
> + * intel_guc_slpc_max_freq_set() - Set max frequency limit for SLPC.
> + * @slpc: pointer to intel_guc_slpc.
> + * @val: encoded frequency

what's the encoding ?

> + *
> + * This function will invoke GuC SLPC action to update the max frequency
> + * limit for slice and unslice.
> + *
> + * Return: 0 on success, non-zero error code on failure.
> + */
> +int intel_guc_slpc_set_max_freq(struct intel_guc_slpc *slpc, u32 val)
> +{
> +	int ret;
> +	struct drm_i915_private *i915 = slpc_to_i915(slpc);
> +	intel_wakeref_t wakeref;
> +
> +	wakeref = intel_runtime_pm_get(&i915->runtime_pm);

use can use with_intel_runtime_pm(rpm, wakeref)

> +
> +	ret = slpc_set_param(slpc,
> +		       SLPC_PARAM_GLOBAL_MAX_GT_UNSLICE_FREQ_MHZ,
> +		       val);
> +
> +	if (ret) {
> +		drm_err(&i915->drm,
> +			"Set max frequency unslice returned %d", ret);

missing \n
print error with %pe
but slpc_set_param returns only -EIO ;(

> +		ret = -EIO;
> +		goto done;
> +	}
> +
> +done:
> +	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
> +	return ret;
> +}
> +
> +/**
> + * intel_guc_slpc_min_freq_set() - Set min frequency limit for SLPC.
> + * @slpc: pointer to intel_guc_slpc.
> + * @val: encoded frequency
> + *
> + * This function will invoke GuC SLPC action to update the min frequency
> + * limit.
> + *
> + * Return: 0 on success, non-zero error code on failure.
> + */
> +int intel_guc_slpc_set_min_freq(struct intel_guc_slpc *slpc, u32 val)
> +{
> +	int ret;
> +	struct intel_guc *guc = slpc_to_guc(slpc);
> +	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
> +	intel_wakeref_t wakeref;
> +
> +	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
> +
> +	ret = slpc_set_param(slpc,
> +		       SLPC_PARAM_GLOBAL_MIN_GT_UNSLICE_FREQ_MHZ,
> +		       val);
> +	if (ret) {
> +		drm_err(&i915->drm,
> +			"Set min frequency for unslice returned %d", ret);

as above

Michal

> +		ret = -EIO;
> +		goto done;
> +	}
> +
> +done:
> +	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
> +	return ret;
> +}
> +
>  /*
>   * intel_guc_slpc_enable() - Start SLPC
>   * @slpc: pointer to intel_guc_slpc.
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
> index a2643b904165..a473e1ea7c10 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
> @@ -34,5 +34,7 @@ struct intel_guc_slpc {
>  int intel_guc_slpc_init(struct intel_guc_slpc *slpc);
>  int intel_guc_slpc_enable(struct intel_guc_slpc *slpc);
>  void intel_guc_slpc_fini(struct intel_guc_slpc *slpc);
> +int intel_guc_slpc_set_max_freq(struct intel_guc_slpc *slpc, u32 val);
> +int intel_guc_slpc_set_min_freq(struct intel_guc_slpc *slpc, u32 val);
>  
>  #endif
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
