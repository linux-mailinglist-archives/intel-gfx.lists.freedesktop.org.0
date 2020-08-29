Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40C532563DE
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Aug 2020 03:02:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CA726E117;
	Sat, 29 Aug 2020 01:02:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A59E66E117
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Aug 2020 01:02:50 +0000 (UTC)
IronPort-SDR: h3hwGq4qrS82YVwWhcsny2jU7khm0aPRVVdzGi/K6PNCThJcth//+SrPPG2KKvdtLbJzVIfVUo
 kv0+KBj/t74Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9727"; a="154307358"
X-IronPort-AV: E=Sophos;i="5.76,365,1592895600"; d="scan'208";a="154307358"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2020 18:02:50 -0700
IronPort-SDR: MwbQtDLCRgSrD3Vuip6p7mvqh66eItIU9XQEDT9PBWFKEr1Q5XY8CJmKYjweZvJOf2JN4p5XgB
 NphE07aoqcCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,365,1592895600"; d="scan'208";a="500689299"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 28 Aug 2020 18:02:50 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 28 Aug 2020 18:02:03 -0700
Received: from fmsmsx106.amr.corp.intel.com (10.18.124.204) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 28 Aug 2020 18:02:03 -0700
Received: from fmsmsx107.amr.corp.intel.com ([169.254.6.136]) by
 FMSMSX106.amr.corp.intel.com ([169.254.5.233]) with mapi id 14.03.0439.000;
 Fri, 28 Aug 2020 18:02:03 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "natechancellor@gmail.com" <natechancellor@gmail.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Vudum,
 Lakshminarayana" <lakshminarayana.vudum@intel.com>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0g4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJtL2k5?=
 =?utf-8?B?MTUvZGlzcGxheTogRW5zdXJlIHRoYXQgcmV0IGlzIGFsd2F5cyBpbml0aWFs?=
 =?utf-8?B?aXplZCBpbiBpY2xfY29tYm9fcGh5X3ZlcmlmeV9zdGF0ZSAocmV2Mik=?=
Thread-Index: AQHWfYyNaIEGt9/wIkayYI5qIynbgKlOuwSA
Date: Sat, 29 Aug 2020 01:02:03 +0000
Message-ID: <e5ac6f37df94e9a79ae5102731af75dc452711a2.camel@intel.com>
References: <20200828202830.7165-1-jose.souza@intel.com>
 <159865448889.4240.6684594818880581418@emeril.freedesktop.org>
In-Reply-To: <159865448889.4240.6684594818880581418@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.240.12]
Content-ID: <E63AA42EA655DB42B8EE686D706FF058@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Ensure_that_ret_is_always_initialized_in_icl?=
 =?utf-8?b?X2NvbWJvX3BoeV92ZXJpZnlfc3RhdGUgKHJldjIp?=
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

On Fri, 2020-08-28 at 22:41 +0000, Patchwork wrote:
> Patch Details
> Series:	drm/i915/display: Ensure that ret is always initialized in icl_combo_phy_verify_state (rev2)
> URL:	https://patchwork.freedesktop.org/series/79536/
> State:	failure
> Details:	https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18420/index.html
> CI Bug Log - changes from CI_DRM_8938_full -> Patchwork_18420_full
> Summary
> FAILURE
> 
> Serious unknown changes coming with Patchwork_18420_full absolutely need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_18420_full, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> Possible new issues
> Here are the unknown changes that may have been introduced in Patchwork_18420_full:
> 
> IGT changes
> Possible regressions
> igt@i915_pm_rpm@i2c:
> 
> shard-tglb: PASS -> DMESG-WARN +97 similar issues

This issue was not caused by this patch but it was introduced by "drm/i915/display: Implement new combo phy initialization step", so pushing this patch that fix the not initialized variable and I have opened assigned to me a issue to fix the root cause.
https://gitlab.freedesktop.org/drm/intel/-/issues/2411
Lakshminarayana: do I need to do anything to tie this gitlab issue to the CI error?

Thanks for the patch Nathan.


