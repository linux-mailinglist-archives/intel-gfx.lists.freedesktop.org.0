Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 40387254BA4
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Aug 2020 19:09:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5E0D6E3F7;
	Thu, 27 Aug 2020 17:09:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A51C6E3F7
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Aug 2020 17:09:29 +0000 (UTC)
IronPort-SDR: pH27oumeq/y6GMFzmlAbgMCJX05PwpruKroixyoNP9ZHqUBEQBhCKi5ViesmyXYKVUH2cWfXsQ
 +wzTsbViMt3Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9726"; a="157556089"
X-IronPort-AV: E=Sophos;i="5.76,360,1592895600"; d="scan'208";a="157556089"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2020 10:09:28 -0700
IronPort-SDR: sD8EGlb11CAYwkMAa+0/NWeMWoOWXMDwdmRYv2vZlFfSHkeDfoVpSC11MQTMQI1/F2NhmxSPYo
 1daXwQUjXiwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,360,1592895600"; d="scan'208";a="329660454"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga008.jf.intel.com with ESMTP; 27 Aug 2020 10:09:28 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 27 Aug 2020 10:09:21 -0700
Received: from fmsmsx121.amr.corp.intel.com (10.18.125.36) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 27 Aug 2020 10:09:21 -0700
Received: from fmsmsx107.amr.corp.intel.com ([169.254.6.136]) by
 fmsmsx121.amr.corp.intel.com ([169.254.6.67]) with mapi id 14.03.0439.000;
 Thu, 27 Aug 2020 09:54:04 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2VyaWVzIHN0YXJ0aW5nIHdp?=
 =?utf-8?B?dGggW3YzLDEvM10gZHJtL2k5MTUvZGlzcGxheTogQ29tcHV0ZSBoYXNfZHJy?=
 =?utf-8?Q?s_after_compute_has=5Fpsr?=
Thread-Index: AQHWexCxypJnoV/M1UuxadxFN9gFaalMpU0A
Date: Thu, 27 Aug 2020 16:54:04 +0000
Message-ID: <c09eff6f8cbac6ac599c1cabe229b67ce8f83cea.camel@intel.com>
References: <20200825171331.17971-1-jose.souza@intel.com>
 <159838145594.23679.16093481191917344710@emeril.freedesktop.org>
In-Reply-To: <159838145594.23679.16093481191917344710@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.240.12]
Content-ID: <53A461E2FACBEB41B2AF2512880BCB05@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv3=2C1/3=5D_drm/i915/display=3A_Compute_ha?=
 =?utf-8?q?s=5Fdrrs_after_compute_has=5Fpsr?=
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

On Tue, 2020-08-25 at 18:50 +0000, Patchwork wrote:
> Patch Details
> Series:	series starting with [v3,1/3] drm/i915/display: Compute has_drrs after compute has_psr
> URL:	https://patchwork.freedesktop.org/series/80989/
> State:	failure
> Details:	https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18398/index.html
> CI Bug Log - changes from CI_DRM_8924_full -> Patchwork_18398_full
> Summary
> FAILURE
> 
> Serious unknown changes coming with Patchwork_18398_full absolutely need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_18398_full, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> Possible new issues
> Here are the unknown changes that may have been introduced in Patchwork_18398_full:
> 
> IGT changes
> Possible regressions
> igt@gem_sync@basic-store-all:
> shard-tglb: PASS -> FAIL

Changes not related, so patches pushed to dinq.Thanks for the reviews Anshuman.


