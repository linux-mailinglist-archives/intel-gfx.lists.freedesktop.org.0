Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4911224759D
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Aug 2020 21:27:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D6C989DB8;
	Mon, 17 Aug 2020 19:27:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84F5389DB8
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Aug 2020 19:27:35 +0000 (UTC)
IronPort-SDR: 61YUwt1qF1+rRt8f/zdqH1X2Y7VReoEbIURQJyzyAVTHlvQ4dtCOZdexMVaon3g1uCUzesJlxm
 AbyyNp30UWMQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9716"; a="219099512"
X-IronPort-AV: E=Sophos;i="5.76,324,1592895600"; d="scan'208";a="219099512"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2020 12:27:34 -0700
IronPort-SDR: rP/FzRgGs9FeTxDY/Nq19wm0SD4wC54loEXZzX0uqWefseJM8hFx37by6o4+s6vT3EJdlpaMYR
 +e79IE1sPeRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,324,1592895600"; d="scan'208";a="326503201"
Received: from fmsmsx602-2.cps.intel.com (HELO fmsmsx602.amr.corp.intel.com)
 ([10.18.84.212])
 by orsmga008.jf.intel.com with ESMTP; 17 Aug 2020 12:27:33 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 17 Aug 2020 12:27:33 -0700
Received: from fmsmsx157.amr.corp.intel.com (10.18.116.73) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 17 Aug 2020 12:27:33 -0700
Received: from fmsmsx107.amr.corp.intel.com ([169.254.6.136]) by
 FMSMSX157.amr.corp.intel.com ([169.254.14.153]) with mapi id 14.03.0439.000;
 Mon, 17 Aug 2020 12:27:33 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2VyaWVzIHN0YXJ0aW5nIHdp?=
 =?utf-8?B?dGggWzEvMl0gZHJtL2k5MTU6IFVwZGF0ZSBUR0wgYW5kIFJLTCBETUMgZmly?=
 =?utf-8?Q?mware_versions_(rev2)?=
Thread-Index: AQHWcpyG2mabFITcWU+ov7yxoaJccak9KboA
Date: Mon, 17 Aug 2020 19:27:32 +0000
Message-ID: <d7ac9c7ed1297fe916be3d6171518f1eaa38a2fd.camel@intel.com>
References: <20200813200029.25307-1-jose.souza@intel.com>
 <159745195998.21106.10285765581112235758@emeril.freedesktop.org>
In-Reply-To: <159745195998.21106.10285765581112235758@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.240.12]
Content-ID: <6415B7AB04B37B4A903557499EEA2334@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Update_TGL_and_RKL_DMC_?=
 =?utf-8?q?firmware_versions_=28rev2=29?=
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

Pushed to dinq, thanks for the review Matt Roper.

