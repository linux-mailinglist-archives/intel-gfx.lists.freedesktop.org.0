Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 14DDD24A9BD
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Aug 2020 00:53:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 774386E87A;
	Wed, 19 Aug 2020 22:53:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C53566E87A
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Aug 2020 22:53:53 +0000 (UTC)
IronPort-SDR: cu9S2e+3QDKpWaex7yCsTRZ3yEeOgpYZWXbE9EMmeA81AMNx3tAkDwybt40EjCPzFz1hzvUqb3
 CZ2ppkCrq4iQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9718"; a="216741623"
X-IronPort-AV: E=Sophos;i="5.76,332,1592895600"; d="scan'208";a="216741623"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2020 15:53:53 -0700
IronPort-SDR: lfBq5IgCnvx/UqA6N4kYTyDv6DwD+YysJr/XHExUQwzbKu8V7J0yqkT7p9TxmQD4yTS6aPpcj1
 OL2cc0fFUHRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,332,1592895600"; d="scan'208";a="320649169"
Received: from fmsmsx601-2.cps.intel.com (HELO fmsmsx601.amr.corp.intel.com)
 ([10.18.84.211])
 by fmsmga004.fm.intel.com with ESMTP; 19 Aug 2020 15:53:52 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 19 Aug 2020 15:53:52 -0700
Received: from fmsmsx125.amr.corp.intel.com (10.18.125.40) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 19 Aug 2020 15:53:52 -0700
Received: from fmsmsx107.amr.corp.intel.com ([169.254.6.136]) by
 FMSMSX125.amr.corp.intel.com ([169.254.2.226]) with mapi id 14.03.0439.000;
 Wed, 19 Aug 2020 15:53:52 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Atwood, Matthew S" <matthew.s.atwood@intel.com>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0g4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJtL2k5?=
 =?utf-8?Q?15:_Apply_Wa=5F14011264657:gen11+_(rev2)?=
Thread-Index: AQHWcSHlhMT9LELAtUijU15pq2SsF6lAiwCA
Date: Wed, 19 Aug 2020 22:53:52 +0000
Message-ID: <76a1406106f3d952fcb691db30503aefc2d72bfb.camel@intel.com>
References: <20200812210702.7153-1-matthew.s.atwood@intel.com>
 <159728932945.14258.13905772410614544709@emeril.freedesktop.org>
In-Reply-To: <159728932945.14258.13905772410614544709@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.240.12]
Content-ID: <CFB25F45844A744C8F640E60143C3533@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Apply_Wa=5F14011264657=3Agen11+_=28rev2=29?=
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

On Thu, 2020-08-13 at 03:28 +0000, Patchwork wrote:
> Patch Details
> Series:	drm/i915: Apply Wa_14011264657:gen11+ (rev2)
> URL:	https://patchwork.freedesktop.org/series/78430/
> State:	success
> Details:	https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18349/index.html
> CI Bug Log - changes from CI_DRM_8879_full -> Patchwork_18349_full
> Summary
> SUCCESS
> 
> No regressions found.

Pushed to dinq with a minor checkstyle fix, thanks for the patch.

