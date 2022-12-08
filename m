Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C6D1646C85
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 11:15:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AFE810E1B8;
	Thu,  8 Dec 2022 10:15:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3645E10E1B8
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Dec 2022 10:15:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670494550; x=1702030550;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=/evhp+qapwHUwBy15kkdShTHwm9Hytmx27qmHKDPvkc=;
 b=JFPxFIzQzykiTGugRu/wymdtY38/HlK1ouWLb+ril1XdzgaWfEtouv30
 Xw44J4PdXJdgKDkBamMgpsTqVec1R8BP8Txn8EbyUW6B59AO34+EGn0i+
 2kIj9IIaYDoa6nrnx0pdw3NwwwBZXedTujNmJeO1xmkz/xFRsZYJ9TJMs
 Iz3vRRuN+s/9zX/yjXjbFGG+rZJ1r6qsuM5AEM40nrY8vkLlImCqRqhqX
 4iQW5oX2gg1eJ6rkU0p1cFQUuRsk1iZKbJultFsvqWAahb2YijDjFse+x
 sng1liLfZvSzyKKl3ie91TI9F06/3LcsZbGxHke8B2ZVStuWn49M3GjP5 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="315851263"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="315851263"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 02:15:49 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="710409132"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="710409132"
Received: from ppkelly-mobl1.ger.corp.intel.com (HELO [10.252.19.203])
 ([10.252.19.203])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 02:15:48 -0800
Message-ID: <b4661e99-d2ee-f79a-ad46-7dfc77a13457@intel.com>
Date: Thu, 8 Dec 2022 10:15:46 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.5.1
Content-Language: en-GB
To: intel-gfx@lists.freedesktop.org,
 "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
References: <20221202122844.428006-1-matthew.auld@intel.com>
 <166999000332.27866.6912316920555552503@emeril.freedesktop.org>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <166999000332.27866.6912316920555552503@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv6=2C1/3=5D_drm/i915/migrate=3A_Account_fo?=
 =?utf-8?q?r_the_reserved=5Fspace?=
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

On 02/12/2022 14:06, Patchwork wrote:
> *Patch Details*
> *Series:*	series starting with [v6,1/3] drm/i915/migrate: Account for 
> the reserved_space
> *URL:*	https://patchwork.freedesktop.org/series/111583/ 
> <https://patchwork.freedesktop.org/series/111583/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111583v1/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111583v1/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_12462 -> Patchwork_111583v1
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_111583v1 absolutely need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_111583v1, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111583v1/index.html
> 
> 
>     Participating hosts (42 -> 42)
> 
> Additional (3): fi-hsw-4770 bat-dg1-7 bat-adlp-9
> Missing (3): fi-ilk-m540 fi-rkl-11600 bat-atsm-1
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in 
> Patchwork_111583v1:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   * igt@i915_selftest@live@guc_multi_lrc:
>       o fi-kbl-soraka: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12462/fi-kbl-soraka/igt@i915_selftest@live@guc_multi_lrc.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111583v1/fi-kbl-soraka/igt@i915_selftest@live@guc_multi_lrc.html>
> 

Unrelated it seems.

