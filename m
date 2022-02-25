Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 459274C47AF
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Feb 2022 15:36:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69A5610E6B1;
	Fri, 25 Feb 2022 14:36:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1385E10E6B1
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Feb 2022 14:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645799813; x=1677335813;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=+iW6QGAUwxMFSJWJtkQLqJ4U3z2mGy7akOz2n2mQAtA=;
 b=CosXDXM0WFJ+zRc6IqRWVuhxpNnL5CwlsVv0ScciRih23DOlZNDmSmyR
 ANGCsncF0MflqDZtLwvTl1WIu+Y+Bk8lSIldY9S/lhSLQ3+eKZolzwZOn
 BpTgVOO3xbLsagyijDFOPY9hWJB3n86Az2t25CaAi+W5qUPRzKXDAHARK
 hGor5eItw6tQJ1ZynShQISVSbt0Erf1XfEvZMT9rmLDtt9W0G4F27PJSr
 M+I8IG+o7NGGw/LLMe6di/wpEyLlvYB32e9nAl2NP/we+wULE93sk0UDR
 5j808cCaFM97WXGv76kxCC4Kuze+YhTEPrvpNZtAPo1dZTc/bYQwMZYMR w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="338941484"
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="338941484"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 06:36:52 -0800
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="549281705"
Received: from pkinsell-mobl.ger.corp.intel.com (HELO [10.213.234.117])
 ([10.213.234.117])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 06:36:51 -0800
Message-ID: <309cb439-eac0-68b2-ed25-fa80885dc0d4@linux.intel.com>
Date: Fri, 25 Feb 2022 14:36:48 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org,
 Patchwork <patchwork@emeril.freedesktop.org>,
 "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
References: <20220223224523.1121224-1-vivek.kasireddy@intel.com>
 <164579379494.6270.4327635544476428444@emeril.freedesktop.org>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <164579379494.6270.4327635544476428444@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/mm=3A_Add_an_iterator_to_optimally_walk_over_holes_suitable_fo?=
 =?utf-8?q?r_an_allocation_=28rev4=29?=
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


On 25/02/2022 12:56, Patchwork wrote:
> *Patch Details*
> *Series:*	drm/mm: Add an iterator to optimally walk over holes suitable 
> for an allocation (rev4)
> *URL:*	https://patchwork.freedesktop.org/series/100136/ 
> <https://patchwork.freedesktop.org/series/100136/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_11282_full -> Patchwork_22396_full
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_22396_full absolutely need 
> to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_22396_full, please notify your bug team to allow 
> them
> to document this new failure mode, which will reduce false positives in CI.
> 
> 
>     Participating hosts (11 -> 11)
> 
> No changes in participating hosts
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in 
> Patchwork_22396_full:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   *
> 
>     igt@gem_eio@in-flight-suspend:
> 
>       o shard-snb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11282/shard-snb5/igt@gem_eio@in-flight-suspend.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-snb6/igt@gem_eio@in-flight-suspend.html>
>   *
> 
>     igt@i915_selftest@live@execlists:
> 
>       o shard-apl: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-apl3/igt@i915_selftest@live@execlists.html>

Odd.. I haven't found this last fail in history so I re-queued the 
series for testing. (The first one has been seen before apparently at 
least at 
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22352/shard-snb4/igt@gem_exec_suspend@basic-s3@smem.html).

Regards,

Tvrtko

> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_22396_full that come from known 
> issues:
> 
> 
>       CI changes
> 
> 
>         Issues hit
> 
>   * boot:
>       o shard-glk: (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11282/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11282/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11282/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11282/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11282/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11282/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11282/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11282/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11282/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11282/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11282/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11282/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11282/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11282/shard-glk4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11282/shard-glk4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11282/shard-glk4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11282/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11282/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11282/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11282/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11282/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11282/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11282/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11282/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11282/shard-glk1/boot.html>)
>         -> (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-glk8/boot.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-glk4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-glk4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-glk4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-glk1/boot.html>)
>         ([i915#4392])
> 
> 
>       IGT changes
> 
> 
>         Issues hit
> 
>   *
> 
>     igt@feature_discovery@psr2:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11282/shard-iclb2/igt@feature_discovery@psr2.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-iclb1/igt@feature_discovery@psr2.html>
>         ([i915#658])
>   *
> 
>     igt@gem_eio@in-flight-contexts-10ms:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11282/shard-apl2/igt@gem_eio@in-flight-contexts-10ms.html>
>         -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-apl7/igt@gem_eio@in-flight-contexts-10ms.html>
>         ([i915#3063])
>   *
> 
>     igt@gem_eio@kms:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11282/shard-tglb7/igt@gem_eio@kms.html>
>         -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-tglb2/igt@gem_eio@kms.html>
>         ([i915#3063])
>   *
> 
>     igt@gem_exec_balancer@parallel-balancer:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11282/shard-iclb1/igt@gem_exec_balancer@parallel-balancer.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-iclb5/igt@gem_exec_balancer@parallel-balancer.html>
>         ([i915#4525])
>   *
> 
>     igt@gem_exec_balancer@parallel-keep-in-fence:
> 
>       o shard-kbl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-kbl7/igt@gem_exec_balancer@parallel-keep-in-fence.html>
>         ([i915#5076])
>   *
> 
>     igt@gem_exec_capture@pi@vcs0:
> 
>       o shard-skl: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-skl9/igt@gem_exec_capture@pi@vcs0.html>
>         ([i915#4547])
>   *
> 
>     igt@gem_exec_fair@basic-deadline:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11282/shard-kbl6/igt@gem_exec_fair@basic-deadline.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-kbl4/igt@gem_exec_fair@basic-deadline.html>
>         ([i915#2846])
>   *
> 
>     igt@gem_exec_fair@basic-none-solo@rcs0:
> 
>       o shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-kbl7/igt@gem_exec_fair@basic-none-solo@rcs0.html>
>         ([i915#2842])
>   *
> 
>     igt@gem_exec_fair@basic-none@vcs0:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11282/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html>
>         ([i915#2842]) +2 similar issues
>   *
> 
>     igt@gem_exec_fair@basic-none@vecs0:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11282/shard-apl7/igt@gem_exec_fair@basic-none@vecs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-apl6/igt@gem_exec_fair@basic-none@vecs0.html>
>         ([i915#2842])
>   *
> 
>     igt@gem_exec_fair@basic-pace@vecs0:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11282/shard-tglb1/igt@gem_exec_fair@basic-pace@vecs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-tglb6/igt@gem_exec_fair@basic-pace@vecs0.html>
>         ([i915#2842]) +1 similar issue
>   *
> 
>     igt@gem_exec_whisper@basic-contexts-priority-all:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11282/shard-glk9/igt@gem_exec_whisper@basic-contexts-priority-all.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-glk9/igt@gem_exec_whisper@basic-contexts-priority-all.html>
>         ([i915#118])
>   *
> 
>     igt@gem_huc_copy@huc-copy:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-skl4/igt@gem_huc_copy@huc-copy.html>
>         ([fdo#109271] / [i915#2190])
>   *
> 
>     igt@gem_lmem_swapping@parallel-random-verify:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-iclb8/igt@gem_lmem_swapping@parallel-random-verify.html>
>         ([i915#4613])
>   *
> 
>     igt@gem_lmem_swapping@random-engines:
> 
>       o
> 
>         shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-skl7/igt@gem_lmem_swapping@random-engines.html>
>         ([fdo#109271] / [i915#4613]) +1 similar issue
> 
>       o
> 
>         shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-kbl7/igt@gem_lmem_swapping@random-engines.html>
>         ([fdo#109271] / [i915#4613])
> 
>   *
> 
>     igt@gem_pwrite@basic-exhaustion:
> 
>       o shard-apl: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-apl4/igt@gem_pwrite@basic-exhaustion.html>
>         ([i915#2658])
>   *
> 
>     igt@gem_pxp@regular-baseline-src-copy-readible:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-tglb6/igt@gem_pxp@regular-baseline-src-copy-readible.html>
>         ([i915#4270]) +1 similar issue
>   *
> 
>     igt@gem_render_copy@linear-to-vebox-y-tiled:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-iclb3/igt@gem_render_copy@linear-to-vebox-y-tiled.html>
>         ([i915#768]) +1 similar issue
>   *
> 
>     igt@gem_userptr_blits@coherency-sync:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-iclb6/igt@gem_userptr_blits@coherency-sync.html>
>         ([fdo#109290])
>   *
> 
>     igt@gem_userptr_blits@vma-merge:
> 
>       o shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-kbl7/igt@gem_userptr_blits@vma-merge.html>
>         ([i915#3318])
>   *
> 
>     igt@gen7_exec_parse@bitmasks:
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-iclb4/igt@gen7_exec_parse@bitmasks.html>
>         ([fdo#109289]) +1 similar issue
> 
>       o
> 
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-tglb1/igt@gen7_exec_parse@bitmasks.html>
>         ([fdo#109289])
> 
>   *
> 
>     igt@gen9_exec_parse@bb-start-far:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-iclb8/igt@gen9_exec_parse@bb-start-far.html>
>         ([i915#2856]) +1 similar issue
>   *
> 
>     igt@gen9_exec_parse@shadow-peek:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-tglb6/igt@gen9_exec_parse@shadow-peek.html>
>         ([i915#2527] / [i915#2856])
>   *
> 
>     igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-apl2/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html>
>         ([fdo#109271] / [i915#1937])
>   *
> 
>     igt@i915_pm_rc6_residency@rc6-fence:
> 
>       o shard-tglb: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-tglb6/igt@i915_pm_rc6_residency@rc6-fence.html>
>         ([i915#2681] / [i915#2684])
>   *
> 
>     igt@i915_pm_rpm@system-suspend-execbuf:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11282/shard-skl10/igt@i915_pm_rpm@system-suspend-execbuf.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-skl4/igt@i915_pm_rpm@system-suspend-execbuf.html>
>         ([i915#151])
>   *
> 
>     igt@i915_selftest@live@gt_lrc:
> 
>       o shard-tglb: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-tglb1/igt@i915_selftest@live@gt_lrc.html>
>         ([i915#2373])
>   *
> 
>     igt@i915_selftest@live@gt_pm:
> 
>       o shard-tglb: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-tglb1/igt@i915_selftest@live@gt_pm.html>
>         ([i915#1759])
>   *
> 
>     igt@i915_selftest@live@hangcheck:
> 
>       o shard-snb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11282/shard-snb7/igt@i915_selftest@live@hangcheck.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-snb2/igt@i915_selftest@live@hangcheck.html>
>         ([i915#3921])
>   *
> 
>     igt@i915_suspend@fence-restore-tiled2untiled:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11282/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-apl3/igt@i915_suspend@fence-restore-tiled2untiled.html>
>         ([i915#180]) +4 similar issues
>   *
> 
>     igt@kms_async_flips@alternate-sync-async-flip:
> 
>       o
> 
>         shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11282/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-skl10/igt@kms_async_flips@alternate-sync-async-flip.html>
>         ([i915#2521])
> 
>       o
> 
>         shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11282/shard-tglb5/igt@kms_async_flips@alternate-sync-async-flip.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-tglb7/igt@kms_async_flips@alternate-sync-async-flip.html>
>         ([i915#2521])
> 
>   *
> 
>     igt@kms_big_fb@linear-16bpp-rotate-270:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-tglb6/igt@kms_big_fb@linear-16bpp-rotate-270.html>
>         ([fdo#111614])
>   *
> 
>     igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-apl3/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html>
>         ([fdo#109271] / [i915#3777]) +1 similar issue
>   *
> 
>     igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-kbl7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html>
>         ([fdo#109271] / [i915#3777]) +1 similar issue
>   *
> 
>     igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-skl4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html>
>         ([fdo#109271] / [i915#3777])
>   *
> 
>     igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-iclb6/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html>
>         ([fdo#110723]) +1 similar issue
>   *
> 
>     igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-skl7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html>
>         ([i915#3743])
>   *
> 
>     igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-tglb6/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html>
>         ([fdo#111615])
>   *
> 
>     igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-tglb6/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html>
>         ([i915#3689] / [i915#3886]) +2 similar issues
>   *
> 
>     igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-kbl4/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html>
>         ([fdo#109271] / [i915#3886]) +4 similar issues
>   *
> 
>     igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-iclb6/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html>
>         ([fdo#109278] / [i915#3886]) +7 similar issues
>   *
> 
>     igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-skl4/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html>
>         ([fdo#109271] / [i915#3886]) +8 similar issues
>   *
> 
>     igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-apl2/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html>
>         ([fdo#109271] / [i915#3886]) +5 similar issues
>   *
> 
>     igt@kms_ccs@pipe-c-ccs-on-another-bo-yf_tiled_ccs:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-tglb6/igt@kms_ccs@pipe-c-ccs-on-another-bo-yf_tiled_ccs.html>
>         ([fdo#111615] / [i915#3689]) +1 similar issue
>   *
> 
>     igt@kms_ccs@pipe-d-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-tglb6/igt@kms_ccs@pipe-d-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html>
>         ([i915#3689]) +1 similar issue
>   *
> 
>     igt@kms_ccs@pipe-d-random-ccs-data-yf_tiled_ccs:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-iclb8/igt@kms_ccs@pipe-d-random-ccs-data-yf_tiled_ccs.html>
>         ([fdo#109278]) +27 similar issues
>   *
> 
>     igt@kms_chamelium@hdmi-aspect-ratio:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-skl7/igt@kms_chamelium@hdmi-aspect-ratio.html>
>         ([fdo#109271] / [fdo#111827]) +12 similar issues
>   *
> 
>     igt@kms_chamelium@hdmi-edid-change-during-suspend:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-apl4/igt@kms_chamelium@hdmi-edid-change-during-suspend.html>
>         ([fdo#109271] / [fdo#111827]) +10 similar issues
>   *
> 
>     igt@kms_chamelium@hdmi-mode-timings:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-kbl7/igt@kms_chamelium@hdmi-mode-timings.html>
>         ([fdo#109271] / [fdo#111827]) +5 similar issues
>   *
> 
>     igt@kms_chamelium@vga-hpd-with-enabled-mode:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-iclb6/igt@kms_chamelium@vga-hpd-with-enabled-mode.html>
>         ([fdo#109284] / [fdo#111827]) +7 similar issues
>   *
> 
>     igt@kms_color@pipe-d-ctm-red-to-blue:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-iclb6/igt@kms_color@pipe-d-ctm-red-to-blue.html>
>         ([fdo#109278] / [i915#1149])
>   *
> 
>     igt@kms_color_chamelium@pipe-b-ctm-0-75:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-tglb6/igt@kms_color_chamelium@pipe-b-ctm-0-75.html>
>         ([fdo#109284] / [fdo#111827]) +5 similar issues
>   *
> 
>     igt@kms_color_chamelium@pipe-d-ctm-green-to-red:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-iclb4/igt@kms_color_chamelium@pipe-d-ctm-green-to-red.html>
>         ([fdo#109278] / [fdo#109284] / [fdo#111827])
>   *
> 
>     igt@kms_content_protection@atomic:
> 
>       o shard-kbl: NOTRUN -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-kbl7/igt@kms_content_protection@atomic.html>
>         ([i915#1319])
>   *
> 
>     igt@kms_content_protection@dp-mst-lic-type-0:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-tglb6/igt@kms_content_protection@dp-mst-lic-type-0.html>
>         ([i915#3116] / [i915#3299])
>   *
> 
>     igt@kms_content_protection@dp-mst-lic-type-1:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-iclb2/igt@kms_content_protection@dp-mst-lic-type-1.html>
>         ([i915#3116])
>   *
> 
>     igt@kms_cursor_crc@pipe-a-cursor-32x10-sliding:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-tglb1/igt@kms_cursor_crc@pipe-a-cursor-32x10-sliding.html>
>         ([i915#3359])
>   *
> 
>     igt@kms_cursor_crc@pipe-b-cursor-32x32-rapid-movement:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-tglb6/igt@kms_cursor_crc@pipe-b-cursor-32x32-rapid-movement.html>
>         ([i915#3319]) +1 similar issue
>   *
> 
>     igt@kms_cursor_crc@pipe-b-cursor-512x512-offscreen:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-iclb3/igt@kms_cursor_crc@pipe-b-cursor-512x512-offscreen.html>
>         ([fdo#109278] / [fdo#109279]) +1 similar issue
>   *
> 
>     igt@kms_cursor_crc@pipe-c-cursor-512x512-rapid-movement:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-tglb6/igt@kms_cursor_crc@pipe-c-cursor-512x512-rapid-movement.html>
>         ([fdo#109279] / [i915#3359])
>   *
> 
>     igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-iclb8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html>
>         ([fdo#109274] / [fdo#109278])
>   *
> 
>     igt@kms_cursor_legacy@pipe-d-torture-bo:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-apl3/igt@kms_cursor_legacy@pipe-d-torture-bo.html>
>         ([fdo#109271] / [i915#533])
>   *
> 
>     igt@kms_cursor_legacy@pipe-d-torture-move:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-skl9/igt@kms_cursor_legacy@pipe-d-torture-move.html>
>         ([fdo#109271]) +168 similar issues
>   *
> 
>     igt@kms_dp_tiled_display@basic-test-pattern:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-tglb6/igt@kms_dp_tiled_display@basic-test-pattern.html>
>         ([i915#426])
>   *
> 
>     igt@kms_fbcon_fbt@fbc-suspend:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11282/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html>
>         ([i915#180] / [i915#636])
>   *
> 
>     igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-tglb6/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html>
>         ([fdo#109274] / [fdo#111825]) +2 similar issues
>   *
> 
>     igt@kms_flip@2x-flip-vs-rmfb-interruptible:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-iclb3/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html>
>         ([fdo#109274]) +6 similar issues
>   *
> 
>     igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
> 
>       o shard-kbl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html>
>         ([i915#180]) +3 similar issues
>   *
> 
>     igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11282/shard-iclb5/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-iclb3/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html>
>         ([i915#2867])
>   *
> 
>     igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11282/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html>
>         ([i915#2122]) +3 similar issues
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-pwrite:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-pwrite.html>
>         ([fdo#109280] / [fdo#111825]) +6 similar issues
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-apl3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html>
>         ([fdo#109271]) +91 similar issues
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html>
>         ([fdo#109280]) +21 similar issues
>   *
> 
>     igt@kms_hdr@static-swap:
> 
>       o
> 
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-tglb1/igt@kms_hdr@static-swap.html>
>         ([i915#1187])
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-iclb4/igt@kms_hdr@static-swap.html>
>         ([i915#1187])
> 
>   *
> 
>     igt@kms_invalid_mode@clock-too-high:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-iclb6/igt@kms_invalid_mode@clock-too-high.html>
>         ([i915#4278])
>   *
> 
>     igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-kbl3/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html>
>         ([fdo#109271] / [i915#533])
>   *
> 
>     igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11282/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html>
>         ([i915#180]) +5 similar issues
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
> 
>       o shard-apl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html>
>         ([i915#265])
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
> 
>       o shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-kbl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html>
>         ([fdo#108145] / [i915#265])
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11282/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22396/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html>
>         ([fdo#108145] / [i915#265])
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
> 
>       o shard-skl:
> 
