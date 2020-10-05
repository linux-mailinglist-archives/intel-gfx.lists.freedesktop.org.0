Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB94E284387
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Oct 2020 02:50:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C2A36E214;
	Tue,  6 Oct 2020 00:50:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 764DD6E214
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Oct 2020 00:50:34 +0000 (UTC)
IronPort-SDR: AAmxxYutrTR3VIFh56lakQSzK8vPS/Y1cnLI5W5wxXPwiFnlvb8GwG8Daa2xAK+vir8uctXSI2
 47+W130Q8nbA==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="151226931"
X-IronPort-AV: E=Sophos;i="5.77,341,1596524400"; d="scan'208";a="151226931"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2020 17:50:32 -0700
IronPort-SDR: kaRQvYrSnqnlOLh0YxHpBDDpvcg+9ULbiuPfNdxShcpOvSazduUPP361iZVz4GpmiNkqbxMztz
 /9AvCLRhFw5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,341,1596524400"; d="scan'208";a="327239190"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga002.jf.intel.com with ESMTP; 05 Oct 2020 17:25:10 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 5 Oct 2020 11:55:54 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 5 Oct 2020 11:55:52 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Mon, 5 Oct 2020 11:55:52 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvdGdsL3Bzcjog?=
 =?utf-8?B?Rml4IGdsaXRjaGVzIHdoZW4gZG9pbmcgZnJvbnRidWZmZXIgbW9kaWZpY2F0?=
 =?utf-8?Q?ions?=
Thread-Index: AQHWmSRIyVo2ldrR80SJZnCiCeLwwKmJ1k+A
Date: Mon, 5 Oct 2020 18:55:52 +0000
Message-ID: <566496a47a6fe682343ec575160ca7be51ef4ef2.camel@intel.com>
References: <20201002231627.24528-1-jose.souza@intel.com>
 <160168841158.24066.11778037651621211060@emeril.freedesktop.org>
In-Reply-To: <160168841158.24066.11778037651621211060@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <B6C3B2D6B4805C4FA7FF6DBB2D419E3D@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl/psr=3A_Fix_glitches_when_doing_frontbuffer_modificati?=
 =?utf-8?q?ons?=
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

On Sat, 2020-10-03 at 01:26 +0000, Patchwork wrote:
> Patch Details
> Series:	drm/i915/tgl/psr: Fix glitches when doing frontbuffer modifications
> URL:	https://patchwork.freedesktop.org/series/82351/
> State:	failure
> Details:	https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18617/index.html
> CI Bug Log - changes from CI_DRM_9093_full -> Patchwork_18617_full
> Summary
> FAILURE
> 
> Serious unknown changes coming with Patchwork_18617_full absolutely need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_18617_full, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> Possible new issues
> Here are the unknown changes that may have been introduced in Patchwork_18617_full:
> 
> IGT changes
> Possible regressions
> igt@gem_userptr_blits@unsync-unmap-cycles:
> 
> shard-skl: PASS -> TIMEOUT
> igt@kms_cursor_edge_walk@pipe-c-64x64-right-edge:
> 
> shard-hsw: PASS -> INCOMPLETE

The two above don't are not related as this change only affects TGL.


> igt@kms_cursor_legacy@all-pipes-forked-bo:
> 
> shard-tglb: PASS -> INCOMPLETE

Something went pretty wrong in this test executing by the logs but don't look related.


> igt@kms_psr2_su@frontbuffer:
> 
> shard-tglb: PASS -> FAIL +1 similar issue


This failure is expected with this change.

