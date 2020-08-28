Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A70B0255FD5
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Aug 2020 19:38:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A0E16E4FF;
	Fri, 28 Aug 2020 17:38:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 634756E4FF
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Aug 2020 17:38:16 +0000 (UTC)
IronPort-SDR: mPyOG2EM9tYXhSi2FvdD8yzhInXVZTKFhm9MVoD0amhyGjklXKeJCVhx6CRhHpCaG1CxxVP9gB
 jON2uniLwTFA==
X-IronPort-AV: E=McAfee;i="6000,8403,9727"; a="156717444"
X-IronPort-AV: E=Sophos;i="5.76,364,1592895600"; d="scan'208";a="156717444"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2020 10:38:15 -0700
IronPort-SDR: FbP+s1pDQD478RuNyKjSggy1fHgm678I2aPqAJ3bOZtMAnPBXx2wpzB8zvVRTYZtro2PW92iW+
 sg/bfVaKiFwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,364,1592895600"; d="scan'208";a="475771011"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 28 Aug 2020 10:38:15 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 28 Aug 2020 10:37:55 -0700
Received: from fmsmsx102.amr.corp.intel.com (10.18.124.200) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 28 Aug 2020 10:37:55 -0700
Received: from fmsmsx107.amr.corp.intel.com ([169.254.6.136]) by
 FMSMSX102.amr.corp.intel.com ([169.254.10.17]) with mapi id 14.03.0439.000;
 Fri, 28 Aug 2020 10:37:54 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2VyaWVzIHN0YXJ0aW5nIHdp?=
 =?utf-8?B?dGggW3YzLDEvM10gZHJtL2k5MTUvZGlzcGxheS90Z2w6IFVzZSBUR0wgRFAg?=
 =?utf-8?B?dGFibGVzIGZvciBlRFAgcG9ydHMgd2l0aG91dCBsb3cgcG93ZXIgc3VwcG9y?=
 =?utf-8?Q?t_(rev2)?=
Thread-Index: AQHWfC4aDwXlcTNR8UiY/ZYsjdYpKKlOQaYA
Date: Fri, 28 Aug 2020 17:37:54 +0000
Message-ID: <1a9930d7b6486680d7d2559233b522f59d6175cc.camel@intel.com>
References: <20200826201549.83658-1-jose.souza@intel.com>
 <159850404305.14481.13774356581050449776@emeril.freedesktop.org>
In-Reply-To: <159850404305.14481.13774356581050449776@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.240.12]
Content-ID: <D2FD81498C6B3041953F11405BC1DA3E@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv3=2C1/3=5D_drm/i915/display/tgl=3A_Use_TG?=
 =?utf-8?q?L_DP_tables_for_eDP_ports_without_low_power_support_=28rev2=29?=
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

On Thu, 2020-08-27 at 04:54 +0000, Patchwork wrote:
> Patch Details
> Series:	series starting with [v3,1/3] drm/i915/display/tgl: Use TGL DP tables for eDP ports without low power support (rev2)
> URL:	https://patchwork.freedesktop.org/series/81083/
> State:	failure
> Details:	https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18414/index.html
> CI Bug Log - changes from CI_DRM_8930_full -> Patchwork_18414_full
> Summary
> FAILURE
> 
> Serious unknown changes coming with Patchwork_18414_full absolutely need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_18414_full, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> Possible new issues
> Here are the unknown changes that may have been introduced in Patchwork_18414_full:
> 
> IGT changes
> Possible regressions
> igt@gem_exec_whisper@basic-queues-priority-all:
> 
> shard-iclb: PASS -> INCOMPLETE
> igt@i915_pm_rps@waitboost:
> 
> shard-hsw: PASS -> INCOMPLETE

Failures not related to this changes.
Patches pushed to dinq, thanks for the reviews Matt Roper.

