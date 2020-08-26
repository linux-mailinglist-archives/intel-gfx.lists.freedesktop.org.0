Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B182536B2
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 20:22:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1F5D6E2ED;
	Wed, 26 Aug 2020 18:22:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 529786E2ED
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 18:22:30 +0000 (UTC)
IronPort-SDR: N5fW534zf6imw3N6htrShGBuACkXAGuF0IGcs23nJxwTy9YgZo+R1bEI3sw4x7NFLWM8o/orSj
 lkVleUVGkkdw==
X-IronPort-AV: E=McAfee;i="6000,8403,9725"; a="217914314"
X-IronPort-AV: E=Sophos;i="5.76,356,1592895600"; d="scan'208";a="217914314"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2020 11:22:29 -0700
IronPort-SDR: b31NZJ7VNPaIzmyeFA6cob+wdkjKohGLDCVf+Z3iOG30U4LwKpoNs6YRBDxp+/nyDmqwQnz88c
 xaUtWnmgbKkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,356,1592895600"; d="scan'208";a="323297554"
Received: from fmsmsx604-2.cps.intel.com (HELO fmsmsx604.amr.corp.intel.com)
 ([10.18.84.214])
 by fmsmga004.fm.intel.com with ESMTP; 26 Aug 2020 11:22:29 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 26 Aug 2020 11:22:28 -0700
Received: from fmsmsx156.amr.corp.intel.com (10.18.116.74) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 26 Aug 2020 11:22:28 -0700
Received: from fmsmsx107.amr.corp.intel.com ([169.254.6.136]) by
 fmsmsx156.amr.corp.intel.com ([169.254.13.232]) with mapi id 14.03.0439.000;
 Wed, 26 Aug 2020 11:22:28 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Taylor, Clinton A" <clinton.a.taylor@intel.com>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0g4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJtL2k5?=
 =?utf-8?Q?15/gt:_Implement_WA=5F1406941453_(rev4)?=
Thread-Index: AQHWe2v4Hrj7jGhqRkiiJHWRAvMKM6lLKvIA
Date: Wed, 26 Aug 2020 18:22:28 +0000
Message-ID: <4e3f239ebe401bdd1bf3c7a7a3a1584e701bb53b.camel@intel.com>
References: <20200805232920.15085-1-clinton.a.taylor@intel.com>
 <159842065801.21251.13947776851854093150@emeril.freedesktop.org>
In-Reply-To: <159842065801.21251.13947776851854093150@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.240.12]
Content-ID: <388298011D4FE5438A56C6D7E565D9A7@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Implement_WA=5F1406941453_=28rev4=29?=
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

On Wed, 2020-08-26 at 05:44 +0000, Patchwork wrote:
> Patch Details
> Series:	drm/i915/gt: Implement WA_1406941453 (rev4)
> URL:	https://patchwork.freedesktop.org/series/78243/
> State:	failure
> Details:	https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18404/index.html
> CI Bug Log - changes from CI_DRM_8925_full -> Patchwork_18404_full
> Summary
> FAILURE
> 
> Serious unknown changes coming with Patchwork_18404_full absolutely need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_18404_full, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> Possible new issues
> Here are the unknown changes that may have been introduced in Patchwork_18404_full:
> 
> IGT changes
> Possible regressions
> igt@kms_vblank@pipe-c-ts-continuation-modeset-hang:
> 
> shard-hsw: PASS -> INCOMPLETE
> igt@sysfs_preempt_timeout@timeout@rcs0:
> 

This regressions are not related to the changes so pushed to dinq, thanks for the patch Clint.

