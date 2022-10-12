Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C075FC6C7
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Oct 2022 15:54:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2779710E2AB;
	Wed, 12 Oct 2022 13:54:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E650B10E2B8
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Oct 2022 13:54:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665582883; x=1697118883;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=jeJFkcaa6SPe0HiHQfEfeBhPCfwkEXFQDyN3YBWi6WM=;
 b=Vlh4iQdBd37OhdwBDncoPgTMRPMQXev9tEaendw+i5CPnd5L/0yVWv0K
 CrgtYJ77gh911LPXZgLz8Pazm9ykVLw6LroxEKTBmZKKHTFYJygLBb+oJ
 t3h4XDUtosiffVoccPAL/ucCxaIPw4Npr9A6mgIDnHvz3YSw/GebKBhl7
 NsJq8DWgMrkMOj9rR8rTlfnv1vUbeRgPhMUH36s5b+prqJBwXEZKx3wq1
 0WJl7iicJJDar7G2F86Gj+gA9mNrVPEdFwqeDah/6mnKkaIPJghaSqIN8
 m6XsDbvIcIo4jMm6j8/1RSi3bulDarxTa7cIAFguSJGJKYexSZ88gNW2j A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="304783722"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="304783722"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 06:54:43 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="577835176"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="577835176"
Received: from adambyrn-mobl.ger.corp.intel.com (HELO [10.213.214.103])
 ([10.213.214.103])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 06:54:42 -0700
Message-ID: <e26c05b9-6480-dd0d-50f2-cb2374370f61@linux.intel.com>
Date: Wed, 12 Oct 2022 14:54:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Content-Language: en-US
To: John Harrison <john.c.harrison@intel.com>,
 intel-gfx@lists.freedesktop.org, Patchwork <patchwork@emeril.freedesktop.org>
References: <20221006213813.1563435-1-John.C.Harrison@Intel.com>
 <166509481464.5838.16580429148593384568@emeril.freedesktop.org>
 <5682621a-d507-39f2-58e1-5a646d31adc9@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <5682621a-d507-39f2-58e1-5a646d31adc9@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgSW1w?=
 =?utf-8?q?rove_anti-pre-emption_w/a_for_compute_workloads_=28rev8=29?=
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


On 10/10/2022 20:44, John Harrison wrote:
> On 10/6/2022 15:20, Patchwork wrote:
>> Project List - Patchwork *Patch Details*
>> *Series:* 	Improve anti-pre-emption w/a for compute workloads (rev8)
>> *URL:* 	https://patchwork.freedesktop.org/series/100428/
>> *State:* 	failure
>> *Details:* 
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100428v8/index.html
>>
>>
>>   CI Bug Log - changes from CI_DRM_12223 -> Patchwork_100428v8
>>
>>
>>     Summary
>>
>> *FAILURE*
>>
>> Serious unknown changes coming with Patchwork_100428v8 absolutely need 
>> to be
>> verified manually.
>>
>> If you think the reported changes have nothing to do with the changes
>> introduced in Patchwork_100428v8, please notify your bug team to allow 
>> them
>> to document this new failure mode, which will reduce false positives 
>> in CI.
>>
>> External URL: 
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100428v8/index.html
>>
>>
>>     Participating hosts (42 -> 40)
>>
>> Missing (2): fi-ctg-p8600 fi-hsw-4200u
>>
>>
>>     Possible new issues
>>
>> Here are the unknown changes that may have been introduced in 
>> Patchwork_100428v8:
>>
>>
>>       IGT changes
>>
>>
>>         Possible regressions
>>
>>   * igt@i915_selftest@live@migrate:
>>       o fi-apl-guc: PASS
>>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12223/fi-apl-guc/igt@i915_selftest@live@migrate.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100428v8/fi-apl-guc/igt@i915_selftest@live@migrate.html>
>>
> The logs seems to suggest the test just stopped (with the actual dmesg0 
> link being corrupted at the end). Seems likely there was a kernel panic 
> followed by reboot. Given that this patch set is only affecting hang 
> detection and recovery and the migrate test is not supposed to hit any 
> hangs, it seems very unlikely this failure is related. Certainly, all 
> previous revisions of this patch set did not any problems with the 
> live@migrate test.

I happened in the past: 
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12221/fi-apl-guc/igt@i915_selftest@live@migrate.html

So I think you can ignore it.

Regards,

Tvrtko