> igt@runner@aborted:
> 
> shard-snb: NOTRUN -> FAIL
> Known issues
> Here are the changes found in Patchwork_18420_full that come from known issues:
> 
> IGT changes
> Issues hit
> igt@gem_ctx_persistence@legacy-engines-mixed-process@blt:
> 
> shard-skl: PASS -> FAIL (i915#2374)
> igt@gem_exec_reloc@basic-concurrent0:
> 
> shard-apl: PASS -> TIMEOUT (i915#1635 / i915#1958)
> igt@gem_exec_whisper@basic-contexts-all:
> 
> shard-glk: PASS -> TIMEOUT (i915#1958) +3 similar issues
> igt@gem_exec_whisper@basic-fds-priority-all:
> 
> shard-glk: PASS -> DMESG-WARN (i915#118 / i915#95)
> igt@gem_exec_whisper@basic-queues:
> 
> shard-kbl: PASS -> TIMEOUT (i915#1958) +2 similar issues
> igt@gem_sync@basic-store-all:
> 
> shard-apl: PASS -> FAIL (i915#1635 / i915#2356)
> igt@i915_selftest@mock@contexts:
> 
> shard-skl: PASS -> INCOMPLETE (i915#198 / i915#2278)
> igt@kms_color@pipe-c-ctm-0-25:
> 
> shard-skl: PASS -> DMESG-WARN (i915#1982) +6 similar issues
> igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen:
> 
> shard-kbl: PASS -> FAIL (i915#54)
> igt@kms_cursor_legacy@cursor-vs-flip-toggle:
> 
> shard-hsw: PASS -> FAIL (i915#2370)
> igt@kms_flip@flip-vs-expired-vblank@b-dp1:
> 
> shard-apl: PASS -> FAIL (i915#1635 / i915#79)
> igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:
> 
> shard-skl: PASS -> INCOMPLETE (i915#198)
> igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt:
> 
> shard-tglb: PASS -> DMESG-WARN (i915#1982) +2 similar issues
> igt@kms_plane@plane-panning-bottom-right-pipe-a-planes:
> 
> shard-glk: PASS -> FAIL (i915#1036)
> igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
> 
> shard-glk: PASS -> DMESG-WARN (i915#1982)
> igt@kms_plane_cursor@pipe-b-primary-size-64:
> 
> shard-apl: PASS -> DMESG-WARN (i915#1635 / i915#1982)
> igt@kms_psr@psr2_sprite_blt:
> 
> shard-iclb: PASS -> SKIP (fdo#109441) +1 similar issue
> igt@kms_vblank@pipe-a-ts-continuation-suspend:
> 
> shard-kbl: PASS -> DMESG-WARN (i915#180) +12 similar issues
> igt@perf@polling-small-buf:
> 
> shard-skl: PASS -> FAIL (i915#1722)
> Possible fixes
> igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd:
> 
> shard-apl: FAIL (i915#1635 / i915#2374) -> PASS
> igt@gem_exec_gttfill@all:
> 
> shard-kbl: TIMEOUT (i915#1958) -> PASS
> igt@gem_exec_whisper@basic-forked:
> 
> shard-apl: TIMEOUT (i915#1635 / i915#1958) -> PASS +1 similar issue
> igt@gem_exec_whisper@basic-queues:
> 
> shard-tglb: TIMEOUT (i915#1958) -> PASS
> igt@gem_partial_pwrite_pread@reads-display:
> 
> shard-glk: FAIL (i915#2261) -> PASS +1 similar issue
> igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:
> 
> shard-skl: DMESG-WARN (i915#1982) -> PASS +7 similar issues
> igt@i915_pm_dc@dc6-psr:
> 
> shard-skl: FAIL (i915#454) -> PASS
> igt@kms_big_fb@y-tiled-64bpp-rotate-180:
> 
> shard-glk: DMESG-FAIL (i915#118 / i915#95) -> PASS +1 similar issue
> igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
> 
> shard-hsw: FAIL (i915#96) -> PASS
> igt@kms_flip@2x-flip-vs-expired-vblank@bc-vga1-hdmi-a1:
> 
> shard-hsw: FAIL (i915#2122) -> PASS
> igt@kms_flip@dpms-vs-vblank-race-interruptible@a-dp1:
> 
> shard-kbl: DMESG-WARN (i915#1982) -> PASS
> igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1:
> 
> shard-glk: FAIL (i915#2122) -> PASS
> igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
> 
> shard-kbl: DMESG-WARN (i915#180) -> PASS
> igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite:
> 
> shard-tglb: DMESG-WARN (i915#1982) -> PASS +2 similar issues
> igt@kms_hdr@bpc-switch-suspend:
> 
> shard-skl: FAIL (i915#1188) -> PASS
> igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
> 
> shard-kbl: INCOMPLETE (i915#155) -> PASS +1 similar issue
> igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
> 
> shard-skl: FAIL (fdo#108145 / i915#265) -> PASS +1 similar issue
> igt@kms_psr@psr2_primary_page_flip:
> 
> shard-iclb: SKIP (fdo#109441) -> PASS
> Warnings
> igt@kms_color@pipe-c-ctm-red-to-blue:
> 
> shard-snb: SKIP (fdo#109271) -> INCOMPLETE (i915#82)
> igt@kms_dp_dsc@basic-dsc-enable-edp:
> 
> shard-iclb: DMESG-WARN (i915#1226) -> SKIP (fdo#109349)
> Participating hosts (11 -> 10)
> Missing (1): pig-snb-2600 
> 
> Build changes
> Linux: CI_DRM_8938 -> Patchwork_18420
> CI-20190529: 20190529
> CI_DRM_8938: 24847b4c8a388892d2ad0a24f143abfd20cdec19 @ git://anongit.freedesktop.org/gfx-ci/linux
> IGT_5774: 2a5db9f60241383272aeec176e1b97b3f487209f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
> Patchwork_18420: a5e1e06edb8ebc9c20bd36a37a5f781f6a77459a @ git://anongit.freedesktop.org/gfx-ci/linux
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
