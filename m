Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F6F23BBC6E
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Jul 2021 13:52:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D340D89C60;
	Mon,  5 Jul 2021 11:52:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7379B89873;
 Mon,  5 Jul 2021 11:52:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10035"; a="205957631"
X-IronPort-AV: E=Sophos;i="5.83,325,1616482800"; d="scan'208";a="205957631"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2021 04:52:41 -0700
X-IronPort-AV: E=Sophos;i="5.83,325,1616482800"; d="scan'208";a="485477046"
Received: from elang-mobl.ger.corp.intel.com (HELO localhost) ([10.252.59.138])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2021 04:52:35 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <e15c0271-8663-6122-f7af-80c642fd2a4f@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210701202427.1547543-1-matthew.d.roper@intel.com>
 <20210701202427.1547543-2-matthew.d.roper@intel.com>
 <e15c0271-8663-6122-f7af-80c642fd2a4f@linux.intel.com>
Date: Mon, 05 Jul 2021 14:52:31 +0300
Message-ID: <87wnq57zb4.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 01/53] drm/i915: Add "release id" version
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 02 Jul 2021, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
> On 01/07/2021 21:23, Matt Roper wrote:
>> From: Lucas De Marchi <lucas.demarchi@intel.com>
>> 
>> Besides the arch version returned by GRAPHICS_VER(), new platforms
>> contain a "release id" to make clear the difference from one platform to
>> another. Although for the first ones we may use them as if they were a
>
> What does "first ones" refer to here?
>
>> major/minor version, that is not true for all platforms: we may have a
>> `release_id == n` that is closer to `n - 2` than to `n - 1`.
>
> Hm this is a bit confusing. Is the sentence simply trying to say that, 
> as the release id number is growing, hw capabilities are not simply 
> accumulating but can be removed as well? Otherwise I am not sure how the 
> user of these macros is supposed to act on this sentence.
>
>> However the release id number is not defined by hardware until we start
>> using the GMD_ID register. For the platforms before that register is
>> useful we will set the values in software and we can set them as we
>> please. So the plan is to set them so we can group different features
>> under a single GRAPHICS_VER_FULL() check.
>> 
>> After GMD_ID is used, the usefulness of a "full version check" will be
>> greatly reduced and will be mostly used for deciding workarounds and a
>> few code paths. So it makes sense to keep it as a separate field from
>> graphics_ver.
>> 
>> Also, currently there is not much use for the release id in media and
>> display, so keep them out.
>> 
>> This is a mix of 2 independent changes: one by me and the other by Matt
>> Roper.
>> 
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>> ---
>>   drivers/gpu/drm/i915/i915_drv.h          | 6 ++++++
>>   drivers/gpu/drm/i915/intel_device_info.c | 2 ++
>>   drivers/gpu/drm/i915/intel_device_info.h | 2 ++
>>   3 files changed, 10 insertions(+)
>> 
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>> index 6dff4ca01241..9639800485b9 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -1258,11 +1258,17 @@ static inline struct drm_i915_private *pdev_to_i915(struct pci_dev *pdev)
>>    */
>>   #define IS_GEN(dev_priv, n)		(GRAPHICS_VER(dev_priv) == (n))
>>   
>> +#define IP_VER(ver, release)		((ver) << 8 | (release))
>> +
>>   #define GRAPHICS_VER(i915)		(INTEL_INFO(i915)->graphics_ver)
>> +#define GRAPHICS_VER_FULL(i915)		IP_VER(INTEL_INFO(i915)->graphics_ver, \
>> +					       INTEL_INFO(i915)->graphics_ver_release)
>>   #define IS_GRAPHICS_VER(i915, from, until) \
>>   	(GRAPHICS_VER(i915) >= (from) && GRAPHICS_VER(i915) <= (until))
>>   
>>   #define MEDIA_VER(i915)			(INTEL_INFO(i915)->media_ver)
>> +#define MEDIA_VER_FULL(i915)		IP_VER(INTEL_INFO(i915)->media_ver, \
>> +					       INTEL_INFO(i915)->media_ver_release)
>>   #define IS_MEDIA_VER(i915, from, until) \
>>   	(MEDIA_VER(i915) >= (from) && MEDIA_VER(i915) <= (until))
>>   
>> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
>> index 7eaa92fee421..e8ad14f002c1 100644
>> --- a/drivers/gpu/drm/i915/intel_device_info.c
>> +++ b/drivers/gpu/drm/i915/intel_device_info.c
>> @@ -97,7 +97,9 @@ void intel_device_info_print_static(const struct intel_device_info *info,
>>   				    struct drm_printer *p)
>>   {
>>   	drm_printf(p, "graphics_ver: %u\n", info->graphics_ver);
>> +	drm_printf(p, "graphics_ver_release: %u\n", info->graphics_ver_release);
>
> I get the VER and VER_FULL in the macros but could 'ver' and 
> 'ver_release' here and in the code simply be renamed to 'ver'/'version' 
> and 'release'? Maybe it is just me but don't think I encountered the 
> term "version release" before.

Just bikeshedding here, but I thought of:

	if (info->grapics_ver_release)
		drm_printf(p, "graphics_ver: %u.%u\n", info->graphics_ver, info->graphics_ver_release);
	else
		drm_printf(p, "graphics_ver: %u\n", info->graphics_ver);

Also, I thought "x_ver" and "x_ver_release" sounds a bit odd, perhaps
having "x_ver" and "x_rel" is more natural?

Ultimately I think we've historically always sucked at trying to figure
this out up front, so maybe the right answer is merging something and
fixing later...


BR,
Jani.





>
> Regards,
>
> Tvrtko
>
>>   	drm_printf(p, "media_ver: %u\n", info->media_ver);
>> +	drm_printf(p, "media_ver_release: %u\n", info->media_ver_release);
>>   	drm_printf(p, "display_ver: %u\n", info->display.ver);
>>   	drm_printf(p, "gt: %d\n", info->gt);
>>   	drm_printf(p, "iommu: %s\n", iommu_name());
>> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
>> index b326aff65cd6..944a5ff4df49 100644
>> --- a/drivers/gpu/drm/i915/intel_device_info.h
>> +++ b/drivers/gpu/drm/i915/intel_device_info.h
>> @@ -162,7 +162,9 @@ enum intel_ppgtt_type {
>>   
>>   struct intel_device_info {
>>   	u8 graphics_ver;
>> +	u8 graphics_ver_release;
>>   	u8 media_ver;
>> +	u8 media_ver_release;
>>   
>>   	u8 gt; /* GT number, 0 if undefined */
>>   	intel_engine_mask_t platform_engine_mask; /* Engines supported by the HW */
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
