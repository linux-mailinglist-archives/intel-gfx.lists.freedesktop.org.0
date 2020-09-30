Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C86B27F356
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 22:29:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4483D6E0DF;
	Wed, 30 Sep 2020 20:29:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 524176E0DF
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Sep 2020 20:29:47 +0000 (UTC)
IronPort-SDR: 3nERYfuYwDrYNpyWQKDo1ySlgNdGMjJvY71JLBia8EqPJV9csO8OXAreRfYGcpi1LLhnUF5rRi
 GAEccfBA480A==
X-IronPort-AV: E=McAfee;i="6000,8403,9760"; a="163400313"
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="163400313"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 13:29:43 -0700
IronPort-SDR: L7FGwBbH9TGpEbbv+DTpdlRHXUawehDRgIiVXChsF5TIrIH00s+CMa8GrGzlj8LEXp0+zrrHAU
 0FbNsRExnP6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="415810423"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga001.fm.intel.com with ESMTP; 30 Sep 2020 13:29:44 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 30 Sep 2020 13:29:43 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 30 Sep 2020 13:29:43 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Wed, 30 Sep 2020 13:29:43 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0g4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJtL2k5?=
 =?utf-8?Q?15:_Read_DIMM_size_in_Gb_rather_than_GB?=
Thread-Index: AQHWlxxFHZBpJNbE7ECqhOGELp/sO6mCGOkA
Date: Wed, 30 Sep 2020 20:29:43 +0000
Message-ID: <fcef727d141ff72f80726416e50d80a293227812.camel@intel.com>
References: <20200929131312.12999-1-ville.syrjala@linux.intel.com>
 <160146505198.17417.314450882901043537@emeril.freedesktop.org>
In-Reply-To: <160146505198.17417.314450882901043537@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-ID: <7242A94D9BA7654493FF53FC1AC9A111@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Read_DIMM_size_in_Gb_rather_than_GB?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 2020-09-30 at 11:24 +0000, Patchwork wrote:
> Patch Details
> Series:	drm/i915: Read DIMM size in Gb rather than GB
> URL:	https://patchwork.freedesktop.org/series/82210/
> State:	success
> Details:	https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18591/index.html
> CI Bug Log - changes from CI_DRM_9075_full -> Patchwork_18591_full
> Summary
> SUCCESS
> 
> No regressions found.

Pushed to dinq, thanks for the patch.

