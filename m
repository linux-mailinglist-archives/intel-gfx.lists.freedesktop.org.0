Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58B8C6C6520
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 11:32:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC61510EA57;
	Thu, 23 Mar 2023 10:32:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A983C10EA57
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 10:32:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679567560; x=1711103560;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Ty8fxYOrGriyxONPhuumEPNR/vrZJogwRKpO1qVKIMk=;
 b=gJUU4bGZmzZ4r/jBwRThsFdteYoWW+KTT0mhTFHc8HCAeKnzwbxFEJxm
 rdP4R/VAm8ZsTBAT5S9POMoXwrSN2QjvXeoBD+01FLC95CIQRx1AaSkm7
 WoviwcS/9o+q9fnVTrDvgAO8QT01480b0xMrx9MecVbSGhDg2sJnEAjUu
 LaaATDcmpiITcxKWlxJRqkJCAOhwsF6ZKYyncpNZeFU1ghdfTHSzCxKLJ
 dUTjLs/mMKL3QhasknOwezAF4HS1RK58p/D2yKkqsCiM4Rj143ZHHRMdW
 juWbMJWF7HkeECTsTsjUfIvYfiP47O1ZlWfoQMYEcSzUtWJhIn5gg+e3+ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="404338341"
X-IronPort-AV: E=Sophos;i="5.98,283,1673942400"; d="scan'208";a="404338341"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 03:32:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="675654582"
X-IronPort-AV: E=Sophos;i="5.98,283,1673942400"; d="scan'208";a="675654582"
Received: from mplechx-mobl.ger.corp.intel.com (HELO [10.213.211.105])
 ([10.213.211.105])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 03:32:38 -0700
Message-ID: <2fb70980-5a85-a226-c0d9-9772d1c9cc14@linux.intel.com>
Date: Thu, 23 Mar 2023 10:32:36 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Badal Nilawar <badal.nilawar@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230323101226.1031488-1-badal.nilawar@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230323101226.1031488-1-badal.nilawar@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: Add per-tile rc6
 enable/disable
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
Cc: andi.shyti@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 23/03/2023 10:12, Badal Nilawar wrote:
> From: Don Hiatt <don.hiatt@intel.com>
> 
> Add the ability to enable/disable rc6 on a per tile basis.

Some words on justification?