> Known issues
> Here are the changes found in Patchwork_18414_full that come from known issues:
> 
> IGT changes
> Issues hit
> igt@gem_eio@in-flight-contexts-10ms:
> 
> shard-snb: PASS -> INCOMPLETE (i915#82)
> igt@gem_exec_reloc@basic-concurrent0:
> 
> shard-glk: PASS -> TIMEOUT (i915#1958)
> 
> shard-kbl: PASS -> TIMEOUT (i915#1958) +1 similar issue
> 
> igt@gem_exec_whisper@basic-fds-forked:
> 
> shard-apl: PASS -> TIMEOUT (i915#1635 / i915#1958)
> igt@gem_sync@basic-store-all:
> 
> shard-apl: PASS -> FAIL (i915#1635 / i915#2356)
> 
> shard-glk: PASS -> FAIL (i915#2356)
> 
> igt@gem_tiled_swapping@non-threaded:
> 
> shard-glk: PASS -> TIMEOUT (i915#1521 / i915#1958)
> igt@i915_pm_rc6_residency@rc6-fence:
> 
> shard-hsw: PASS -> WARN (i915#1519)
> igt@kms_big_fb@y-tiled-64bpp-rotate-0:
> 
> shard-glk: PASS -> DMESG-FAIL (i915#118 / i915#95)
> igt@kms_cursor_crc@pipe-a-cursor-suspend:
> 
> shard-kbl: PASS -> DMESG-WARN (i915#180) +5 similar issues
> igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
> 
> shard-hsw: PASS -> FAIL (i915#96)
> igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
> 
> shard-glk: PASS -> FAIL (i915#72)
> igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
> 
> shard-skl: PASS -> FAIL (i915#79)
> igt@kms_flip@plain-flip-fb-recreate@c-dp1:
> 
> shard-kbl: PASS -> FAIL (i915#2122)
> igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt:
> 
> shard-tglb: PASS -> DMESG-WARN (i915#1982) +5 similar issues
> igt@kms_plane@plane-panning-top-left-pipe-c-planes:
> 
> shard-skl: PASS -> DMESG-WARN (i915#1982) +17 similar issues
> igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
> 
> shard-skl: PASS -> FAIL (fdo#108145 / i915#265) +1 similar issue
> igt@kms_psr2_su@page_flip:
> 
> shard-iclb: PASS -> SKIP (fdo#109642 / fdo#111068)
> igt@kms_psr@no_drrs:
> 
> shard-iclb: PASS -> FAIL (i915#173)
> igt@kms_psr@psr2_no_drrs:
> 
> shard-iclb: PASS -> SKIP (fdo#109441)
> igt@perf_pmu@module-unload:
> 
> shard-iclb: PASS -> DMESG-WARN (i915#1982)
> Possible fixes
> igt@gem_ctx_isolation@preservation-s3@bcs0:
> 
> shard-skl: INCOMPLETE (i915#198) -> PASS
> igt@gem_exec_parallel@engines@basic:
> 
> shard-tglb: INCOMPLETE (i915#2398) -> PASS
> igt@gem_exec_reloc@basic-concurrent0:
> 
> shard-skl: TIMEOUT (i915#1958) -> PASS
> igt@gem_exec_whisper@basic-fds-priority-all:
> 
> shard-glk: TIMEOUT (i915#1958) -> PASS +2 similar issues
> igt@gem_exec_whisper@basic-forked:
> 
> shard-kbl: TIMEOUT (i915#1958) -> PASS
> 
> shard-apl: TIMEOUT (i915#1635 / i915#1958) -> PASS
> 
> igt@gem_sync@basic-store-all:
> 
> shard-skl: FAIL (i915#2356) -> PASS
> igt@gen9_exec_parse@allowed-all:
> 
> shard-apl: DMESG-WARN (i915#1436 / i915#1635 / i915#716) -> PASS
> igt@i915_selftest@mock@contexts:
> 
> shard-hsw: INCOMPLETE (i915#2278) -> PASS
> 
> shard-skl: INCOMPLETE (i915#198 / i915#2278) -> PASS
> 
> igt@kms_color@pipe-b-ctm-max:
> 
> shard-skl: FAIL (i915#168) -> PASS
> igt@kms_cursor_crc@pipe-a-cursor-suspend:
> 
> shard-apl: INCOMPLETE (i915#1635) -> PASS
> igt@kms_cursor_legacy@cursor-vs-flip-varying-size:
> 
> shard-skl: DMESG-WARN (i915#1982) -> PASS +6 similar issues
> igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled:
> 
> shard-apl: DMESG-WARN (i915#1635 / i915#1982) -> PASS
> igt@kms_frontbuffer_tracking@fbc-suspend:
> 
> shard-kbl: DMESG-WARN (i915#180) -> PASS +5 similar issues
> igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite:
> 
> shard-tglb: DMESG-WARN (i915#1982) -> PASS
> igt@kms_hdr@bpc-switch-dpms:
> 
> shard-skl: FAIL (i915#1188) -> PASS +1 similar issue
> igt@kms_plane@plane-position-covered-pipe-b-planes:
> 
> shard-glk: FAIL (i915#247) -> PASS
> igt@kms_plane_scaling@pipe-c-scaler-with-clipping-clamping:
> 
> shard-iclb: DMESG-WARN (i915#1982) -> PASS
> igt@kms_psr@psr2_sprite_plane_move:
> 
> shard-iclb: SKIP (fdo#109441) -> PASS +3 similar issues
> igt@perf@blocking-parameterized:
> 
> shard-iclb: FAIL (i915#1542) -> PASS
> Warnings
> igt@kms_content_protection@srm:
> 
> shard-kbl: TIMEOUT (i915#1319) -> TIMEOUT (i915#1319 / i915#1958)
> igt@runner@aborted:
> 
> shard-hsw: (FAIL, FAIL) (i915#1436 / i915#2283) -> FAIL (i915#2283)
> Participating hosts (10 -> 11)
> Additional (1): pig-snb-2600
> 
> Build changes
> Linux: CI_DRM_8930 -> Patchwork_18414
> CI-20190529: 20190529
> CI_DRM_8930: 7e191fed58953c4ed05181997ead358f58b69cf8 @ git://anongit.freedesktop.org/gfx-ci/linux
> IGT_5772: 53dfd92f87ecf44251948025533c88f6b889ffeb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
> Patchwork_18414: 0e96f7e9cca1da09035b9fc6014245e8599b5209 @ git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
