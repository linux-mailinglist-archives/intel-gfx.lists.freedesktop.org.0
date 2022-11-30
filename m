Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D29C063D4E4
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Nov 2022 12:48:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11E1C10E451;
	Wed, 30 Nov 2022 11:48:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 200E610E46A
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Nov 2022 11:48:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669808884; x=1701344884;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=4k3OdtwQ4KBv0ZfP0Me0I26GZNv3kn6sE6BcdRXtEEI=;
 b=lFhR1w+w5mCc9oufp8kIMygom+VcF1izLhrbdiyj/M96K5+++HzLRiS7
 tffNd9NzIWM1RU8rWo0kSmFDtoxCSJMhpntIvDkLoR8rKO+H7Ph8M7kbq
 yYFbm/1WFQg/PLTBihXb9Y4Zn1jursVrY3ImMYlDcg2PtzZHQ09S0HpeF
 2Wx1H7Kzi7juaxbVz9Zo9Xu7RuEXtsQ8jhy+6c28q2f2GpCARx735j2ma
 seIf7Kvp/JBOtxRwiapJi1xYt6muvxS1/fQYpheePkRA22IWVljYkgjf5
 3iudsiD1Pz1k+NPddRm5PaENZW+UeofZ90S6SUWFhj6ssVwj1grOMaLf4 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="312994921"
X-IronPort-AV: E=Sophos;i="5.96,206,1665471600"; d="scan'208";a="312994921"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 03:47:47 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="646303691"
X-IronPort-AV: E=Sophos;i="5.96,206,1665471600"; d="scan'208";a="646303691"
Received: from hpvpnmu01.ger.corp.intel.com (HELO [10.213.197.198])
 ([10.213.197.198])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 03:47:46 -0800
Message-ID: <1813a272-a6e1-9b96-1d47-92302860f5b7@linux.intel.com>
Date: Wed, 30 Nov 2022 11:47:44 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org
References: <20221130022928.196982-1-rodrigo.vivi@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20221130022928.196982-1-rodrigo.vivi@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove CONFIG_PM dependency from
 RC6.
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
Cc: Paul Cercueil <paul@crapouillou.net>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 30/11/2022 02:29, Rodrigo Vivi wrote:
> RC6 is a sleep state that doesn't depend on the cpu sleep,
> or any of the APM or ACPI or anything related to the
> CONFIG_PM.
> 
> A long time ago we have removed the module parameter
> that allows the RC6 disablement. We want that feature enabled
> everywhere. However, for some reason this CONFIG_PM was long
> forgotten behind.
> 
> If we end up needing knobs to disable RC6 we should create
> individual ones, rather than relying on this master one.

Digging in history shows 5ab3633d6907 ("drm/i915: make rc6 in sysfs 
functions conditional") and then it appears the issue could still be 
present, since we still use power_group_name which is NULL when !CONFIG_PM.

$ ls -l /sys/class/drm/card0/power/
total 0
-rw-r--r-- 1 root root 4096 Nov 30 11:45 async
-rw-r--r-- 1 root root 4096 Nov 30 11:45 autosuspend_delay_ms
-rw-r--r-- 1 root root 4096 Nov 30 11:45 control
-r--r--r-- 1 root root 4096 Nov 30 11:45 rc6_enable
-r--r--r-- 1 root root 4096 Nov 30 11:45 rc6_residency_ms
-r--r--r-- 1 root root 4096 Nov 30 11:45 runtime_active_kids
-r--r--r-- 1 root root 4096 Nov 30 11:45 runtime_active_time
-r--r--r-- 1 root root 4096 Nov 30 11:45 runtime_enabled
-r--r--r-- 1 root root 4096 Nov 30 11:45 runtime_status
-r--r--r-- 1 root root 4096 Nov 30 11:45 runtime_suspended_time
-r--r--r-- 1 root root 4096 Nov 30 11:45 runtime_usage

Other than rc6 entries I guess come from somewhere else but I haven't 
looked from where exactly.

Regards,

Tvrtko

> Cc: Paul Cercueil <paul@crapouillou.net>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c | 6 ------
>   1 file changed, 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
> index cf71305ad586..77327ede18ad 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
> @@ -164,7 +164,6 @@ sysfs_gt_attribute_r_func(struct kobject *kobj, struct attribute *attr,
>   								 NULL);			\
>   	INTEL_GT_ATTR_RO(_name)
>   
> -#ifdef CONFIG_PM
>   static u32 get_residency(struct intel_gt *gt, enum intel_rc6_res_type id)
>   {
>   	intel_wakeref_t wakeref;
> @@ -329,11 +328,6 @@ static void intel_sysfs_rc6_init(struct intel_gt *gt, struct kobject *kobj)
>   				 gt->info.id, ERR_PTR(ret));
>   	}
>   }
> -#else
> -static void intel_sysfs_rc6_init(struct intel_gt *gt, struct kobject *kobj)
> -{
> -}
> -#endif /* CONFIG_PM */
>   
>   static u32 __act_freq_mhz_show(struct intel_gt *gt)
>   {