> Known issues
> Here are the changes found in Patchwork_18398_full that come from known issues:
> 
> IGT changes
> Issues hit
> igt@gem_exec_reloc@basic-concurrent0:
> 
> shard-apl: PASS -> TIMEOUT (i915#1635 / i915#1958) +1 similar issue
> igt@gem_exec_whisper@basic-fds-forked-all:
> 
> shard-kbl: PASS -> TIMEOUT (i915#1958) +1 similar issue
> igt@gem_exec_whisper@basic-queues-priority-all:
> 
> shard-glk: PASS -> TIMEOUT (i915#1958) +1 similar issue
> igt@i915_pm_dc@dc5-psr:
> 
> shard-skl: PASS -> INCOMPLETE (i915#198)
> igt@kms_big_fb@x-tiled-64bpp-rotate-0:
> 
> shard-glk: PASS -> DMESG-FAIL (i915#118 / i915#95) +1 similar issue
> igt@kms_big_fb@x-tiled-8bpp-rotate-0:
> 
> shard-apl: PASS -> DMESG-WARN (i915#1635 / i915#1982) +1 similar issue
> igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
> 
> shard-hsw: PASS -> FAIL (i915#96)
> igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:
> 
> shard-kbl: PASS -> DMESG-WARN (i915#1982)
> igt@kms_cursor_legacy@flip-vs-cursor-legacy:
> 
> shard-skl: PASS -> FAIL (i915#2346)
> igt@kms_flip@flip-vs-expired-vblank@c-dp1:
> 
> shard-apl: PASS -> FAIL (i915#1635 / i915#79)
> igt@kms_flip@flip-vs-suspend@c-hdmi-a1:
> 
> shard-hsw: PASS -> INCOMPLETE (i915#2055)
> igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc:
> 
> shard-tglb: PASS -> DMESG-WARN (i915#1982) +1 similar issue
> igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:
> 
> shard-skl: PASS -> FAIL (i915#49)
> igt@kms_hdr@bpc-switch-suspend:
> 
> shard-kbl: PASS -> DMESG-WARN (i915#180) +7 similar issues
> igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
> 
> shard-skl: PASS -> FAIL (fdo#108145 / i915#265) +1 similar issue
> igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
> 
> shard-skl: PASS -> DMESG-WARN (i915#1982) +7 similar issues
> igt@kms_psr@psr2_sprite_plane_onoff:
> 
> shard-iclb: PASS -> SKIP (fdo#109441)
> igt@perf@blocking-parameterized:
> 
> shard-iclb: PASS -> FAIL (i915#1542)
> Possible fixes
> igt@gem_exec_gttfill@all:
> 
> shard-apl: TIMEOUT (i915#1635 / i915#1958) -> PASS
> igt@gem_exec_nop@basic-sequential:
> 
> shard-tglb: TIMEOUT (i915#1958) -> PASS +2 similar issues
> igt@gem_exec_parallel@engines@basic:
> 
> shard-kbl: INCOMPLETE -> PASS
> igt@gem_exec_reloc@basic-concurrent0:
> 
> shard-skl: TIMEOUT (i915#1958) -> PASS
> igt@gem_exec_whisper@basic-contexts:
> 
> shard-glk: TIMEOUT (i915#1958) -> PASS +3 similar issues
> igt@gem_exec_whisper@basic-forked:
> 
> shard-iclb: TIMEOUT (i915#1958) -> PASS +1 similar issue
> igt@gem_exec_whisper@basic-normal:
> 
> shard-kbl: TIMEOUT (i915#1958) -> PASS
> igt@gem_sync@basic-store-all:
> 
> shard-apl: FAIL (i915#1635) -> PASS
> 
> shard-kbl: FAIL -> PASS
> 
> igt@i915_selftest@mock@requests:
> 
> shard-skl: INCOMPLETE (i915#198 / i915#2278) -> PASS
> igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding:
> 
> shard-skl: DMESG-FAIL (i915#1982 / i915#54) -> PASS
> igt@kms_flip@2x-wf_vblank-ts-check@ab-vga1-hdmi-a1:
> 
> shard-hsw: DMESG-WARN (i915#1982) -> PASS
> igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
> 
> shard-kbl: DMESG-WARN (i915#180) -> PASS +6 similar issues
> igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
> 
> shard-skl: FAIL (i915#2122) -> PASS
> igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite:
> 
> shard-kbl: DMESG-WARN (i915#1982) -> PASS
> igt@kms_frontbuffer_tracking@fbcpsr-suspend:
> 
> shard-tglb: DMESG-WARN (i915#1982) -> PASS +3 similar issues
> igt@kms_hdr@bpc-switch-dpms:
> 
> shard-skl: FAIL (i915#1188) -> PASS
> igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping:
> 
> shard-iclb: DMESG-WARN (i915#1982) -> PASS
> igt@kms_psr@psr2_primary_mmap_cpu:
> 
> shard-iclb: SKIP (fdo#109441) -> PASS +1 similar issue
> igt@perf@gen8-unprivileged-single-ctx-counters:
> 
> shard-skl: DMESG-WARN (i915#1982) -> PASS +10 similar issues
> Warnings
> igt@gem_exec_reloc@basic-many-active@rcs0:
> 
> shard-apl: FAIL (i915#1635) -> FAIL (i915#1635 / i915#2389)
> igt@i915_pm_dc@dc3co-vpb-simulation:
> 
> shard-snb: SKIP (fdo#109271) -> INCOMPLETE (i915#82)
> igt@kms_content_protection@atomic:
> 
> shard-kbl: TIMEOUT (i915#1319) -> TIMEOUT (i915#1319 / i915#1958)
> igt@kms_psr2_su@page_flip:
> 
> shard-iclb: SKIP (i915#1911) -> SKIP (fdo#109642 / fdo#111068)
> igt@perf@polling-parameterized:
> 
> shard-skl: FAIL (i915#1542) -> DMESG-FAIL (i915#1982)
> igt@runner@aborted:
> 
> shard-skl: (FAIL, FAIL) (i915#1436 / i915#2029) -> FAIL (i915#1436)
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> Participating hosts (10 -> 10)
> No changes in participating hosts
> 
> Build changes
> Linux: CI_DRM_8924 -> Patchwork_18398
> CI-20190529: 20190529
> CI_DRM_8924: a8c0611e412aab46eab5475b0117d074892b96e2 @ git://anongit.freedesktop.org/gfx-ci/linux
> IGT_5770: f1d0c240ea2e631dfb9f493f37f8fb61cb2b1cf2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
> Patchwork_18398: 7d42e19c12ea5344d13aa31756cf847649e9985b @ git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
