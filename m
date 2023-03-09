Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 74A026B2202
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Mar 2023 11:57:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C1E210E7DD;
	Thu,  9 Mar 2023 10:57:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53E0610E7DD
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Mar 2023 10:57:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678359458; x=1709895458;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=kdZeVpEWMyf+6lukR4Y0cq6UWrpfuhZG8FivELm3seg=;
 b=XotBrlRdoCJFCWHnVMLFnJRWcL9TIfPMcR5dSTwY5w4AuNWO6LCtH66s
 jtPZ18DbHFr89f5iaxzITjeykXK/TUb40P9PcTC/4q+fxbfHEE7H14cWa
 qptoVKwPQFl3e++vrzbcTpa5vyijIJn6EzUIvB1vAZwY8LkGMTsTmn2yB
 OI1KdaKSayeh8Y6w6E7oL3pp90JClEwoXY0ZSf5osXswQHdcuEHeFKtMn
 3no/rLVfoJ0O6HzOoicy2hlLLqxh68hlNk1ofrm3yi8HAEmxwee1+7Aum
 TQ3lVJaxG5RgxMj3jlwHgbiCnX6ewl/1qmbQm3rpbxPCbU5eN+d/PV3MZ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="335120517"
X-IronPort-AV: E=Sophos;i="5.98,246,1673942400"; d="scan'208";a="335120517"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 02:57:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="654711329"
X-IronPort-AV: E=Sophos;i="5.98,246,1673942400"; d="scan'208";a="654711329"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.18.176])
 ([10.213.18.176])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 02:57:36 -0800
Message-ID: <48c0b321-247d-ca11-6b6c-95b677b49a94@intel.com>
Date: Thu, 9 Mar 2023 11:57:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.8.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230309081645.385650-1-jani.nikula@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20230309081645.385650-1-jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: make kobj attributes const
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 09.03.2023 09:16, Jani Nikula wrote:
> There's no need for any of these to be mutable, constify:
> 
> drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000020 files.0
> drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000050 files.1
> drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000038 preempt_timeout_attr
> drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000038 timeslice_duration_attr
> drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000038 timeslice_duration_def
> drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000038 preempt_timeout_def
> drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000038 max_spin_def
> drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000038 stop_timeout_def
> drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000038 heartbeat_interval_def
> drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000038 name_attr
> drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000038 class_attr
> drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000038 inst_attr
> drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000038 mmio_attr
> drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000038 caps_attr
> drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000038 all_caps_attr
> drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000038 max_spin_attr
> drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000038 stop_timeout_attr
> drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000038 heartbeat_interval_attr
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

There are more, dunno if all can be const:

$ git grep -c '^static struct kobj_attribute' -- drivers/gpu/drm/i915/
drivers/gpu/drm/i915/gt/intel_gt_sysfs.c:1
drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:3
drivers/gpu/drm/i915/gt/sysfs_engines.c:16

For this:
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej


