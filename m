Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9CBE6BAD82
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Mar 2023 11:21:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4936E10E994;
	Wed, 15 Mar 2023 10:21:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C371010E994
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Mar 2023 10:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678875668; x=1710411668;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=0MXF/4WjU4+mncyxIBsoVo+H7ZfmOWgyhjS8WTT41qs=;
 b=mMulJTjOpeCfvwFSdy6d9a8quZeiDuqMxPVV36aN43Vc3re2Mz7cZg7e
 OhPcrrWBLL/opmxwAlHB/DyujoOXeJJMU6tk0Kd64C4AWV4Lpdhg/6afC
 NcTjHYWlpvSQZhay3sRSg8xIBtpZ2a1A79npogJyY3VSEmy/RoJ/6H/1N
 RQkv09DuRnX2oy5rOsgWv5HK6J+ii2YAzaNtFao0erbpvUFI5W0mkYqrR
 8idsCjDRIZIIJTxr9qb44ASy7ctojYGAhIaFD7w9M4c1tKXwRVH83uf0V
 3hdOmP2Y0G3OaPTOIn75WD4LArhOwafcM7GmZtdUbfxycP9cZIJBtEvvI Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="336353888"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="336353888"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 03:21:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="711878170"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="711878170"
Received: from wujunyox-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.59.32])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 03:21:06 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Das, Nirmoy" <nirmoy.das@linux.intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <2c3efd89-ca2f-6d89-7602-9805d9974fe0@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230309081645.385650-1-jani.nikula@intel.com>
 <2c3efd89-ca2f-6d89-7602-9805d9974fe0@linux.intel.com>
Date: Wed, 15 Mar 2023 12:21:04 +0200
Message-ID: <87o7ou5n8v.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 09 Mar 2023, "Das, Nirmoy" <nirmoy.das@linux.intel.com> wrote:
> On 3/9/2023 9:16 AM, Jani Nikula wrote:
>> There's no need for any of these to be mutable, constify:
>>
>> drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000020 files.0
>> drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000050 files.1
>> drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000038 preempt_timeout_attr
>> drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000038 timeslice_duration_attr
>> drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000038 timeslice_duration_def
>> drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000038 preempt_timeout_def
>> drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000038 max_spin_def
>> drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000038 stop_timeout_def
>> drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000038 heartbeat_interval_def
>> drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000038 name_attr
>> drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000038 class_attr
>> drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000038 inst_attr
>> drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000038 mmio_attr
>> drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000038 caps_attr
>> drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000038 all_caps_attr
>> drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000038 max_spin_attr
>> drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000038 stop_timeout_attr
>> drivers/gpu/drm/i915/gt/sysfs_engines.o: .data	0000000000000038 heartbeat_interval_attr
>>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
>
> Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

Thanks for the reviews, pushed to drm-intel-gt-next.

BR,
Jani.

