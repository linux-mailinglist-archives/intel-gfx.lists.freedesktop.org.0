Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6798C3BDEC3
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jul 2021 23:09:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42F686E5A5;
	Tue,  6 Jul 2021 21:09:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F14F6E5A5;
 Tue,  6 Jul 2021 21:09:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10037"; a="196362300"
X-IronPort-AV: E=Sophos;i="5.83,329,1616482800"; d="scan'208";a="196362300"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2021 14:09:28 -0700
X-IronPort-AV: E=Sophos;i="5.83,329,1616482800"; d="scan'208";a="486530466"
Received: from pbarbago-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.251.131.218])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2021 14:09:27 -0700
Date: Tue, 6 Jul 2021 14:09:26 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20210706210926.yo3edlztgeoitqul@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20210701202427.1547543-1-matthew.d.roper@intel.com>
 <20210701202427.1547543-2-matthew.d.roper@intel.com>
 <e15c0271-8663-6122-f7af-80c642fd2a4f@linux.intel.com>
 <87wnq57zb4.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87wnq57zb4.fsf@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jul 05, 2021 at 02:52:31PM +0300, Jani Nikula wrote:
>On Fri, 02 Jul 2021, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
>> On 01/07/2021 21:23, Matt Roper wrote:
>>> From: Lucas De Marchi <lucas.demarchi@intel.com>
>>>
>>> Besides the arch version returned by GRAPHICS_VER(), new platforms
>>> contain a "release id" to make clear the difference from one platform to
>>> another. Although for the first ones we may use them as if they were a
>>
>> What does "first ones" refer to here?
>>
>>> major/minor version, that is not true for all platforms: we may have a
>>> `release_id == n` that is closer to `n - 2` than to `n - 1`.
>>
>> Hm this is a bit confusing. Is the sentence simply trying to say that,
>> as the release id number is growing, hw capabilities are not simply
>> accumulating but can be removed as well? Otherwise I am not sure how the
>> user of these macros is supposed to act on this sentence.
>>
>>> However the release id number is not defined by hardware until we start
>>> using the GMD_ID register. For the platforms before that register is
>>> useful we will set the values in software and we can set them as we
>>> please. So the plan is to set them so we can group different features
>>> under a single GRAPHICS_VER_FULL() check.
>>>
>>> After GMD_ID is used, the usefulness of a "full version check" will be
>>> greatly reduced and will be mostly used for deciding workarounds and a
>>> few code paths. So it makes sense to keep it as a separate field from
>>> graphics_ver.
>>>
>>> Also, currently there is not much use for the release id in media and
>>> display, so keep them out.
>>>
>>> This is a mix of 2 independent changes: one by me and the other by Matt
>>> Roper.
>>>
>>> Cc: Matt Roper <matthew.d.roper@intel.com>
>>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>>> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/i915_drv.h          | 6 ++++++
>>>   drivers/gpu/drm/i915/intel_device_info.c | 2 ++
>>>   drivers/gpu/drm/i915/intel_device_info.h | 2 ++
>>>   3 files changed, 10 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>>> index 6dff4ca01241..9639800485b9 100644
>>> --- a/drivers/gpu/drm/i915/i915_drv.h
>>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>>> @@ -1258,11 +1258,17 @@ static inline struct drm_i915_private *pdev_to_i915(struct pci_dev *pdev)
>>>    */
>>>   #define IS_GEN(dev_priv, n)		(GRAPHICS_VER(dev_priv) == (n))
>>>
>>> +#define IP_VER(ver, release)		((ver) << 8 | (release))
>>> +
>>>   #define GRAPHICS_VER(i915)		(INTEL_INFO(i915)->graphics_ver)
>>> +#define GRAPHICS_VER_FULL(i915)		IP_VER(INTEL_INFO(i915)->graphics_ver, \
>>> +					       INTEL_INFO(i915)->graphics_ver_release)
>>>   #define IS_GRAPHICS_VER(i915, from, until) \
>>>   	(GRAPHICS_VER(i915) >= (from) && GRAPHICS_VER(i915) <= (until))
>>>
>>>   #define MEDIA_VER(i915)			(INTEL_INFO(i915)->media_ver)
>>> +#define MEDIA_VER_FULL(i915)		IP_VER(INTEL_INFO(i915)->media_ver, \
>>> +					       INTEL_INFO(i915)->media_ver_release)
>>>   #define IS_MEDIA_VER(i915, from, until) \
>>>   	(MEDIA_VER(i915) >= (from) && MEDIA_VER(i915) <= (until))
>>>
>>> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
>>> index 7eaa92fee421..e8ad14f002c1 100644
>>> --- a/drivers/gpu/drm/i915/intel_device_info.c
>>> +++ b/drivers/gpu/drm/i915/intel_device_info.c
>>> @@ -97,7 +97,9 @@ void intel_device_info_print_static(const struct intel_device_info *info,
>>>   				    struct drm_printer *p)
>>>   {
>>>   	drm_printf(p, "graphics_ver: %u\n", info->graphics_ver);
>>> +	drm_printf(p, "graphics_ver_release: %u\n", info->graphics_ver_release);
>>
>> I get the VER and VER_FULL in the macros but could 'ver' and
>> 'ver_release' here and in the code simply be renamed to 'ver'/'version'
>> and 'release'? Maybe it is just me but don't think I encountered the
>> term "version release" before.
>
>Just bikeshedding here, but I thought of:
>
>	if (info->grapics_ver_release)
>		drm_printf(p, "graphics_ver: %u.%u\n", info->graphics_ver, info->graphics_ver_release);
>	else
>		drm_printf(p, "graphics_ver: %u\n", info->graphics_ver);

humn... a suggestion that I got internally a few week ago and I forgot
to update this was that this doesn't need to be abbreviated in debugfs
and could very well be:

	drm_printf(p, "graphics version: %u\n", info->graphics_ver);
	drm_printf(p, "graphics release: %u\n", info->graphics_ver_release);
>
>Also, I thought "x_ver" and "x_ver_release" sounds a bit odd, perhaps
>having "x_ver" and "x_rel" is more natural?

Not sure what direction to go now though. Maybe trying to put all
suggestions together:

	if (info->graphics_rel)
		drm_printf(p, "graphics version: %u.%u\n", info->graphics_ver, info->graphics_rel);
	else
		drm_printf(p, "graphics version: %u\n", info->graphics_ver);

One thing  I like is that doing `| grep "graphics version"`
gives all info you are searching for.


thanks
Lucas De Marchi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