> ---
>   drivers/gpu/drm/i915/gt/sysfs_engines.c | 36 ++++++++++++-------------
>   1 file changed, 18 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/sysfs_engines.c b/drivers/gpu/drm/i915/gt/sysfs_engines.c
> index 7eae3265f8cd..021f51d9b456 100644
> --- a/drivers/gpu/drm/i915/gt/sysfs_engines.c
> +++ b/drivers/gpu/drm/i915/gt/sysfs_engines.c
> @@ -27,7 +27,7 @@ name_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>   	return sysfs_emit(buf, "%s\n", kobj_to_engine(kobj)->name);
>   }
>   
> -static struct kobj_attribute name_attr =
> +static const struct kobj_attribute name_attr =
>   __ATTR(name, 0444, name_show, NULL);
>   
>   static ssize_t
> @@ -36,7 +36,7 @@ class_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>   	return sysfs_emit(buf, "%d\n", kobj_to_engine(kobj)->uabi_class);
>   }
>   
> -static struct kobj_attribute class_attr =
> +static const struct kobj_attribute class_attr =
>   __ATTR(class, 0444, class_show, NULL);
>   
>   static ssize_t
> @@ -45,7 +45,7 @@ inst_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>   	return sysfs_emit(buf, "%d\n", kobj_to_engine(kobj)->uabi_instance);
>   }
>   
> -static struct kobj_attribute inst_attr =
> +static const struct kobj_attribute inst_attr =
>   __ATTR(instance, 0444, inst_show, NULL);
>   
>   static ssize_t
> @@ -54,7 +54,7 @@ mmio_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>   	return sysfs_emit(buf, "0x%x\n", kobj_to_engine(kobj)->mmio_base);
>   }
>   
> -static struct kobj_attribute mmio_attr =
> +static const struct kobj_attribute mmio_attr =
>   __ATTR(mmio_base, 0444, mmio_show, NULL);
>   
>   static const char * const vcs_caps[] = {
> @@ -125,7 +125,7 @@ caps_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>   	return __caps_show(engine, engine->uabi_capabilities, buf, true);
>   }
>   
> -static struct kobj_attribute caps_attr =
> +static const struct kobj_attribute caps_attr =
>   __ATTR(capabilities, 0444, caps_show, NULL);
>   
>   static ssize_t
> @@ -134,7 +134,7 @@ all_caps_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>   	return __caps_show(kobj_to_engine(kobj), -1, buf, false);
>   }
>   
> -static struct kobj_attribute all_caps_attr =
> +static const struct kobj_attribute all_caps_attr =
>   __ATTR(known_capabilities, 0444, all_caps_show, NULL);
>   
>   static ssize_t
> @@ -183,7 +183,7 @@ max_spin_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>   	return sysfs_emit(buf, "%lu\n", engine->props.max_busywait_duration_ns);
>   }
>   
> -static struct kobj_attribute max_spin_attr =
> +static const struct kobj_attribute max_spin_attr =
>   __ATTR(max_busywait_duration_ns, 0644, max_spin_show, max_spin_store);
>   
>   static ssize_t
> @@ -194,7 +194,7 @@ max_spin_default(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>   	return sysfs_emit(buf, "%lu\n", engine->defaults.max_busywait_duration_ns);
>   }
>   
> -static struct kobj_attribute max_spin_def =
> +static const struct kobj_attribute max_spin_def =
>   __ATTR(max_busywait_duration_ns, 0444, max_spin_default, NULL);
>   
>   static ssize_t
> @@ -237,7 +237,7 @@ timeslice_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>   	return sysfs_emit(buf, "%lu\n", engine->props.timeslice_duration_ms);
>   }
>   
> -static struct kobj_attribute timeslice_duration_attr =
> +static const struct kobj_attribute timeslice_duration_attr =
>   __ATTR(timeslice_duration_ms, 0644, timeslice_show, timeslice_store);
>   
>   static ssize_t
> @@ -248,7 +248,7 @@ timeslice_default(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>   	return sysfs_emit(buf, "%lu\n", engine->defaults.timeslice_duration_ms);
>   }
>   
> -static struct kobj_attribute timeslice_duration_def =
> +static const struct kobj_attribute timeslice_duration_def =
>   __ATTR(timeslice_duration_ms, 0444, timeslice_default, NULL);
>   
>   static ssize_t
> @@ -288,7 +288,7 @@ stop_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>   	return sysfs_emit(buf, "%lu\n", engine->props.stop_timeout_ms);
>   }
>   
> -static struct kobj_attribute stop_timeout_attr =
> +static const struct kobj_attribute stop_timeout_attr =
>   __ATTR(stop_timeout_ms, 0644, stop_show, stop_store);
>   
>   static ssize_t
> @@ -299,7 +299,7 @@ stop_default(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>   	return sysfs_emit(buf, "%lu\n", engine->defaults.stop_timeout_ms);
>   }
>   
> -static struct kobj_attribute stop_timeout_def =
> +static const struct kobj_attribute stop_timeout_def =
>   __ATTR(stop_timeout_ms, 0444, stop_default, NULL);
>   
>   static ssize_t
> @@ -344,7 +344,7 @@ preempt_timeout_show(struct kobject *kobj, struct kobj_attribute *attr,
>   	return sysfs_emit(buf, "%lu\n", engine->props.preempt_timeout_ms);
>   }
>   
> -static struct kobj_attribute preempt_timeout_attr =
> +static const struct kobj_attribute preempt_timeout_attr =
>   __ATTR(preempt_timeout_ms, 0644, preempt_timeout_show, preempt_timeout_store);
>   
>   static ssize_t
> @@ -356,7 +356,7 @@ preempt_timeout_default(struct kobject *kobj, struct kobj_attribute *attr,
>   	return sysfs_emit(buf, "%lu\n", engine->defaults.preempt_timeout_ms);
>   }
>   
> -static struct kobj_attribute preempt_timeout_def =
> +static const struct kobj_attribute preempt_timeout_def =
>   __ATTR(preempt_timeout_ms, 0444, preempt_timeout_default, NULL);
>   
>   static ssize_t
> @@ -400,7 +400,7 @@ heartbeat_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>   	return sysfs_emit(buf, "%lu\n", engine->props.heartbeat_interval_ms);
>   }
>   
> -static struct kobj_attribute heartbeat_interval_attr =
> +static const struct kobj_attribute heartbeat_interval_attr =
>   __ATTR(heartbeat_interval_ms, 0644, heartbeat_show, heartbeat_store);
>   
>   static ssize_t
> @@ -411,7 +411,7 @@ heartbeat_default(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>   	return sysfs_emit(buf, "%lu\n", engine->defaults.heartbeat_interval_ms);
>   }
>   
> -static struct kobj_attribute heartbeat_interval_def =
> +static const struct kobj_attribute heartbeat_interval_def =
>   __ATTR(heartbeat_interval_ms, 0444, heartbeat_default, NULL);
>   
>   static void kobj_engine_release(struct kobject *kobj)
> @@ -447,7 +447,7 @@ kobj_engine(struct kobject *dir, struct intel_engine_cs *engine)
>   
>   static void add_defaults(struct kobj_engine *parent)
>   {
> -	static const struct attribute *files[] = {
> +	static const struct attribute * const files[] = {
>   		&max_spin_def.attr,
>   		&stop_timeout_def.attr,
>   #if CONFIG_DRM_I915_HEARTBEAT_INTERVAL
> @@ -483,7 +483,7 @@ static void add_defaults(struct kobj_engine *parent)
>   
>   void intel_engines_add_sysfs(struct drm_i915_private *i915)
>   {
> -	static const struct attribute *files[] = {
> +	static const struct attribute * const files[] = {
>   		&name_attr.attr,
>   		&class_attr.attr,
>   		&inst_attr.attr,

