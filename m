Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 17C7660D245
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 19:12:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0312910E1D4;
	Tue, 25 Oct 2022 17:12:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B52BE10E1D4
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Oct 2022 17:12:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666717968; x=1698253968;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=NECdQFTi63zuhOV5BAYrLjv6+lcveSC4N5Q46VhvuKY=;
 b=Hi5Xk+3Jfub6qsiAryEi+qr2bzdH1qrY+g3i1X+VGdrGxQfzjVQM/rnr
 zK6y64hzOazehzd5AcOE0fYKaANirQ/Nob2zbvVR5bM/Xb5gdQB5V3FPN
 IsvjclSJBSENdDsO7NHVQlnCSWgNhMpwkWdtHXIj/O40RxEdlTgTSpAld
 eiZMw2l/895QtzEDOb/aucfmrCaQENJ5JW5mV1Y0xidqzf9rDApYY9hLV
 w4iyNqyhr3L7pkIyLz5jiSQyGaqUN1ev3GvtT8f78pfEmnWoEjIj0mLsj
 rstm1mBNNJBOa2y9q//CWSlF1zDCc80Sal/ylz97K+6pDc/K1nxFRTqBL A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="394051578"
X-IronPort-AV: E=Sophos;i="5.95,212,1661842800"; d="scan'208";a="394051578"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 10:12:48 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="695038564"
X-IronPort-AV: E=Sophos;i="5.95,212,1661842800"; d="scan'208";a="695038564"
Received: from psobol-mobl1.ger.corp.intel.com (HELO [10.252.29.22])
 ([10.252.29.22])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 10:12:47 -0700
Message-ID: <74c8851d-81bb-b0a6-d081-637cbd57e827@intel.com>
Date: Tue, 25 Oct 2022 18:12:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.4.0
Content-Language: en-GB
To: intel-gfx@lists.freedesktop.org,
 "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
References: <20221024101946.28974-1-matthew.auld@intel.com>
 <166671585569.15482.10896233356975613292@emeril.freedesktop.org>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <166671585569.15482.10896233356975613292@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgUmV2?=
 =?utf-8?q?ert_=22drm/i915/uapi=3A_expose_GTT_alignment=22?=
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

On 25/10/2022 17:37, Patchwork wrote:
> *Patch Details*
> *Series:*	Revert "drm/i915/uapi: expose GTT alignment"
> *URL:*	https://patchwork.freedesktop.org/series/110041/ 
> <https://patchwork.freedesktop.org/series/110041/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110041v1/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110041v1/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_12284 -> Patchwork_110041v1
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_110041v1 absolutely need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_110041v1, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110041v1/index.html
> 
> 
>     Participating hosts (41 -> 42)
> 
> Additional (4): fi-kbl-soraka fi-hsw-4770 fi-icl-u2 bat-atsm-1
> Missing (3): fi-ctg-p8600 fi-bdw-samus fi-tgl-dsi
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in 
> Patchwork_110041v1:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   * igt@i915_selftest@live@hugepages:
>       o fi-kbl-soraka: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110041v1/fi-kbl-soraka/igt@i915_selftest@live@hugepages.html>

Also unrelated. Looks like some incomplete with no logs in the 
selftests. Patch is for sure not related, since it's just some uapi thing.

