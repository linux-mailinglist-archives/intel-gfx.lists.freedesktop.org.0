Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FC53812E23
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Dec 2023 12:07:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6710110E12A;
	Thu, 14 Dec 2023 11:07:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06B2710E17B
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Dec 2023 11:07:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702552023; x=1734088023;
 h=message-id:date:mime-version:subject:from:to:references:
 cc:in-reply-to:content-transfer-encoding;
 bh=GzrqfEKrFtoy+AtoRzAzgu1A5QnMla858r3YWKCsnnE=;
 b=l6SCZxEimqH9c3/W3Y69AmkndWow/T9b8KK75eSGtajBzQ5a2Uxz4XAl
 NwHwkYOtHaHlo6s+V+2C4E9+/AY6hJiOIKDfbFX6KBV/tojNELOIJwCxN
 33fyl6duP2QF62eu5vMp8rIlCK00xzCrTB19xi6aS6m+HrEVRQz4eGnei
 C9Fyyizr8W94cBB4krulNHyFBPuwNA6pPQis/Vt+NepA6xbOeNfyPVV7t
 LpA5nq/EFY+18HrYGzQ11L8f762KJ9aYhOicJjEBVp213P9QtofF/dkex
 4VAmZRSrGVHkxyHs9sDyILmeH0NLX2K2ciMLxhr8VMnxQIWEdLS5ufGPN Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="374611442"
X-IronPort-AV: E=Sophos;i="6.04,275,1695711600"; d="scan'208";a="374611442"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2023 03:07:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="897711181"
X-IronPort-AV: E=Sophos;i="6.04,275,1695711600"; d="scan'208";a="897711181"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.7.97])
 ([10.213.7.97])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2023 03:07:00 -0800
Message-ID: <3221c8ce-46e7-447b-a143-da94f2881b02@intel.com>
Date: Thu, 14 Dec 2023 12:06:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: =?UTF-8?B?UmU6IMODwqIgRmkuQ0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vaTkxNTog?=
 =?UTF-8?Q?=28stolen=29_memory_region_related_fixes?=
Content-Language: en-US
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Patchwork <patchwork@emeril.freedesktop.org>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20231213004237.20375-1-ville.syrjala@linux.intel.com>
 <170243147264.10260.8557231803342985702@emeril.freedesktop.org>
 <8be9ac53-0945-4371-91f2-40deed57fd11@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <8be9ac53-0945-4371-91f2-40deed57fd11@intel.com>
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



On 13.12.2023 17:13, Andrzej Hajda wrote:
> On 13.12.2023 02:37, Patchwork wrote:
>> *Patch Details*
>> *Series:*    drm/i915: (stolen) memory region related fixes
>> *URL:*    https://patchwork.freedesktop.org/series/127721/ 
>> <https://patchwork.freedesktop.org/series/127721/>
>> *State:*    failure
>> *Details:* 
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/index.html 
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/index.html>
>>
>>
>>   CI Bug Log - changes from CI_DRM_14010 -> Patchwork_127721v1
>>
>>
>>     Summary
>>
>> *FAILURE*
>>
>> Serious unknown changes coming with Patchwork_127721v1 absolutely need 
>> to be
>> verified manually.
>>
>> If you think the reported changes have nothing to do with the changes
>> introduced in Patchwork_127721v1, please notify your bug team 
>> (I915-ci-infra@lists.freedesktop.org) to allow them
>> to document this new failure mode, which will reduce false positives 
>> in CI.
>>
>> External URL: 
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/index.html
>>
>>
>>     Participating hosts (31 -> 33)
>>
>> Additional (4): bat-dg2-8 bat-dg2-9 bat-mtlp-8 fi-pnv-d510
>> Missing (2): bat-adlp-11 fi-snb-2520m
>>
>>
>>     Possible new issues
>>
>> Here are the unknown changes that may have been introduced in 
>> Patchwork_127721v1:
>>
>>
>>       IGT changes
>>
>>
>>         Possible regressions
>>
>>   *
>>
>>     igt@i915_module_load@load:
>>
>>       o bat-mtlp-8: NOTRUN -> INCOMPLETE
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/bat-mtlp-8/igt@i915_module_load@load.html>
> 
> 
> This is due to overlapping initial fb's vma with GuC reserved area on 
> MTL, see ggtt_reserve_guc_top.
> 
> My dirty quick_fix proposed:
> @@ -143,6 +143,9 @@ initial_plane_vma(struct drm_i915_private *i915,
>          if (IS_ERR(vma))
>                  goto err_obj;
> 
> +       if (base + size > GUC_GGTT_TOP)
> +               base = min(base, GUC_GGTT_TOP) - size;
> +
>          pinctl = PIN_GLOBAL | PIN_OFFSET_FIXED | base;
>          if (HAS_GMCH(i915))
>                  pinctl |= PIN_MAPPABLE;


Copy/Paste Ville response for this proposition from another thread:

On 13.12.2023 17:03, Ville Syrjälä wrote:
 >
 > This is not a solution. The correct fix is either:
 > 1. fix the guc code to not insist on a fixed chunk of the ggtt
 >    and instead allocate it normally like a good boy. It could
 >    still try to allocate as high as possible to ideally
 >    land in the GUC_GGTT_TOP range

This would be the best solution from initial plane PoV for sure, I am 
not sure about GuC PoV.

 >
 > 2. relocate the display vma to a different part of the ggtt

I think this point is what I have proposed.

 >
 >
 > 1. should be far simpler by the looks of it, as 2. would involve:
 > a) pinning the same object into two places in the ggtt simultanously
 >    I don't think we have support for that except for special ggtt views,
 >    and xe doesn't have even that (should we need this trick there as 
well)

AFAIU the fb is not yet pinned in terms of kernel structures, so it 
doesn't seems to be an issue.
Of course there is problem with PLANE_SURF still pointing to old VA, it 
should be replaced with new VA before ggtt will be populated with new stuff.

 >
 > b) flip the plane(s) over to the relocated vma
 > c) wait for vblank(s)
 > d) discard the original vma
 > e) all of that would need to happen pretty early so we may not have
 >    a lot of the required normal machinery fully up and running yet

Async update to PLANE_SURF shouldn't be enough?

Regards
Andrzej
