Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C39114EF225
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Apr 2022 16:58:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBF9310F4E3;
	Fri,  1 Apr 2022 14:58:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D454410F4DD
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Apr 2022 14:58:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648825090; x=1680361090;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Rbj7bJ6VfrZ1ovJni8kolAydT1+RGUAiTsGqkAcuW7M=;
 b=nGRd1UMq2tq/eBV1g7xncGUm6JTzzEVQMbQM3CqyV0kxKQcb0iD2h9Jr
 +l1yivUmrHB0hybh7fPQrUPPelR81tGvdXqIlO9oFX2cK3yIDLIeNIkGG
 Rq4elQZmtpqJqL0nrD4zogEvMA65wnyHyfnHdXT/8Vz+sAJaxQHP0YyD2
 gFM7jMQduahnWFOCIk6Djd38XdN8VwCtQZXB+pN1yQw5k46Z28//Yah8J
 bIX5xyxFOkmLdp8f/zAp485KpuY6YTjaiuqxIUoexMnrp6dfVTJO028GH
 piKz9AUkLp1/TyKKKyYOy3J+XU2/6e7w3NlMRMrS/P9KKo0E0HSDXRGdZ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10304"; a="285084179"
X-IronPort-AV: E=Sophos;i="5.90,227,1643702400"; d="scan'208";a="285084179"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2022 07:58:10 -0700
X-IronPort-AV: E=Sophos;i="5.90,227,1643702400"; d="scan'208";a="522800424"
Received: from kdurai-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.134.219])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2022 07:58:10 -0700
Date: Fri, 1 Apr 2022 07:58:09 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20220401145809.oelcfgujqonn4puz@ldmartin-desk2>
References: <20220330113417.220964-1-jani.nikula@intel.com>
 <87a6d58d0o.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <87a6d58d0o.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/dmc: abstract GPU error state
 dump
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 01, 2022 at 10:43:19AM +0300, Jani Nikula wrote:
>On Wed, 30 Mar 2022, Jani Nikula <jani.nikula@intel.com> wrote:
>> Only intel_dmc.c should be accessing dmc details directly.
>>
>> Need to add an i915_error_printf() stub for
>> CONFIG_DRM_I915_CAPTURE_ERROR=n.
>>
>> v2: Add the stub (kernel test robot <lkp@intel.com>)
>>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com> # v1
>
>Just as I pushed to din, I realized I jumped the gun a bit, I meant to
>wait for rb confirmation on v2. The diff isn't big, but generally I
>prefer erring on the side of caution. Sorry.


v2 looks good to me. I missed this update when you sent.

thanks
Lucas De Marchi

>
>And thanks for review on v1. :)
>
>BR,
>Jani.
>
>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dmc.c | 15 +++++++++++++++
>>  drivers/gpu/drm/i915/display/intel_dmc.h |  3 +++
>>  drivers/gpu/drm/i915/i915_gpu_error.c    | 10 +---------
>>  drivers/gpu/drm/i915/i915_gpu_error.h    |  6 ++++++
>>  4 files changed, 25 insertions(+), 9 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
>> index 5de13f978e57..f0eb3de8de60 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>> @@ -811,6 +811,21 @@ void intel_dmc_ucode_fini(struct drm_i915_private *dev_priv)
>>  		kfree(dev_priv->dmc.dmc_info[id].payload);
>>  }
>>
>> +void intel_dmc_print_error_state(struct drm_i915_error_state_buf *m,
>> +				 struct drm_i915_private *i915)
>> +{
>> +	struct intel_dmc *dmc = &i915->dmc;
>> +
>> +	if (!HAS_DMC(i915))
>> +		return;
>> +
>> +	i915_error_printf(m, "DMC loaded: %s\n",
>> +			  str_yes_no(intel_dmc_has_payload(i915)));
>> +	i915_error_printf(m, "DMC fw version: %d.%d\n",
>> +			  DMC_VERSION_MAJOR(dmc->version),
>> +			  DMC_VERSION_MINOR(dmc->version));
>> +}
>> +
>>  static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
>>  {
>>  	struct drm_i915_private *i915 = m->private;
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
>> index b9f608057700..dd8880d2cbed 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dmc.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc.h
>> @@ -10,6 +10,7 @@
>>  #include "intel_wakeref.h"
>>  #include <linux/workqueue.h>
>>
>> +struct drm_i915_error_state_buf;
>>  struct drm_i915_private;
>>
>>  #define DMC_VERSION(major, minor)	((major) << 16 | (minor))
>> @@ -55,6 +56,8 @@ void intel_dmc_ucode_suspend(struct drm_i915_private *i915);
>>  void intel_dmc_ucode_resume(struct drm_i915_private *i915);
>>  bool intel_dmc_has_payload(struct drm_i915_private *i915);
>>  void intel_dmc_debugfs_register(struct drm_i915_private *i915);
>> +void intel_dmc_print_error_state(struct drm_i915_error_state_buf *m,
>> +				 struct drm_i915_private *i915);
>>
>>  void assert_dmc_loaded(struct drm_i915_private *i915);
>>
>> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
>> index 795f91a88d1d..25f4e178b410 100644
>> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
>> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
>> @@ -848,15 +848,7 @@ static void __err_print_to_sgl(struct drm_i915_error_state_buf *m,
>>
>>  	err_printf(m, "IOMMU enabled?: %d\n", error->iommu);
>>
>> -	if (HAS_DMC(m->i915)) {
>> -		struct intel_dmc *dmc = &m->i915->dmc;
>> -
>> -		err_printf(m, "DMC loaded: %s\n",
>> -			   str_yes_no(intel_dmc_has_payload(m->i915) != 0));
>> -		err_printf(m, "DMC fw version: %d.%d\n",
>> -			   DMC_VERSION_MAJOR(dmc->version),
>> -			   DMC_VERSION_MINOR(dmc->version));
>> -	}
>> +	intel_dmc_print_error_state(m, m->i915);
>>
>>  	err_printf(m, "RPM wakelock: %s\n", str_yes_no(error->wakelock));
>>  	err_printf(m, "PM suspended: %s\n", str_yes_no(error->suspended));
>> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
>> index 09159ff01411..7977a01a708f 100644
>> --- a/drivers/gpu/drm/i915/i915_gpu_error.h
>> +++ b/drivers/gpu/drm/i915/i915_gpu_error.h
>> @@ -298,6 +298,12 @@ void i915_disable_error_state(struct drm_i915_private *i915, int err);
>>
>>  #else
>>
>> +__printf(2, 3)
>> +static inline void
>> +i915_error_printf(struct drm_i915_error_state_buf *e, const char *f, ...)
>> +{
>> +}
>> +
>>  static inline void
>>  i915_capture_error_state(struct intel_gt *gt, intel_engine_mask_t engine_mask, u32 dump_flags)
>>  {
>
>-- 
>Jani Nikula, Intel Open Source Graphics Center