> To enable rc6 on a tile:
>     echo 1 > /sys/class/drm/card0/gt/gtX/rc6_enable
> 
> To disable rc6 on a tile:
>     echo 0 > /sys/class/drm/card0/gt/gtX/rc6_enable
> 
> To display the rc6 state of a tile:
>     cat /sys/class/drm/card0/gt/gtX/rc6_enable
> 
> Cc: Andi Shyti <andi.shyti@intel.com>
> Co-developed-by: Badal Nilawar <badal.nilawar@intel.com>
> Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
> Signed-off-by: Don Hiatt <don.hiatt@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c | 84 ++++++++++++++++++---
>   drivers/gpu/drm/i915/gt/intel_rc6.c         | 14 ++--
>   drivers/gpu/drm/i915/gt/intel_rc6.h         |  3 +
>   3 files changed, 82 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
> index 28f27091cd3b..e8f77dab8f5f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
> @@ -176,18 +176,78 @@ static u32 get_residency(struct intel_gt *gt, enum intel_rc6_res_type id)
>   	return DIV_ROUND_CLOSEST_ULL(res, 1000);
>   }
>   
> -static u8 get_rc6_mask(struct intel_gt *gt)
> +static ssize_t rc6_enable_store(struct kobject *kobj,
> +				struct kobj_attribute *attr,
> +				const char *buff, size_t count)
>   {
> -	u8 mask = 0;
> +	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(kobj, attr->attr.name);
> +	intel_wakeref_t wakeref;
> +	ssize_t ret;
> +	u32 val;
> +
> +	ret = kstrtou32(buff, 0, &val);
> +	if (ret)
> +		return ret;
> +
> +	wakeref = intel_runtime_pm_get(gt->uncore->rpm);
> +
> +	if (val) {
> +		if (gt->rc6.enabled)
> +			goto unlock;

Access to rc6.enabled is not serialized should multiple threads write to 
this file.

> +
> +		if (!gt->rc6.wakeref)
> +			intel_rc6_rpm_get(&gt->rc6);

Similar with rc6.wakeref.

I think some locking of the internal state will be needed.

> +
> +		intel_rc6_enable(&gt->rc6);
> +		intel_rc6_unpark(&gt->rc6);
> +	} else {
> +		intel_rc6_disable(&gt->rc6);

I am noticing the lack of symmetry with the above enable, unpark - it is 
okay to not do the reverse park, disable here?

> +
> +		if (gt->rc6.wakeref)
> +			intel_rc6_rpm_put(&gt->rc6);
> +	}
> +
> +unlock:
> +	intel_runtime_pm_put(gt->uncore->rpm, wakeref);
> +
> +	return count;
> +}
> +
> +static ssize_t rc6_enable_dev_store(struct device *dev,
> +				    struct device_attribute *attr,
> +				    const char *buff, size_t count)
> +{
> +	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(&dev->kobj, attr->attr.name);
> +	intel_wakeref_t wakeref;
> +	ssize_t ret;
> +	u32 val;
> +
> +	ret = kstrtou32(buff, 0, &val);
> +	if (ret)
> +		return ret;
> +
> +	wakeref = intel_runtime_pm_get(gt->uncore->rpm);
> +
> +	if (val) {
> +		if (gt->rc6.enabled)
> +			goto unlock;
> +
> +		if (!gt->rc6.wakeref)
> +			intel_rc6_rpm_get(&gt->rc6);
> +
> +		intel_rc6_enable(&gt->rc6);
> +		intel_rc6_unpark(&gt->rc6);
> +	} else {
> +		intel_rc6_disable(&gt->rc6);
> +
> +		if (gt->rc6.wakeref)
> +			intel_rc6_rpm_put(&gt->rc6);
> +	}
>   
> -	if (HAS_RC6(gt->i915))
> -		mask |= BIT(0);
> -	if (HAS_RC6p(gt->i915))
> -		mask |= BIT(1);
> -	if (HAS_RC6pp(gt->i915))
> -		mask |= BIT(2);
> +unlock:
> +	intel_runtime_pm_put(gt->uncore->rpm, wakeref);
>   
> -	return mask;
> +	return count;

rc6_enable_store and rc6_enable_dev_store end up pretty much almost 
identical? Common helper that takes the gt?

Which gt will the device one work on on say MTL?

>   }
>   
>   static ssize_t rc6_enable_show(struct kobject *kobj,
> @@ -196,7 +256,7 @@ static ssize_t rc6_enable_show(struct kobject *kobj,
>   {
>   	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(kobj, attr->attr.name);
>   
> -	return sysfs_emit(buff, "%x\n", get_rc6_mask(gt));
> +	return sysfs_emit(buff, "%u\n", gt->rc6.enabled);

Change from bitmask to boolean needs to be mentioned and explained in 
the commit message how it doesn't break any existing userspace.

Regards,

Tvrtko

>   }
>   
>   static ssize_t rc6_enable_dev_show(struct device *dev,
> @@ -205,7 +265,7 @@ static ssize_t rc6_enable_dev_show(struct device *dev,
>   {
>   	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(&dev->kobj, attr->attr.name);
>   
> -	return sysfs_emit(buff, "%x\n", get_rc6_mask(gt));
> +	return sysfs_emit(buff, "%u\n", gt->rc6.enabled);
>   }
>   
>   static u32 __rc6_residency_ms_show(struct intel_gt *gt)
> @@ -233,7 +293,7 @@ INTEL_GT_SYSFS_SHOW_MIN(rc6p_residency_ms);
>   INTEL_GT_SYSFS_SHOW_MIN(rc6pp_residency_ms);
>   INTEL_GT_SYSFS_SHOW_MIN(media_rc6_residency_ms);
>   
> -INTEL_GT_DUAL_ATTR_RO(rc6_enable);
> +INTEL_GT_DUAL_ATTR_RW(rc6_enable);
>   INTEL_GT_DUAL_ATTR_RO(rc6_residency_ms);
>   INTEL_GT_DUAL_ATTR_RO(rc6p_residency_ms);
>   INTEL_GT_DUAL_ATTR_RO(rc6pp_residency_ms);
> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
> index f4150f61f39c..ea7420271849 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
> @@ -513,14 +513,14 @@ static bool rc6_supported(struct intel_rc6 *rc6)
>   	return true;
>   }
>   
> -static void rpm_get(struct intel_rc6 *rc6)
> +void intel_rc6_rpm_get(struct intel_rc6 *rc6)
>   {
>   	GEM_BUG_ON(rc6->wakeref);
>   	pm_runtime_get_sync(rc6_to_i915(rc6)->drm.dev);
>   	rc6->wakeref = true;
>   }
>   
> -static void rpm_put(struct intel_rc6 *rc6)
> +void intel_rc6_rpm_put(struct intel_rc6 *rc6)
>   {
>   	GEM_BUG_ON(!rc6->wakeref);
>   	pm_runtime_put(rc6_to_i915(rc6)->drm.dev);
> @@ -582,7 +582,7 @@ void intel_rc6_init(struct intel_rc6 *rc6)
>   	int err;
>   
>   	/* Disable runtime-pm until we can save the GPU state with rc6 pctx */
> -	rpm_get(rc6);
> +	intel_rc6_rpm_get(rc6);
>   
>   	if (!rc6_supported(rc6))
>   		return;
> @@ -607,7 +607,7 @@ void intel_rc6_sanitize(struct intel_rc6 *rc6)
>   	memset(rc6->prev_hw_residency, 0, sizeof(rc6->prev_hw_residency));
>   
>   	if (rc6->enabled) { /* unbalanced suspend/resume */
> -		rpm_get(rc6);
> +		intel_rc6_rpm_get(rc6);
>   		rc6->enabled = false;
>   	}
>   
> @@ -650,7 +650,7 @@ void intel_rc6_enable(struct intel_rc6 *rc6)
>   		return;
>   
>   	/* rc6 is ready, runtime-pm is go! */
> -	rpm_put(rc6);
> +	intel_rc6_rpm_put(rc6);
>   	rc6->enabled = true;
>   }
>   
> @@ -698,7 +698,7 @@ void intel_rc6_disable(struct intel_rc6 *rc6)
>   	if (!rc6->enabled)
>   		return;
>   
> -	rpm_get(rc6);
> +	intel_rc6_rpm_get(rc6);
>   	rc6->enabled = false;
>   
>   	__intel_rc6_disable(rc6);
> @@ -715,7 +715,7 @@ void intel_rc6_fini(struct intel_rc6 *rc6)
>   		i915_gem_object_put(pctx);
>   
>   	if (rc6->wakeref)
> -		rpm_put(rc6);
> +		intel_rc6_rpm_put(rc6);
>   }
>   
>   static u64 vlv_residency_raw(struct intel_uncore *uncore, const i915_reg_t reg)
> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.h b/drivers/gpu/drm/i915/gt/intel_rc6.h
> index 456fa668a276..8771fbd9a6cf 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rc6.h
> +++ b/drivers/gpu/drm/i915/gt/intel_rc6.h
> @@ -12,6 +12,9 @@ enum intel_rc6_res_type;
>   struct intel_rc6;
>   struct seq_file;
>   
> +void intel_rc6_rpm_get(struct intel_rc6 *rc6);
> +void intel_rc6_rpm_put(struct intel_rc6 *rc6);
> +
>   void intel_rc6_init(struct intel_rc6 *rc6);
>   void intel_rc6_fini(struct intel_rc6 *rc6);
>   
