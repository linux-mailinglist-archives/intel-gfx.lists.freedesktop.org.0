Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F254E5FD1
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Mar 2022 09:01:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7168D10E894;
	Thu, 24 Mar 2022 08:00:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C653B10E899
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Mar 2022 08:00:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648108857; x=1679644857;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Uxk1WFBF5pDiu3zpOHVAhv1tTS12lzZgUGXBGq2SE4I=;
 b=m20dZp26hwsFnM0DWEe6x8Ace2YXvCmUGeq16tnlZ0bWcr63Lt08aDw5
 kr+F4+ygMjxYFkx312sIjsS1fKxn1HGtWvsx2MFg9FC0X4MrpvUqOJ/SY
 9uVYAEmFaG7xtE3la+199q9iOlmm+kJCAGbxkDRiSmMAnivgNthDvQ93Q
 ngAkcEkQVPgDwYUYgS5OcH2MXk9n0Ug7sDFfsmKj9KOTjf5Ry+dAQYDFc
 wBj9Lb6xWKpLZixBOFU5fXi1LwBAMRmoBUDymSO/BZ2hHU6Z+SBaLlgtI
 8j1CFdA+22eKRFOyJqZCPJQCic2PSgUx6t9J+zJUfnmBjwtdoAS9BeCHm Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="245789708"
X-IronPort-AV: E=Sophos;i="5.90,206,1643702400"; d="scan'208";a="245789708"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 01:00:57 -0700
X-IronPort-AV: E=Sophos;i="5.90,206,1643702400"; d="scan'208";a="561267697"
Received: from piotrkow-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.19.236])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 01:00:54 -0700
Date: Thu, 24 Mar 2022 09:00:52 +0100
From: Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YjwlNJi+90XXm15q@zkempczy-mobl2>
References: <20220323174638.11017-1-zbigniew.kempczynski@intel.com>
 <164806147706.17992.1834067932902872600@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <164806147706.17992.1834067932902872600@emeril.freedesktop.org>
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 23, 2022 at 06:51:17PM +0000, Patchwork wrote:
>    Patch Details
> 
>    Series:  Revert "drm/i915/dg2: Add relocation exception" (rev2)              
>    URL:     https://patchwork.freedesktop.org/series/101669/                    
>    State:   failure                                                             
>    Details: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22660/index.html 
> 
>            CI Bug Log - changes from CI_DRM_11398 -> Patchwork_22660
> 
> Summary
> 
>    FAILURE
> 
>    Serious unknown changes coming with Patchwork_22660 absolutely need to be
>    verified manually.
> 
>    If you think the reported changes have nothing to do with the changes
>    introduced in Patchwork_22660, please notify your bug team to allow them
>    to document this new failure mode, which will reduce false positives in
>    CI.
> 
>    External URL:
>    https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22660/index.html
> 
> Participating hosts (45 -> 42)
> 
>    Additional (5): bat-dg2-8 bat-dg2-9 fi-kbl-8809g bat-rpls-1 bat-jsl-1
>    Missing (8): fi-kbl-soraka shard-tglu fi-hsw-4200u bat-adlm-1 fi-bsw-cyan
>    fi-ctg-p8600 shard-rkl fi-bdw-samus
> 
> Possible new issues
> 
>    Here are the unknown changes that may have been introduced in
>    Patchwork_22660:
> 
>   IGT changes
> 
>     Possible regressions
> 
>      * igt@i915_selftest@live@hangcheck:
>           * fi-hsw-4770: PASS -> INCOMPLETE

Unrelated to the change.

> 
>     Suppressed
> 
>    The following results come from untrusted machines, tests, or statuses.
>    They do not affect the overall result.
> 
>      * igt@gem_busy@busy@all:
> 
>           * {bat-dg2-8}: NOTRUN -> INCOMPLETE
>      * igt@gem_exec_gttfill@basic:
> 
>           * {bat-dg2-9}: NOTRUN -> SKIP
>      * igt@gem_exec_suspend@basic-s0@smem:
> 
>           * {bat-dg2-9}: NOTRUN -> FAIL +7 similar issues

For this one I got success on no-reloc code:

