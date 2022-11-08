Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6B79621355
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 14:49:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3A8210E467;
	Tue,  8 Nov 2022 13:49:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A92310E467
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 13:49:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667915358; x=1699451358;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=UMiLpxN8bKSvC0n2pPDHvhpx5WsaMmKXB5D+w90SpCM=;
 b=VJJusIpf5uLq3IPG/FrVoKW7nWnl/s4PQPnkCBwQfUahsYBHJKnCDM8x
 DB1h96HdL+hbpffilL24vIDs2DEO1FM68ORKq8xGM7Fi6YPCC/nBJuv/T
 pu3Q5G51CUwElPDPv/7vFOXwu2eUhfDF3UW5lZbTr8k+JkeoIzNoFbzjU
 PKcx+EPtDdY8D8PWZJv761hrp1edrLRc5ygcbsnz0ii2MfGZy9zKGJQgz
 8T3Ug6h17aStmrRroh5T938kOVZdsltC99lAh2KT85adbai2WkbPJ1QlX
 v5NJDaKiCnlLCwYmYTbrwr1hFoIIeXWjlSTec5TapdjroDsYZosZQmmfH Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="374967380"
X-IronPort-AV: E=Sophos;i="5.96,147,1665471600"; d="scan'208";a="374967380"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 05:49:17 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="965592619"
X-IronPort-AV: E=Sophos;i="5.96,147,1665471600"; d="scan'208";a="965592619"
Received: from tprzyluc-mobl.ger.corp.intel.com (HELO [10.252.16.225])
 ([10.252.16.225])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 05:49:16 -0800
Message-ID: <52efcdf9-6840-22f1-fa5f-794774938c10@intel.com>
Date: Tue, 8 Nov 2022 13:49:14 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.4.1
Content-Language: en-GB
To: intel-gfx@lists.freedesktop.org,
 "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
References: <20221107133027.38740-1-matthew.auld@intel.com>
 <166784385564.17762.4661798767320362988@emeril.freedesktop.org>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <166784385564.17762.4661798767320362988@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/ttm=3A_never_purge_busy_objects?=
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

On 07/11/2022 17:57, Patchwork wrote:
> *Patch Details*
> *Series:*	drm/i915/ttm: never purge busy objects
> *URL:*	https://patchwork.freedesktop.org/series/110601/ 
> <https://patchwork.freedesktop.org/series/110601/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_12351 -> Patchwork_110601v1
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_110601v1 absolutely need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_110601v1, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/index.html
> 
> 
>     Participating hosts (42 -> 30)
> 
> Additional (2): fi-kbl-soraka fi-cml-u2
> Missing (14): fi-ilk-m540 fi-bdw-samus fi-tgl-dsi fi-hsw-4200u bat-dg2-9 
> bat-adlp-6 bat-adlp-4 fi-ctg-p8600 bat-adln-1 bat-rplp-1 bat-rpls-1 
> bat-rpls-2 bat-dg2-11 bat-jsl-1
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in 
> Patchwork_110601v1:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>       o fi-cml-u2: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/fi-cml-u2/igt@i915_suspend@basic-s3-without-i915.html>

Unrelated. Patch only affects discrete platforms.

> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_110601v1 that come from known 
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
>     igt@gem_exec_fence@basic-busy@bcs0:
> 
>       o fi-cml-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/fi-cml-u2/igt@gem_exec_fence@basic-busy@bcs0.html> (i915#1208 <https://gitlab.freedesktop.org/drm/intel/issues/1208>) +1 similar issue
>   *
> 
>     igt@gem_exec_gttfill@basic:
> 
>       o
> 
>         fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/fi-kbl-soraka/igt@gem_exec_gttfill@basic.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +8 similar issues
> 
>       o
> 
>         fi-pnv-d510: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/fi-pnv-d510/igt@gem_exec_gttfill@basic.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html> (i915#7229 <https://gitlab.freedesktop.org/drm/intel/issues/7229>)
> 
>   *
> 
>     igt@gem_huc_copy@huc-copy:
> 
>       o
> 
>         fi-cml-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/fi-cml-u2/igt@gem_huc_copy@huc-copy.html> (i915#2190 <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
> 
>       o
> 
>         fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#2190 <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
> 
>   *
> 
>     igt@gem_lmem_swapping@basic:
> 
>       o fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +3 similar issues
>   *
> 
>     igt@gem_lmem_swapping@verify-random:
> 
>       o fi-cml-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/fi-cml-u2/igt@gem_lmem_swapping@verify-random.html> (i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +3 similar issues
>   *
> 
>     igt@i915_selftest@live@gem_contexts:
> 
>       o fi-kbl-soraka: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/fi-kbl-soraka/igt@i915_selftest@live@gem_contexts.html> (i915#7099 <https://gitlab.freedesktop.org/drm/intel/issues/7099>)
>   *
> 
>     igt@i915_selftest@live@gt_pm:
> 
>       o fi-kbl-soraka: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html> (i915#1886 <https://gitlab.freedesktop.org/drm/intel/issues/1886>)
>   *
> 
>     igt@kms_chamelium@common-hpd-after-suspend:
> 
>       o
> 
>         fi-ivb-3770: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/fi-ivb-3770/igt@kms_chamelium@common-hpd-after-suspend.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
> 
>       o
> 
>         fi-hsw-4770: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
> 
>   *
> 
>     igt@kms_chamelium@hdmi-hpd-fast:
> 
>       o fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/fi-kbl-soraka/igt@kms_chamelium@hdmi-hpd-fast.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +7 similar issues
>   *
> 
>     igt@kms_chamelium@vga-hpd-fast:
> 
>       o fi-cml-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/fi-cml-u2/igt@kms_chamelium@vga-hpd-fast.html> (fdo#109284 <https://bugs.freedesktop.org/show_bug.cgi?id=109284> / fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +7 similar issues
>   *
> 
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor:
> 
>       o fi-cml-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/fi-cml-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html> (i915#4213 <https://gitlab.freedesktop.org/drm/intel/issues/4213>)
>   *
> 
>     igt@kms_force_connector_basic@force-load-detect:
> 
>       o fi-cml-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/fi-cml-u2/igt@kms_force_connector_basic@force-load-detect.html> (fdo#109285 <https://bugs.freedesktop.org/show_bug.cgi?id=109285>)
>   *
> 
>     igt@kms_frontbuffer_tracking@basic:
> 
>       o fi-cml-u2: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html> (i915#402 <https://gitlab.freedesktop.org/drm/intel/issues/402>)
>   *
> 
>     igt@kms_setmode@basic-clone-single-crtc:
> 
>       o fi-cml-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/fi-cml-u2/igt@kms_setmode@basic-clone-single-crtc.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>   *
> 
>     igt@prime_vgem@basic-userptr:
> 
>       o fi-cml-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/fi-cml-u2/igt@prime_vgem@basic-userptr.html> (fdo#109295 <https://bugs.freedesktop.org/show_bug.cgi?id=109295> / i915#3301 <https://gitlab.freedesktop.org/drm/intel/issues/3301>)
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@i915_selftest@live@hangcheck:
> 
>       o
> 
>         fi-hsw-4770: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html> (i915#4785 <https://gitlab.freedesktop.org/drm/intel/issues/4785>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html>
> 
>       o
> 
>         fi-ivb-3770: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html> (i915#3303 <https://gitlab.freedesktop.org/drm/intel/issues/3303> / i915#7122 <https://gitlab.freedesktop.org/drm/intel/issues/7122>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html>
> 
>   *
> 
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size:
> 
>       o fi-bsw-kefka: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12351/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html> (i915#6298 <https://gitlab.freedesktop.org/drm/intel/issues/6298>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110601v1/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html>
> 
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> 
>     Build changes
> 
>   * Linux: CI_DRM_12351 -> Patchwork_110601v1
> 
> CI-20190529: 20190529
> CI_DRM_12351: 74d8166a994863d1f83e842c1822506a8f6aa806 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7046: c58d96d0fe237474b074e3472ce09c57c830d5de @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_110601v1: 74d8166a994863d1f83e842c1822506a8f6aa806 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
>       Linux commits
> 
> 5e25556f8ee0 drm/i915/ttm: never purge busy objects
> 
