Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2758A240C04
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Aug 2020 19:33:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25C3789B61;
	Mon, 10 Aug 2020 17:33:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CB2389B61
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Aug 2020 17:33:38 +0000 (UTC)
IronPort-SDR: sLqK28Pv0rq/Ou+81FWLgSleQpgfsnpYeencyVqOntTZR+Xu2bLNidxN5UsPsfo35jQw7D5SIx
 jg/wF9vo4mgw==
X-IronPort-AV: E=McAfee;i="6000,8403,9709"; a="133637256"
X-IronPort-AV: E=Sophos;i="5.75,458,1589266800"; d="scan'208";a="133637256"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2020 10:33:37 -0700
IronPort-SDR: NMlj3FGri6CGLU8S7Gw6ZWxNHtrAvF8aLgukNpFFt6ZsFG7w0jyjxogDxBWjrZepEHsRPRAP3L
 siGHKZf0rnmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,458,1589266800"; d="scan'208";a="308146891"
Received: from fmsmsx603-2.cps.intel.com (HELO fmsmsx603.amr.corp.intel.com)
 ([10.18.84.213])
 by orsmga002.jf.intel.com with ESMTP; 10 Aug 2020 10:33:36 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 10 Aug 2020 10:33:35 -0700
Received: from fmsmsx156.amr.corp.intel.com (10.18.116.74) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 10 Aug 2020 10:33:35 -0700
Received: from fmsmsx107.amr.corp.intel.com ([169.254.6.136]) by
 fmsmsx156.amr.corp.intel.com ([169.254.13.107]) with mapi id 14.03.0439.000;
 Mon, 10 Aug 2020 10:33:35 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2VyaWVzIHN0YXJ0aW5nIHdp?=
 =?utf-8?Q?th_[CI,1/2]_drm/i915/tgl:_Set_subplatforms?=
Thread-Index: AQHWbSm9VrWv/NbDRUaSZwAqcLHCRqkyFGwA
Date: Mon, 10 Aug 2020 17:33:34 +0000
Message-ID: <dd5b7f14a5fef6c7ae1c83e0ccd174407b84df88.camel@intel.com>
References: <20200807192629.64134-1-jose.souza@intel.com>
 <159685290442.14939.17952241914331722107@emeril.freedesktop.org>
In-Reply-To: <159685290442.14939.17952241914331722107@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.240.12]
Content-ID: <E6FCE37804C0E042AFB2C2F27F46A256@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/2=5D_drm/i915/tgl=3A_Set_subplatfor?=
 =?utf-8?q?ms?=
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

On Sat, 2020-08-08 at 02:15 +0000, Patchwork wrote:
> Patch Details
> Series:	series starting with [CI,1/2] drm/i915/tgl: Set subplatforms
> URL:	https://patchwork.freedesktop.org/series/80404/
> State:	failure
> Details:	https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18326/index.html
> CI Bug Log - changes from CI_DRM_8859_full -> Patchwork_18326_full
> Summary
> FAILURE
> 
> Serious unknown changes coming with Patchwork_18326_full absolutely need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_18326_full, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> Possible new issues
> Here are the unknown changes that may have been introduced in Patchwork_18326_full:
> 
> IGT changes
> Possible regressions
> igt@gem_ctx_isolation@preservation-s3@rcs0:
> shard-skl: PASS -> INCOMPLETE

Changes here are specific to TGL so this is unrelated.

Pushed to dinq, thanks for the reviews Swathi and Khaled.