./gem_exec_suspend --run basic-S0
IGT-Version: 1.26-NO-GIT (x86_64) (Linux: 5.17.0+ x86_64)
Starting subtest: basic-S0
Starting dynamic subtest: smem
[cmd] rtcwake: assuming RTC uses UTC ...
rtcwake: wakeup from "freeze" using /dev/rtc0 at Thu Mar 24 07:56:03 2022
Dynamic subtest smem: SUCCESS (2.817s)
Starting dynamic subtest: lmem0
[cmd] rtcwake: assuming RTC uses UTC ...
rtcwake: wakeup from "freeze" using /dev/rtc0 at Thu Mar 24 07:56:20 2022
Dynamic subtest lmem0: SUCCESS (3.184s)
Subtest basic-S0: SUCCESS (6.001s)

@Lucas - please consider reverting relocations for dg2. This will speed
up our work and I've fixed yesterday all potential problems with no-reloc
for BAT on dg2.
--
Zbigniew

> 
> Known issues
> 
>    Here are the changes found in Patchwork_22660 that come from known issues:
> 
>   IGT changes
> 
>     Issues hit
> 
>      * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
> 
>           * fi-snb-2600: NOTRUN -> SKIP (fdo#109271) +17 similar issues
>      * igt@gem_exec_suspend@basic-s0@smem:
> 
>           * fi-kbl-8809g: NOTRUN -> DMESG-WARN (i915#4962) +1 similar issue
>      * igt@gem_huc_copy@huc-copy:
> 
>           * fi-kbl-8809g: NOTRUN -> SKIP (fdo#109271 / i915#2190)
>      * igt@gem_lmem_swapping@random-engines:
> 
>           * fi-kbl-8809g: NOTRUN -> SKIP (fdo#109271 / i915#4613) +3 similar
>             issues
>      * igt@i915_pm_rpm@basic-rte:
> 
>           * fi-kbl-8809g: NOTRUN -> SKIP (fdo#109271) +54 similar issues
>      * igt@i915_selftest@live@gt_engines:
> 
>           * bat-dg1-6: PASS -> INCOMPLETE (i915#4418)
>      * igt@kms_chamelium@hdmi-edid-read:
> 
>           * fi-kbl-8809g: NOTRUN -> SKIP (fdo#109271 / fdo#111827) +8 similar
>             issues
>      * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
> 
>           * fi-kbl-8809g: NOTRUN -> SKIP (fdo#109271 / i915#5341)
>      * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
> 
>           * fi-kbl-8809g: NOTRUN -> SKIP (fdo#109271 / i915#533)
>      * igt@runner@aborted:
> 
>           * fi-hsw-4770: NOTRUN -> FAIL (fdo#109271 / i915#1436 / i915#2722 /
>             i915#4312)
> 
>           * bat-dg1-6: NOTRUN -> FAIL (i915#4312 / i915#5257)
> 
>     Possible fixes
> 
>      * igt@i915_selftest@live@gt_timelines:
> 
>           * {bat-rpls-2}: DMESG-WARN (i915#4391) -> PASS
>      * igt@i915_selftest@live@hangcheck:
> 
>           * fi-snb-2600: INCOMPLETE (i915#3921) -> PASS
>      * igt@kms_busy@basic@modeset:
> 
>           * {bat-adlp-6}: DMESG-WARN (i915#3576) -> PASS
>      * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
> 
>           * fi-cfl-8109u: DMESG-WARN (i915#295 / i915#5341) -> PASS
>      * igt@kms_pipe_crc_basic@read-crc-pipe-b:
> 
>           * fi-cfl-8109u: DMESG-WARN (i915#295) -> PASS +10 similar issues
> 
>     Warnings
> 
>      * igt@runner@aborted:
>           * fi-apl-guc: FAIL (i915#2426 / i915#4312) -> FAIL (i915#4312)
> 
>    {name}: This element is suppressed. This means it is ignored when
>    computing
>    the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> Build changes
> 
>      * Linux: CI_DRM_11398 -> Patchwork_22660
> 
>    CI-20190529: 20190529
>    CI_DRM_11398: da54e0aff302424358b14f443a9be2f84bb6ca47 @
>    git://anongit.freedesktop.org/gfx-ci/linux
>    IGT_6389: fa423f527496936a759eb838b023642deea7625f @
>    https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>    Patchwork_22660: 1efe3a8db87fa1aa51256528bd863ffaadea5689 @
>    git://anongit.freedesktop.org/gfx-ci/linux
> 
>    == Linux commits ==
> 
>    1efe3a8db87f Revert "drm/i915/dg2: Add relocation exception"