> 
> Possible new issues
> Here are the unknown changes that may have been introduced in Patchwork_18591_full:
> 
> Piglit changes
> Possible regressions
> spec@glsl-4.00@execution@built-in-functions@fs-reflect-dvec4-dvec4 (NEW):
> 
> {pig-icl-1065g7}: NOTRUN -> CRASH
> spec@glsl-4.00@execution@built-in-functions@gs-mod-dvec4-double (NEW):
> 
> {pig-icl-1065g7}: NOTRUN -> INCOMPLETE +2 similar issues
> New tests
> New tests have been introduced between CI_DRM_9075_full and Patchwork_18591_full:
> 
> New Piglit tests (4)
> spec@glsl-4.00@execution@built-in-functions@fs-reflect-dvec4-dvec4:
> 
> Statuses : 1 crash(s)
> Exec time: [6.68] s
> spec@glsl-4.00@execution@built-in-functions@gs-mod-dvec4-double:
> 
> Statuses : 1 incomplete(s)
> Exec time: [0.0] s
> spec@glsl-4.00@execution@built-in-functions@gs-op-div-double-dmat3x4:
> 
> Statuses : 1 incomplete(s)
> Exec time: [0.0] s
> spec@glsl-4.00@execution@built-in-functions@vs-op-div-double-dvec3:
> 
> Statuses : 1 incomplete(s)
> Exec time: [0.0] s
> Known issues
> Here are the changes found in Patchwork_18591_full that come from known issues:
> 
> IGT changes
> Issues hit
> igt@gem_exec_reloc@basic-many-active@rcs0:
> 
> shard-glk: PASS -> FAIL (i915#2389)
> igt@gem_exec_whisper@basic-queues-forked-all:
> 
> shard-glk: PASS -> DMESG-WARN (i915#118 / i915#95)
> igt@gem_huc_copy@huc-copy:
> 
> shard-tglb: PASS -> SKIP (i915#2190)
> igt@kms_big_fb@linear-64bpp-rotate-180:
> 
> shard-apl: PASS -> DMESG-WARN (i915#1635 / i915#1982) +1 similar issue
> igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1:
> 
> shard-glk: PASS -> FAIL (i915#2122)
> igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:
> 
> shard-skl: PASS -> FAIL (i915#2122)
> igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt:
> 
> shard-tglb: PASS -> DMESG-WARN (i915#1982) +4 similar issues
> igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:
> 
> shard-iclb: PASS -> DMESG-WARN (i915#1982)
> igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite:
> 
> shard-skl: PASS -> DMESG-WARN (i915#1982) +10 similar issues
> igt@kms_hdr@bpc-switch-suspend:
> 
> shard-kbl: PASS -> DMESG-WARN (i915#180) +14 similar issues
> 
> shard-skl: PASS -> FAIL (i915#1188)
> 
> igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
> 
> shard-skl: PASS -> FAIL (fdo#108145 / i915#265)
> igt@kms_psr2_su@page_flip:
> 
> shard-iclb: PASS -> SKIP (fdo#109642 / fdo#111068)
> igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
> 
> shard-skl: PASS -> INCOMPLETE (i915#198)
> igt@perf@polling-small-buf:
> 
> shard-iclb: PASS -> FAIL (i915#1722)
> igt@perf@short-reads:
> 
> shard-skl: PASS -> FAIL (i915#51)
> Possible fixes
> {igt@gem_ctx_persistence@heartbeat-close}:
> 
> shard-tglb: FAIL (i915#2519) -> PASS
> {igt@gem_ctx_persistence@heartbeat-many}:
> 
> shard-tglb: FAIL (i915#2520) -> PASS
> igt@gem_exec_create@forked:
> 
> shard-glk: DMESG-WARN (i915#118 / i915#95) -> PASS
> igt@i915_selftest@live@gt_heartbeat:
> 
> shard-skl: DMESG-FAIL (i915#541) -> PASS
> igt@i915_suspend@debugfs-reader:
> 
> shard-skl: INCOMPLETE (i915#198) -> PASS
> igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
> 
> shard-skl: FAIL (i915#2346) -> PASS
> igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions-varying-size:
> 
> shard-apl: DMESG-WARN (i915#1635 / i915#1982) -> PASS
> 
> shard-kbl: DMESG-WARN (i915#1982) -> PASS
> 
> igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1:
> 
> shard-apl: FAIL (i915#1635 / i915#79) -> PASS
> igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
> 
> shard-kbl: DMESG-WARN (i915#180) -> PASS +6 similar issues
> igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt:
> 
> shard-tglb: DMESG-WARN (i915#1982) -> PASS
> igt@kms_plane@plane-panning-bottom-right-pipe-b-planes:
> 
> shard-skl: DMESG-WARN (i915#1982) -> PASS +9 similar issues
> igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
> 
> shard-skl: FAIL (fdo#108145 / i915#265) -> PASS +2 similar issues
> igt@kms_psr@psr2_cursor_mmap_cpu:
> 
> shard-iclb: SKIP (fdo#109441) -> PASS +1 similar issue
> Warnings
> igt@kms_setmode@basic:
> 
> shard-skl: DMESG-FAIL (i915#1982 / i915#31) -> FAIL (i915#31)
> igt@runner@aborted:
> 
> shard-skl: FAIL (i915#1436 / i915#2439) -> (FAIL, FAIL) (i915#1436 / i915#1611 / i915#1814 / i915#2029 / i915#2439)
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> Participating hosts (11 -> 11)
> No changes in participating hosts
> 
> Build changes
> Linux: CI_DRM_9075 -> Patchwork_18591
> CI-20190529: 20190529
> CI_DRM_9075: fd24361b2b76956b5c056bc430a4c77edecb7744 @ git://anongit.freedesktop.org/gfx-ci/linux
> IGT_5792: cbaf441899f3b4f36cca5996aa6a69e7399b2dbd @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
> Patchwork_18591: e98e91e8dda763e92597426bc3b6a902d43a6efa @ git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> 
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> 
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
