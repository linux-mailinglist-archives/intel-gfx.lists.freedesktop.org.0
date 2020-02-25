Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A3BD16BBF7
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 09:39:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FAB26EA14;
	Tue, 25 Feb 2020 08:39:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CAC26EA14
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2020 08:39:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Feb 2020 00:39:33 -0800
X-IronPort-AV: E=Sophos;i="5.70,483,1574150400"; d="scan'208";a="230951313"
Received: from pmulhall-mobl.ger.corp.intel.com (HELO [10.251.85.135])
 ([10.251.85.135])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 25 Feb 2020 00:39:31 -0800
To: Andi Shyti <andi.shyti@intel.com>
References: <20200219190223.16972-1-andi.shyti@intel.com>
 <20200219193020.17673-1-andi.shyti@intel.com>
 <dd611192-cf41-9538-66bd-d6a1b800bdf7@linux.intel.com>
 <20200224163029.GA1579@intel.intel>
 <421b0bd8-6bc6-e6c2-7e08-6d112c57a860@linux.intel.com>
 <20200225013208.GA2708@intel.intel>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <2b7d426d-a8e9-40f9-fb1c-184f0f9b0dfd@linux.intel.com>
Date: Tue, 25 Feb 2020 08:39:29 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200225013208.GA2708@intel.intel>
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


On 25/02/2020 01:35, Andi Shyti wrote:
>>>>> +void intel_gt_sysfs_unregister(struct intel_gt *gt)
>>>>> +{
>>>>> +	struct kobject *parent = gt_get_parent_obj(gt);
>>>>> +
>>>>> +	/*
>>>>> +	 * the name gt tells us wether sysfs_root
>>>>> +	 * object was initialized properly
>>>>> +	 */
>>>>> +	if (!strcmp(gt->sysfs_root.name, "gt"))
>>>>> +		kobject_put(&gt->sysfs_root);
>>>>
>>>> Slightly nicer would be looking at  kobj->state_initialized for this check I
>>>> think. Or even kref_get_unless_zero on kobj->kref? Ugliness there is double
>>>> put on sucess which makes me ask whether holding a reference on parent is
>>>> even needed? It can't go away so perhaps it isn't.
>>>
>>> I'd rather use the state_initialized, even though I don't trust
>>> its value if the kobject has failed to initialise earlier, I
>>> trust it only if it's '1', maybe I'm paranoic.
>>
>> But is the reference even needed?
> 
> yes, because I _get it here (i.e. above, during initialization):
> 
>>>>> +void intel_gt_sysfs_register(struct intel_gt *gt)
>>>>> +{
>>>>> +	struct kobject *parent = kobject_get(gt_get_parent_obj(gt));
>>>>> +	int ret;
>>>>> +
> 
> and if I need to call kobject_put at the end. If for some reason
> the files have failed to be initialized, I would have an
> unbalanced put and a warning would be printed.
> 
> I'll summarize in pseudo code:
> 
> intel_gt_sysfs_register()
> {
> 	kobject_init_and_add(sysfs_root...); /* which calls kobject_get() inside */
> 	if (fails)
> 		kobject_put(sysfs_root); /* reference goes to '0' */
> }
> 
> intel_gt_sysfs_unregister()
> {
> 	option1: I don't call kobject_put(), I have an unbalanced
>                   situation as you reviewed in patch 1.
> 
>          option2: I call kobject_put(), if it did fail during init
>                   there is an unbalanced situation, which is
>                   handled but an annoying WARN() is issued.
> 
> 	option3: I check if "state_initialized" which I suppose
>                   has been properly initialised during declaration
>                   (maybe too paranoic?) and call _put()
>                   accordingly
> }

Yes you are right, I confused the two parents again. :I

Okay then, is the extra kobject_get/put on the parent 
(kobject_get(gt_get_parent_obj(gt) - this one) needed?

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
