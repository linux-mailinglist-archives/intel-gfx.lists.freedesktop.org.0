Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D4B178DE0
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 10:56:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3501C8989F;
	Wed,  4 Mar 2020 09:56:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03A468989F
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Mar 2020 09:56:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Mar 2020 01:56:55 -0800
X-IronPort-AV: E=Sophos;i="5.70,513,1574150400"; d="scan'208";a="233976429"
Received: from ohoehne-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.249.39.231])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Mar 2020 01:56:54 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <b0e62fe8-3361-d259-ac67-19b0087899cb@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200228022843.1936-1-daniele.ceraolospurio@intel.com>
 <20200228022843.1936-3-daniele.ceraolospurio@intel.com>
 <877e07qdc9.fsf@intel.com> <b0e62fe8-3361-d259-ac67-19b0087899cb@intel.com>
Date: Wed, 04 Mar 2020 11:56:54 +0200
Message-ID: <878skgphnd.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915/uc: mark structure passed to
 checker functions as const
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 28 Feb 2020, Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com> wrote:
> On 2/28/20 1:18 AM, Jani Nikula wrote:
>> On Thu, 27 Feb 2020, Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com> wrote:
>>> Follow-up patches will pass const objects from debugfs to some those
>>> functions, so we need to be ready.
>>>
>>> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>>> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
>>> Cc: John Harrison <John.C.Harrison@Intel.com>
>>> Cc: Matthew Brost <matthew.brost@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/gt/intel_gt.h             |  6 +++---
>>>   drivers/gpu/drm/i915/gt/uc/intel_guc.h         | 10 +++++-----
>>>   drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h      |  2 +-
>>>   .../gpu/drm/i915/gt/uc/intel_guc_submission.h  |  6 +++---
>>>   drivers/gpu/drm/i915/gt/uc/intel_huc.h         |  8 ++++----
>>>   drivers/gpu/drm/i915/gt/uc/intel_uc.h          |  2 +-
>>>   drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h       | 18 +++++++++---------
>>>   7 files changed, 26 insertions(+), 26 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
>>> index 4fac043750aa..f9fbe645478d 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_gt.h
>>> +++ b/drivers/gpu/drm/i915/gt/intel_gt.h
>>> @@ -18,17 +18,17 @@ struct drm_i915_private;
>>>   		  ##__VA_ARGS__);					\
>>>   } while (0)
>>>   
>>> -static inline struct intel_gt *uc_to_gt(struct intel_uc *uc)
>>> +static inline struct intel_gt *uc_to_gt(const struct intel_uc *uc)
>>>   {
>>>   	return container_of(uc, struct intel_gt, uc);
>>>   }
>>>   
>>> -static inline struct intel_gt *guc_to_gt(struct intel_guc *guc)
>>> +static inline struct intel_gt *guc_to_gt(const struct intel_guc *guc)
>>>   {
>>>   	return container_of(guc, struct intel_gt, uc.guc);
>>>   }
>>>   
>>> -static inline struct intel_gt *huc_to_gt(struct intel_huc *huc)
>>> +static inline struct intel_gt *huc_to_gt(const struct intel_huc *huc)
>>>   {
>>>   	return container_of(huc, struct intel_gt, uc.huc);
>>>   }
>> 
>> Not fond of the fact that these cast the const away. If you can return
>> const also, fine, but const in, non-const out is not fine.
>> 
>
> fair point. We usually use those functions for non-const->non-const 
> conversions, but in debugfs the objects are marked as const hence why 
> the need to add it here (the output in that case can also be marked as 
> const).
>
> What's the favorite alternative, add a guc_to_gt_const() variant, do a 
> straight container_of in the debugfs function or simply avoid marking 
> the objects as const to begin with, even if they're treated as such?

In a later patch, this seems wrong to me:

 +void intel_guc_load_status(const struct intel_guc *guc, struct drm_printer *p)
 +{
 +	struct intel_gt *gt = guc_to_gt(guc);

You get const * in, and convert it to non-const. The container_of you
suggest would do the same I believe.

How many _const() conversion macros would you get? If a lot, I'd not
bother with it.

BR,
Jani.


>
> Thanks,
> Daniele
>
>> BR,
>> Jani.
>> 
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
