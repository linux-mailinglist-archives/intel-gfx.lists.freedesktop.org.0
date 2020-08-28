Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AACC255FBF
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Aug 2020 19:31:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E62176E4F8;
	Fri, 28 Aug 2020 17:31:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 549156E4F8
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Aug 2020 17:31:54 +0000 (UTC)
IronPort-SDR: HfHaGqTRwLUy3QgMlBn3Kq6HnVyIfPhYAQbkD9TeY0kV4H7licu/Jru6VaN3oO+oW/cbZ0SAZV
 ZvTycchArRCg==
X-IronPort-AV: E=McAfee;i="6000,8403,9727"; a="155972053"
X-IronPort-AV: E=Sophos;i="5.76,364,1592895600"; d="scan'208";a="155972053"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2020 10:31:53 -0700
IronPort-SDR: 0coXDQsgKHtU9lUmB2QVCwHLxl1ttLxPDamhulq9Bt2V+nwepii6oJq7bHuiJaSLglq0vk4A6k
 73jLqRJKnhbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,364,1592895600"; d="scan'208";a="475768551"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 28 Aug 2020 10:31:53 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 28 Aug 2020 10:31:07 -0700
Received: from fmsmsx152.amr.corp.intel.com (10.18.125.5) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 28 Aug 2020 10:31:07 -0700
Received: from fmsmsx107.amr.corp.intel.com ([169.254.6.136]) by
 FMSMSX152.amr.corp.intel.com ([169.254.6.37]) with mapi id 14.03.0439.000;
 Fri, 28 Aug 2020 10:31:06 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvdGdsOiBGaXgg?=
 =?utf-8?Q?stepping_WA_matching_(rev3)?=
Thread-Index: AQHWfOJhr+CXjYQcu0evsdfSs7kmOalOPliA
Date: Fri, 28 Aug 2020 17:31:07 +0000
Message-ID: <e9ddb60c85ee500255080a93eec53a9e2601a8f1.camel@intel.com>
References: <20200827233943.400946-1-jose.souza@intel.com>
 <159858145048.4240.1635744788018697190@emeril.freedesktop.org>
In-Reply-To: <159858145048.4240.1635744788018697190@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.240.12]
Content-ID: <2E10E734B2B4154CAA74BDC8539243C4@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=3A_Fix_stepping_WA_matching_=28rev3=29?=
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

On Fri, 2020-08-28 at 02:24 +0000, Patchwork wrote:
> Patch Details
> Series:	drm/i915/tgl: Fix stepping WA matching (rev3)
> URL:	https://patchwork.freedesktop.org/series/80820/
> State:	failure
> Details:	https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18417/index.html
> CI Bug Log - changes from CI_DRM_8935_full -> Patchwork_18417_full
> Summary
> FAILURE
> 
> Serious unknown changes coming with Patchwork_18417_full absolutely need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_18417_full, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> Possible new issues
> Here are the unknown changes that may have been introduced in Patchwork_18417_full:
> 
> IGT changes
> Possible regressions
> igt@kms_flip@modeset-vs-vblank-race-interruptible@c-vga1:
> shard-hsw: PASS -> INCOMPLETE

Failure not related to this changes.Pushed to dinq, thanks for the review Anusha.

