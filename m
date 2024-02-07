Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D4D84C6AA
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Feb 2024 09:51:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC6721129E0;
	Wed,  7 Feb 2024 08:51:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cc4KP88q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 427 seconds by postgrey-1.36 at gabe;
 Wed, 07 Feb 2024 08:51:14 UTC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 965451129E0
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Feb 2024 08:51:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707295875; x=1738831875;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=7F0mZSPuQ1IWdtyUfp5J2p/BZUMdX77YN9+C3QayZuI=;
 b=cc4KP88qN2GvzwXcewNM4LrB4PA1kqHbgvBTTriLPgF+W3fSHyOhY0xT
 Ty5FkBo/DCUe7lBj0JldQG+hDrlDknaPheXYq8Yg+jJXl2ejh1i6TtvRN
 VmcR+P4DAX+kzgHmv0Wyj1VqG/aTiGBvD43nUGIrhJDYhlYq8PE0ZGNDt
 7iVx039jqmlbGdbr0DKirnQK8V0LAQ38A4DScO7Cr9MeTCKx0VBnnU+fF
 avrl1yHbzUOVHryqOVJqQ7EAwb55XqctplSoNwho3xnFLp1GnKQWSWqf+
 KKzqIztsSNlHAkDYMbcw0y8uCiS5+/+aBrzZUvebFM2D6hbV85GyFP0ur w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="832754"
X-IronPort-AV: E=Sophos;i="6.05,250,1701158400"; 
   d="scan'208";a="832754"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2024 00:44:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,250,1701158400"; 
   d="scan'208";a="1269674"
Received: from ahamill-mobl2.ger.corp.intel.com (HELO [10.213.228.167])
 ([10.213.228.167])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2024 00:44:03 -0800
Message-ID: <5a190ddc-5739-4b39-86e4-afaef7b76244@linux.intel.com>
Date: Wed, 7 Feb 2024 08:44:01 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH] drm/i915: Add GETPARAM for GuC submission version
Content-Language: en-US
To: "Souza, Jose" <jose.souza@intel.com>,
 "Harrison, John C" <john.c.harrison@intel.com>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Balasubrawmanian, Vivaik" <vivaik.balasubrawmanian@intel.com>
Cc: "Ursulin, Tvrtko" <tvrtko.ursulin@intel.com>,
 "Nikula, Jani" <jani.nikula@intel.com>,
 "kenneth@whitecape.org" <kenneth@whitecape.org>,
 "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "Zanoni, Paulo R" <paulo.r.zanoni@intel.com>,
 "Ghuge, Sagar" <sagar.ghuge@intel.com>
References: <20240124081915.68953-1-joonas.lahtinen@linux.intel.com>
 <f04e6301-c41e-4293-96a7-6d1fa8f8304d@linux.intel.com>
 <fe98dc0052a87bf4b916f34813233d7fa69752a1.camel@intel.com>
 <531ad2c0-445a-4fdc-bdb7-d50bf70d5c69@linux.intel.com>
 <e32a2e57-97b6-4872-a89e-d32224a8d834@intel.com>
 <ebc1d9a29f2fd91f371393be07e95a76b63ae47b.camel@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <ebc1d9a29f2fd91f371393be07e95a76b63ae47b.camel@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 06/02/2024 20:51, Souza, Jose wrote:
> On Tue, 2024-02-06 at 12:42 -0800, John Harrison wrote:
>> On 2/6/2024 08:33, Tvrtko Ursulin wrote:
>>> On 01/02/2024 18:25, Souza, Jose wrote:
>>>> On Wed, 2024-01-24 at 08:55 +0000, Tvrtko Ursulin wrote:
>>>>> On 24/01/2024 08:19, Joonas Lahtinen wrote:
>>>>>> Add reporting of the GuC submissio/VF interface version via GETPARAM
>>>>>> properties. Mesa intends to use this information to check for old
>>>>>> firmware versions with known bugs before enabling features like async
>>>>>> compute.
>>>>>
>>>>> There was
>>>>> https://patchwork.freedesktop.org/patch/560704/?series=124592&rev=1
>>>>> which does everything in one go so would be my preference.
>>>>
>>>> IMO Joonas version brings less burden to be maintained(no new struct).
>>>> But both versions works, please just get into some agreement so we
>>>> can move this forward.
>>>
>>> So I would really prefer the query. Simplified version would do like
>>> the compile tested only:
>> Vivaik's patch is definitely preferred. It is much cleaner to make one
>> single call than having to make four separate calls. It is also
>> extensible to other firmwares if required. The only blockage against it
>> was whether it was a good thing to report at all. If that blockage is no
>> longer valid then we should just merge the patch that has already been
>> discussed, polished, fixed, etc. rather than starting the whole process
>> from scratch.
> 
> Agreed.
> 
> Vivaik can you please rebase and send it again?