> 
> Known issues
> Here are the changes found in Patchwork_18349_full that come from known issues:
> 
> IGT changes
> Issues hit
> igt@kms_concurrent@pipe-c:
> 
> shard-skl: PASS -> DMESG-WARN (i915#1982) +11 similar issues
> igt@kms_cursor_crc@pipe-c-cursor-suspend:
> 
> shard-iclb: PASS -> INCOMPLETE (i915#1185)
> igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1:
> 
> shard-glk: PASS -> FAIL (i915#79)
> igt@kms_flip@flip-vs-suspend@c-dp1:
> 
> shard-kbl: PASS -> DMESG-WARN (i915#180) +4 similar issues
> igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:
> 
> shard-skl: PASS -> FAIL (i915#2122)
> igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-cpu:
> 
> shard-kbl: PASS -> DMESG-WARN (i915#1982)
> igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary:
> 
> shard-iclb: PASS -> DMESG-WARN (i915#1982) +1 similar issue
> igt@kms_hdr@bpc-switch-dpms:
> 
> shard-skl: PASS -> FAIL (i915#1188)
> igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
> 
> shard-skl: PASS -> FAIL (fdo#108145 / i915#265) +1 similar issue
> igt@kms_plane_scaling@pipe-b-scaler-with-rotation:
> 
> shard-iclb: PASS -> FAIL (fdo#109052) +4 similar issues
> igt@kms_plane_scaling@pipe-d-scaler-with-pixel-format:
> 
> shard-tglb: PASS -> FAIL (i915#1214) +6 similar issues
> igt@kms_psr@psr2_cursor_plane_onoff:
> 
> shard-iclb: PASS -> SKIP (fdo#109441)
> Possible fixes
> igt@gem_exec_whisper@basic-contexts-forked:
> 
> shard-glk: DMESG-WARN (i915#118 / i915#95) -> PASS +1 similar issue
> igt@gem_pwrite@basic-random:
> 
> shard-snb: TIMEOUT (i915#1958) -> PASS +2 similar issues
> igt@i915_selftest@live@execlists:
> 
> shard-tglb: INCOMPLETE (i915#2268) -> PASS
> igt@i915_selftest@mock@contexts:
> 
> shard-skl: INCOMPLETE (i915#198 / i915#2278) -> PASS
> igt@kms_big_fb@linear-64bpp-rotate-0:
> 
> shard-glk: DMESG-FAIL (i915#118 / i915#95) -> PASS
> igt@kms_color@pipe-b-ctm-0-5:
> 
> shard-skl: FAIL (i915#182) -> PASS
> igt@kms_color@pipe-c-ctm-0-25:
> 
> shard-skl: DMESG-WARN (i915#1982) -> PASS +8 similar issues
> igt@kms_color@pipe-c-ctm-green-to-red:
> 
> shard-skl: FAIL (i915#129) -> PASS
> igt@kms_cursor_crc@pipe-a-cursor-64x64-offscreen:
> 
> shard-apl: FAIL (i915#1635 / i915#54) -> PASS
> igt@kms_cursor_crc@pipe-a-cursor-suspend:
> 
> shard-kbl: DMESG-WARN (i915#180) -> PASS +7 similar issues
> igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
> 
> shard-skl: FAIL (i915#79) -> PASS +1 similar issue
> igt@kms_flip@flip-vs-suspend-interruptible@b-edp1:
> 
> shard-skl: INCOMPLETE (i915#198) -> PASS
> igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-cpu:
> 
> shard-tglb: DMESG-WARN (i915#1982) -> PASS +2 similar issues
> igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-render:
> 
> shard-iclb: DMESG-WARN (i915#1982) -> PASS +1 similar issue
> igt@kms_hdr@bpc-switch:
> 
> shard-skl: FAIL (i915#1188) -> PASS
> igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
> 
> shard-skl: FAIL (fdo#108145 / i915#265) -> PASS
> igt@kms_psr2_su@frontbuffer:
> 
> shard-iclb: SKIP (fdo#109642 / fdo#111068) -> PASS
> igt@kms_psr@psr2_sprite_plane_move:
> 
> shard-iclb: SKIP (fdo#109441) -> PASS
> igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
> 
> shard-skl: INCOMPLETE -> PASS
> igt@perf@blocking-parameterized:
> 
> shard-iclb: FAIL (i915#1542) -> PASS
> Warnings
> igt@gem_exec_reloc@basic-concurrent16:
> 
> shard-snb: TIMEOUT (i915#1958) -> FAIL (i915#1930)
> 
> shard-glk: TIMEOUT (i915#1958) -> INCOMPLETE (i915#1958)
> 
> igt@kms_color@pipe-a-ctm-max:
> 
> shard-snb: TIMEOUT (i915#1958) -> SKIP (fdo#109271) +1 similar issue
> igt@kms_color_chamelium@pipe-c-ctm-0-5:
> 
> shard-snb: TIMEOUT (i915#1958) -> SKIP (fdo#109271 / fdo#111827)
> igt@kms_content_protection@srm:
> 
> shard-kbl: TIMEOUT (i915#1319) -> TIMEOUT (i915#1319 / i915#1958)
> igt@kms_dp_dsc@basic-dsc-enable-edp:
> 
> shard-iclb: SKIP (fdo#109349) -> DMESG-WARN (i915#1226)
> igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
> 
> shard-skl: FAIL (fdo#108145 / i915#265) -> DMESG-FAIL (fdo#108145 / i915#1982)
> Participating hosts (11 -> 11)
> No changes in participating hosts
> 
> Build changes
> Linux: CI_DRM_8879 -> Patchwork_18349
> CI-20190529: 20190529
> CI_DRM_8879: 383f247a5884778b21e17dc9537e0bdeae503953 @ git://anongit.freedesktop.org/gfx-ci/linux
> IGT_5768: 4ce2f30715836214d7b4452ada8c63b23eba73b7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
> Patchwork_18349: 9ee56d53b00b040e07daff2d2b805c8d4992a091 @ git://anongit.freedesktop.org/gfx-ci/linux
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
