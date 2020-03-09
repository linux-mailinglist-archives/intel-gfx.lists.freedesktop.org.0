Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D310A17EBA8
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Mar 2020 23:05:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1639A6E0FF;
	Mon,  9 Mar 2020 22:05:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2F3F6E0FF
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Mar 2020 22:05:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Mar 2020 15:05:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,534,1574150400"; d="scan'208";a="288816987"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by FMSMGA003.fm.intel.com with ESMTP; 09 Mar 2020 15:05:36 -0700
To: Andi Shyti <andi@etezian.org>, Chris Wilson <chris@chris-wilson.co.uk>
References: <20200306230344.53559-1-andi@etezian.org>
 <158358284291.6224.14954481538219251460@build.alporthouse.com>
 <20200307125531.GA58713@jack.zhora.eu>
 <158360254703.6224.5041578469627024671@build.alporthouse.com>
 <20200307221955.GA60782@jack.zhora.eu>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <f1b8da58-e74c-1133-d21a-d22c55bec2ea@intel.com>
Date: Mon, 9 Mar 2020 15:05:01 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200307221955.GA60782@jack.zhora.eu>
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



On 3/7/20 2:19 PM, Andi Shyti wrote:
> Hi Chris,
> 
>>>> Quoting Andi Shyti (2020-03-06 23:03:44)
>>>>> -void debugfs_gt_register_files(struct intel_gt *gt,
>>>>> -                              struct dentry *root,
>>>>> -                              const struct debugfs_gt_file *files,
>>>>> -                              unsigned long count)
>>>>> +void intel_gt_debugfs_register_files(struct dentry *root,
>>>>> +                                    const struct debugfs_gt_file *files,
>>>>> +                                    unsigned long count, void *data)
>>>>>   {
>>>>>          while (count--) {
>>>>> -               if (!files->eval || files->eval(gt))
>>>>> +               if (!files->eval || files->eval(data))
>>>>>                          debugfs_create_file(files->name,
>>>>> -                                           0444, root, gt,
>>>>> +                                           0444, root, data,
>>>>>                                              files->fops);
>>>>>   
>>>>
>>>> And now we are not a intel_gt routine, you'll want to move again :)
>>>> i915_debugfs_utils.c ? :)
>>>
>>> Actually, this is what it came to and this was the first
>>> discussion I had with Daniele and that's also why I was loyal to
>>> th "_gt_" wrappers until the end. But I had to agree that this
>>> was becoming more a limitation.
>>>
>>> The biggest difference left, which by the way is the real
>>> distinguishing factor other than the *gt pointer, is that we
>>> create files under gt directory, instead of having the root
>>> imposed by the drm (even though the caller can eventually choose
>>> different roots).
>>>
>>> We could perhaps store the root pointer in the intel_gt
>>> structure so that this function stays de facto an intel_gt
>>> routine and the caller doesn't need to care where the files will
>>> be generated. This is what we planned to do with sysfs as well.
>>>
>>> What do you think?
>>
>> I thought we were passing along the root. If not I think we should, more
>> of a debugfs constructor context?
> 
> What do you mean with debugfs constructor context? Is it a
> gt->debugfs_root pointer like the gt->sysfs_root?
> 

Getting the root pointer internally from gt wouldn't work well for 
subfolders, like the gt/uc/ folder I want to add for GuC/HuC files. I 
think extracting this generic helper to a common file, possibly as a 
follow-up step, isn't a bad idea, also considering that there is at 
least 1 more use-case in i915_debugfs_register(). Maybe we can 
generalize as something like:

struct i915_debugfs_files {
	const char *name;
	const struct file_operations *fops;
	bool (*eval)(void *data);
}

void i915_debugfs_register_files(struct dentry *root,
				 const struct i915_debugfs_files *files,
				 unsigned long count, void *data)
{
  	while (count--) {
		umode_t mode = files->fops->write ? 0644 : 0444;
		if (!files->eval || files->eval(data))
  			debugfs_create_file(files->name,
					    mode, root, data,
  					    files->fops);
	}
}

Daniele

>> The main thing of course is not to overengineer and do the minimal
>> necessary for the immediate users we have. We can always extend and
>> refactor for a third user, etc, etc.
>>
>> So if this works for gt + children, go for it and worry about tomorrow,
>> tomorrow. Trusting our good practice for "a stitch in time saves nine".
> 
> this came after Daniele's guc patches where he preferred to
> define his own functions instead of using this one that is meant
> to be used in that situation.
> 
> Andi
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
