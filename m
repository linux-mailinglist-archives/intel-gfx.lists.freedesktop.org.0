Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C194EB442
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 21:50:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5D4610E357;
	Tue, 29 Mar 2022 19:50:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D59110E357
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 19:50:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648583412; x=1680119412;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=+PUo0CGv65uldwZ0wkb/rIJHpUaNZfOMA51ClfLf7+M=;
 b=LpbQn8YPyIynpZG8eNvj8APjAaN9q5IhjiH0+0gcRCLUW6tV8r5gupYA
 Iyy8Mx5/MhPBD/fT3q3XwxgUbObOoAXdCOYTgRU7qNHb7L1ZJAf9hJ0EM
 k6rWrkMQ1hVZTkonxZdrO539SfvbDQnxwC+9zc+H2CvI4pBKIdbMbTG0F
 o+Edk1C3TfvibGEpEb1s4rGZiKwEeZnlHLpqEupOECd9N5iF8jAKnCmwE
 0e3L9OG6jHCYxVUsYUXKhUqO7E6lM22EsaPSJhgHtcec/r54nrCkZMOPL
 l6WSFElbj9Q74zL7OvYtvRv+PXdXqVDhfQjJOyG3kAGpllV8CyGFdYyd6 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="345791541"
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="345791541"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 12:50:11 -0700
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="546537038"
Received: from ldmartin-desk2.jf.intel.com (HELO ldmartin-desk2)
 ([10.24.12.102])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 12:50:11 -0700
Date: Tue, 29 Mar 2022 12:50:11 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
Message-ID: <20220329195011.2eaffu7ojo6igo4b@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220323174638.11017-1-zbigniew.kempczynski@intel.com>
 <164806147706.17992.1834067932902872600@emeril.freedesktop.org>
 <YjwlNJi+90XXm15q@zkempczy-mobl2>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YjwlNJi+90XXm15q@zkempczy-mobl2>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgUmV2?=
 =?utf-8?q?ert_=22drm/i915/dg2=3A_Add_relocation_exception=22_=28rev2=29?=
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 24, 2022 at 09:00:52AM +0100, Zbigniew Kempczyński wrote:
>On Wed, Mar 23, 2022 at 06:51:17PM +0000, Patchwork wrote:
>>    Patch Details
>>
>>    Series:  Revert "drm/i915/dg2: Add relocation exception" (rev2)
>>    URL:     https://patchwork.freedesktop.org/series/101669/
>>    State:   failure
>>    Details: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22660/index.html
>>
>>            CI Bug Log - changes from CI_DRM_11398 -> Patchwork_22660
>>
>> Summary
>>
>>    FAILURE
>>
>>    Serious unknown changes coming with Patchwork_22660 absolutely need to be
>>    verified manually.
>>
>>    If you think the reported changes have nothing to do with the changes
>>    introduced in Patchwork_22660, please notify your bug team to allow them
>>    to document this new failure mode, which will reduce false positives in
>>    CI.
>>
>>    External URL:
>>    https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22660/index.html
>>
>> Participating hosts (45 -> 42)
>>
>>    Additional (5): bat-dg2-8 bat-dg2-9 fi-kbl-8809g bat-rpls-1 bat-jsl-1
>>    Missing (8): fi-kbl-soraka shard-tglu fi-hsw-4200u bat-adlm-1 fi-bsw-cyan
>>    fi-ctg-p8600 shard-rkl fi-bdw-samus
>>
>> Possible new issues
>>
>>    Here are the unknown changes that may have been introduced in
>>    Patchwork_22660:
>>
>>   IGT changes
>>
>>     Possible regressions
>>
>>      * igt@i915_selftest@live@hangcheck:
>>           * fi-hsw-4770: PASS -> INCOMPLETE
>
>Unrelated to the change.
>
>>
>>     Suppressed
>>
>>    The following results come from untrusted machines, tests, or statuses.
>>    They do not affect the overall result.
>>
>>      * igt@gem_busy@busy@all:
>>
>>           * {bat-dg2-8}: NOTRUN -> INCOMPLETE
>>      * igt@gem_exec_gttfill@basic:
>>
>>           * {bat-dg2-9}: NOTRUN -> SKIP
>>      * igt@gem_exec_suspend@basic-s0@smem:
>>
>>           * {bat-dg2-9}: NOTRUN -> FAIL +7 similar issues
>
>For this one I got success on no-reloc code:
>
>./gem_exec_suspend --run basic-S0
>IGT-Version: 1.26-NO-GIT (x86_64) (Linux: 5.17.0+ x86_64)
>Starting subtest: basic-S0
>Starting dynamic subtest: smem
>[cmd] rtcwake: assuming RTC uses UTC ...
>rtcwake: wakeup from "freeze" using /dev/rtc0 at Thu Mar 24 07:56:03 2022
>Dynamic subtest smem: SUCCESS (2.817s)
>Starting dynamic subtest: lmem0
>[cmd] rtcwake: assuming RTC uses UTC ...
>rtcwake: wakeup from "freeze" using /dev/rtc0 at Thu Mar 24 07:56:20 2022
>Dynamic subtest lmem0: SUCCESS (3.184s)
>Subtest basic-S0: SUCCESS (6.001s)
>
>@Lucas - please consider reverting relocations for dg2. This will speed
>up our work and I've fixed yesterday all potential problems with no-reloc
>for BAT on dg2.

Please trigger a re-test on this to compare to a recent drm-tip.
It would be bad if this then blocks the execution of other tests and we
drop the pass and execution rates.

Lucas De Marchi
