Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF56E259A72
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Sep 2020 18:50:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 625346E8B3;
	Tue,  1 Sep 2020 16:49:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 975A66E8B3
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Sep 2020 16:49:58 +0000 (UTC)
IronPort-SDR: 8b7Hdjx3B5FT1sVnOxxP85NxCU2v4nJeFG3dtjtPedUl1Qkjwt0UTetdUfSKK0favI3Uf5G1CO
 7cA27Xs/kSRg==
X-IronPort-AV: E=McAfee;i="6000,8403,9731"; a="144947694"
X-IronPort-AV: E=Sophos;i="5.76,379,1592895600"; d="scan'208";a="144947694"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2020 09:49:57 -0700
IronPort-SDR: DqQ6i5+SSyYelDe8w7TMXowAF8/QwAF82bU8pPCDtM1tLOBtX5yxXdpf92jqTfJk26KSbrksL5
 Cb76KX0X6vyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,379,1592895600"; d="scan'208";a="446203444"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 01 Sep 2020 09:49:57 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 1 Sep 2020 09:49:56 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 1 Sep 2020 09:49:47 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Tue, 1 Sep 2020 09:49:47 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2VyaWVzIHN0YXJ0aW5nIHdp?=
 =?utf-8?B?dGggWzEvNF0gZHJtL2k5MTUvZGlzcGxheTogSWdub3JlIElHTk9SRV9QU1Iy?=
 =?utf-8?B?X0hXX1RSQUNLSU5HIGZvciBwbGF0Zm9ybXMgd2l0aG91dCBzZWwgZmV0Y2g=?=
Thread-Index: AQHWgEacG62RoN8Zc06vM8XiEKw43qlUdWCA
Date: Tue, 1 Sep 2020 16:49:47 +0000
Message-ID: <dd9f13bb3ceec8dac89bb9d978af23801e008cc2.camel@intel.com>
References: <20200901010924.235808-1-jose.souza@intel.com>
 <159895437759.31090.13013126341685974838@emeril.freedesktop.org>
In-Reply-To: <159895437759.31090.13013126341685974838@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <70F1982FBFFC124385FFDC8860F2F4B1@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915/display=3A_Ignore_IGNORE?=
 =?utf-8?q?=5FPSR2=5FHW=5FTRACKING_for_platforms_without_sel_fetch?=
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

On Tue, 2020-09-01 at 09:59 +0000, Patchwork wrote:
> Patch Details
> Series:	series starting with [1/4] drm/i915/display: Ignore IGNORE_PSR2_HW_TRACKING for platforms without sel fetch
> URL:	https://patchwork.freedesktop.org/series/81201/
> State:	failure
> Details:	https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18426/index.html
> CI Bug Log - changes from CI_DRM_8948_full -> Patchwork_18426_full
> Summary
> FAILURE
> 
> Serious unknown changes coming with Patchwork_18426_full absolutely need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_18426_full, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> Possible new issues
> Here are the unknown changes that may have been introduced in Patchwork_18426_full:
> 
> IGT changes
> Possible regressions
> igt@runner@aborted:
> shard-tglb: NOTRUN -> (FAIL, FAIL, FAIL, FAIL, FAIL, FAIL, FAIL, FAIL, FAIL, FAIL, FAIL, FAIL, FAIL, FAIL, FAIL, FAIL, FAIL, FAIL, FAIL, FAIL, FAIL, FAIL, FAIL, FAIL, FAIL)

Okay, so it is a valid a state that have CRTC enabled with all planes not visible.Will fix it for next version.

