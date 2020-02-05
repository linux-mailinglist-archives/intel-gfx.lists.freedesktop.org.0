Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD1D153998
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 21:37:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 075F96E239;
	Wed,  5 Feb 2020 20:37:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F1596E239
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Feb 2020 20:37:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Feb 2020 12:37:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,407,1574150400"; d="scan'208";a="220223794"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga007.jf.intel.com with ESMTP; 05 Feb 2020 12:37:16 -0800
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org, "Shyti, Andi" <andi.shyti@intel.com>
References: <20200203232838.14822-1-daniele.ceraolospurio@intel.com>
 <20200203232838.14822-2-daniele.ceraolospurio@intel.com>
 <op.0fg226jqxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
 <87d0atwjmm.fsf@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <b82dd1d8-ee09-4a3f-0011-1c7d70f0686b@intel.com>
Date: Wed, 5 Feb 2020 12:37:00 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <87d0atwjmm.fsf@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 01/10] drm/i915/debugfs: Pass guc_log
 struct to i915_guc_log_info
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 2/4/20 11:58 PM, Jani Nikula wrote:
> On Tue, 04 Feb 2020, "Michal Wajdeczko" <michal.wajdeczko@intel.com> wrote:
>> On Tue, 04 Feb 2020 00:28:29 +0100, Daniele Ceraolo Spurio
>> <daniele.ceraolospurio@intel.com> wrote:
>>
>>> The log struct is the only thing the function needs (apart from
>>> the seq_file), so we can pass just that instead of the whole dev_priv.
>>>
>>> v2: Split this change to its own patch (Michal)
>>>
>>> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>>> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
>>> Cc: John Harrison <John.C.Harrison@Intel.com>
>>> Cc: Matthew Brost <matthew.brost@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/i915_debugfs.c | 6 ++----
>>>   1 file changed, 2 insertions(+), 4 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c
>>> b/drivers/gpu/drm/i915/i915_debugfs.c
>>> index e75e8212f03b..7264c0ff766c 100644
>>> --- a/drivers/gpu/drm/i915/i915_debugfs.c
>>> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
>>> @@ -1753,10 +1753,8 @@ stringify_guc_log_type(enum guc_log_buffer_type
>>> type)
>>>   	return "";
>>>   }
>>> -static void i915_guc_log_info(struct seq_file *m,
>>> -			      struct drm_i915_private *dev_priv)
>>> +static void i915_guc_log_info(struct seq_file *m, struct intel_guc_log
>>> *log)
>>
>> maybe to avoid polluting i915_debugfs.c we should move this function to
>> gt/uc/intel_guc_log.c as universal printer:
> 
> On that note, I'm going to split display bits from i915_debugfs.c to a
> file of its own under display/ [1]. I think there's enough guc/huc stuff
> to warrant moving them to a separate file maybe under gt/uc/.

Andi is already looking at moving all the GT bits under gt/, so the uc 
functions will move as part of that.

Daniele

> 
> 
> BR,
> Jani.
> 
> [1] http://patchwork.freedesktop.org/patch/msgid/20200204151810.8189-1-jani.nikula@intel.com
> 
> 
>>
>> void intel_guc_log_info(struct intel_guc_log *log, struct drm_printer *p)
>>
>>>   {
>>> -	struct intel_guc_log *log = &dev_priv->gt.uc.guc.log;
>>>   	enum guc_log_buffer_type type;
>>> 	if (!intel_guc_log_relay_created(log)) {
>>> @@ -1784,7 +1782,7 @@ static int i915_guc_info(struct seq_file *m, void
>>> *data)
>>>   	if (!USES_GUC(dev_priv))
>>>   		return -ENODEV;
>>> -	i915_guc_log_info(m, dev_priv);
>>> +	i915_guc_log_info(m, &dev_priv->gt.uc.guc.log);
>>
>> too many dots ... this is "guc" info function, maybe we should have:
>>
>> 	struct intel_guc *guc = &dev_priv->gt.uc.guc;
>> or
>> 	struct intel_gt *gt = &dev_priv->gt;
>> 	struct intel_uc *uc = &gt->uc;
>> 	struct intel_guc *guc = &uc->guc;
>>
>> as that "guc" is likely to be reused in "more" below
>>
>>> 	/* Add more as required ... */
>> _______________________________________________
>> Intel-gfx mailing list
>> Intel-gfx@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