> Suppressed
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
> 
> {igt@kms_async_flips@test-time-stamp}:
> shard-tglb: PASS -> FAIL
> Known issues
> Here are the changes found in Patchwork_18617_full that come from known issues:
> 
> IGT changes
> Issues hit
> igt@gem_exec_create@madvise:
> 
> shard-glk: PASS -> DMESG-WARN (i915#118 / i915#95)
> igt@i915_pm_rc6_residency@rc6-idle:
> 
> shard-hsw: PASS -> FAIL (i915#1860)
> igt@kms_cursor_crc@pipe-b-cursor-suspend:
> 
> shard-skl: PASS -> INCOMPLETE (i915#300)
> igt@kms_cursor_legacy@flip-vs-cursor-atomic:
> 
> shard-tglb: PASS -> FAIL (i915#2346) +3 similar issues
> igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
> 
> shard-kbl: PASS -> DMESG-WARN (i915#1982)
> igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled:
> 
> shard-apl: PASS -> DMESG-WARN (i915#1635 / i915#1982)
> igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1:
> 
> shard-skl: PASS -> DMESG-WARN (i915#1982) +9 similar issues
> igt@kms_flip@flip-vs-expired-vblank@c-edp1:
> 
> shard-skl: PASS -> FAIL (i915#79)
> igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
> 
> shard-kbl: PASS -> DMESG-WARN (i915#180) +3 similar issues
> igt@kms_flip_tiling@flip-changes-tiling:
> 
> shard-skl: PASS -> FAIL (i915#699)
> igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu:
> 
> shard-skl: PASS -> FAIL (i915#49) +1 similar issue
> igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:
> 
> shard-tglb: PASS -> DMESG-WARN (i915#1982) +1 similar issue
> igt@kms_hdr@bpc-switch-dpms:
> 
> shard-skl: PASS -> FAIL (i915#1188)
> igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
> 
> shard-iclb: PASS -> INCOMPLETE (i915#1185 / i915#250)
> igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
> 
> shard-skl: PASS -> FAIL (fdo#108145 / i915#265) +1 similar issue
> igt@kms_psr@psr2_sprite_mmap_gtt:
> 
> shard-iclb: PASS -> SKIP (fdo#109441)
> Possible fixes
> igt@gem_exec_reloc@basic-cpu-gtt-active:
> 
> shard-skl: DMESG-WARN (i915#1982) -> PASS +3 similar issues
> igt@gem_exec_reloc@basic-many-active@vecs0:
> 
> shard-glk: FAIL (i915#2389) -> PASS
> {igt@kms_async_flips@async-flip-with-page-flip-events}:
> 
> shard-kbl: FAIL (i915#2521) -> PASS
> igt@kms_big_fb@linear-8bpp-rotate-0:
> 
> shard-apl: DMESG-WARN (i915#1635 / i915#1982) -> PASS
> igt@kms_flip@plain-flip-fb-recreate@b-edp1:
> 
> shard-skl: FAIL (i915#2122) -> PASS
> igt@kms_flip_tiling@flip-changes-tiling-yf:
> 
> shard-kbl: DMESG-WARN (i915#1982) -> PASS
> igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render:
> 
> shard-tglb: DMESG-WARN (i915#1982) -> PASS
> igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
> 
> shard-skl: FAIL (fdo#108145 / i915#265) -> PASS
> igt@kms_psr@psr2_cursor_mmap_cpu:
> 
> shard-iclb: SKIP (fdo#109441) -> PASS +1 similar issue
> igt@kms_setmode@basic:
> 
> shard-glk: FAIL (i915#31) -> PASS
> igt@kms_vblank@pipe-b-ts-continuation-suspend:
> 
> shard-kbl: DMESG-WARN (i915#180) -> PASS
> Warnings
> igt@i915_pm_rc6_residency@rc6-idle:
> 
> shard-iclb: FAIL (i915#1515) -> WARN (i915#1515)
> igt@kms_cursor_legacy@flip-vs-cursor-atomic:
> 
> shard-skl: DMESG-FAIL (i915#1982) -> DMESG-WARN (i915#1982)
> igt@kms_vblank@pipe-a-ts-continuation-suspend:
> 
> shard-skl: INCOMPLETE (i915#198) -> DMESG-WARN (i915#1982)
> igt@runner@aborted:
> 
> shard-skl: FAIL (i915#1436) -> FAIL (i915#1611 / i915#2029)
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> Participating hosts (11 -> 10)
> Missing (1): pig-glk-j5005
> 
> Build changes
> Linux: CI_DRM_9093 -> Patchwork_18617
> CI-20190529: 20190529
> CI_DRM_9093: 827ebff930c6340ed1c1c274909717525951c496 @ git://anongit.freedesktop.org/gfx-ci/linux
> IGT_5798: 430bad5a53c08125fbd48978ed6a66f61a33a40b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
> Patchwork_18617: f1ada30987fd65e158d57983299cc772f8af8a7a @ git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