> Known issues
> Here are the changes found in Patchwork_18326_full that come from known issues:
> 
> IGT changes
> Issues hit
> igt@gem_partial_pwrite_pread@reads-display:
> 
> shard-glk: PASS -> FAIL (i915#2261)
> igt@i915_selftest@mock@contexts:
> 
> shard-skl: PASS -> INCOMPLETE (i915#198) +1 similar issue
> igt@kms_big_fb@y-tiled-64bpp-rotate-0:
> 
> shard-glk: PASS -> DMESG-FAIL (i915#118 / i915#95)
> igt@kms_cursor_crc@pipe-b-cursor-suspend:
> 
> shard-skl: PASS -> INCOMPLETE (i915#300)
> igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled:
> 
> shard-apl: PASS -> DMESG-WARN (i915#1635 / i915#1982)
> igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2:
> 
> shard-glk: PASS -> DMESG-WARN (i915#1982) +1 similar issue
> igt@kms_flip@modeset-vs-vblank-race-interruptible@a-dp1:
> 
> shard-kbl: PASS -> DMESG-WARN (i915#1982)
> igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu:
> 
> shard-tglb: PASS -> DMESG-WARN (i915#1982)
> igt@kms_hdr@bpc-switch-suspend:
> 
> shard-kbl: PASS -> DMESG-WARN (i915#180) +8 similar issues
> igt@kms_psr@psr2_sprite_plane_move:
> 
> shard-iclb: PASS -> SKIP (fdo#109441) +2 similar issues
> igt@kms_vblank@pipe-b-query-forked:
> 
> shard-skl: PASS -> DMESG-WARN (i915#1982) +16 similar issues
> igt@perf_pmu@busy-hang@bcs0:
> 
> shard-glk: PASS -> DMESG-WARN (i915#118 / i915#95) +1 similar issue
> Possible fixes
> igt@kms_big_fb@x-tiled-64bpp-rotate-0:
> 
> shard-glk: DMESG-FAIL (i915#118 / i915#95) -> PASS
> igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled:
> 
> shard-glk: DMESG-WARN (i915#1982) -> PASS
> igt@kms_flip@flip-vs-suspend@b-edp1:
> 
> shard-iclb: INCOMPLETE (i915#1373) -> PASS
> igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-cpu:
> 
> shard-kbl: DMESG-WARN (i915#1982) -> PASS
> igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu:
> 
> shard-tglb: DMESG-WARN (i915#1982) -> PASS
> igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite:
> 
> shard-skl: DMESG-WARN (i915#1982) -> PASS +7 similar issues
> igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
> 
> shard-skl: FAIL (fdo#108145 / i915#265) -> PASS +1 similar issue
> igt@kms_plane_scaling@pipe-c-scaler-with-clipping-clamping:
> 
> shard-iclb: DMESG-WARN (i915#1982) -> PASS
> igt@kms_psr2_su@frontbuffer:
> 
> shard-iclb: SKIP (fdo#109642 / fdo#111068) -> PASS
> igt@kms_psr@psr2_primary_mmap_cpu:
> 
> shard-iclb: SKIP (fdo#109441) -> PASS +1 similar issue
> igt@kms_setmode@basic:
> 
> shard-apl: FAIL (i915#1635 / i915#31) -> PASS
> 
> shard-kbl: FAIL (i915#31) -> PASS
> 
> igt@kms_vblank@pipe-a-ts-continuation-suspend:
> 
> shard-kbl: DMESG-WARN (i915#180) -> PASS +8 similar issues
> Warnings
> igt@i915_pm_dc@dc5-dpms:
> 
> shard-snb: SKIP (fdo#109271) -> INCOMPLETE (i915#82)
> igt@kms_content_protection@atomic:
> 
> shard-kbl: TIMEOUT (i915#1319 / i915#1958) -> TIMEOUT (i915#1319)
> igt@kms_cursor_crc@pipe-a-cursor-suspend:
> 
> shard-kbl: INCOMPLETE (i915#155) -> DMESG-WARN (i915#180)
> igt@kms_dp_dsc@basic-dsc-enable-edp:
> 
> shard-iclb: SKIP (fdo#109349) -> DMESG-WARN (i915#1226)
> igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:
> 
> shard-skl: DMESG-FAIL (i915#1982) -> DMESG-WARN (i915#1982)
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> Participating hosts (11 -> 11)
> No changes in participating hosts
> 
> Build changes
> Linux: CI_DRM_8859 -> Patchwork_18326
> CI-20190529: 20190529
> CI_DRM_8859: 5384db4f16cc5e32864bb76f06cd67463be21023 @ git://anongit.freedesktop.org/gfx-ci/linux
> IGT_5765: 9f0977284d54ed37496260988dfcd6d2ad72dd1e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
> Patchwork_18326: f64f886fef73975d08e2bbadf91da440666d0600 @ git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