> Known issues
> Here are the changes found in Patchwork_18417_full that come from known issues:
> 
> IGT changes
> Issues hit
> igt@gem_ctx_isolation@preservation-s3@bcs0:
> 
> shard-skl: PASS -> INCOMPLETE (i915#198) +1 similar issue
> igt@gem_ctx_persistence@engines-mixed-process@rcs0:
> 
> shard-apl: PASS -> FAIL (i915#1635 / i915#2374)
> igt@gem_exec_reloc@basic-concurrent0:
> 
> shard-glk: PASS -> TIMEOUT (i915#1958) +1 similar issue
> 
> shard-skl: PASS -> TIMEOUT (i915#1958)
> 
> igt@gem_exec_reloc@basic-concurrent16:
> 
> shard-apl: PASS -> TIMEOUT (i915#1635 / i915#1958)
> igt@gem_exec_whisper@basic-contexts-priority:
> 
> shard-kbl: PASS -> TIMEOUT (i915#1958) +1 similar issue
> igt@kms_big_fb@y-tiled-8bpp-rotate-180:
> 
> shard-apl: PASS -> DMESG-WARN (i915#1635 / i915#1982)
> igt@kms_cursor_edge_walk@pipe-c-128x128-top-edge:
> 
> shard-glk: PASS -> DMESG-WARN (i915#1982)
> igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
> 
> shard-hsw: PASS -> FAIL (i915#96)
> igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
> 
> shard-kbl: PASS -> DMESG-WARN (i915#180) +1 similar issue
> igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:
> 
> shard-iclb: PASS -> DMESG-WARN (i915#1982) +1 similar issue
> igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt:
> 
> shard-skl: PASS -> FAIL (i915#49)
> igt@kms_hdr@bpc-switch-dpms:
> 
> shard-kbl: PASS -> FAIL (i915#1188)
> igt@kms_plane@plane-panning-bottom-right-pipe-c-planes:
> 
> shard-skl: PASS -> DMESG-WARN (i915#1982) +18 similar issues
> igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
> 
> shard-skl: PASS -> FAIL (fdo#108145 / i915#265)
> igt@kms_psr@psr2_sprite_render:
> 
> shard-iclb: PASS -> SKIP (fdo#109441) +2 similar issues
> igt@kms_vblank@pipe-b-ts-continuation-suspend:
> 
> shard-kbl: PASS -> INCOMPLETE (i915#155)
> igt@perf@blocking-parameterized:
> 
> shard-tglb: PASS -> FAIL (i915#1542)
> igt@perf_pmu@module-unload:
> 
> shard-tglb: PASS -> DMESG-WARN (i915#1982) +2 similar issues
> Possible fixes
> {igt@feature_discovery@psr2}:
> 
> shard-iclb: SKIP (i915#658) -> PASS
> igt@gem_exec_parallel@engines@contexts:
> 
> shard-glk: INCOMPLETE (i915#2398) -> PASS
> igt@gem_exec_whisper@basic-contexts-forked:
> 
> shard-glk: DMESG-WARN (i915#118 / i915#95) -> PASS
> igt@gem_exec_whisper@basic-fds-all:
> 
> shard-tglb: TIMEOUT (i915#1958) -> PASS
> igt@gem_exec_whisper@basic-fds-priority:
> 
> shard-iclb: TIMEOUT (i915#1958) -> PASS
> igt@gem_exec_whisper@basic-forked-all:
> 
> shard-glk: TIMEOUT (i915#1958) -> PASS +3 similar issues
> igt@gem_exec_whisper@basic-queues-forked-all:
> 
> shard-apl: TIMEOUT (i915#1635 / i915#1958) -> PASS +2 similar issues
> igt@i915_suspend@sysfs-reader:
> 
> shard-hsw: INCOMPLETE (i915#2055) -> PASS
> igt@kms_cursor_crc@pipe-c-cursor-suspend:
> 
> shard-skl: INCOMPLETE (i915#300) -> PASS
> igt@kms_cursor_edge_walk@pipe-b-64x64-top-edge:
> 
> shard-glk: DMESG-WARN (i915#1982) -> PASS
> igt@kms_flip@blocking-wf_vblank@a-hdmi-a1:
> 
> shard-glk: FAIL (i915#2122) -> PASS
> igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render:
> 
> shard-tglb: DMESG-WARN (i915#1982) -> PASS +1 similar issue
> igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite:
> 
> shard-kbl: DMESG-WARN (i915#1982) -> PASS
> igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff:
> 
> shard-glk: FAIL (i915#49) -> PASS
> igt@kms_frontbuffer_tracking@fbc-suspend:
> 
> shard-kbl: DMESG-WARN (i915#180) -> PASS +5 similar issues
> igt@kms_hdr@bpc-switch-dpms:
> 
> shard-skl: FAIL (i915#1188) -> PASS +1 similar issue
> igt@kms_plane@plane-panning-top-left-pipe-c-planes:
> 
> shard-skl: DMESG-WARN (i915#1982) -> PASS +9 similar issues
> igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
> 
> shard-skl: FAIL (fdo#108145 / i915#265) -> PASS
> igt@kms_psr@psr2_sprite_plane_move:
> 
> shard-iclb: SKIP (fdo#109441) -> PASS +4 similar issues
> Warnings
> igt@gem_exec_whisper@basic-fds-priority-all:
> 
> shard-glk: DMESG-WARN (i915#118 / i915#95) -> TIMEOUT (i915#1958)
> igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
> 
> shard-skl: FAIL (fdo#108145 / i915#265) -> DMESG-WARN (i915#1982)
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> Participating hosts (10 -> 10)
> No changes in participating hosts
> 
> Build changes
> Linux: CI_DRM_8935 -> Patchwork_18417
> CI-20190529: 20190529
> CI_DRM_8935: 3677673f5564f3b22ba3fe5b9031c395bef32002 @ git://anongit.freedesktop.org/gfx-ci/linux
> IGT_5773: 17641a0df4f4a37711a28a9aaf48c0de85ef53d4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
> Patchwork_18417: 308f1ef1a8cb5520c6d2016d3803ad87909b1e7e @ git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
