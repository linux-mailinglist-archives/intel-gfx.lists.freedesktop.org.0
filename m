Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A22F717EC7B
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 00:12:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D88C6E5AE;
	Mon,  9 Mar 2020 23:12:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4ED186E5AE
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Mar 2020 23:12:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Mar 2020 16:12:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,535,1574150400"; d="scan'208";a="288833671"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by FMSMGA003.fm.intel.com with ESMTP; 09 Mar 2020 16:12:19 -0700
To: Andi Shyti <andi@etezian.org>
References: <20200306230344.53559-1-andi@etezian.org>
 <158358284291.6224.14954481538219251460@build.alporthouse.com>
 <20200307125531.GA58713@jack.zhora.eu>
 <158360254703.6224.5041578469627024671@build.alporthouse.com>
 <20200307221955.GA60782@jack.zhora.eu>
 <f1b8da58-e74c-1133-d21a-d22c55bec2ea@intel.com>
 <20200309223812.GA76960@jack.zhora.eu>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <7d36d7f2-600c-ef14-351c-a48da229695d@intel.com>
Date: Mon, 9 Mar 2020 16:11:44 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200309223812.GA76960@jack.zhora.eu>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915/gt: allow setting generic data
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



On 3/9/20 3:38 PM, Andi Shyti wrote:
> Hi Daniele,
> 
>>>>>> Quoting Andi Shyti (2020-03-06 23:03:44)
>>>>>>> -void debugfs_gt_register_files(struct intel_gt *gt,
>>>>>>> -                              struct dentry *root,
>>>>>>> -                              const struct debugfs_gt_file *files,
>>>>>>> -                              unsigned long count)
>>>>>>> +void intel_gt_debugfs_register_files(struct dentry *root,
>>>>>>> +                                    const struct debugfs_gt_file *files,
>>>>>>> +                                    unsigned long count, void *data)
>>>>>>>    {
>>>>>>>           while (count--) {
>>>>>>> -               if (!files->eval || files->eval(gt))
>>>>>>> +               if (!files->eval || files->eval(data))
>>>>>>>                           debugfs_create_file(files->name,
>>>>>>> -                                           0444, root, gt,
>>>>>>> +                                           0444, root, data,
>>>>>>>                                               files->fops);
>>>>>>
>>>>>> And now we are not a intel_gt routine, you'll want to move again :)
>>>>>> i915_debugfs_utils.c ? :)
>>>>>
>>>>> Actually, this is what it came to and this was the first
>>>>> discussion I had with Daniele and that's also why I was loyal to
>>>>> th "_gt_" wrappers until the end. But I had to agree that this
>>>>> was becoming more a limitation.
>>>>>
>>>>> The biggest difference left, which by the way is the real
>>>>> distinguishing factor other than the *gt pointer, is that we
>>>>> create files under gt directory, instead of having the root
>>>>> imposed by the drm (even though the caller can eventually choose
>>>>> different roots).
>>>>>
>>>>> We could perhaps store the root pointer in the intel_gt
>>>>> structure so that this function stays de facto an intel_gt
>>>>> routine and the caller doesn't need to care where the files will
>>>>> be generated. This is what we planned to do with sysfs as well.
>>>>>
>>>>> What do you think?
>>>>
>>>> I thought we were passing along the root. If not I think we should, more
>>>> of a debugfs constructor context?
>>>
>>> What do you mean with debugfs constructor context? Is it a
>>> gt->debugfs_root pointer like the gt->sysfs_root?
>>>
> 
>> Getting the root pointer internally from gt wouldn't work well for
>> subfolders, like the gt/uc/ folder I want to add for GuC/HuC files.
> 
> this was not my idea, actually I was thinking the opposite.
> 
> When in this case you call "intel_gt_debugfs_register_files", you
> would provide "gt" pointer where the funcion extracts and handles
> by its own the debugfs_root. The caller doesn't need to care
> about it.
> 
> Another idea could be to use contexts, e.g. guc or pm or whatever
> comes to mind, and the intel_gt_debugfs handles everything
> including subdirectories.
> 
>> I think extracting this generic helper to a common file, possibly as a follow-up
>> step, isn't a bad idea, also considering that there is at least 1 more
>> use-case in i915_debugfs_register(). Maybe we can generalize as something
>> like:
>>
>> struct i915_debugfs_files {
>> 	const char *name;
>> 	const struct file_operations *fops;
>> 	bool (*eval)(void *data);
>> }
>>
>> void i915_debugfs_register_files(struct dentry *root,
>> 				 const struct i915_debugfs_files *files,
>> 				 unsigned long count, void *data)
>> {
>>   	while (count--) {
>> 		umode_t mode = files->fops->write ? 0644 : 0444;
>> 		if (!files->eval || files->eval(data))
>>   			debugfs_create_file(files->name,
>> 					    mode, root, data,
>>   					    files->fops);
>> 	}
>> }
> 
> apart from the mode, isn't this the same as the latest patch you
> actually reviewed?
> 

Yes, but by adding the mode and making the naming generic we can re-use 
it outside the GT code, e.g. in i915_debugfs_connector_add() and to 
replace the loop in i915_debugfs_register(). I was reconnecting to 
Chris' proposal of having a common function in i915_debugfs_utils.c (or 
even just in i915_debugfs.c ?).

>> void i915_debugfs_register_files(struct dentry *root,
> 
> based on my proposal, root would point, in your case, to the
> "guc/" directory that will be created under the "gt/". NULL if
> you want the file to be created in the main "gt/" directory.
> 

If I'm understanding correctly, you're proposing to pass both struct 
intel_gt *gt and struct dentry *root, with the latter being set only if 
we want a folder different that gt/ ? What would that gain us compared 
to just passing the desired root every time like we currently do?

> While if we want to go by context, we could do something like:
> 
> struct i915_debugfs_files {
>        const char *name;
>        const struct file_operations *fops;
>        bool (*eval)(void *data);
>        enum intel_gt_context context;

This seems overkill, also because you'd have to save all the roots 
inside of the gt struct to allow accessing them from within the 
register_files function.

> }
> 
> and the gt handles everything.

Maybe I'm misunderstanding your proposal, but it feels like you're 
trying to find a use for a gt variable we don't really need just to keep 
this as a gt routine.

Daniele

> 
> Andi
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
