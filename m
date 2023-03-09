Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 630F86B247A
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Mar 2023 13:47:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCCBC10E807;
	Thu,  9 Mar 2023 12:47:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9BC910E17A
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Mar 2023 12:47:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678366047; x=1709902047;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=YJjZIu5MftmFycMHInQwrrMfwImtSZhB1fuERUCI1Xo=;
 b=Bt0hyaHYODHRF2y9PPh/WCM2xan2/FF7qMbF7OO7Qag1GQaAxm7+PeNk
 jS+j3AiCvSXAicoItQJP1BPfBBUBILpQZBTmkzFQOHKPqk9g6eiNPyxsd
 BZMQ8vQLYT3AUBkscQ0YfzjwMKY6gkE6pTfz39dzlcECK9XrupYd/paGq
 5nfsVPTPbx0DH+TtYLn8ra3GW++A8x3fT4BMUp77F7jpv1fpo2pO8ugJf
 L38ke3Bvh9HG4GsK+7uzzU7xG0t6OaVENDN+yjjrvYIKtZMK6L+tUh0ZU
 a8MDZIAzOKLjn3DWcwNSe2cxpfQVGYj4EZb7Xc4noYWsNPe1zO/A1LqoH w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="337961376"
X-IronPort-AV: E=Sophos;i="5.98,246,1673942400"; d="scan'208";a="337961376"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 04:47:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="654736293"
X-IronPort-AV: E=Sophos;i="5.98,246,1673942400"; d="scan'208";a="654736293"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.145])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 04:47:25 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <48c0b321-247d-ca11-6b6c-95b677b49a94@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230309081645.385650-1-jani.nikula@intel.com>
 <48c0b321-247d-ca11-6b6c-95b677b49a94@intel.com>
Date: Thu, 09 Mar 2023 14:47:19 +0200
Message-ID: <87edpy9jmw.fsf@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 09 Mar 2023, Andrzej Hajda <andrzej.hajda@intel.com> wrote:
> On 09.03.2023 09:16, Jani Nikula wrote:
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
> There are more, dunno if all can be const:
>
> $ git grep -c '^static struct kobj_attribute' -- drivers/gpu/drm/i915/
> drivers/gpu/drm/i915/gt/intel_gt_sysfs.c:1
> drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:3
> drivers/gpu/drm/i915/gt/sysfs_engines.c:16

Looks like some could, but not all. Anything that ends up in struct
attribute_group won't work because the attrs and bin_attrs members are
non-const pointers.

>
> For this:
> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Thanks.

>
> Regards
> Andrzej
>
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
>

-- 
Jani Nikula, Intel Open Source Graphics Center
