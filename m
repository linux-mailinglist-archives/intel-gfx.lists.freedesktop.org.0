Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF46F60FF31
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Oct 2022 19:17:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7DDC10E6AB;
	Thu, 27 Oct 2022 17:17:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C2F210E6AA;
 Thu, 27 Oct 2022 17:17:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666891062; x=1698427062;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=yEufK92vDuq0YZSgsA7zv1SFZ9yik8/1f3ej7LNifF8=;
 b=PnetAa+cwdGtVRli0A8M+i8gSt2Gk0XycVAlYB2g12awqOsqck7COTRq
 JKB2kxjWcudLAwiuMLAxApg9taSXjIR19+9LbxwUxyBzOYN4O1yITSIhu
 RfC5OporhbepRgzpYbS8w7LM8Byv73DEzu0tLowJO1JUG1Hv4RByVMGsm
 Fv2LKKH2u41x/XwxTbuQGoqoXaYZffbAfk2rBBFQECn14F1bqW8LFcSMN
 Tf4lXYdWPoZp2gU72UGNU1CwbOU416cdnkfmpq3VVZo82dYZr2kuPnmwr
 CNvF0SQ/p7fnpdPZ4a26S60dEplcLyVDxb8Mc8WEyxn4y0Z/0o5Iwa0eN w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="309983613"
X-IronPort-AV: E=Sophos;i="5.95,218,1661842800"; d="scan'208";a="309983613"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 10:17:40 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="877661598"
X-IronPort-AV: E=Sophos;i="5.95,218,1661842800"; d="scan'208";a="877661598"
Received: from ssarava1-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.55.110])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 10:17:33 -0700
Date: Thu, 27 Oct 2022 19:17:30 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nathan Chancellor <nathan@kernel.org>
Message-ID: <Y1q9Kv0qWRVjyGWe@ashyti-mobl2.lan>
References: <20221013205909.1282545-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221013205909.1282545-1-nathan@kernel.org>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Fix CFI violations in gt_sysfs
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
Cc: llvm@lists.linux.dev, Kees Cook <keescook@chromium.org>,
 Tom Rix <trix@redhat.com>, intel-gfx@lists.freedesktop.org,
 Nick Desaulniers <ndesaulniers@google.com>, patches@lists.linux.dev,
 Andrzej Hajda <andrzej.hajda@intel.com>, dri-devel@lists.freedesktop.org,
 Sami Tolvanen <samitolvanen@google.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Nathan,

pushed in drm-intel-gt-next.

Thanks!
Andi