> 
>         Suppressed
> 
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
> 
>   * igt@i915_selftest@live@requests:
>       o {bat-dg2-11}: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12462/bat-dg2-11/igt@i915_selftest@live@requests.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111583v1/bat-dg2-11/igt@i915_selftest@live@requests.html>
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_111583v1 that come from known 
> issues:
> 
> 
>       IGT changes
> 
> 
>         Issues hit
> 
>   *
> 
>     igt@core_hotunplug@unbind-rebind:
> 
>       o fi-apl-guc: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12462/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111583v1/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html> (i915#7073 <https://gitlab.freedesktop.org/drm/intel/issues/7073>)
>   *
> 
>     igt@gem_softpin@allocator-basic-reserve:
> 
>       o fi-hsw-4770: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111583v1/fi-hsw-4770/igt@gem_softpin@allocator-basic-reserve.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +11 similar issues
>   *
> 
>     igt@i915_selftest@live@hangcheck:
> 
>       o
> 
>         fi-hsw-4770: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111583v1/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html> (i915#4785 <https://gitlab.freedesktop.org/drm/intel/issues/4785>)
> 
>       o
> 
>         fi-ivb-3770: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12462/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111583v1/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html> (i915#3303 <https://gitlab.freedesktop.org/drm/intel/issues/3303> / i915#7122 <https://gitlab.freedesktop.org/drm/intel/issues/7122>)
> 
>   *
> 
>     igt@kms_chamelium@dp-crc-fast:
> 
>       o fi-hsw-4770: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111583v1/fi-hsw-4770/igt@kms_chamelium@dp-crc-fast.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +7 similar issues
>   *
> 
>     igt@kms_psr@sprite_plane_onoff:
> 
>       o fi-hsw-4770: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111583v1/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#1072 <https://gitlab.freedesktop.org/drm/intel/issues/1072>) +3 similar issues
>   *
> 
>     igt@runner@aborted:
> 
>       o
> 
>         fi-hsw-4770: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111583v1/fi-hsw-4770/igt@runner@aborted.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312> / i915#5594 <https://gitlab.freedesktop.org/drm/intel/issues/5594>)
> 
>       o
> 
>         fi-ivb-3770: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111583v1/fi-ivb-3770/igt@runner@aborted.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>)
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@gem_exec_suspend@basic-s3@smem:
> 
>       o {bat-rplp-1}: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12462/bat-rplp-1/igt@gem_exec_suspend@basic-s3@smem.html> (i915#2867 <https://gitlab.freedesktop.org/drm/intel/issues/2867>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111583v1/bat-rplp-1/igt@gem_exec_suspend@basic-s3@smem.html>
>   *
> 
>     igt@i915_selftest@live@requests:
> 
>       o {bat-rpls-2}: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12462/bat-rpls-2/igt@i915_selftest@live@requests.html> (i915#4983 <https://gitlab.freedesktop.org/drm/intel/issues/4983> / i915#6257 <https://gitlab.freedesktop.org/drm/intel/issues/6257>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111583v1/bat-rpls-2/igt@i915_selftest@live@requests.html>
>   *
> 
>     igt@i915_selftest@live@slpc:
> 
>       o {bat-adln-1}: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12462/bat-adln-1/igt@i915_selftest@live@slpc.html> (i915#6997 <https://gitlab.freedesktop.org/drm/intel/issues/6997>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111583v1/bat-adln-1/igt@i915_selftest@live@slpc.html>
>   *
> 
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:
> 
>       o fi-bsw-kefka: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12462/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html> (i915#6298 <https://gitlab.freedesktop.org/drm/intel/issues/6298>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111583v1/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html>
>   *
> 
>     igt@kms_psr@primary_page_flip:
> 
>       o fi-kbl-soraka: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12462/fi-kbl-soraka/igt@kms_psr@primary_page_flip.html> (i915#1982 <https://gitlab.freedesktop.org/drm/intel/issues/1982>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111583v1/fi-kbl-soraka/igt@kms_psr@primary_page_flip.html>
> 
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> 
>     Build changes
> 
>   * Linux: CI_DRM_12462 -> Patchwork_111583v1
> 
> CI-20190529: 20190529
> CI_DRM_12462: 00b10bdfd8b9edc9b2c681d806fbb6ae2e5f31a3 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7078: 71bce31c26998d5d53cff3138049261fd6c4fbaf @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_111583v1: 00b10bdfd8b9edc9b2c681d806fbb6ae2e5f31a3 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
>       Linux commits
> 
> 108fd0fd08c2 drm/i915/selftests: exercise emit_pte() with nearly full ring
> cc3ee4e1969b drm/i915/selftests: use live_subtests for live_migrate
> bc2bb88fad52 drm/i915/migrate: Account for the reserved_space
> 