On Sat, 2020-08-15 at 00:39 +0000, Patchwork wrote:
> Patch Details
> Series:	series starting with [1/2] drm/i915: Update TGL and RKL DMC firmware versions (rev2)
> URL:	https://patchwork.freedesktop.org/series/80610/
> State:	success
> Details:	https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18360/index.html
> CI Bug Log - changes from CI_DRM_8882_full -> Patchwork_18360_full
> Summary
> SUCCESS
> 
> No regressions found.
> 
> Known issues
> Here are the changes found in Patchwork_18360_full that come from known issues:
> 
> IGT changes
> Issues hit
> igt@gem_exec_whisper@basic-forked:
> 
> shard-glk: PASS -> DMESG-WARN (i915#118 / i915#95)
> igt@gem_mmap_gtt@fault-concurrent:
> 
> shard-skl: PASS -> DMESG-WARN (i915#2165)
> igt@i915_pm_dc@dc5-dpms:
> 
> shard-skl: PASS -> INCOMPLETE (i915#198)
> igt@kms_cursor_crc@pipe-a-cursor-suspend:
> 
> shard-skl: PASS -> INCOMPLETE (i915#300)
> igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@ab-vga1-hdmi-a1:
> 
> shard-hsw: PASS -> DMESG-WARN (i915#1982)
> igt@kms_flip@flip-vs-fences@a-edp1:
> 
> shard-skl: PASS -> DMESG-WARN (i915#1982) +12 similar issues
> igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
> 
> shard-kbl: PASS -> DMESG-WARN (i915#180) +7 similar issues
> igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
> 
> shard-skl: PASS -> FAIL (i915#2122) +1 similar issue
> igt@kms_psr@psr2_no_drrs:
> 
> shard-iclb: PASS -> SKIP (fdo#109441) +2 similar issues
> igt@kms_vblank@pipe-c-accuracy-idle:
> 
> shard-glk: PASS -> FAIL (i915#43)
> igt@perf@blocking-parameterized:
> 
> shard-iclb: PASS -> FAIL (i915#1542)
> Possible fixes
> igt@gem_ctx_shared@q-smoketest-all:
> 
> shard-glk: DMESG-WARN (i915#118 / i915#95) -> PASS +1 similar issue
> igt@gem_huc_copy@huc-copy:
> 
> shard-tglb: SKIP (i915#2190) -> PASS
> igt@gem_mmap_gtt@fault-concurrent:
> 
> shard-glk: DMESG-WARN (i915#2165) -> PASS
> igt@gen9_exec_parse@allowed-all:
> 
> shard-apl: DMESG-WARN (i915#1436 / i915#1635 / i915#716) -> PASS
> igt@i915_pm_dc@dc6-dpms:
> 
> shard-iclb: FAIL (i915#454) -> PASS
> igt@i915_selftest@mock@contexts:
> 
> shard-apl: INCOMPLETE (i915#1635 / i915#2278) -> PASS
> igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
> 
> shard-skl: DMESG-WARN (i915#1982) -> PASS +9 similar issues
> 
> shard-tglb: DMESG-WARN (i915#1982) -> PASS +1 similar issue
> 
> igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-untiled:
> 
> shard-skl: FAIL (i915#52 / i915#54) -> PASS
> igt@kms_flip@flip-vs-expired-vblank@c-edp1:
> 
> shard-skl: FAIL (i915#79) -> PASS
> igt@kms_hdr@bpc-switch-dpms:
> 
> shard-skl: FAIL (i915#1188) -> PASS +1 similar issue
> igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
> 
> shard-kbl: DMESG-WARN (i915#180) -> PASS +6 similar issues
> igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
> 
> shard-skl: FAIL (fdo#108145 / i915#265) -> PASS
> igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping:
> 
> shard-iclb: DMESG-WARN (i915#1982) -> PASS
> igt@kms_psr2_su@frontbuffer:
> 
> shard-iclb: SKIP (fdo#109642 / fdo#111068) -> PASS +1 similar issue
> igt@kms_psr@psr2_primary_page_flip:
> 
> shard-iclb: SKIP (fdo#109441) -> PASS +1 similar issue
> igt@kms_vblank@pipe-b-ts-continuation-modeset-hang:
> 
> shard-glk: DMESG-WARN (i915#1982) -> PASS +1 similar issue
> igt@prime_busy@after@vecs0:
> 
> shard-hsw: FAIL (i915#2258) -> PASS +1 similar issue
> Warnings
> igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
> shard-apl: DMESG-FAIL (fdo#108145 / i915#1635 / i915#1982) -> FAIL (fdo#108145 / i915#1635 / i915#265)
> Participating hosts (11 -> 11)
> No changes in participating hosts
> 
> Build changes
> Linux: CI_DRM_8882 -> Patchwork_18360
> CI-20190529: 20190529
> CI_DRM_8882: bc285974fbc945765c176218aba7a003b687eea9 @ git://anongit.freedesktop.org/gfx-ci/linux
> IGT_5769: 4e5f76be680b65780204668e302026cf638decc9 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
> Patchwork_18360: 6ce9a1f5551c2436b26eb54de31a83f94a667552 @ git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