On Thu, Oct 13, 2022 at 01:59:10PM -0700, Nathan Chancellor wrote:
> When booting with CONFIG_CFI_CLANG, there are numerous violations when
> accessing the files under
> /sys/devices/pci0000:00/0000:00:02.0/drm/card0/gt/gt0:
> 
>   $ cd /sys/devices/pci0000:00/0000:00:02.0/drm/card0/gt/gt0
> 
>   $ grep . *
>   id:0
>   punit_req_freq_mhz:350
>   rc6_enable:1
>   rc6_residency_ms:214934
>   rps_act_freq_mhz:1300
>   rps_boost_freq_mhz:1300
>   rps_cur_freq_mhz:350
>   rps_max_freq_mhz:1300
>   rps_min_freq_mhz:350
>   rps_RP0_freq_mhz:1300
>   rps_RP1_freq_mhz:350
>   rps_RPn_freq_mhz:350
>   throttle_reason_pl1:0
>   throttle_reason_pl2:0
>   throttle_reason_pl4:0
>   throttle_reason_prochot:0
>   throttle_reason_ratl:0
>   throttle_reason_status:0
>   throttle_reason_thermal:0
>   throttle_reason_vr_tdc:0
>   throttle_reason_vr_thermalert:0
> 
>   $ sudo dmesg &| grep "CFI failure at"
>   [  214.595903] CFI failure at kobj_attr_show+0x19/0x30 (target: id_show+0x0/0x70 [i915]; expected type: 0xc527b809)
>   [  214.596064] CFI failure at kobj_attr_show+0x19/0x30 (target: punit_req_freq_mhz_show+0x0/0x40 [i915]; expected type: 0xc527b809)
>   [  214.596407] CFI failure at kobj_attr_show+0x19/0x30 (target: rc6_enable_show+0x0/0x40 [i915]; expected type: 0xc527b809)
>   [  214.596528] CFI failure at kobj_attr_show+0x19/0x30 (target: rc6_residency_ms_show+0x0/0x270 [i915]; expected type: 0xc527b809)
>   [  214.596682] CFI failure at kobj_attr_show+0x19/0x30 (target: act_freq_mhz_show+0x0/0xe0 [i915]; expected type: 0xc527b809)
>   [  214.596792] CFI failure at kobj_attr_show+0x19/0x30 (target: boost_freq_mhz_show+0x0/0xe0 [i915]; expected type: 0xc527b809)
>   [  214.596893] CFI failure at kobj_attr_show+0x19/0x30 (target: cur_freq_mhz_show+0x0/0xe0 [i915]; expected type: 0xc527b809)
>   [  214.596996] CFI failure at kobj_attr_show+0x19/0x30 (target: max_freq_mhz_show+0x0/0xe0 [i915]; expected type: 0xc527b809)
>   [  214.597099] CFI failure at kobj_attr_show+0x19/0x30 (target: min_freq_mhz_show+0x0/0xe0 [i915]; expected type: 0xc527b809)
>   [  214.597198] CFI failure at kobj_attr_show+0x19/0x30 (target: RP0_freq_mhz_show+0x0/0xe0 [i915]; expected type: 0xc527b809)
>   [  214.597301] CFI failure at kobj_attr_show+0x19/0x30 (target: RP1_freq_mhz_show+0x0/0xe0 [i915]; expected type: 0xc527b809)
>   [  214.597405] CFI failure at kobj_attr_show+0x19/0x30 (target: RPn_freq_mhz_show+0x0/0xe0 [i915]; expected type: 0xc527b809)
>   [  214.597538] CFI failure at kobj_attr_show+0x19/0x30 (target: throttle_reason_bool_show+0x0/0x50 [i915]; expected type: 0xc527b809)
>   [  214.597701] CFI failure at kobj_attr_show+0x19/0x30 (target: throttle_reason_bool_show+0x0/0x50 [i915]; expected type: 0xc527b809)
>   [  214.597836] CFI failure at kobj_attr_show+0x19/0x30 (target: throttle_reason_bool_show+0x0/0x50 [i915]; expected type: 0xc527b809)
>   [  214.597952] CFI failure at kobj_attr_show+0x19/0x30 (target: throttle_reason_bool_show+0x0/0x50 [i915]; expected type: 0xc527b809)
>   [  214.598071] CFI failure at kobj_attr_show+0x19/0x30 (target: throttle_reason_bool_show+0x0/0x50 [i915]; expected type: 0xc527b809)
>   [  214.598177] CFI failure at kobj_attr_show+0x19/0x30 (target: throttle_reason_bool_show+0x0/0x50 [i915]; expected type: 0xc527b809)
>   [  214.598307] CFI failure at kobj_attr_show+0x19/0x30 (target: throttle_reason_bool_show+0x0/0x50 [i915]; expected type: 0xc527b809)
>   [  214.598439] CFI failure at kobj_attr_show+0x19/0x30 (target: throttle_reason_bool_show+0x0/0x50 [i915]; expected type: 0xc527b809)
>   [  214.598542] CFI failure at kobj_attr_show+0x19/0x30 (target: throttle_reason_bool_show+0x0/0x50 [i915]; expected type: 0xc527b809)
> 
> With kCFI, indirect calls are validated against their expected type
> versus actual type and failures occur when the two types do not match.
> The ultimate issue is that these sysfs functions are expecting to be
> called via dev_attr_show() but they may also be called via
> kobj_attr_show(), as certain files are created under two different
> kobjects that have two different sysfs_ops in intel_gt_sysfs_register(),
> hence the warnings above. When accessing the gt_ files under
> /sys/devices/pci0000:00/0000:00:02.0/drm/card0, which are using the same
> sysfs functions, there are no violations, meaning the functions are
> being called with the proper type.
> 
> To make everything work properly, adjust certain functions to match the
> type of the ->show() and ->store() members in 'struct kobj_attribute'.
> Add a macro to generate functions for that can be called via both
> dev_attr_{show,store}() or kobj_attr_{show,store}() so that they can be
> called through both kobject locations without violating kCFI and adjust
> the attribute groups to account for this.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/1716
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
> 
> v2:
>   - Rebase on latest drm-intel-gt-next.
>   - Pick up review tags from Andi, Andrzej, and Kees.
>   - Share more code in INTEL_GT_SYSFS_{SHOW,STORE}() using common
>     functions, as suggested by Andrzej. Adjust other paths to account
>     for this.
>   - Remove link to CFI series in commit message, as it is now merged
>     into mainline as of commit 865dad2022c5 ("Merge tag 'kcfi-v6.1-rc1'
>     of git://git.kernel.org/pub/scm/linux/kernel/git/kees/linux").
> 
> v1: https://lore.kernel.org/20220922195127.2607496-1-nathan@kernel.org/
> 
>  drivers/gpu/drm/i915/gt/intel_gt_sysfs.c    |  15 +-
>  drivers/gpu/drm/i915/gt/intel_gt_sysfs.h    |   2 +-
>  drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c | 461 +++++++++-----------
>  3 files changed, 220 insertions(+), 258 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c b/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c
> index d651ccd0ab20..9486dd3bed99 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c
> @@ -22,11 +22,9 @@ bool is_object_gt(struct kobject *kobj)
>  	return !strncmp(kobj->name, "gt", 2);
>  }
>  
> -struct intel_gt *intel_gt_sysfs_get_drvdata(struct device *dev,
> +struct intel_gt *intel_gt_sysfs_get_drvdata(struct kobject *kobj,
>  					    const char *name)
>  {
> -	struct kobject *kobj = &dev->kobj;
> -
>  	/*
>  	 * We are interested at knowing from where the interface
>  	 * has been called, whether it's called from gt/ or from
> @@ -38,6 +36,7 @@ struct intel_gt *intel_gt_sysfs_get_drvdata(struct device *dev,
>  	 * "struct drm_i915_private *" type.
>  	 */
>  	if (!is_object_gt(kobj)) {
> +		struct device *dev = kobj_to_dev(kobj);
>  		struct drm_i915_private *i915 = kdev_minor_to_i915(dev);
>  
>  		return to_gt(i915);
> @@ -51,18 +50,18 @@ static struct kobject *gt_get_parent_obj(struct intel_gt *gt)
>  	return &gt->i915->drm.primary->kdev->kobj;
>  }
>  
> -static ssize_t id_show(struct device *dev,
> -		       struct device_attribute *attr,
> +static ssize_t id_show(struct kobject *kobj,
> +		       struct kobj_attribute *attr,
>  		       char *buf)
>  {
> -	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(dev, attr->attr.name);
> +	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(kobj, attr->attr.name);
>  
>  	return sysfs_emit(buf, "%u\n", gt->info.id);
>  }
> -static DEVICE_ATTR_RO(id);
> +static struct kobj_attribute attr_id = __ATTR_RO(id);
>  
>  static struct attribute *id_attrs[] = {
> -	&dev_attr_id.attr,
> +	&attr_id.attr,
>  	NULL,
>  };
>  ATTRIBUTE_GROUPS(id);
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs.h b/drivers/gpu/drm/i915/gt/intel_gt_sysfs.h
> index d637c6c3a69f..18bab835be02 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs.h
> @@ -25,7 +25,7 @@ static inline struct intel_gt *kobj_to_gt(struct kobject *kobj)
>  
>  void intel_gt_sysfs_register(struct intel_gt *gt);
>  void intel_gt_sysfs_unregister(struct intel_gt *gt);
> -struct intel_gt *intel_gt_sysfs_get_drvdata(struct device *dev,
> +struct intel_gt *intel_gt_sysfs_get_drvdata(struct kobject *kobj,
>  					    const char *name);
>  
>  #endif /* SYSFS_GT_H */
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
> index 904160952369..2b5f05b31187 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
> @@ -24,14 +24,15 @@ enum intel_gt_sysfs_op {
>  };
>  
>  static int
> -sysfs_gt_attribute_w_func(struct device *dev, struct device_attribute *attr,
> +sysfs_gt_attribute_w_func(struct kobject *kobj, struct attribute *attr,
>  			  int (func)(struct intel_gt *gt, u32 val), u32 val)
>  {
>  	struct intel_gt *gt;
>  	int ret;
>  
> -	if (!is_object_gt(&dev->kobj)) {
> +	if (!is_object_gt(kobj)) {
>  		int i;
> +		struct device *dev = kobj_to_dev(kobj);
>  		struct drm_i915_private *i915 = kdev_minor_to_i915(dev);
>  
>  		for_each_gt(gt, i915, i) {
> @@ -40,7 +41,7 @@ sysfs_gt_attribute_w_func(struct device *dev, struct device_attribute *attr,
>  				break;
>  		}
>  	} else {
> -		gt = intel_gt_sysfs_get_drvdata(dev, attr->attr.name);
> +		gt = intel_gt_sysfs_get_drvdata(kobj, attr->name);
>  		ret = func(gt, val);
>  	}
>  
> @@ -48,7 +49,7 @@ sysfs_gt_attribute_w_func(struct device *dev, struct device_attribute *attr,
>  }
>  
>  static u32
> -sysfs_gt_attribute_r_func(struct device *dev, struct device_attribute *attr,
> +sysfs_gt_attribute_r_func(struct kobject *kobj, struct attribute *attr,
>  			  u32 (func)(struct intel_gt *gt),
>  			  enum intel_gt_sysfs_op op)
>  {
> @@ -57,8 +58,9 @@ sysfs_gt_attribute_r_func(struct device *dev, struct device_attribute *attr,
>  
>  	ret = (op == INTEL_GT_SYSFS_MAX) ? 0 : (u32) -1;
>  
> -	if (!is_object_gt(&dev->kobj)) {
> +	if (!is_object_gt(kobj)) {
>  		int i;
> +		struct device *dev = kobj_to_dev(kobj);
>  		struct drm_i915_private *i915 = kdev_minor_to_i915(dev);
>  
>  		for_each_gt(gt, i915, i) {
> @@ -77,7 +79,7 @@ sysfs_gt_attribute_r_func(struct device *dev, struct device_attribute *attr,
>  			}
>  		}
>  	} else {
> -		gt = intel_gt_sysfs_get_drvdata(dev, attr->attr.name);
> +		gt = intel_gt_sysfs_get_drvdata(kobj, attr->name);
>  		ret = func(gt);
>  	}
>  
> @@ -92,6 +94,76 @@ sysfs_gt_attribute_r_func(struct device *dev, struct device_attribute *attr,
>  #define sysfs_gt_attribute_r_max_func(d, a, f) \
>  		sysfs_gt_attribute_r_func(d, a, f, INTEL_GT_SYSFS_MAX)
>  
> +#define INTEL_GT_SYSFS_SHOW(_name, _attr_type)							\
> +	static ssize_t _name##_show_common(struct kobject *kobj,				\
> +					   struct attribute *attr, char *buff)			\
> +	{											\
> +		u32 val = sysfs_gt_attribute_r_##_attr_type##_func(kobj, attr,			\
> +								   __##_name##_show);		\
> +												\
> +		return sysfs_emit(buff, "%u\n", val);						\
> +	}											\
> +	static ssize_t _name##_show(struct kobject *kobj,					\
> +				    struct kobj_attribute *attr, char *buff)			\
> +	{											\
> +		return _name ##_show_common(kobj, &attr->attr, buff);				\
> +	}											\
> +	static ssize_t _name##_dev_show(struct device *dev,					\
> +					struct device_attribute *attr, char *buff)		\
> +	{											\
> +		return _name##_show_common(&dev->kobj, &attr->attr, buff);			\
> +	}
> +
> +#define INTEL_GT_SYSFS_STORE(_name, _func)						\
> +	static ssize_t _name##_store_common(struct kobject *kobj,			\
> +					    struct attribute *attr,			\
> +					    const char *buff, size_t count)		\
> +	{										\
> +		int ret;								\
> +		u32 val;								\
> +											\
> +		ret = kstrtou32(buff, 0, &val);						\
> +		if (ret)								\
> +			return ret;							\
> +											\
> +		ret = sysfs_gt_attribute_w_func(kobj, attr, _func, val);		\
> +											\
> +		return ret ?: count;							\
> +	}										\
> +	static ssize_t _name##_store(struct kobject *kobj,				\
> +				     struct kobj_attribute *attr, const char *buff,	\
> +				     size_t count)					\
> +	{										\
> +		return _name##_store_common(kobj, &attr->attr, buff, count);		\
> +	}										\
> +	static ssize_t _name##_dev_store(struct device *dev,				\
> +					 struct device_attribute *attr,			\
> +					 const char *buff, size_t count)		\
> +	{										\
> +		return _name##_store_common(&dev->kobj, &attr->attr, buff, count);	\
> +	}
> +
> +#define INTEL_GT_SYSFS_SHOW_MAX(_name) INTEL_GT_SYSFS_SHOW(_name, max)
> +#define INTEL_GT_SYSFS_SHOW_MIN(_name) INTEL_GT_SYSFS_SHOW(_name, min)
> +
> +#define INTEL_GT_ATTR_RW(_name) \
> +	static struct kobj_attribute attr_##_name = __ATTR_RW(_name)
> +
> +#define INTEL_GT_ATTR_RO(_name) \
> +	static struct kobj_attribute attr_##_name = __ATTR_RO(_name)
> +
> +#define INTEL_GT_DUAL_ATTR_RW(_name) \
> +	static struct device_attribute dev_attr_##_name = __ATTR(_name, 0644,		\
> +								 _name##_dev_show,	\
> +								 _name##_dev_store);	\
> +	INTEL_GT_ATTR_RW(_name)
> +
> +#define INTEL_GT_DUAL_ATTR_RO(_name) \
> +	static struct device_attribute dev_attr_##_name = __ATTR(_name, 0444,		\
> +								 _name##_dev_show,	\
> +								 NULL);			\
> +	INTEL_GT_ATTR_RO(_name)
> +
>  #ifdef CONFIG_PM
>  static u32 get_residency(struct intel_gt *gt, i915_reg_t reg)
>  {
> @@ -104,11 +176,8 @@ static u32 get_residency(struct intel_gt *gt, i915_reg_t reg)
>  	return DIV_ROUND_CLOSEST_ULL(res, 1000);
>  }
>  
> -static ssize_t rc6_enable_show(struct device *dev,
> -			       struct device_attribute *attr,
> -			       char *buff)
> +static u8 get_rc6_mask(struct intel_gt *gt)
>  {
> -	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(dev, attr->attr.name);
>  	u8 mask = 0;
>  
>  	if (HAS_RC6(gt->i915))
> @@ -118,37 +187,35 @@ static ssize_t rc6_enable_show(struct device *dev,
>  	if (HAS_RC6pp(gt->i915))
>  		mask |= BIT(2);
>  
> -	return sysfs_emit(buff, "%x\n", mask);
> +	return mask;
>  }
>  
> -static u32 __rc6_residency_ms_show(struct intel_gt *gt)
> +static ssize_t rc6_enable_show(struct kobject *kobj,
> +			       struct kobj_attribute *attr,
> +			       char *buff)
>  {
> -	return get_residency(gt, GEN6_GT_GFX_RC6);
> +	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(kobj, attr->attr.name);
> +
> +	return sysfs_emit(buff, "%x\n", get_rc6_mask(gt));
>  }
>  
> -static ssize_t rc6_residency_ms_show(struct device *dev,
> -				     struct device_attribute *attr,
> -				     char *buff)
> +static ssize_t rc6_enable_dev_show(struct device *dev,
> +				   struct device_attribute *attr,
> +				   char *buff)
>  {
> -	u32 rc6_residency = sysfs_gt_attribute_r_min_func(dev, attr,
> -						      __rc6_residency_ms_show);
> +	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(&dev->kobj, attr->attr.name);
>  
> -	return sysfs_emit(buff, "%u\n", rc6_residency);
> +	return sysfs_emit(buff, "%x\n", get_rc6_mask(gt));
>  }
>  
> -static u32 __rc6p_residency_ms_show(struct intel_gt *gt)
> +static u32 __rc6_residency_ms_show(struct intel_gt *gt)
>  {
> -	return get_residency(gt, GEN6_GT_GFX_RC6p);
> +	return get_residency(gt, GEN6_GT_GFX_RC6);
>  }
>  
> -static ssize_t rc6p_residency_ms_show(struct device *dev,
> -				      struct device_attribute *attr,
> -				      char *buff)
> +static u32 __rc6p_residency_ms_show(struct intel_gt *gt)
>  {
> -	u32 rc6p_residency = sysfs_gt_attribute_r_min_func(dev, attr,
> -						__rc6p_residency_ms_show);
> -
> -	return sysfs_emit(buff, "%u\n", rc6p_residency);
> +	return get_residency(gt, GEN6_GT_GFX_RC6p);
>  }
>  
>  static u32 __rc6pp_residency_ms_show(struct intel_gt *gt)
> @@ -156,67 +223,69 @@ static u32 __rc6pp_residency_ms_show(struct intel_gt *gt)
>  	return get_residency(gt, GEN6_GT_GFX_RC6pp);
>  }
>  
> -static ssize_t rc6pp_residency_ms_show(struct device *dev,
> -				       struct device_attribute *attr,
> -				       char *buff)
> -{
> -	u32 rc6pp_residency = sysfs_gt_attribute_r_min_func(dev, attr,
> -						__rc6pp_residency_ms_show);
> -
> -	return sysfs_emit(buff, "%u\n", rc6pp_residency);
> -}
> -
>  static u32 __media_rc6_residency_ms_show(struct intel_gt *gt)
>  {
>  	return get_residency(gt, VLV_GT_MEDIA_RC6);
>  }
>  
> -static ssize_t media_rc6_residency_ms_show(struct device *dev,
> -					   struct device_attribute *attr,
> -					   char *buff)
> -{
> -	u32 rc6_residency = sysfs_gt_attribute_r_min_func(dev, attr,
> -						__media_rc6_residency_ms_show);
> +INTEL_GT_SYSFS_SHOW_MIN(rc6_residency_ms);
> +INTEL_GT_SYSFS_SHOW_MIN(rc6p_residency_ms);
> +INTEL_GT_SYSFS_SHOW_MIN(rc6pp_residency_ms);
> +INTEL_GT_SYSFS_SHOW_MIN(media_rc6_residency_ms);
>  
> -	return sysfs_emit(buff, "%u\n", rc6_residency);
> -}
> -
> -static DEVICE_ATTR_RO(rc6_enable);
> -static DEVICE_ATTR_RO(rc6_residency_ms);
> -static DEVICE_ATTR_RO(rc6p_residency_ms);
> -static DEVICE_ATTR_RO(rc6pp_residency_ms);
> -static DEVICE_ATTR_RO(media_rc6_residency_ms);
> +INTEL_GT_DUAL_ATTR_RO(rc6_enable);
> +INTEL_GT_DUAL_ATTR_RO(rc6_residency_ms);
> +INTEL_GT_DUAL_ATTR_RO(rc6p_residency_ms);
> +INTEL_GT_DUAL_ATTR_RO(rc6pp_residency_ms);
> +INTEL_GT_DUAL_ATTR_RO(media_rc6_residency_ms);
>  
>  static struct attribute *rc6_attrs[] = {
> +	&attr_rc6_enable.attr,
> +	&attr_rc6_residency_ms.attr,
> +	NULL
> +};
> +
> +static struct attribute *rc6p_attrs[] = {
> +	&attr_rc6p_residency_ms.attr,
> +	&attr_rc6pp_residency_ms.attr,
> +	NULL
> +};
> +
> +static struct attribute *media_rc6_attrs[] = {
> +	&attr_media_rc6_residency_ms.attr,
> +	NULL
> +};
> +
> +static struct attribute *rc6_dev_attrs[] = {
>  	&dev_attr_rc6_enable.attr,
>  	&dev_attr_rc6_residency_ms.attr,
>  	NULL
>  };
>  
> -static struct attribute *rc6p_attrs[] = {
> +static struct attribute *rc6p_dev_attrs[] = {
>  	&dev_attr_rc6p_residency_ms.attr,
>  	&dev_attr_rc6pp_residency_ms.attr,
>  	NULL
>  };
>  
> -static struct attribute *media_rc6_attrs[] = {
> +static struct attribute *media_rc6_dev_attrs[] = {
>  	&dev_attr_media_rc6_residency_ms.attr,
>  	NULL
>  };
>  
>  static const struct attribute_group rc6_attr_group[] = {
>  	{ .attrs = rc6_attrs, },
> -	{ .name = power_group_name, .attrs = rc6_attrs, },
> +	{ .name = power_group_name, .attrs = rc6_dev_attrs, },
>  };
>  
>  static const struct attribute_group rc6p_attr_group[] = {
>  	{ .attrs = rc6p_attrs, },
> -	{ .name = power_group_name, .attrs = rc6p_attrs, },
> +	{ .name = power_group_name, .attrs = rc6p_dev_attrs, },
>  };
>  
>  static const struct attribute_group media_rc6_attr_group[] = {
>  	{ .attrs = media_rc6_attrs, },
> -	{ .name = power_group_name, .attrs = media_rc6_attrs, },
> +	{ .name = power_group_name, .attrs = media_rc6_dev_attrs, },
>  };
>  
>  static int __intel_gt_sysfs_create_group(struct kobject *kobj,
> @@ -271,104 +340,34 @@ static u32 __act_freq_mhz_show(struct intel_gt *gt)
>  	return intel_rps_read_actual_frequency(&gt->rps);
>  }
>  
> -static ssize_t act_freq_mhz_show(struct device *dev,
> -				 struct device_attribute *attr, char *buff)
> -{
> -	u32 actual_freq = sysfs_gt_attribute_r_max_func(dev, attr,
> -						    __act_freq_mhz_show);
> -
> -	return sysfs_emit(buff, "%u\n", actual_freq);
> -}
> -
>  static u32 __cur_freq_mhz_show(struct intel_gt *gt)
>  {
>  	return intel_rps_get_requested_frequency(&gt->rps);
>  }
>  
> -static ssize_t cur_freq_mhz_show(struct device *dev,
> -				 struct device_attribute *attr, char *buff)
> -{
> -	u32 cur_freq = sysfs_gt_attribute_r_max_func(dev, attr,
> -						 __cur_freq_mhz_show);
> -
> -	return sysfs_emit(buff, "%u\n", cur_freq);
> -}
> -
>  static u32 __boost_freq_mhz_show(struct intel_gt *gt)
>  {
>  	return intel_rps_get_boost_frequency(&gt->rps);
>  }
>  
> -static ssize_t boost_freq_mhz_show(struct device *dev,
> -				   struct device_attribute *attr,
> -				   char *buff)
> -{
> -	u32 boost_freq = sysfs_gt_attribute_r_max_func(dev, attr,
> -						   __boost_freq_mhz_show);
> -
> -	return sysfs_emit(buff, "%u\n", boost_freq);
> -}
> -
>  static int __boost_freq_mhz_store(struct intel_gt *gt, u32 val)
>  {
>  	return intel_rps_set_boost_frequency(&gt->rps, val);
>  }
>  
> -static ssize_t boost_freq_mhz_store(struct device *dev,
> -				    struct device_attribute *attr,
> -				    const char *buff, size_t count)
> -{
> -	ssize_t ret;
> -	u32 val;
> -
> -	ret = kstrtou32(buff, 0, &val);
> -	if (ret)
> -		return ret;
> -
> -	return sysfs_gt_attribute_w_func(dev, attr,
> -					 __boost_freq_mhz_store, val) ?: count;
> -}
> -
> -static u32 __rp0_freq_mhz_show(struct intel_gt *gt)
> +static u32 __RP0_freq_mhz_show(struct intel_gt *gt)
>  {
>  	return intel_rps_get_rp0_frequency(&gt->rps);
>  }
>  
> -static ssize_t RP0_freq_mhz_show(struct device *dev,
> -				 struct device_attribute *attr, char *buff)
> -{
> -	u32 rp0_freq = sysfs_gt_attribute_r_max_func(dev, attr,
> -						     __rp0_freq_mhz_show);
> -
> -	return sysfs_emit(buff, "%u\n", rp0_freq);
> -}
> -
> -static u32 __rp1_freq_mhz_show(struct intel_gt *gt)
> -{
> -	return intel_rps_get_rp1_frequency(&gt->rps);
> -}
> -
> -static ssize_t RP1_freq_mhz_show(struct device *dev,
> -				 struct device_attribute *attr, char *buff)
> -{
> -	u32 rp1_freq = sysfs_gt_attribute_r_max_func(dev, attr,
> -						     __rp1_freq_mhz_show);
> -
> -	return sysfs_emit(buff, "%u\n", rp1_freq);
> -}
> -
> -static u32 __rpn_freq_mhz_show(struct intel_gt *gt)
> +static u32 __RPn_freq_mhz_show(struct intel_gt *gt)
>  {
>  	return intel_rps_get_rpn_frequency(&gt->rps);
>  }
>  
> -static ssize_t RPn_freq_mhz_show(struct device *dev,
> -				 struct device_attribute *attr, char *buff)
> +static u32 __RP1_freq_mhz_show(struct intel_gt *gt)
>  {
> -	u32 rpn_freq = sysfs_gt_attribute_r_max_func(dev, attr,
> -						     __rpn_freq_mhz_show);
> -
> -	return sysfs_emit(buff, "%u\n", rpn_freq);
> +	return intel_rps_get_rp1_frequency(&gt->rps);
>  }
>  
>  static u32 __max_freq_mhz_show(struct intel_gt *gt)
> @@ -376,71 +375,21 @@ static u32 __max_freq_mhz_show(struct intel_gt *gt)
>  	return intel_rps_get_max_frequency(&gt->rps);
>  }
>  
> -static ssize_t max_freq_mhz_show(struct device *dev,
> -				 struct device_attribute *attr, char *buff)
> -{
> -	u32 max_freq = sysfs_gt_attribute_r_max_func(dev, attr,
> -						     __max_freq_mhz_show);
> -
> -	return sysfs_emit(buff, "%u\n", max_freq);
> -}
> -
>  static int __set_max_freq(struct intel_gt *gt, u32 val)
>  {
>  	return intel_rps_set_max_frequency(&gt->rps, val);
>  }
>  
> -static ssize_t max_freq_mhz_store(struct device *dev,
> -				  struct device_attribute *attr,
> -				  const char *buff, size_t count)
> -{
> -	int ret;
> -	u32 val;
> -
> -	ret = kstrtou32(buff, 0, &val);
> -	if (ret)
> -		return ret;
> -
> -	ret = sysfs_gt_attribute_w_func(dev, attr, __set_max_freq, val);
> -
> -	return ret ?: count;
> -}
> -
>  static u32 __min_freq_mhz_show(struct intel_gt *gt)
>  {
>  	return intel_rps_get_min_frequency(&gt->rps);
>  }
>  
> -static ssize_t min_freq_mhz_show(struct device *dev,
> -				 struct device_attribute *attr, char *buff)
> -{
> -	u32 min_freq = sysfs_gt_attribute_r_min_func(dev, attr,
> -						     __min_freq_mhz_show);
> -
> -	return sysfs_emit(buff, "%u\n", min_freq);
> -}
> -
>  static int __set_min_freq(struct intel_gt *gt, u32 val)
>  {
>  	return intel_rps_set_min_frequency(&gt->rps, val);
>  }
>  
> -static ssize_t min_freq_mhz_store(struct device *dev,
> -				  struct device_attribute *attr,
> -				  const char *buff, size_t count)
> -{
> -	int ret;
> -	u32 val;
> -
> -	ret = kstrtou32(buff, 0, &val);
> -	if (ret)
> -		return ret;
> -
> -	ret = sysfs_gt_attribute_w_func(dev, attr, __set_min_freq, val);
> -
> -	return ret ?: count;
> -}
> -
>  static u32 __vlv_rpe_freq_mhz_show(struct intel_gt *gt)
>  {
>  	struct intel_rps *rps = &gt->rps;
> @@ -448,23 +397,31 @@ static u32 __vlv_rpe_freq_mhz_show(struct intel_gt *gt)
>  	return intel_gpu_freq(rps, rps->efficient_freq);
>  }
>  
> -static ssize_t vlv_rpe_freq_mhz_show(struct device *dev,
> -				     struct device_attribute *attr, char *buff)
> -{
> -	u32 rpe_freq = sysfs_gt_attribute_r_max_func(dev, attr,
> -						 __vlv_rpe_freq_mhz_show);
> -
> -	return sysfs_emit(buff, "%u\n", rpe_freq);
> -}
> -
> -#define INTEL_GT_RPS_SYSFS_ATTR(_name, _mode, _show, _store) \
> -	static struct device_attribute dev_attr_gt_##_name = __ATTR(gt_##_name, _mode, _show, _store); \
> -	static struct device_attribute dev_attr_rps_##_name = __ATTR(rps_##_name, _mode, _show, _store)
> -
> -#define INTEL_GT_RPS_SYSFS_ATTR_RO(_name)				\
> -		INTEL_GT_RPS_SYSFS_ATTR(_name, 0444, _name##_show, NULL)
> -#define INTEL_GT_RPS_SYSFS_ATTR_RW(_name)				\
> -		INTEL_GT_RPS_SYSFS_ATTR(_name, 0644, _name##_show, _name##_store)
> +INTEL_GT_SYSFS_SHOW_MAX(act_freq_mhz);
> +INTEL_GT_SYSFS_SHOW_MAX(boost_freq_mhz);
> +INTEL_GT_SYSFS_SHOW_MAX(cur_freq_mhz);
> +INTEL_GT_SYSFS_SHOW_MAX(RP0_freq_mhz);
> +INTEL_GT_SYSFS_SHOW_MAX(RP1_freq_mhz);
> +INTEL_GT_SYSFS_SHOW_MAX(RPn_freq_mhz);
> +INTEL_GT_SYSFS_SHOW_MAX(max_freq_mhz);
> +INTEL_GT_SYSFS_SHOW_MIN(min_freq_mhz);
> +INTEL_GT_SYSFS_SHOW_MAX(vlv_rpe_freq_mhz);
> +INTEL_GT_SYSFS_STORE(boost_freq_mhz, __boost_freq_mhz_store);
> +INTEL_GT_SYSFS_STORE(max_freq_mhz, __set_max_freq);
> +INTEL_GT_SYSFS_STORE(min_freq_mhz, __set_min_freq);
> +
> +#define INTEL_GT_RPS_SYSFS_ATTR(_name, _mode, _show, _store, _show_dev, _store_dev)		\
> +	static struct device_attribute dev_attr_gt_##_name = __ATTR(gt_##_name, _mode,		\
> +								    _show_dev, _store_dev);	\
> +	static struct kobj_attribute attr_rps_##_name = __ATTR(rps_##_name, _mode,		\
> +							       _show, _store)
> +
> +#define INTEL_GT_RPS_SYSFS_ATTR_RO(_name)						\
> +		INTEL_GT_RPS_SYSFS_ATTR(_name, 0444, _name##_show, NULL,		\
> +					_name##_dev_show, NULL)
> +#define INTEL_GT_RPS_SYSFS_ATTR_RW(_name)						\
> +		INTEL_GT_RPS_SYSFS_ATTR(_name, 0644, _name##_show, _name##_store,	\
> +					_name##_dev_show, _name##_dev_store)
>  
>  /* The below macros generate static structures */
>  INTEL_GT_RPS_SYSFS_ATTR_RO(act_freq_mhz);
> @@ -475,32 +432,31 @@ INTEL_GT_RPS_SYSFS_ATTR_RO(RP1_freq_mhz);
>  INTEL_GT_RPS_SYSFS_ATTR_RO(RPn_freq_mhz);
>  INTEL_GT_RPS_SYSFS_ATTR_RW(max_freq_mhz);
>  INTEL_GT_RPS_SYSFS_ATTR_RW(min_freq_mhz);
> -
> -static DEVICE_ATTR_RO(vlv_rpe_freq_mhz);
> -
> -#define GEN6_ATTR(s) { \
> -		&dev_attr_##s##_act_freq_mhz.attr, \
> -		&dev_attr_##s##_cur_freq_mhz.attr, \
> -		&dev_attr_##s##_boost_freq_mhz.attr, \
> -		&dev_attr_##s##_max_freq_mhz.attr, \
> -		&dev_attr_##s##_min_freq_mhz.attr, \
> -		&dev_attr_##s##_RP0_freq_mhz.attr, \
> -		&dev_attr_##s##_RP1_freq_mhz.attr, \
> -		&dev_attr_##s##_RPn_freq_mhz.attr, \
> +INTEL_GT_RPS_SYSFS_ATTR_RO(vlv_rpe_freq_mhz);
> +
> +#define GEN6_ATTR(p, s) { \
> +		&p##attr_##s##_act_freq_mhz.attr, \
> +		&p##attr_##s##_cur_freq_mhz.attr, \
> +		&p##attr_##s##_boost_freq_mhz.attr, \
> +		&p##attr_##s##_max_freq_mhz.attr, \
> +		&p##attr_##s##_min_freq_mhz.attr, \
> +		&p##attr_##s##_RP0_freq_mhz.attr, \
> +		&p##attr_##s##_RP1_freq_mhz.attr, \
> +		&p##attr_##s##_RPn_freq_mhz.attr, \
>  		NULL, \
>  	}
>  
> -#define GEN6_RPS_ATTR GEN6_ATTR(rps)
> -#define GEN6_GT_ATTR  GEN6_ATTR(gt)
> +#define GEN6_RPS_ATTR GEN6_ATTR(, rps)
> +#define GEN6_GT_ATTR  GEN6_ATTR(dev_, gt)
>  
>  static const struct attribute * const gen6_rps_attrs[] = GEN6_RPS_ATTR;
>  static const struct attribute * const gen6_gt_attrs[]  = GEN6_GT_ATTR;
>  
> -static ssize_t punit_req_freq_mhz_show(struct device *dev,
> -				       struct device_attribute *attr,
> +static ssize_t punit_req_freq_mhz_show(struct kobject *kobj,
> +				       struct kobj_attribute *attr,
>  				       char *buff)
>  {
> -	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(dev, attr->attr.name);
> +	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(kobj, attr->attr.name);
>  	u32 preq = intel_rps_read_punit_req_frequency(&gt->rps);
>  
>  	return sysfs_emit(buff, "%u\n", preq);
> @@ -508,17 +464,17 @@ static ssize_t punit_req_freq_mhz_show(struct device *dev,
>  
>  struct intel_gt_bool_throttle_attr {
>  	struct attribute attr;
> -	ssize_t (*show)(struct device *dev, struct device_attribute *attr,
> +	ssize_t (*show)(struct kobject *kobj, struct kobj_attribute *attr,
>  			char *buf);
>  	i915_reg_t (*reg32)(struct intel_gt *gt);
>  	u32 mask;
>  };
>  
> -static ssize_t throttle_reason_bool_show(struct device *dev,
> -					 struct device_attribute *attr,
> +static ssize_t throttle_reason_bool_show(struct kobject *kobj,
> +					 struct kobj_attribute *attr,
>  					 char *buff)
>  {
> -	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(dev, attr->attr.name);
> +	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(kobj, attr->attr.name);
>  	struct intel_gt_bool_throttle_attr *t_attr =
>  				(struct intel_gt_bool_throttle_attr *) attr;
>  	bool val = rps_read_mask_mmio(&gt->rps, t_attr->reg32(gt), t_attr->mask);
> @@ -534,7 +490,7 @@ struct intel_gt_bool_throttle_attr attr_##sysfs_func__ = { \
>  	.mask = mask__, \
>  }
>  
> -static DEVICE_ATTR_RO(punit_req_freq_mhz);
> +INTEL_GT_ATTR_RO(punit_req_freq_mhz);
>  static INTEL_GT_RPS_BOOL_ATTR_RO(throttle_reason_status, GT0_PERF_LIMIT_REASONS_MASK);
>  static INTEL_GT_RPS_BOOL_ATTR_RO(throttle_reason_pl1, POWER_LIMIT_1_MASK);
>  static INTEL_GT_RPS_BOOL_ATTR_RO(throttle_reason_pl2, POWER_LIMIT_2_MASK);
> @@ -597,8 +553,8 @@ static const struct attribute *throttle_reason_attrs[] = {
>  #define U8_8_VAL_MASK           0xffff
>  #define U8_8_SCALE_TO_VALUE     "0.00390625"
>  
> -static ssize_t freq_factor_scale_show(struct device *dev,
> -				      struct device_attribute *attr,
> +static ssize_t freq_factor_scale_show(struct kobject *kobj,
> +				      struct kobj_attribute *attr,
>  				      char *buff)
>  {
>  	return sysfs_emit(buff, "%s\n", U8_8_SCALE_TO_VALUE);
> @@ -610,11 +566,11 @@ static u32 media_ratio_mode_to_factor(u32 mode)
>  	return !mode ? mode : 256 / mode;
>  }
>  
> -static ssize_t media_freq_factor_show(struct device *dev,
> -				      struct device_attribute *attr,
> +static ssize_t media_freq_factor_show(struct kobject *kobj,
> +				      struct kobj_attribute *attr,
>  				      char *buff)
>  {
> -	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(dev, attr->attr.name);
> +	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(kobj, attr->attr.name);
>  	struct intel_guc_slpc *slpc = &gt->uc.guc.slpc;
>  	intel_wakeref_t wakeref;
>  	u32 mode;
> @@ -641,11 +597,11 @@ static ssize_t media_freq_factor_show(struct device *dev,
>  	return sysfs_emit(buff, "%u\n", media_ratio_mode_to_factor(mode));
>  }
>  
> -static ssize_t media_freq_factor_store(struct device *dev,
> -				       struct device_attribute *attr,
> +static ssize_t media_freq_factor_store(struct kobject *kobj,
> +				       struct kobj_attribute *attr,
>  				       const char *buff, size_t count)
>  {
> -	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(dev, attr->attr.name);
> +	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(kobj, attr->attr.name);
>  	struct intel_guc_slpc *slpc = &gt->uc.guc.slpc;
>  	u32 factor, mode;
>  	int err;
> @@ -670,11 +626,11 @@ static ssize_t media_freq_factor_store(struct device *dev,
>  	return err ?: count;
>  }
>  
> -static ssize_t media_RP0_freq_mhz_show(struct device *dev,
> -				       struct device_attribute *attr,
> +static ssize_t media_RP0_freq_mhz_show(struct kobject *kobj,
> +				       struct kobj_attribute *attr,
>  				       char *buff)
>  {
> -	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(dev, attr->attr.name);
> +	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(kobj, attr->attr.name);
>  	u32 val;
>  	int err;
>  
> @@ -691,11 +647,11 @@ static ssize_t media_RP0_freq_mhz_show(struct device *dev,
>  	return sysfs_emit(buff, "%u\n", val);
>  }
>  
> -static ssize_t media_RPn_freq_mhz_show(struct device *dev,
> -				       struct device_attribute *attr,
> +static ssize_t media_RPn_freq_mhz_show(struct kobject *kobj,
> +				       struct kobj_attribute *attr,
>  				       char *buff)
>  {
> -	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(dev, attr->attr.name);
> +	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(kobj, attr->attr.name);
>  	u32 val;
>  	int err;
>  
> @@ -712,17 +668,17 @@ static ssize_t media_RPn_freq_mhz_show(struct device *dev,
>  	return sysfs_emit(buff, "%u\n", val);
>  }
>  
> -static DEVICE_ATTR_RW(media_freq_factor);
> -static struct device_attribute dev_attr_media_freq_factor_scale =
> +INTEL_GT_ATTR_RW(media_freq_factor);
> +static struct kobj_attribute attr_media_freq_factor_scale =
>  	__ATTR(media_freq_factor.scale, 0444, freq_factor_scale_show, NULL);
> -static DEVICE_ATTR_RO(media_RP0_freq_mhz);
> -static DEVICE_ATTR_RO(media_RPn_freq_mhz);
> +INTEL_GT_ATTR_RO(media_RP0_freq_mhz);
> +INTEL_GT_ATTR_RO(media_RPn_freq_mhz);
>  
>  static const struct attribute *media_perf_power_attrs[] = {
> -	&dev_attr_media_freq_factor.attr,
> -	&dev_attr_media_freq_factor_scale.attr,
> -	&dev_attr_media_RP0_freq_mhz.attr,
> -	&dev_attr_media_RPn_freq_mhz.attr,
> +	&attr_media_freq_factor.attr,
> +	&attr_media_freq_factor_scale.attr,
> +	&attr_media_RP0_freq_mhz.attr,
> +	&attr_media_RPn_freq_mhz.attr,
>  	NULL
>  };
>  
> @@ -754,20 +710,29 @@ static const struct attribute * const rps_defaults_attrs[] = {
>  	NULL
>  };
>  
> -static int intel_sysfs_rps_init(struct intel_gt *gt, struct kobject *kobj,
> -				const struct attribute * const *attrs)
> +static int intel_sysfs_rps_init(struct intel_gt *gt, struct kobject *kobj)
>  {
> +	const struct attribute * const *attrs;
> +	struct attribute *vlv_attr;
>  	int ret;
>  
>  	if (GRAPHICS_VER(gt->i915) < 6)
>  		return 0;
>  
> +	if (is_object_gt(kobj)) {
> +		attrs = gen6_rps_attrs;
> +		vlv_attr = &attr_rps_vlv_rpe_freq_mhz.attr;
> +	} else {
> +		attrs = gen6_gt_attrs;
> +		vlv_attr = &dev_attr_gt_vlv_rpe_freq_mhz.attr;
> +	}
> +
>  	ret = sysfs_create_files(kobj, attrs);
>  	if (ret)
>  		return ret;
>  
>  	if (IS_VALLEYVIEW(gt->i915) || IS_CHERRYVIEW(gt->i915))
> -		ret = sysfs_create_file(kobj, &dev_attr_vlv_rpe_freq_mhz.attr);
> +		ret = sysfs_create_file(kobj, vlv_attr);
>  
>  	return ret;
>  }
> @@ -778,9 +743,7 @@ void intel_gt_sysfs_pm_init(struct intel_gt *gt, struct kobject *kobj)
>  
>  	intel_sysfs_rc6_init(gt, kobj);
>  
> -	ret = is_object_gt(kobj) ?
> -	      intel_sysfs_rps_init(gt, kobj, gen6_rps_attrs) :
> -	      intel_sysfs_rps_init(gt, kobj, gen6_gt_attrs);
> +	ret = intel_sysfs_rps_init(gt, kobj);
>  	if (ret)
>  		drm_warn(&gt->i915->drm,
>  			 "failed to create gt%u RPS sysfs files (%pe)",
> @@ -790,7 +753,7 @@ void intel_gt_sysfs_pm_init(struct intel_gt *gt, struct kobject *kobj)
>  	if (!is_object_gt(kobj))
>  		return;
>  
> -	ret = sysfs_create_file(kobj, &dev_attr_punit_req_freq_mhz.attr);
> +	ret = sysfs_create_file(kobj, &attr_punit_req_freq_mhz.attr);
>  	if (ret)
>  		drm_warn(&gt->i915->drm,
>  			 "failed to create gt%u punit_req_freq_mhz sysfs (%pe)",
> 
> base-commit: e55427b46852f11ca37f33abb7d7ec76bb4c9ed3
> -- 
> 2.38.0