>
>> ---
>>   drivers/gpu/drm/i915/gt/sysfs_engines.c | 36 ++++++++++++-------------
>>   1 file changed, 18 insertions(+), 18 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/sysfs_engines.c b/drivers/gpu/drm/i915/gt/sysfs_engines.c
>> index 7eae3265f8cd..021f51d9b456 100644
>> --- a/drivers/gpu/drm/i915/gt/sysfs_engines.c
>> +++ b/drivers/gpu/drm/i915/gt/sysfs_engines.c
>> @@ -27,7 +27,7 @@ name_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>>   	return sysfs_emit(buf, "%s\n", kobj_to_engine(kobj)->name);
>>   }
>>   
>> -static struct kobj_attribute name_attr =
>> +static const struct kobj_attribute name_attr =
>>   __ATTR(name, 0444, name_show, NULL);
>>   
>>   static ssize_t
>> @@ -36,7 +36,7 @@ class_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>>   	return sysfs_emit(buf, "%d\n", kobj_to_engine(kobj)->uabi_class);
>>   }
>>   
>> -static struct kobj_attribute class_attr =
>> +static const struct kobj_attribute class_attr =
>>   __ATTR(class, 0444, class_show, NULL);
>>   
>>   static ssize_t
>> @@ -45,7 +45,7 @@ inst_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>>   	return sysfs_emit(buf, "%d\n", kobj_to_engine(kobj)->uabi_instance);
>>   }
>>   
>> -static struct kobj_attribute inst_attr =
>> +static const struct kobj_attribute inst_attr =
>>   __ATTR(instance, 0444, inst_show, NULL);
>>   
>>   static ssize_t
>> @@ -54,7 +54,7 @@ mmio_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>>   	return sysfs_emit(buf, "0x%x\n", kobj_to_engine(kobj)->mmio_base);
>>   }
>>   
>> -static struct kobj_attribute mmio_attr =
>> +static const struct kobj_attribute mmio_attr =
>>   __ATTR(mmio_base, 0444, mmio_show, NULL);
>>   
>>   static const char * const vcs_caps[] = {
>> @@ -125,7 +125,7 @@ caps_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>>   	return __caps_show(engine, engine->uabi_capabilities, buf, true);
>>   }
>>   
>> -static struct kobj_attribute caps_attr =
>> +static const struct kobj_attribute caps_attr =
>>   __ATTR(capabilities, 0444, caps_show, NULL);
>>   
>>   static ssize_t
>> @@ -134,7 +134,7 @@ all_caps_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>>   	return __caps_show(kobj_to_engine(kobj), -1, buf, false);
>>   }
>>   
>> -static struct kobj_attribute all_caps_attr =
>> +static const struct kobj_attribute all_caps_attr =
>>   __ATTR(known_capabilities, 0444, all_caps_show, NULL);
>>   
>>   static ssize_t
>> @@ -183,7 +183,7 @@ max_spin_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>>   	return sysfs_emit(buf, "%lu\n", engine->props.max_busywait_duration_ns);
>>   }
>>   
>> -static struct kobj_attribute max_spin_attr =
>> +static const struct kobj_attribute max_spin_attr =
>>   __ATTR(max_busywait_duration_ns, 0644, max_spin_show, max_spin_store);
>>   
>>   static ssize_t
>> @@ -194,7 +194,7 @@ max_spin_default(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>>   	return sysfs_emit(buf, "%lu\n", engine->defaults.max_busywait_duration_ns);
>>   }
>>   
>> -static struct kobj_attribute max_spin_def =
>> +static const struct kobj_attribute max_spin_def =
>>   __ATTR(max_busywait_duration_ns, 0444, max_spin_default, NULL);
>>   
>>   static ssize_t
>> @@ -237,7 +237,7 @@ timeslice_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>>   	return sysfs_emit(buf, "%lu\n", engine->props.timeslice_duration_ms);
>>   }
>>   
>> -static struct kobj_attribute timeslice_duration_attr =
>> +static const struct kobj_attribute timeslice_duration_attr =
>>   __ATTR(timeslice_duration_ms, 0644, timeslice_show, timeslice_store);
>>   
>>   static ssize_t
>> @@ -248,7 +248,7 @@ timeslice_default(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>>   	return sysfs_emit(buf, "%lu\n", engine->defaults.timeslice_duration_ms);
>>   }
>>   
>> -static struct kobj_attribute timeslice_duration_def =
>> +static const struct kobj_attribute timeslice_duration_def =
>>   __ATTR(timeslice_duration_ms, 0444, timeslice_default, NULL);
>>   
>>   static ssize_t
>> @@ -288,7 +288,7 @@ stop_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>>   	return sysfs_emit(buf, "%lu\n", engine->props.stop_timeout_ms);
>>   }
>>   
>> -static struct kobj_attribute stop_timeout_attr =
>> +static const struct kobj_attribute stop_timeout_attr =
>>   __ATTR(stop_timeout_ms, 0644, stop_show, stop_store);
>>   
>>   static ssize_t
>> @@ -299,7 +299,7 @@ stop_default(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>>   	return sysfs_emit(buf, "%lu\n", engine->defaults.stop_timeout_ms);
>>   }
>>   
>> -static struct kobj_attribute stop_timeout_def =
>> +static const struct kobj_attribute stop_timeout_def =
>>   __ATTR(stop_timeout_ms, 0444, stop_default, NULL);
>>   
>>   static ssize_t
>> @@ -344,7 +344,7 @@ preempt_timeout_show(struct kobject *kobj, struct kobj_attribute *attr,
>>   	return sysfs_emit(buf, "%lu\n", engine->props.preempt_timeout_ms);
>>   }
>>   
>> -static struct kobj_attribute preempt_timeout_attr =
>> +static const struct kobj_attribute preempt_timeout_attr =
>>   __ATTR(preempt_timeout_ms, 0644, preempt_timeout_show, preempt_timeout_store);
>>   
>>   static ssize_t
>> @@ -356,7 +356,7 @@ preempt_timeout_default(struct kobject *kobj, struct kobj_attribute *attr,
>>   	return sysfs_emit(buf, "%lu\n", engine->defaults.preempt_timeout_ms);
>>   }
>>   
>> -static struct kobj_attribute preempt_timeout_def =
>> +static const struct kobj_attribute preempt_timeout_def =
>>   __ATTR(preempt_timeout_ms, 0444, preempt_timeout_default, NULL);
>>   
>>   static ssize_t
>> @@ -400,7 +400,7 @@ heartbeat_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>>   	return sysfs_emit(buf, "%lu\n", engine->props.heartbeat_interval_ms);
>>   }
>>   
>> -static struct kobj_attribute heartbeat_interval_attr =
>> +static const struct kobj_attribute heartbeat_interval_attr =
>>   __ATTR(heartbeat_interval_ms, 0644, heartbeat_show, heartbeat_store);
>>   
>>   static ssize_t
>> @@ -411,7 +411,7 @@ heartbeat_default(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>>   	return sysfs_emit(buf, "%lu\n", engine->defaults.heartbeat_interval_ms);
>>   }
>>   
>> -static struct kobj_attribute heartbeat_interval_def =
>> +static const struct kobj_attribute heartbeat_interval_def =
>>   __ATTR(heartbeat_interval_ms, 0444, heartbeat_default, NULL);
>>   
>>   static void kobj_engine_release(struct kobject *kobj)
>> @@ -447,7 +447,7 @@ kobj_engine(struct kobject *dir, struct intel_engine_cs *engine)
>>   
>>   static void add_defaults(struct kobj_engine *parent)
>>   {
>> -	static const struct attribute *files[] = {
>> +	static const struct attribute * const files[] = {
>>   		&max_spin_def.attr,
>>   		&stop_timeout_def.attr,
>>   #if CONFIG_DRM_I915_HEARTBEAT_INTERVAL
>> @@ -483,7 +483,7 @@ static void add_defaults(struct kobj_engine *parent)
>>   
>>   void intel_engines_add_sysfs(struct drm_i915_private *i915)
>>   {
>> -	static const struct attribute *files[] = {
>> +	static const struct attribute * const files[] = {
>>   		&name_attr.attr,
>>   		&class_attr.attr,
>>   		&inst_attr.attr,

-- 
Jani Nikula, Intel Open Source Graphics Center
