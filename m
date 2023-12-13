Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 76B28811AF5
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 18:28:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6645810E28E;
	Wed, 13 Dec 2023 17:28:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69F4610E28E
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 17:28:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702488531; x=1734024531;
 h=message-id:date:mime-version:subject:from:to:references:
 in-reply-to:content-transfer-encoding;
 bh=1wwc3j+6K7kXsn8LAU8fBgCCkUCZaEPd7Yozc32vOEs=;
 b=dTWUptjkc9MYYPm298esB2LkMEaV1dN00vjK3bBbt8QfhDRRVo329aRJ
 oSQcGiEz8RM2JZC6M1zxDw0dEK7F36isQnd9x99iJr2zJ4gfYq4MJ9Hud
 rk3+7yruHbE8/qQL6HBLndnQSpnsVjO2GR9buPAuM1N4SFpvc86nGDuNG
 ZrMJN18PaxBaP3EBPAxQNgDCdb/KBkGeVjKruZ+uHmMsJbvHlQI57QvfB
 XF+/lL0cf9NAnfu5PevQoI6R2pf+ehggNYMAN0+uVLLdxJRsU31Dn1oPp
 oCa6ZYm/eKP4KGUjVKZdlziCmmYs5cZaJSwzxODe+ALUCAeonVubdLLPO g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="375149682"
X-IronPort-AV: E=Sophos;i="6.04,273,1695711600"; d="scan'208";a="375149682"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 09:28:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="892091512"
X-IronPort-AV: E=Sophos;i="6.04,273,1695711600"; d="scan'208";a="892091512"
Received: from kryanx-mobl.ger.corp.intel.com (HELO [10.213.231.240])
 ([10.213.231.240])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 09:28:49 -0800
Message-ID: <ed5b24dd-ebc1-4a6e-9efb-c9da81596f78@linux.intel.com>
Date: Wed, 13 Dec 2023 17:28:48 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: =?UTF-8?B?UmU6IMOiIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTU6IChz?=
 =?UTF-8?Q?tolen=29_memory_region_related_fixes?=
Content-Language: en-US
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org, 
 Patchwork <patchwork@emeril.freedesktop.org>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20231213004237.20375-1-ville.syrjala@linux.intel.com>
 <170243147264.10260.8557231803342985702@emeril.freedesktop.org>
 <8be9ac53-0945-4371-91f2-40deed57fd11@intel.com>
 <8fc913ae-814d-4236-9ca0-e4492c81b225@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <8fc913ae-814d-4236-9ca0-e4492c81b225@linux.intel.com>
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


On 13/12/2023 17:24, Tvrtko Ursulin wrote:
> 
> Hi Andrzej,
> 
> On 13/12/2023 16:13, Andrzej Hajda wrote:
>> On 13.12.2023 02:37, Patchwork wrote:
>>> *Patch Details*
>>> *Series:*    drm/i915: (stolen) memory region related fixes
>>> *URL:*    https://patchwork.freedesktop.org/series/127721/ 
>>> <https://patchwork.freedesktop.org/series/127721/>
>>> *State:*    failure
>>> *Details:* 
>>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/index.html <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/index.html>
>>>
>>>
>>>   CI Bug Log - changes from CI_DRM_14010 -> Patchwork_127721v1
>>>
>>>
>>>     Summary
>>>
>>> *FAILURE*
>>>
>>> Serious unknown changes coming with Patchwork_127721v1 absolutely 
>>> need to be
>>> verified manually.
>>>
>>> If you think the reported changes have nothing to do with the changes
>>> introduced in Patchwork_127721v1, please notify your bug team 
>>> (I915-ci-infra@lists.freedesktop.org) to allow them
>>> to document this new failure mode, which will reduce false positives 
>>> in CI.
>>>
>>> External URL: 
>>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/index.html
>>>
>>>
>>>     Participating hosts (31 -> 33)
>>>
>>> Additional (4): bat-dg2-8 bat-dg2-9 bat-mtlp-8 fi-pnv-d510
>>> Missing (2): bat-adlp-11 fi-snb-2520m
>>>
>>>
>>>     Possible new issues
>>>
>>> Here are the unknown changes that may have been introduced in 
>>> Patchwork_127721v1:
>>>
>>>
>>>       IGT changes
>>>
>>>
>>>         Possible regressions
>>>
>>>   *
>>>
>>>     igt@i915_module_load@load:
>>>
>>>       o bat-mtlp-8: NOTRUN -> INCOMPLETE
>>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127721v1/bat-mtlp-8/igt@i915_module_load@load.html>
>>
>>
>> This is due to overlapping initial fb's vma with GuC reserved area on 
>> MTL, see ggtt_reserve_guc_top.
>>
>> My dirty quick_fix proposed:
>> @@ -143,6 +143,9 @@ initial_plane_vma(struct drm_i915_private *i915,
>>          if (IS_ERR(vma))
>>                  goto err_obj;
>>
>> +       if (base + size > GUC_GGTT_TOP)
>> +               base = min(base, GUC_GGTT_TOP) - size;
>> +
> 
> I saw you posting this before but forgot to comment. I couldn't quite 
> figure out what the logic is supposed to do and how it wouldn't fail to 
> inherit any firmware setup splash screen?
> 
> Other than making the firmware aware and not use that range, I was 
> thinking what else we could do in i915? Copy the fb to a non-conflicting 
> location and re-program the display engine? If that is doable without 
> visible glitching and can be fast enough not to slow the boot a lot.
> 
> Unless I am missing something in your proposal?

Aha I missed the fact we write out new PTEs!

Display code will update without glitching to the new plane address?

Regards,

Tvrtko
