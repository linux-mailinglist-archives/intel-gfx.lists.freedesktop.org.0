Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A0A25544C4
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jun 2022 11:05:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8879010E1F2;
	Wed, 22 Jun 2022 09:05:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA7C010E1F2
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jun 2022 09:05:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655888731; x=1687424731;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=msAj9T9aJMIO0dpl7zk7TblnhJ8VivuLDXedkt6k4TY=;
 b=S/0AxtDPtE10ekLxFwlq61fIWyxEG6UrfMHbDPJJWnEWar7CiVIZZxvC
 aFokptQXupUYWoUiH59bNUTYbvgM4hnioDPIevUPUHBtvIihkLL3XjN30
 /IdFjrEnPe0MrIImMvtYjrbjGSbLO2mOGXjcgTdm0+tvKq9riJs0SjBSV
 dgA1tAxXBtc0kU35pu4za7WFHPoPuenBtQ18iJKstwkZfgspMHQMizsrt
 R1Dqanf9f4LIupatclyDMEwztOfbTfeLsU2w7myoEyJUvjuFDsZ/Bud8i
 wAcNZp0RiJASA0J+D4BZdx5VV+pVQEgs6RyJQCoVmbxTgUnp74R7JaZ0y g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10385"; a="280409082"
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="280409082"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 02:05:30 -0700
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="615089377"
Received: from ebrazil-mobl1.amr.corp.intel.com (HELO [10.213.200.60])
 ([10.213.200.60])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 02:05:29 -0700
Message-ID: <2752282d-a28a-ef9b-8b27-2d84aee9c8bf@linux.intel.com>
Date: Wed, 22 Jun 2022 10:05:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Robert Beckett <bob.beckett@collabora.com>, intel-gfx@lists.freedesktop.org
References: <20220620213340.3199605-1-bob.beckett@collabora.com>
 <165583307119.13647.9219456323624399121@emeril.freedesktop.org>
 <20dedda6-534b-b39e-fb35-8becc5c27043@collabora.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20dedda6-534b-b39e-fb35-8becc5c27043@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_ttm_for_stolen_=28rev5=29?=
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


On 21/06/2022 20:11, Robert Beckett wrote:
> 
> 
> On 21/06/2022 18:37, Patchwork wrote:
>> *Patch Details*
>> *Series:*    drm/i915: ttm for stolen (rev5)
>> *URL:*    https://patchwork.freedesktop.org/series/101396/ 
>> <https://patchwork.freedesktop.org/series/101396/>
>> *State:*    failure
>> *Details:* 
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/index.html 
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/index.html>
>>
>>
>>   CI Bug Log - changes from CI_DRM_11790 -> Patchwork_101396v5
>>
>>
>>     Summary
>>
>> *FAILURE*
>>
>> Serious unknown changes coming with Patchwork_101396v5 absolutely need 
>> to be
>> verified manually.
>>
>> If you think the reported changes have nothing to do with the changes
>> introduced in Patchwork_101396v5, please notify your bug team to allow 
>> them
>> to document this new failure mode, which will reduce false positives 
>> in CI.
>>
>> External URL: 
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/index.html
>>
>>
>>     Participating hosts (40 -> 41)
>>
>> Additional (2): fi-icl-u2 bat-dg2-9
>> Missing (1): fi-bdw-samus
>>
>>
>>     Possible new issues
>>
>> Here are the unknown changes that may have been introduced in 
>> Patchwork_101396v5:
>>
>>
>>       IGT changes
>>
>>
>>         Possible regressions
>>
>>   * igt@i915_selftest@live@reset:
>>       o bat-adlp-4: PASS
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11790/bat-adlp-4/igt@i915_selftest@live@reset.html> 
>>
>>         -> DMESG-FAIL
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/bat-adlp-4/igt@i915_selftest@live@reset.html> 
>>
>>
> 
> I keep hitting clobbered pages during engine resets on bat-adlp-4.
> It seems to happen most of the time on that machine and occasionally on 
> bat-adlp-6.
> 
> Should bat-adlp-4 be considered an unreliable machine like bat-adlp-6 is 
> for now?
> 
> Alternatively, seeing the history of this in
> 
> commit 3da3c5c1c9825c24168f27b021339e90af37e969 "drm/i915: Exclude low 
> pages (128KiB) of stolen from use"
> 
> could this be an indication that maybe the original issue is worse on 
> adlp machines?
> I have only ever seen page page 135 or 136 clobbered across many runs 
> via trybot, so it looks fairly consistent.
> Though excluding the use of over 540K of stolen might be too severe.

Don't know but I see that on the latest version you even hit pages 165/166.

Any history of hitting this in CI without your series? If not, are there 
some other changes which could explain it? Are you touching the selftest 
itself?

Hexdump of the clobbered page looks quite complex. Especially 
POISON_FREE. Any idea how that ends up there?

Btw what is the benefit of converting stolen to start with? It's not 
much of a backend since it just uses the drm range manager. So quite 
thin and uneventful. Diffstats for the series also do not look like you 
end up with much code reduction?

Regards,

Tvrtko
