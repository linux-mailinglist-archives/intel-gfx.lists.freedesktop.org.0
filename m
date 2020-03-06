Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E61F17B3BD
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 02:28:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FC136EC4A;
	Fri,  6 Mar 2020 01:28:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85C656EC4A
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2020 01:28:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Mar 2020 17:28:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,520,1574150400"; d="scan'208";a="287840051"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by FMSMGA003.fm.intel.com with ESMTP; 05 Mar 2020 17:28:33 -0800
To: Andi Shyti <andi.shyti@intel.com>
References: <20200305235941.1716-1-andi.shyti@intel.com>
 <fdf01ba2-57ab-d51a-7f62-27f4cc1c1168@intel.com>
 <20200306011536.GA1530@intel.intel>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <40bb5d31-78bb-d72c-fe58-a82150c0697f@intel.com>
Date: Thu, 5 Mar 2020 17:27:56 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200306011536.GA1530@intel.intel>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: allow setting generic data
 pointer
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



On 3/5/20 5:15 PM, Andi Shyti wrote:
> Hi Daniele,
> 
>>> diff --git a/drivers/gpu/drm/i915/gt/debugfs_gt.c b/drivers/gpu/drm/i915/gt/debugfs_gt.c
>>> index 75255aaacaed..9112a8585caf 100644
>>> --- a/drivers/gpu/drm/i915/gt/debugfs_gt.c
>>> +++ b/drivers/gpu/drm/i915/gt/debugfs_gt.c
>>> @@ -26,15 +26,14 @@ void debugfs_gt_register(struct intel_gt *gt)
>>>    	debugfs_gt_pm_register(gt, root);
>>>    }
>>> -void debugfs_gt_register_files(struct intel_gt *gt,
>>> -			       struct dentry *root,
>>> -			       const struct debugfs_gt_file *files,
>>> -			       unsigned long count)
>>> +void __intel_gt_debugfs_register_files(struct intel_gt *gt, struct dentry *root,
>>> +				       const struct debugfs_gt_file *files,
>>> +				       unsigned long count, void *data)
>>>    {
>>>    	while (count--) {
>>>    		if (!files->eval || files->eval(gt))
>>
>> IMO the files->eval() function should also use the provided data instead of
>> intel_gt. This will also allow us to drop the intel_gt parameter in this
>> function, which in turn means we can use this function directly from all the
>> levels.
> 
> do you mean something like this:
> 
> -       bool (*eval)(const struct intel_gt *gt);
> +       bool (*eval)(void *data);
> 
> ?

yes

> 
> I am missing the use case, though, what is it that cannot be
> reached by the gt so that it needs to be more generic?

It's not a problem of reaching it from gt but the other way around, I 
don't want the caller to have to retrieve a gt variable it don't needs 
just to pass it to this function and then go back to the actual required 
data from gt inside of the eval function. Anything you need for your 
evaluation should be reachable from the struct used as data for the debugfs.
To make a concrete example, I want to avoid an unneeded guc_to_gt inside 
intel_guc_debugfs_register that would also require a matched guc = 
&gt->uc.guc inside the eval function, passing guc (i.e. the data) 
straight in the eval is cleaner IMO.

Daniele

> 
> Do you want to use it at i915 level?
> 
> Thanks for the review,
> Andi
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
