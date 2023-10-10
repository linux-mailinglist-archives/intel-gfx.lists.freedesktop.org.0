Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBA147C01DE
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 18:43:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C34B10E045;
	Tue, 10 Oct 2023 16:43:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2497B10E045
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 16:43:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696956186; x=1728492186;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=d1MJDSPlDL45iXBnvRlhB9A1QzCgQlkTp9r0gUTbCY8=;
 b=gUJRHotJvUuvaB5z5I6pvXWEhsOn5Wnl8XsHH4wtsM386FNamFJFDIrU
 UWBLFM26JobJzd5QH8dcultL2FjOj/qwetxe0/+uIK+DReTPnMtcmguPN
 OmwT7O4FeaZkhDRGxW3Uf1HPNmWvtaP3eiO6u5VHYldrihiAgIWfm21y7
 MBexsJW9q5kzUSwH0mN+EHGjrApPhDY0a55lysp1G7fwFpdKxc636QzqQ
 bnmBUFlWoSIAsGU0rgmWXC97oc+mDIKCSGoFVWS8I7+rNbc8r6c37yITl
 OpqClCAJA0oWzFVFpXcZ6fiWdr7mpn9IMsjmfHh64tteoUiPRfjwNJmbU w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="3037734"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; 
   d="scan'208";a="3037734"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 09:42:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="703369297"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="703369297"
Received: from emikisch-mobl.amr.corp.intel.com (HELO [10.213.174.67])
 ([10.213.174.67])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 09:42:30 -0700
Message-ID: <60c69174-05ab-0c7f-d960-a3d8605582b3@linux.intel.com>
Date: Tue, 10 Oct 2023 17:42:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Andi Shyti <andi.shyti@linux.intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
References: <20231009233856.1932887-1-jonathan.cavitt@intel.com>
 <20231010135827.GA21382@mdroper-desk1.amr.corp.intel.com>
 <ZSVpunHMTkvNoX77@ashyti-mobl2.lan>
 <20231010160150.GF5757@mdroper-desk1.amr.corp.intel.com>
 <ZSV5F4NHv/I8Q0PH@ashyti-mobl2.lan>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <ZSV5F4NHv/I8Q0PH@ashyti-mobl2.lan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Temporarily force MTL into
 uncached mode
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
Cc: saurabhg.gupta@intel.com, intel-gfx@lists.freedesktop.org,
 Jonathan Cavitt <jonathan.cavitt@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 10/10/2023 17:17, Andi Shyti wrote:
> Hi Matt,
> 
>>>>> FIXME: CAT errors are cropping up on MTL.  This removes them,
>>>>> but the real root cause must still be diagnosed.
>>>>
>>>> Do you have a link to specific IGT test(s) that illustrate the CAT
>>>> errors so that we can ensure that they now appear fixed in CI?
>>>
>>> this one:
>>>
>>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124599v1/bat-mtlp-8/igt@i915_selftest@live@hugepages.html
>>>
>>> Andi
>>
>> Wait, now I'm confused.  That's a failure caused by a different patch
>> series (one that we won't be moving forward with).  The live@hugepages
>> test is always passing on drm-tip today:
>> https://intel-gfx-ci.01.org/tree/drm-tip/igt@i915_selftest@live@hugepages.html
> 
> yes, true, but that patch allows us to move forward with the
> testing and hit the CAT error.
> 
> (it was the most reachable link I found :))
> 
>> Is there a test that's giving CAT errors on drm-tip itself (even
>> sporadically) that we can monitor to see the impact of Jonathan's patch
>> here?
> 
> Otherwise this one:
> 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13667/re-mtlp-3/igt@gem_exec_fence@parallel.html#dmesg-warnings11

Parachuting in on a tangent - please do not mix CAT and CT errors. CAT, for me at least, associates with CATastrophic faults reported over CT channel, like GuC page faulting IIRC.

For CT errors maybe GuC folks can sched some light what they mean.

Regards,

Tvrtko