> 
> 
>         Suppressed
> 
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
> 
>   * igt@gem_exec_parallel@engines@contexts:
>       o {fi-ehl-2}: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12284/fi-ehl-2/igt@gem_exec_parallel@engines@contexts.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110041v1/fi-ehl-2/igt@gem_exec_parallel@engines@contexts.html>
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_110041v1 that come from known 
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
>     igt@gem_exec_gttfill@basic:
> 
>       o
> 
>         fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110041v1/fi-kbl-soraka/igt@gem_exec_gttfill@basic.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +9 similar issues
> 
>       o
> 
>         fi-pnv-d510: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12284/fi-pnv-d510/igt@gem_exec_gttfill@basic.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110041v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html> (i915#7229 <https://gitlab.freedesktop.org/drm/intel/issues/7229>)
> 
>   *
> 
>     igt@gem_huc_copy@huc-copy:
> 
>       o
> 
>         fi-icl-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110041v1/fi-icl-u2/igt@gem_huc_copy@huc-copy.html> (i915#2190 <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
> 
>       o
> 
>         fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110041v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#2190 <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
> 
>   *
> 
>     igt@gem_lmem_swapping@basic:
> 
>       o fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110041v1/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +3 similar issues
>   *
> 
>     igt@gem_lmem_swapping@random-engines:
> 
>       o fi-icl-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110041v1/fi-icl-u2/igt@gem_lmem_swapping@random-engines.html> (i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +3 similar issues
>   *
> 
>     igt@gem_render_tiled_blits@basic:
> 
>       o fi-apl-guc: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12284/fi-apl-guc/igt@gem_render_tiled_blits@basic.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110041v1/fi-apl-guc/igt@gem_render_tiled_blits@basic.html> (i915#7056 <https://gitlab.freedesktop.org/drm/intel/issues/7056>)
>   *
> 
>     igt@gem_softpin@allocator-basic-reserve:
> 
>       o fi-hsw-4770: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110041v1/fi-hsw-4770/igt@gem_softpin@allocator-basic-reserve.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +9 similar issues
>   *
> 
>     igt@i915_module_load@load:
> 
>       o fi-kbl-soraka: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110041v1/fi-kbl-soraka/igt@i915_module_load@load.html> (i915#1982 <https://gitlab.freedesktop.org/drm/intel/issues/1982>)
>   *
> 
>     igt@i915_pm_backlight@basic-brightness:
> 
>       o fi-hsw-4770: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110041v1/fi-hsw-4770/igt@i915_pm_backlight@basic-brightness.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#3012 <https://gitlab.freedesktop.org/drm/intel/issues/3012>)
>   *
> 
>     igt@i915_selftest@live@gt_pm:
> 
>       o fi-kbl-soraka: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110041v1/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html> (i915#1886 <https://gitlab.freedesktop.org/drm/intel/issues/1886>)
>   *
> 
>     igt@i915_selftest@live@hangcheck:
> 
>       o fi-hsw-4770: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110041v1/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html> (i915#4785 <https://gitlab.freedesktop.org/drm/intel/issues/4785>)
>   *
> 
>     igt@i915_selftest@live@hugepages:
> 
>       o
> 
>         fi-glk-j4005: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12284/fi-glk-j4005/igt@i915_selftest@live@hugepages.html> -> DMESG-FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110041v1/fi-glk-j4005/igt@i915_selftest@live@hugepages.html> (i915#7311 <https://gitlab.freedesktop.org/drm/intel/issues/7311>)
> 
>       o
> 
>         fi-rkl-guc: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12284/fi-rkl-guc/igt@i915_selftest@live@hugepages.html> -> DMESG-FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110041v1/fi-rkl-guc/igt@i915_selftest@live@hugepages.html> (i915#7311 <https://gitlab.freedesktop.org/drm/intel/issues/7311>)
> 
>       o
> 
>         fi-icl-u2: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110041v1/fi-icl-u2/igt@i915_selftest@live@hugepages.html> (i915#7311 <https://gitlab.freedesktop.org/drm/intel/issues/7311>)
> 
>   *
> 
>     igt@kms_chamelium@dp-crc-fast:
> 
>       o fi-hsw-4770: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110041v1/fi-hsw-4770/igt@kms_chamelium@dp-crc-fast.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +7 similar issues
>   *
> 
>     igt@kms_chamelium@hdmi-hpd-fast:
> 
>       o
> 
>         fi-icl-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110041v1/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html> (fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +7 similar issues
> 
>       o
> 
>         fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110041v1/fi-kbl-soraka/igt@kms_chamelium@hdmi-hpd-fast.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +7 similar issues
> 
>   *
> 
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor:
> 
>       o fi-icl-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110041v1/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html> (i915#4103 <https://gitlab.freedesktop.org/drm/intel/issues/4103>)
>   *
> 
>     igt@kms_force_connector_basic@force-load-detect:
> 
>       o fi-icl-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110041v1/fi-icl-u2/igt@kms_force_connector_basic@force-load-detect.html> (fdo#109285 <https://bugs.freedesktop.org/show_bug.cgi?id=109285>)
>   *
> 
>     igt@kms_psr@sprite_plane_onoff:
> 
>       o fi-hsw-4770: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110041v1/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#1072 <https://gitlab.freedesktop.org/drm/intel/issues/1072>) +3 similar issues
>   *
> 
>     igt@kms_setmode@basic-clone-single-crtc:
> 
>       o fi-icl-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110041v1/fi-icl-u2/igt@kms_setmode@basic-clone-single-crtc.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>   *
> 
>     igt@prime_vgem@basic-userptr:
> 
>       o fi-icl-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110041v1/fi-icl-u2/igt@prime_vgem@basic-userptr.html> (fdo#109295 <https://bugs.freedesktop.org/show_bug.cgi?id=109295> / i915#3301 <https://gitlab.freedesktop.org/drm/intel/issues/3301>)
>   *
> 
>     igt@runner@aborted:
> 
>       o
> 
>         fi-hsw-4770: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110041v1/fi-hsw-4770/igt@runner@aborted.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312> / i915#5594 <https://gitlab.freedesktop.org/drm/intel/issues/5594>)
> 
>       o
> 
>         fi-glk-j4005: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110041v1/fi-glk-j4005/igt@runner@aborted.html> (i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>)
> 
>       o
> 
>         fi-icl-u2: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110041v1/fi-icl-u2/igt@runner@aborted.html> (i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>)
> 
>       o
> 
>         fi-rkl-guc: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110041v1/fi-rkl-guc/igt@runner@aborted.html> (i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>)
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@gem_exec_suspend@basic-s3@smem:
> 
>       o {bat-adlm-1}: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12284/bat-adlm-1/igt@gem_exec_suspend@basic-s3@smem.html> (i915#2867 <https://gitlab.freedesktop.org/drm/intel/issues/2867>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110041v1/bat-adlm-1/igt@gem_exec_suspend@basic-s3@smem.html>
>   *
> 
>     igt@gem_huc_copy@huc-copy:
> 
>       o {bat-dg2-8}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12284/bat-dg2-8/igt@gem_huc_copy@huc-copy.html> (i915#7029 <https://gitlab.freedesktop.org/drm/intel/issues/7029>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110041v1/bat-dg2-8/igt@gem_huc_copy@huc-copy.html>
>   *
> 
>     igt@i915_selftest@live@hugepages:
> 
>       o {bat-rpls-1}: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12284/bat-rpls-1/igt@i915_selftest@live@hugepages.html> (i915#5278 <https://gitlab.freedesktop.org/drm/intel/issues/5278>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110041v1/bat-rpls-1/igt@i915_selftest@live@hugepages.html>
>   *
> 
>     igt@i915_selftest@live@slpc:
> 
>       o {bat-rpls-1}: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12284/bat-rpls-1/igt@i915_selftest@live@slpc.html> (i915#6367 <https://gitlab.freedesktop.org/drm/intel/issues/6367>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110041v1/bat-rpls-1/igt@i915_selftest@live@slpc.html>
> 
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> 
>     Build changes
> 
>   * Linux: CI_DRM_12284 -> Patchwork_110041v1
> 
> CI-20190529: 20190529
> CI_DRM_12284: a13de46d2077faa5767d89a0943b56201e204b5f @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7023: 229bb0accbb7c8cedcc8d9256ad2b6683c9f161a @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_110041v1: a13de46d2077faa5767d89a0943b56201e204b5f @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
>       Linux commits
> 
> fbbc67085103 Revert "drm/i915/uapi: expose GTT alignment"
> 
