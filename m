Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CE78401966
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Sep 2021 12:04:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E83488946E;
	Mon,  6 Sep 2021 10:04:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3EB78946E
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Sep 2021 10:04:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10098"; a="207158564"
X-IronPort-AV: E=Sophos;i="5.85,272,1624345200"; d="scan'208";a="207158564"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2021 03:04:17 -0700
X-IronPort-AV: E=Sophos;i="5.85,272,1624345200"; d="scan'208";a="691613666"
Received: from ljdobbs-mobl1.ger.corp.intel.com (HELO [10.213.197.10])
 ([10.213.197.10])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2021 03:04:15 -0700
To: Petri Latvala <petri.latvala@intel.com>
Cc: jim.cromie@gmail.com,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Jigar Bhatt <jigar.bhatt@intel.com>,
 Anshuman Gupta <anshuman.gupta@intel.com>
References: <20210831202133.2165222-1-jim.cromie@gmail.com>
 <163045309469.10657.6449873390681387525@emeril.freedesktop.org>
 <CAJfuBxyNmoFJJ5Auh4DW0cQy13o17i8c=uDYcmfJYF+jVsrhqA@mail.gmail.com>
 <1f670a6b-af77-0e07-880e-57b1e28bfc7b@linux.intel.com>
 <YTIcl3pp+ut4z6Ct@platvala-desk.ger.corp.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <a9388b74-ca2e-19d1-123e-f4892750529c@linux.intel.com>
Date: Mon, 6 Sep 2021 11:04:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <YTIcl3pp+ut4z6Ct@platvala-desk.ger.corp.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgdXNl?=
 =?utf-8?q?_DYNAMIC=5FDEBUG_to_implement_DRM=2Edebug_=28rev2=29?=
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


On 03/09/2021 14:01, Petri Latvala wrote:
> On Fri, Sep 03, 2021 at 12:29:51PM +0100, Tvrtko Ursulin wrote:
>>
>> On 03/09/2021 01:31, jim.cromie@gmail.com wrote:
>>>
>>>
>>> On Tue, Aug 31, 2021 at 5:38 PM Patchwork
>>> <patchwork@emeril.freedesktop.org
>>> <mailto:patchwork@emeril.freedesktop.org>> wrote:
>>>
>>>      __
>>>      *Patch Details*
>>>      *Series:*	use DYNAMIC_DEBUG to implement DRM.debug (rev2)
>>>      *URL:*	https://patchwork.freedesktop.org/series/93914/
>>>      <https://patchwork.freedesktop.org/series/93914/>
>>>      *State:*	failure
>>>      *Details:*
>>>      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/index.html
>>>      <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/index.html>
>>>
>>>
>>>        CI Bug Log - changes from CI_DRM_10541_full -> Patchwork_20931_full
>>>
>>>
>>>          Summary
>>>
>>>      *FAILURE*
>>>
>>>      Serious unknown changes coming with Patchwork_20931_full absolutely
>>>      need to be
>>>      verified manually.
>>>
>>>      If you think the reported changes have nothing to do with the changes
>>>      introduced in Patchwork_20931_full, please notify your bug team to
>>>      allow them
>>>      to document this new failure mode, which will reduce false positives
>>>      in CI.
>>>
>>>
>>> hi Team !
>>>
>>> I think I need a bit of orientation.
>>>
>>>
>>>          Possible new issues
>>>
>>>      Here are the unknown changes that may have been introduced in
>>>      Patchwork_20931_full:
>>>
>>>
>>>            IGT changes
>>>
>>>
>>>              Possible regressions
>>>
>>>        * igt@gem_exec_schedule@u-submit-golden-slice@vcs0:
>>>            o shard-skl: NOTRUN -> INCOMPLETE
>>>              <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl10/igt@gem_exec_schedule@u-submit-golden-slice@vcs0.html>
>>>
>>>
>>>              Warnings
>>>
>>>        * igt@i915_pm_dc@dc9-dpms:
>>>            o shard-skl: SKIP
>>>              <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-skl6/igt@i915_pm_dc@dc9-dpms.html>
>>>              ([fdo#109271]) -> FAIL
>>>              <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl8/igt@i915_pm_dc@dc9-dpms.html>
>>>
>>>
>>>
>>> Im assuming the FAIL is the sticking point,
>>
>> Both INCOMPLETE and FAIL will cause a failure to be declared, but in this case it looks to me this series is not at fault.
>>
>> 1)
>>
>> The gem_exec_schedule failure looks like a test runner timeout issue (and apparently test does not handle well running the the fence timeout enabled).
>>
>> @Petri - does the below look like IGT runner running our of time budget for the test run? Would it log
>>
>> [1051.943629] [114/138] ( 11s left) gem_exec_schedule (u-submit-golden-slice)
>> Starting subtest: u-submit-golden-slice
>> Starting dynamic subtest: rcs0
>> Dynamic subtest rcs0: SUCCESS (80.175s)
>> Starting dynamic subtest: bcs0
>> Dynamic subtest bcs0: SUCCESS (80.195s)
>> Starting dynamic subtest: vcs0
>> Dynamic subtest vcs0: SUCCESS (80.243s)
>> Starting dynamic subtest: vecs0
>>
>> Interesting part is that according to dmesg it never got to the vecs0 dynamic subtest - any idea what happened there?
> 
> Yep, we ran out of time. We still had 11 seconds left to execute
> something but then that test took centuries.

Okay at least that's explained then.

Perhaps could make that act of termination logged in igt_runner log?

Also, any explanation on why dmesg and igt_runner log disagree on how 
far the test progressed (in terms of which subtest was active when 
things ended)?

Regards,

Tvrtko


> 
> 
>>
>> 2)
>>
>> I915_pm_dc I'd say you just gotten unlucky that test went from always skipping on SKL to trying to run it and then it failed. But I don't know enough about the test to tell you why. Adding Jigar and Anshuman as test author and reviewer who might be able to shed some light here.
>>
>> Regards,
>>
>> Tvrtko
>>
>>> I found code that seemed to be relevant
>>>
>>> [jimc@frodo igt-ci-tags.git]$ git remote -v
>>> origin https://gitlab.freedesktop.org/gfx-ci/igt-ci-tags.git
>>> <https://gitlab.freedesktop.org/gfx-ci/igt-ci-tags.git> (fetch)
>>> origin https://gitlab.freedesktop.org/gfx-ci/igt-ci-tags.git
>>> <https://gitlab.freedesktop.org/gfx-ci/igt-ci-tags.git> (push)
>>>
>>> I built it, got an error, threw that to google,
>>> found a patch on i-g-t from
>>> commit 1ff3e5ae99ceb66d2926d58635d0379ce971065a (HEAD -> master)
>>> Author: Lyude Paul <lyude@redhat.com <mailto:lyude@redhat.com>>
>>> Date:   Mon Apr 15 14:57:23 2019 -0400
>>>
>>> and applied it
>>> it fixed the one problem
>>>
>>> then I looked at previous head
>>>
>>> commit f052e49a43cc9704ea5f240df15dd9d3dfed68ab (origin/master, origin/HEAD)
>>> Author: Simon Ser <simon.ser@intel.com <mailto:simon.ser@intel.com>>
>>> Date:   Wed Apr 24 19:15:26 2019 +0300
>>>
>>> It sure seems that tree is stale.
> 
> That tree's master ref does not get updated. It's only for storing tags.
> 
> That test result comparison was too long to fit into patchwork so the
> build information at the bottom is missing, but the BAT results have
> it:
> 
> IGT_6193: 080869f804cb86b25a38889e5ce9a870571cd8c4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> 
> 
> 
