Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E133716ABFF
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 17:46:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5C256E5B4;
	Mon, 24 Feb 2020 16:46:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DDDC6E5B4
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Feb 2020 16:46:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP; 24 Feb 2020 08:46:47 -0800
X-IronPort-AV: E=Sophos;i="5.70,480,1574150400"; d="scan'208";a="230707325"
Received: from pmulhall-mobl.ger.corp.intel.com (HELO [10.251.85.135])
 ([10.251.85.135])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 24 Feb 2020 08:46:46 -0800
To: Andi Shyti <andi.shyti@intel.com>
References: <20200219190223.16972-1-andi.shyti@intel.com>
 <20200219193020.17673-1-andi.shyti@intel.com>
 <dd611192-cf41-9538-66bd-d6a1b800bdf7@linux.intel.com>
 <20200224163029.GA1579@intel.intel>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <421b0bd8-6bc6-e6c2-7e08-6d112c57a860@linux.intel.com>
Date: Mon, 24 Feb 2020 16:46:44 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200224163029.GA1579@intel.intel>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v5] drm/i915/gt: make a gt sysfs group and
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


On 24/02/2020 16:30, Andi Shyti wrote:
>>> +void intel_gt_sysfs_register(struct intel_gt *gt)
>>> +{
>>> +	struct kobject *parent = kobject_get(gt_get_parent_obj(gt));
>>> +	int ret;
>>> +
>>> +	ret = kobject_init_and_add(&gt->sysfs_root,
>>> +				   &sysfs_gt_ktype,
>>> +				   parent, "gt");
>>> +	if (ret) {
>>> +		drm_err(&gt->i915->drm, "failed to initialize sysfs file\n");
>>
>> I'd perhaps pin point the failure more by s/file/GT sysfs root/.
> 
> OK
> 
>>> +		kobject_put(&gt->sysfs_root);
>>
>> Is the reference needed for the registration steps? I am thinking if you
>> could kobject_get only once everything worked to simplify.
> 
> I haven't really understood what you mean here. Are you saying
> that kobject_put not needed? in the lib/kobject.c it says as
> comment to kobject_init_and_add():
> 
> "
>   * If this function returns an error, kobject_put() must be called to
>   * properly clean up the memory associated with the object.  This is the
>   * same type of error handling after a call to kobject_add() and kobject
>   * lifetime rules are the same here.
>   */
> "

My mistake, I confused the two objects.

>>> +	ret = sysfs_create_file(&gt->sysfs_root, &dev_attr_gt_info.attr);
>>> +	if (ret)
>>> +		drm_err(&gt->i915->drm, "failed to create sysfs gt info files\n");
>>> +
>>> +	intel_gt_sysfs_pm_init(gt, &gt->sysfs_root);
>>
>> If you put this first you can avoid the goto I think which makes the
>> function smaller.
> 
> True!
> 
>>> +void intel_gt_sysfs_unregister(struct intel_gt *gt)
>>> +{
>>> +	struct kobject *parent = gt_get_parent_obj(gt);
>>> +
>>> +	/*
>>> +	 * the name gt tells us wether sysfs_root
>>> +	 * object was initialized properly
>>> +	 */
>>> +	if (!strcmp(gt->sysfs_root.name, "gt"))
>>> +		kobject_put(&gt->sysfs_root);
>>
>> Slightly nicer would be looking at  kobj->state_initialized for this check I
>> think. Or even kref_get_unless_zero on kobj->kref? Ugliness there is double
>> put on sucess which makes me ask whether holding a reference on parent is
>> even needed? It can't go away so perhaps it isn't.
> 
> I'd rather use the state_initialized, even though I don't trust
> its value if the kobject has failed to initialise earlier, I
> trust it only if it's '1', maybe I'm paranoic.

But is the reference even needed?

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