> Known issues
> Here are the changes found in Patchwork_18426_full that come from known issues:
> 
> IGT changes
> Issues hit
> igt@gem_exec_whisper@basic-contexts-all:
> 
> shard-glk: PASS -> TIMEOUT (i915#1958) +2 similar issues
> igt@gem_partial_pwrite_pread@reads-display:
> 
> shard-glk: PASS -> FAIL (i915#2261) +1 similar issue
> igt@gem_sync@basic-store-all:
> 
> shard-glk: PASS -> FAIL (i915#2356)
> igt@i915_selftest@mock@contexts:
> 
> shard-apl: PASS -> INCOMPLETE (i915#1635 / i915#2278)
> igt@kms_big_fb@linear-64bpp-rotate-180:
> 
> shard-glk: PASS -> DMESG-FAIL (i915#118 / i915#95)
> igt@kms_color@pipe-c-ctm-0-25:
> 
> shard-skl: PASS -> DMESG-WARN (i915#1982) +5 similar issues
> igt@kms_flip@plain-flip-ts-check@a-dp1:
> 
> shard-kbl: PASS -> DMESG-WARN (i915#1982) +1 similar issue
> igt@kms_frontbuffer_tracking@fbc-suspend:
> 
> shard-kbl: PASS -> DMESG-WARN (i915#180) +3 similar issues
> igt@kms_hdr@bpc-switch-dpms:
> 
> shard-skl: PASS -> FAIL (i915#1188) +1 similar issue
> igt@kms_plane@plane-panning-bottom-right-pipe-a-planes:
> 
> shard-iclb: PASS -> FAIL (i915#1036)
> igt@kms_plane_cursor@pipe-b-primary-size-64:
> 
> shard-apl: PASS -> DMESG-WARN (i915#1635 / i915#1982)
> igt@kms_psr@psr2_sprite_mmap_gtt:
> 
> shard-iclb: PASS -> SKIP (fdo#109441) +1 similar issue
> igt@kms_setmode@basic:
> 
> shard-kbl: PASS -> FAIL (i915#31)
> Possible fixes
> igt@gem_exec_gttfill@basic:
> 
> shard-glk: DMESG-WARN (i915#118 / i915#95) -> PASS
> igt@gem_exec_reloc@basic-concurrent0:
> 
> shard-skl: TIMEOUT (i915#1958) -> PASS
> igt@gem_exec_whisper@basic-fds-forked-all:
> 
> shard-kbl: TIMEOUT (i915#1958) -> PASS
> igt@gem_exec_whisper@basic-forked:
> 
> shard-glk: TIMEOUT (i915#1958) -> PASS
> igt@gem_exec_whisper@basic-queues-forked:
> 
> shard-skl: DMESG-WARN (i915#1982) -> PASS +8 similar issues
> igt@i915_pm_dc@dc6-psr:
> 
> shard-skl: FAIL (i915#454) -> PASS
> igt@kms_draw_crc@draw-method-rgb565-blt-xtiled:
> 
> shard-apl: DMESG-WARN (i915#1635 / i915#1982) -> PASS +1 similar issue
> igt@kms_plane@plane-panning-bottom-right-pipe-a-planes:
> 
> shard-glk: FAIL (i915#1036) -> PASS
> igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
> 
> shard-kbl: DMESG-WARN (i915#180) -> PASS +2 similar issues
> igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
> 
> shard-skl: INCOMPLETE (i915#198) -> PASS
> igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
> 
> shard-skl: FAIL (fdo#108145 / i915#265) -> PASS
> igt@kms_plane_scaling@pipe-c-scaler-with-clipping-clamping:
> 
> shard-iclb: DMESG-WARN (i915#1982) -> PASS
> igt@kms_psr@psr2_cursor_plane_onoff:
> 
> shard-iclb: SKIP (fdo#109441) -> PASS +1 similar issue
> Warnings
> igt@kms_flip@flip-vs-expired-vblank@a-edp1:
> 
> shard-skl: DMESG-WARN (i915#1982) -> DMESG-FAIL (i915#1982 / i915#79)
> igt@runner@aborted:
> 
> shard-skl: FAIL (i915#1436) -> (FAIL, FAIL) (i915#1436 / i915#1814 / i915#2029)
> Participating hosts (10 -> 10)
> No changes in participating hosts
> 
> Build changes
> Linux: CI_DRM_8948 -> Patchwork_18426
> CI-20190529: 20190529
> CI_DRM_8948: 4a551ee5aa0f402a647f797437b69af12ce78642 @ git://anongit.freedesktop.org/gfx-ci/linux
> IGT_5774: 2a5db9f60241383272aeec176e1b97b3f487209f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
> Patchwork_18426: 8316e2705e8f88f7a0b59150fe3ce4bb99edc616 @ git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
