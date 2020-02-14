Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F1915D8A3
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 14:38:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE4BC6E7D7;
	Fri, 14 Feb 2020 13:38:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC91E6E7D7
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2020 13:38:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Feb 2020 05:38:16 -0800
X-IronPort-AV: E=Sophos;i="5.70,440,1574150400"; d="scan'208";a="223018830"
Received: from ayashfe-mobl1.ger.corp.intel.com (HELO [10.251.86.31])
 ([10.251.86.31])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 14 Feb 2020 05:38:15 -0800
To: Andi Shyti <andi.shyti@intel.com>
References: <20200214110308.2268-1-andi.shyti@intel.com>
 <aa7b70a5-149d-5c6b-756c-823c03a0df2b@linux.intel.com>
 <20200214131619.GA2502@intel.intel>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <471dd284-eb06-1240-018a-a86899031fdb@linux.intel.com>
Date: Fri, 14 Feb 2020 13:38:12 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200214131619.GA2502@intel.intel>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: make a gt sysfs group and move
 power management files
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 14/02/2020 13:16, Andi Shyti wrote:
> Hi Tvrtko,
> 
>>> The GT has its own properties and in sysfs they should be grouped
>>> in the 'gt/' directory.
>>>
>>> Create the 'gt/' directory in sysfs and move the power management
>>> related files.
>>
>> Can you paste the new and legacy paths in the commit message?
> 
> sure!
> 
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
>>> index 96890dd12b5f..552a27cc0622 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
>>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
>>> @@ -32,6 +32,7 @@ struct intel_gt {
>>>    	struct drm_i915_private *i915;
>>>    	struct intel_uncore *uncore;
>>>    	struct i915_ggtt *ggtt;
>>> +	struct kobject kobj;
>>
>> sysfs_root or something like would perhaps be more descriptive?
> 
> it's a kobj, but yes, I can call it that.
> 
>>> +static inline struct kobject *gt_to_parent_obj(struct intel_gt *gt)
>>> +{
>>> +	return kobject_get(&gt->i915->drm.primary->kdev->kobj);
>>
>> It's a bit surprising X_to_Y helper get a reference as well, no?
>> gt_get_parent_obj perhaps? But where is this released?
> 
> sure!
> 
> the kobject put is handled down, for all the cases, have I missed
> any?
> 
>>> +}
>>> +
>>> +static ssize_t gt_info_show(struct device *dev,
>>> +			    struct device_attribute *attr,
>>> +			    char *buff)
>>> +{
>>> +	return snprintf(buff, PAGE_SIZE, "0\n");
>>> +}
>>> +
>>> +static DEVICE_ATTR_RO(gt_info);
>>> +
>>> +static void sysfs_gt_kobj_release(struct kobject *kobj)
>>> +{
>>> +	struct intel_gt *gt = kobj_to_gt(kobj);
>>> +
>>> +	drm_info(&gt->i915->drm, "releasing interface\n");
>>
>> Debugging remnants.
> 
> I wanted to fill this function with a goodbye message :)
> 
>>> +void intel_gt_sysfs_register(struct intel_gt *gt)
>>> +{
>>> +	struct kobject *kparent = gt_to_parent_obj(gt);
>>> +	int ret;
>>> +
>>> +	ret = kobject_init_and_add(&gt->kobj, &sysfs_gt_ktype, kparent, "gt");
>>> +	if (ret) {
>>> +		drm_err(&gt->i915->drm, "failed to initialize sysfs file\n");
>>> +		kobject_put(&gt->kobj);
>>
>> So you want gt->kobj to be embedded struct and you want to then override the
>> release vfunc so it is not freed, but what is the specific reason you want
>> it embedded?
> 
> it looked to me like the cleanest way.
> 
> There is no real "struct device" that is containing the object I
> am creating, sot that the set_drvdata() was producing some
> unwanted effects. Embedding it in the gt, I can always get
> easily to the gt structure containign the kobject.

Got it.

> 
>>> +void intel_gt_sysfs_unregister(struct intel_gt *gt)
>>> +{
>>> +	struct kobject *root = gt_to_parent_obj(gt);
>>> +
>>> +	if (&gt->kobj) {
>>
>> This is always true.
> 
> remannt from a vim replace command :)
> 
>>> +		sysfs_remove_file(&gt->kobj, &dev_attr_gt_info.attr);
>>> +		intel_gt_sysfs_pm_remove(gt, &gt->kobj);
>>> +		kobject_put(&gt->kobj);
>>
>> I think kobject_put is enough to tear down the whole hierarchy so you could
>> simplify this.
> 
> Uh! forgot that kobject was cleaning up everythign. Thanks!
> 
>>> +	}
>>> +
>>> +	intel_gt_sysfs_pm_remove(gt, root);
>>> +	kobject_put(root);
>>
>> Maybe stick to the same terminology regarding root and parent.
> 
> yes.
> 
>> Get/put on the parent looks unbalanced. Both register and unregister take a
>> reference and only unregister releases it. But do you even need a reference?
> 
> why? I take it here:
> 
> static inline struct kobject *gt_to_parent_obj(struct intel_gt *gt)
> {
> 	return kobject_get(&gt->i915->drm.primary->kdev->kobj);
> }
> 
> at the beginning (when the driver is loaded) and I release it at
> the end (when the driver is unloaded). Am I not seeing something?

Gt_to_parent_obj at the top of intel_gt_sysfs_register balances out with 
the put at the end of the same function. What balances out 
gt_to_parent_obj from intel_gt_sysfs_register?

> 
>>> +struct intel_gt *intel_gt_sysfs_get_drvdata(struct device *dev)
>>> +{
>>> +	struct kobject *kobj = &dev->kobj;
>>> +	/*
>>> +	 * We are interested at knowing from where the interface
>>> +	 * has been called, whether it's called from gt/ or from
>>> +	 * the parent directory.
>>> +	 * From the interface position it depends also the value of
>>> +	 * the private data.
>>> +	 * If the interface is called from gt/ then private data is
>>> +	 * of the "struct intel_gt *" type, otherwise it's * a
>>> +	 * "struct drm_i915_private *" type.
>>> +	 */
>>> +	if (strcmp(dev->kobj.name, "gt")) {
>>> +		struct drm_i915_private *i915 = kdev_minor_to_i915(dev);
>>> +
>>> +		drm_warn(&i915->drm, "the interface is obsolete, use gt/\n");
>>
>> Can you log current->name & pid?
>>
>> I am also thinking is a level down from warn would be better. Notice sounds
>> intuitively correct to me.
> 
> I swear, I thought hard to come up with a meaningful message, but
> that's the best I came up with.

At least we need to mention it is about sysfs, it needs to be helpful 
for the userspace developer/user to know what is being access and from 
where.

I suggested to google for this. This is what I came up with as an example:

[  775.385966] batman_adv: [Deprecated]: batadv-vis (pid 3251) Use of 
sysfs file "iface_status".
[  775.385966] Use batadv genl family instead

I am sure there are more examples, I remember many procfs and sysfs 
deprecated interfaces from the past.

>> I am also tempted by the _once alternative, but then it makes less sense to
>> include name & pid.
> 
> It's true, it can be an unrelenting message, and I thought of it,
> but if the user is resilient at reading out from the wrong
> directory, why shouldn't I :)

Because we always try to avoid emitting spammy logs when they can be 
easily triggered by userspace. Can we do rate limit? I think that could 
work well with logging the process name & pid.

Also, we need an entry in Documentation/ABI/obsolete/.

Regards,

Tvrtko

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
