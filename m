Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3742A7E218C
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Nov 2023 13:30:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C85D010E061;
	Mon,  6 Nov 2023 12:30:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAA2210E061
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Nov 2023 12:30:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699273818; x=1730809818;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Ziy2PtZr/ZQqrMIU6MMItLgOUB3LIP14jchmBqC6iDE=;
 b=CznTLAYp6Hs37ZMgeTkC+wx5fdIteTUQSCtsALIwTagedThj2a8U0V1Z
 ZjTd63d8EAlv1Jeq71AF62PoRkcR87c8m5qW14nFQ8dYpfB3Rfp8c5G7U
 l4SPX/P8opuYTwOFIPm197jXLgHiDuD6B4+BXfDXqAr+9OG+eKXuq5t2J
 /QMwpGrQSxkzE646LB9/wVwOITOkJI+qMSDsIgfgQpfXlxU2HfiljMdXP
 oPkEzmxJrHjE6MgcyO84igrRUa8fY9X+cWNdYhNgnwJEFluG9lBcymheR
 XUilhxAxiL3YgSmRtXcvf7cF/eI9sdWzl6Oow2t8S9VIrRVnrmWAyuK7J Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="455747784"
X-IronPort-AV: E=Sophos;i="6.03,281,1694761200"; d="scan'208";a="455747784"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 04:30:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="797292785"
X-IronPort-AV: E=Sophos;i="6.03,281,1694761200"; d="scan'208";a="797292785"
Received: from ajayshan-mobl.ger.corp.intel.com (HELO [10.213.234.152])
 ([10.213.234.152])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 04:30:16 -0800
Message-ID: <b1f7c0aa-1a3f-4c91-bd6f-77033676244b@linux.intel.com>
Date: Mon, 6 Nov 2023 12:30:14 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Matt Roper <matthew.d.roper@intel.com>
References: <20231103052959.3537-1-gareth.yu@intel.com>
 <35c88e1e-0f2a-411e-b224-a9526723b2dd@linux.intel.com>
 <20231103172412.GQ1327160@mdroper-desk1.amr.corp.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20231103172412.GQ1327160@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Print SSEU information of all
 GTs for debugfs
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
Cc: intel-gfx@lists.freedesktop.org, Andi Shyti <andi.shyti@intel.com>,
 Gareth Yu <gareth.yu@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 03/11/2023 17:24, Matt Roper wrote:
> On Fri, Nov 03, 2023 at 11:17:18AM +0000, Tvrtko Ursulin wrote:
>>
>> On 03/11/2023 05:29, Gareth Yu wrote:
>>> Print another SSEU information addition to the first one.
>>>
>>> Cc : Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
>>> Cc : Matt Roper <matthew.d.roper@intel.com>
>>> Cc : Ville Syrjälä <ville.syrjala@linux.intel.com>
>>> Signed-off-by: Gareth Yu <gareth.yu@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/i915_debugfs.c   | 13 ++++++++++---
>>>    drivers/gpu/drm/i915/i915_gpu_error.c |  6 +++++-
>>>    2 files changed, 15 insertions(+), 4 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
>>> index e9b79c2c37d8..b5914a2c0597 100644
>>> --- a/drivers/gpu/drm/i915/i915_debugfs.c
>>> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
>>> @@ -63,13 +63,16 @@ static int i915_capabilities(struct seq_file *m, void *data)
>>>    {
>>>    	struct drm_i915_private *i915 = node_to_i915(m->private);
>>>    	struct drm_printer p = drm_seq_file_printer(m);
>>> +	struct intel_gt *gt;
>>> +	unsigned int i;
>>>    	seq_printf(m, "pch: %d\n", INTEL_PCH_TYPE(i915));
>>>    	intel_device_info_print(INTEL_INFO(i915), RUNTIME_INFO(i915), &p);
>>>    	intel_display_device_info_print(DISPLAY_INFO(i915), DISPLAY_RUNTIME_INFO(i915), &p);
>>>    	i915_print_iommu_status(i915, &p);
>>> -	intel_gt_info_print(&to_gt(i915)->info, &p);
>>> +	for_each_gt(gt, i915, i)
>>> +		intel_gt_info_print(&gt->info, &p);
>>>    	intel_driver_caps_print(&i915->caps, &p);
>>>    	kernel_param_lock(THIS_MODULE);
>>> @@ -783,9 +786,13 @@ DEFINE_SIMPLE_ATTRIBUTE(i915_drop_caches_fops,
>>>    static int i915_sseu_status(struct seq_file *m, void *unused)
>>>    {
>>>    	struct drm_i915_private *i915 = node_to_i915(m->private);
>>> -	struct intel_gt *gt = to_gt(i915);
>>> +	struct intel_gt *gt;
>>> +	unsigned int i;
>>> +
>>> +	for_each_gt(gt, i915, i)
>>> +		intel_sseu_status(m, gt);
>>
>> Don't we have the per GT debugfs directories and files already!?
> 
> Yeah, we shouldn't be updating this.  Commit a00eda7d8996 ("drm/i915:
> Move sseu debugfs under gt/") notes:
> 
>          "The sseu_status debugfs has also been kept at the top level as
>          we do have tests that use it; it will be removed once we teach
>          the tests to look into the new path."
> 
> If there are still IGT tests that haven't been updated, dumping both GTs
> here will probably break them since they aren't expecting it.  If they
> have all been updated, then we should just move forward with deleting
> this device-level SSEU instead.

Thanks for confirming the debugfs parts should be dropped.

> 
>>
>>> -	return intel_sseu_status(m, gt);
>>> +	return 0;
>>>    }
>>>    static int i915_forcewake_open(struct inode *inode, struct file *file)
>>> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
>>> index b4e31e59c799..2adc317af944 100644
>>> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
>>> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
>>> @@ -722,9 +722,13 @@ static void err_print_gt_info(struct drm_i915_error_state_buf *m,
>>>    			      struct intel_gt_coredump *gt)
>>>    {
>>>    	struct drm_printer p = i915_error_printer(m);
>>> +	struct drm_i915_private *i915 = gt->_gt->i915;
>>> +	struct intel_gt *gt_n;
>>> +	unsigned int n;
>>>    	intel_gt_info_print(&gt->info, &p);
>>> -	intel_sseu_print_topology(gt->_gt->i915, &gt->info.sseu, &p);
>>> +	for_each_gt(gt_n, i915, n)
>>> +		intel_sseu_print_topology(gt_n->i915, &gt_n->info.sseu, &p);
>>
>> Do we need a consistent story across all error capture? Aka why is sseu
>> special.
>>
>> Also the intel_gt_info_print() above calls intel_sseu_dump so we end up with
>> root tile SSEU printed twice?
> 
> I'm guessing this call was supposed to be deleted by 0b6613c6b91e
> ("drm/i915/sseu: Move sseu_info under gt_info").  We should probably go
> ahead and do that now do remove the redundancy.

Okay, just need a volunteer! :)

> err_print_gt_info() should be printing the GT information (including
> SSEU) for whichever GT had the error.  I don't see a reason why we'd
> want to dump extra SSEU information for a different GT that wasn't
> involved in the error.
> 
> Actually, SSEU is the _least_ useful thing to print for extra GTs
> because once xehpsdv/pvc are gone from i915, the only platforms that
> have multiple GTs are MTL/ARL and the SSEU information will always be
> empty on the media GT (there's no DSS or EUs there).

Yes all good points. Perhaps Yu can shed more light on why the need to 
dump on GTs came about?

Then, on a second look, the correct GT info is already captured. What is 
missing is teaching, probably intel_gt_info_print, to skip dumping the 
SSEU info on media tiles. That coupled with removing one of the 
redundant calls should complete the picture. Although I don't know which 
one between intel_sseu_print_topology and intel_sseu_dump to keep. Or 
the data from intel_sseu_print_topology is a genuine value add on top of 
intel_sseu_dump?

Regards,

Tvrtko

> 
> 
> Matt
> 
>>
>> There possibly was a Jira years ago to do stuff about multi-tile error
>> capture but maybe it got lost.
>>
>> Adding Andi if he has comments.
>>
>> Regards,
>>
>> Tvrtko
>>
>>>    }
>>>    static void err_print_gt_display(struct drm_i915_error_state_buf *m,
> 
