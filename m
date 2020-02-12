Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB54A15B38E
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2020 23:24:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC7686E11B;
	Wed, 12 Feb 2020 22:24:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAF446E11E
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Feb 2020 22:24:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 14:24:40 -0800
X-IronPort-AV: E=Sophos;i="5.70,434,1574150400"; d="scan'208";a="227016772"
Received: from ayashfe-mobl1.ger.corp.intel.com (HELO [10.251.86.31])
 ([10.251.86.31])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 12 Feb 2020 14:24:38 -0800
To: Andi Shyti <andi@etezian.org>
References: <20200211181027.5329-1-andi@etezian.org>
 <2defb42c-9fcc-17f8-0593-8e02f75f9ba4@linux.intel.com>
 <20200211210625.GA6386@jack.zhora.eu>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <22f92d89-242d-19f1-9a94-6b0bedec517c@linux.intel.com>
Date: Wed, 12 Feb 2020 22:24:36 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200211210625.GA6386@jack.zhora.eu>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gt: make a gt sysfs group and
 move power management files
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


On 11/02/2020 21:06, Andi Shyti wrote:
> Hi Tvrtko,
> 
>>> +void intel_gt_sysfs_register(struct intel_gt *gt)
>>> +{
>>> +	struct kobject *parent = kobject_get(&gt->i915->drm.primary->kdev->kobj);
>>
>> Does this needs a kobject_put to balance out somewhere?
> 
> Yes, I forgot the two kobject_put that are needed.
> 
>>> +	int ret;
>>> +
>>> +	gt->kobj = kobject_create_and_add("gt", parent);
>>> +	if (!gt->kobj) {
>>> +		pr_err("failed to initialize sysfs file\n");
>>> +		return;
>>> +	}
>>> +
>>> +	dev_set_drvdata(kobj_to_dev(gt->kobj), gt);
>>> +
>>> +	ret = sysfs_create_files(gt->kobj, gt_attrs);
>>> +	if (ret)
>>> +		pr_err("failed to create sysfs gt info files\n");
>>
>> I can't remember which log helper takes in the device and prefixes that
>> string but I think it could be useful here, since the error is otherwise
>> eaten.
> 
> pr_* is used a lot in gt/. Playing with the dev pointer I
> can use "dev_err(dev,...)"
> 
>>> +void intel_gt_sysfs_unregister(struct intel_gt *gt)
>>> +{
>>> +	if (!gt->kobj)
>>> +		return;
>>> +
>>> +	intel_gt_sysfs_pm_remove(gt, gt->kobj);
>>> +	sysfs_remove_files(gt->kobj, gt_attrs);
>>
>> Why is this asymmetrical to creation?
> 
> Because in V1 gt_attrs and whatever was created in sysfs_gt_pm
> was in the same group, but it desn't matter.
> 
>> I mean you call intel_gt_sysfs_pm_init
>> two times with different roots, so why not intel_gt_sysfs_pm_remove also
>> twice with different roots?
> 
> Because I forgot them in the cleanups :)

Next version incoming soon? :)

>>> +	/*
>>> +	 * We are interested at knowing from where the interface
>>> +	 * has been called, whether it's called from gt/* or from
>>> +	 * the parent directory.
>>> +	 * From the interface position it depends also the value of
>>> +	 * the private data.
>>> +	 * If the interface is called from gt/ then private data is
>>> +	 * of the "struct intel_gt *" type, otherwise it's * a
>>> +	 * "struct drm_i915_private *" type.
>>> +	 */
>>> +	if (strcmp(kobj->name, "gt")) {
>>> +		pr_warn("the interface is obsolete, use gt/\n");
>>
>> I think the message will need to be a bit more verbose since it is intended
>> for users. I don't have any suggestions straight away apart from googling to
>> find similar examples from the past and other subsystems.
> 
> Yes, I couldn't come up with a better message in 80 characters,
> and I can use dev_warn instead of pr_warn.

Maybe we even need to log this once. Well we may need to log the 
offending process name/pid. Not sure if we can manage once on top of 
that.. sounds too hard. So maybe just name/pid.

> 
>>> +static ssize_t rc6_enable_show(struct device *dev,
>>> +			       struct device_attribute *attr,
>>> +			       char *buff)
>>> +{
>>> +	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(dev);
>>
>> The rest of code is unchanged apart from this same line in all show/store
>> vfuncs?
> 
> yes, more or less.

Cool, just so I know what I don't have to cross-reference too much.

Regards,

Tvrtko

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