Note there was review feedback not addressed so do that too please. 
AFAIR incorrect usage of copy item, pad/rsvd/mbz checking and questions 
about padding in general. Last is why I proposed a simplified version 
which is not future extensible and avoids the need for padding.

Regards,

Tvrtko

> 
> 
>>
>> And note that it is four calls not three. The code below is missing the
>> branch version number.
>>
>> John.
>>
>>>
>>> diff --git a/drivers/gpu/drm/i915/i915_query.c
>>> b/drivers/gpu/drm/i915/i915_query.c
>>> index 00871ef99792..999687f6a3d4 100644
>>> --- a/drivers/gpu/drm/i915/i915_query.c
>>> +++ b/drivers/gpu/drm/i915/i915_query.c
>>> @@ -551,6 +551,37 @@ static int query_hwconfig_blob(struct
>>> drm_i915_private *i915,
>>>          return hwconfig->size;
>>>   }
>>>
>>> +static int
>>> +query_guc_submission_version(struct drm_i915_private *i915,
>>> +                            struct drm_i915_query_item *query)
>>> +{
>>> +       struct drm_i915_query_guc_submission_version __user *query_ptr =
>>> + u64_to_user_ptr(query->data_ptr);
>>> +       struct drm_i915_query_guc_submission_version ver;
>>> +       struct intel_guc *guc = &to_gt(i915)->uc.guc;
>>> +       const size_t size = sizeof(ver);
>>> +       int ret;
>>> +
>>> +       if (!intel_uc_uses_guc_submission(&to_gt(i915)->uc))
>>> +               return -ENODEV;
>>> +
>>> +       ret = copy_query_item(&ver, size, size, query);
>>> +       if (ret != 0)
>>> +               return ret;
>>> +
>>> +       if (ver.major || ver.minor || ver.patch)
>>> +               return -EINVAL;
>>> +
>>> +       ver.major = guc->submission_version.major;
>>> +       ver.minor = guc->submission_version.minor;
>>> +       ver.patch = guc->submission_version.patch;
>>> +
>>> +       if (copy_to_user(query_ptr, &ver, size))
>>> +               return -EFAULT;
>>> +
>>> +       return 0;
>>> +}
>>> +
>>>   static int (* const i915_query_funcs[])(struct drm_i915_private
>>> *dev_priv,
>>>                                          struct drm_i915_query_item
>>> *query_item) = {
>>>          query_topology_info,
>>> @@ -559,6 +590,7 @@ static int (* const i915_query_funcs[])(struct
>>> drm_i915_private *dev_priv,
>>>          query_memregion_info,
>>>          query_hwconfig_blob,
>>>          query_geometry_subslices,
>>> +       query_guc_submission_version,
>>>   };
>>>
>>>   int i915_query_ioctl(struct drm_device *dev, void *data, struct
>>> drm_file *file)
>>> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
>>> index 550c496ce76d..d80d9b5e1eda 100644
>>> --- a/include/uapi/drm/i915_drm.h
>>> +++ b/include/uapi/drm/i915_drm.h
>>> @@ -3038,6 +3038,7 @@ struct drm_i915_query_item {
>>>           *  - %DRM_I915_QUERY_MEMORY_REGIONS (see struct
>>> drm_i915_query_memory_regions)
>>>           *  - %DRM_I915_QUERY_HWCONFIG_BLOB (see `GuC HWCONFIG blob
>>> uAPI`)
>>>           *  - %DRM_I915_QUERY_GEOMETRY_SUBSLICES (see struct
>>> drm_i915_query_topology_info)
>>> +        *  - %DRM_I915_QUERY_GUC_SUBMISSION_VERSION (see struct
>>> drm_i915_query_guc_submission_version)
>>>           */
>>>          __u64 query_id;
>>>   #define DRM_I915_QUERY_TOPOLOGY_INFO           1
>>> @@ -3046,6 +3047,7 @@ struct drm_i915_query_item {
>>>   #define DRM_I915_QUERY_MEMORY_REGIONS          4
>>>   #define DRM_I915_QUERY_HWCONFIG_BLOB           5
>>>   #define DRM_I915_QUERY_GEOMETRY_SUBSLICES      6
>>> +#define DRM_I915_QUERY_GUC_SUBMISSION_VERSION  7
>>>   /* Must be kept compact -- no holes and well documented */
>>>
>>>          /**
>>> @@ -3591,6 +3593,15 @@ struct drm_i915_query_memory_regions {
>>>          struct drm_i915_memory_region_info regions[];
>>>   };
>>>
>>> +/**
>>> +* struct drm_i915_query_guc_submission_version - query GuC submission
>>> interface version
>>> +*/
>>> +struct drm_i915_query_guc_submission_version {
>>> +       __u64 major;
>>> +       __u64 minor;
>>> +       __u64 patch;
>>> +};
>>> +
>>>   /**
>>>    * DOC: GuC HWCONFIG blob uAPI
>>>    *
>>>
>>> It is not that much bigger that the triple get param and IMO nicer.
>>>
>>> But if there is no motivation to do it properly then feel free to
>>> proceed with this, I will not block it.
>>>
>>> Regards,
>>>
>>> Tvrtko
>>>
>>> P.S.
>>> Probably still make sure to remove the reference to SR-IOV.
>>>
>>>>
>>>>>
>>>>> During the time of that patch there was discussion whether firmware
>>>>> version or submission version was better. I vaguely remember someone
>>>>> raised an issue with the latter. Adding John in case he remembers.
>>>>>
>>>>>> Signed-off-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
>>>>>> Cc: Kenneth Graunke <kenneth@whitecape.org>
>>>>>> Cc: Jose Souza <jose.souza@intel.com>
>>>>>> Cc: Sagar Ghuge <sagar.ghuge@intel.com>
>>>>>> Cc: Paulo Zanoni <paulo.r.zanoni@intel.com>
>>>>>> Cc: John Harrison <John.C.Harrison@Intel.com>
>>>>>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>>>>>> Cc: Jani Nikula <jani.nikula@intel.com>
>>>>>> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>>>> ---
>>>>>>     drivers/gpu/drm/i915/i915_getparam.c | 12 ++++++++++++
>>>>>>     include/uapi/drm/i915_drm.h          | 13 +++++++++++++
>>>>>>     2 files changed, 25 insertions(+)
>>>>>>
>>>>>> diff --git a/drivers/gpu/drm/i915/i915_getparam.c
>>>>>> b/drivers/gpu/drm/i915/i915_getparam.c
>>>>>> index 5c3fec63cb4c1..f176372debc54 100644
>>>>>> --- a/drivers/gpu/drm/i915/i915_getparam.c
>>>>>> +++ b/drivers/gpu/drm/i915/i915_getparam.c
>>>>>> @@ -113,6 +113,18 @@ int i915_getparam_ioctl(struct drm_device
>>>>>> *dev, void *data,
>>>>>>             if (value < 0)
>>>>>>                 return value;
>>>>>>             break;
>>>>>> +    case I915_PARAM_GUC_SUBMISSION_VERSION_MAJOR:
>>>>>> +    case I915_PARAM_GUC_SUBMISSION_VERSION_MINOR:
>>>>>> +    case I915_PARAM_GUC_SUBMISSION_VERSION_PATCH:
>>>>>> +        if (!intel_uc_uses_guc_submission(&to_gt(i915)->uc))
>>>>>> +            return -ENODEV;
>>>>>> +        if (param->param == I915_PARAM_GUC_SUBMISSION_VERSION_MAJOR)
>>>>>> +            value = to_gt(i915)->uc.guc.submission_version.major;
>>>>>> +        else if (param->param ==
>>>>>> I915_PARAM_GUC_SUBMISSION_VERSION_MINOR)
>>>>>> +            value = to_gt(i915)->uc.guc.submission_version.minor;
>>>>>> +        else
>>>>>> +            value = to_gt(i915)->uc.guc.submission_version.patch;
>>>>>> +        break;
>>>>>>         case I915_PARAM_MMAP_GTT_VERSION:
>>>>>>             /* Though we've started our numbering from 1, and so
>>>>>> class all
>>>>>>              * earlier versions as 0, in effect their value is
>>>>>> undefined as
>>>>>> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
>>>>>> index fd4f9574d177a..7d5a47f182542 100644
>>>>>> --- a/include/uapi/drm/i915_drm.h
>>>>>> +++ b/include/uapi/drm/i915_drm.h
>>>>>> @@ -806,6 +806,19 @@ typedef struct drm_i915_irq_wait {
>>>>>>      */
>>>>>>     #define I915_PARAM_PXP_STATUS         58
>>>>>>     +/*
>>>>>> + * Query for the GuC submission/VF interface version number
>>>>>
>>>>> What is this VF you speak of? :/
>>>>>
>>>>> Regards,
>>>>>
>>>>> Tvrtko
>>>>>
>>>>>> + *
>>>>>> + * -ENODEV is returned if GuC submission is not used
>>>>>> + *
>>>>>> + * On success, returns the respective GuC submission/VF interface
>>>>>> major,
>>>>>> + * minor or patch version as per the requested parameter.
>>>>>> + *
>>>>>> + */
>>>>>> +#define I915_PARAM_GUC_SUBMISSION_VERSION_MAJOR 59
>>>>>> +#define I915_PARAM_GUC_SUBMISSION_VERSION_MINOR 60
>>>>>> +#define I915_PARAM_GUC_SUBMISSION_VERSION_PATCH 61
>>>>>> +
>>>>>>     /* Must be kept compact -- no holes and well documented */
>>>>>>        /**
>>>>
>>
> 