> shard-skl: PASS -> FAIL
> Known issues
> Here are the changes found in Patchwork_18404_full that come from known issues:
> 
> IGT changes
> Issues hit
> igt@gem_exec_reloc@basic-concurrent0:
> 
> shard-kbl: PASS -> TIMEOUT (i915#1958) +3 similar issues
> igt@gem_exec_reloc@basic-concurrent16:
> 
> shard-apl: PASS -> TIMEOUT (i915#1635 / i915#1958)
> igt@gem_exec_whisper@basic-contexts-priority:
> 
> shard-iclb: PASS -> TIMEOUT (i915#1958) +1 similar issue
> igt@gem_exec_whisper@basic-fds-priority:
> 
> shard-glk: PASS -> TIMEOUT (i915#1958) +3 similar issues
> igt@gem_exec_whisper@basic-normal:
> 
> shard-tglb: PASS -> TIMEOUT (i915#1958)
> igt@gem_exec_whisper@basic-queues-forked:
> 
> shard-skl: PASS -> TIMEOUT (i915#1958)
> igt@gem_sync@basic-store-all:
> 
> shard-apl: PASS -> FAIL (i915#1635 / i915#2356)
> 
> shard-glk: PASS -> FAIL (i915#2356)
> 
> shard-skl: PASS -> FAIL (i915#2356)
> 
> igt@i915_selftest@mock@contexts:
> 
> shard-skl: PASS -> INCOMPLETE (i915#198 / i915#2278)
> igt@kms_big_fb@x-tiled-64bpp-rotate-0:
> 
> shard-apl: PASS -> DMESG-WARN (i915#1635 / i915#1982)
> igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge:
> 
> shard-glk: PASS -> DMESG-WARN (i915#1982) +1 similar issue
> igt@kms_draw_crc@draw-method-xrgb8888-blt-untiled:
> 
> shard-snb: PASS -> SKIP (fdo#109271)
> igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:
> 
> shard-glk: PASS -> FAIL (i915#79)
> igt@kms_flip@flip-vs-expired-vblank@b-edp1:
> 
> shard-skl: PASS -> FAIL (i915#79)
> igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
> 
> shard-kbl: PASS -> DMESG-WARN (i915#180) +12 similar issues
> igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc:
> 
> shard-tglb: PASS -> DMESG-WARN (i915#1982) +2 similar issues
> igt@kms_hdr@bpc-switch:
> 
> shard-skl: PASS -> FAIL (i915#1188)
> igt@kms_psr@no_drrs:
> 
> shard-iclb: PASS -> FAIL (i915#173)
> igt@kms_psr@psr2_cursor_plane_move:
> 
> shard-iclb: PASS -> SKIP (fdo#109441) +1 similar issue
> igt@kms_psr@suspend:
> 
> shard-skl: PASS -> INCOMPLETE (i915#198)
> igt@perf@polling-parameterized:
> 
> shard-tglb: PASS -> FAIL (i915#1542)
> igt@perf@polling-small-buf:
> 
> shard-skl: PASS -> DMESG-WARN (i915#1982) +15 similar issues
> igt@sysfs_timeslice_duration@timeout@vecs0:
> 
> shard-tglb: PASS -> FAIL (i915#1755)
> Possible fixes
> igt@gem_exec_reloc@basic-concurrent0:
> 
> shard-apl: TIMEOUT (i915#1635 / i915#1958) -> PASS +3 similar issues
> igt@gem_exec_suspend@basic-s3:
> 
> shard-kbl: DMESG-WARN (i915#180) -> PASS +4 similar issues
> igt@gem_exec_whisper@basic-contexts-all:
> 
> shard-glk: TIMEOUT (i915#1958) -> PASS +2 similar issues
> igt@gem_exec_whisper@basic-fds-priority:
> 
> shard-kbl: TIMEOUT (i915#1958) -> PASS +1 similar issue
> igt@gem_exec_whisper@basic-queues:
> 
> shard-tglb: TIMEOUT (i915#1958) -> PASS
> igt@i915_module_load@reload:
> 
> shard-tglb: DMESG-WARN (i915#1982) -> PASS +1 similar issue
> igt@i915_selftest@mock@contexts:
> 
> shard-apl: INCOMPLETE (i915#1635 / i915#2278) -> PASS
> igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1:
> 
> shard-hsw: DMESG-WARN (i915#1982) -> PASS
> igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-dp1:
> 
> shard-kbl: DMESG-WARN (i915#1982) -> PASS +1 similar issue
> igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
> 
> shard-skl: FAIL (i915#79) -> PASS
> igt@kms_flip@flip-vs-suspend@a-edp1:
> 
> shard-skl: INCOMPLETE (i915#198) -> PASS
> igt@kms_flip@plain-flip-fb-recreate@b-edp1:
> 
> shard-skl: FAIL (i915#2122) -> PASS
> igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt:
> 
> shard-iclb: DMESG-WARN (i915#1982) -> PASS
> igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:
> 
> shard-iclb: TIMEOUT (i915#123 / i915#1958) -> PASS
> igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc:
> 
> shard-skl: DMESG-WARN (i915#1982) -> PASS +4 similar issues
> igt@kms_hdr@bpc-switch-dpms:
> 
> shard-skl: FAIL (i915#1188) -> PASS
> igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
> 
> shard-skl: FAIL (fdo#108145 / i915#265) -> PASS +1 similar issue
> igt@kms_psr@psr2_basic:
> 
> shard-iclb: SKIP (fdo#109441) -> PASS +2 similar issues
> igt@kms_setmode@basic:
> 
> shard-kbl: FAIL (i915#31) -> PASS
> igt@kms_vblank@pipe-c-query-forked-busy:
> 
> shard-iclb: TIMEOUT (i915#1958) -> PASS +3 similar issues
> igt@perf@blocking-parameterized:
> 
> shard-iclb: FAIL (i915#1542) -> PASS
> Warnings
> igt@gem_exec_whisper@basic-queues-forked-all:
> 
> shard-glk: DMESG-WARN (i915#118 / i915#95) -> TIMEOUT (i915#1958)
> igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
> 
> shard-apl: FAIL (fdo#108145 / i915#1635 / i915#265) -> DMESG-FAIL (fdo#108145 / i915#1635 / i915#1982)
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> Participating hosts (10 -> 10)
> No changes in participating hosts
> 
> Build changes
> Linux: CI_DRM_8925 -> Patchwork_18404
> CI-20190529: 20190529
> CI_DRM_8925: b0f0c5e0b08e7d93135a27141919e765db3aaeef @ git://anongit.freedesktop.org/gfx-ci/linux
> IGT_5771: f1d0c240ea2e631dfb9f493f37f8fb61cb2b1cf2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
> Patchwork_18404: 8b63f6a0a82d5b831461a1bcc9d15294aadc3084 @ git://anongit.freedesktop.org/gfx-ci/linux
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
