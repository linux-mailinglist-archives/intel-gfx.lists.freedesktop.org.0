Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 274C723AD62
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Aug 2020 21:38:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E6AD6E152;
	Mon,  3 Aug 2020 19:38:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F62D6E152
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Aug 2020 19:38:35 +0000 (UTC)
IronPort-SDR: MSoNd+CHo2VlDxuI+mJF9+VsoXnPIkkU7oLzZPW1GSVDROg34iQU0r2TSpbW2dCb9xJBxYZmmS
 hN8BTWPkAEkw==
X-IronPort-AV: E=McAfee;i="6000,8403,9702"; a="153373326"
X-IronPort-AV: E=Sophos;i="5.75,431,1589266800"; d="scan'208";a="153373326"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2020 12:38:34 -0700
IronPort-SDR: R4aVw58jg+Xphrxtv2TAur4idpYJwzzgWu1QB5HQEggwZ34HxHclap8CtDs8Ue/gFHMf92WeLs
 Lp7LDrkkW78A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,431,1589266800"; d="scan'208";a="492050360"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP; 03 Aug 2020 12:38:34 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 3 Aug 2020 12:38:34 -0700
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 3 Aug 2020 12:38:34 -0700
Received: from orsmsx151.amr.corp.intel.com ([169.254.7.123]) by
 ORSMSX106.amr.corp.intel.com ([169.254.1.101]) with mapi id 14.03.0439.000;
 Mon, 3 Aug 2020 12:38:33 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "tianjia.zhang@linux.alibaba.com" <tianjia.zhang@linux.alibaba.com>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0g4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJtL2k5?=
 =?utf-8?B?MTU6IEZpeCB3cm9uZyByZXR1cm4gdmFsdWUgaW4gaW50ZWxfYXRvbWljX2No?=
 =?utf-8?Q?eck()?=
Thread-Index: AQHWabSfPvWYVj0oUkK7U2ilTlUBdaknPegA
Date: Mon, 3 Aug 2020 19:38:32 +0000
Message-ID: <67663123e2974bd238b0e84c6faaa50ee7237cfd.camel@intel.com>
References: <20200802111535.5200-1-tianjia.zhang@linux.alibaba.com>
 <159647273843.19294.14246855210418932506@emeril.freedesktop.org>
In-Reply-To: <159647273843.19294.14246855210418932506@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.251.135.198]
Content-ID: <C439448A92342848A2DA00F53A12E10C@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_wrong_return_value_in_intel=5Fatomic=5Fcheck=28=29?=
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

On Mon, 2020-08-03 at 16:38 +0000, Patchwork wrote:
> Patch Details
> Series:	drm/i915: Fix wrong return value in intel_atomic_check()
> URL:	https://patchwork.freedesktop.org/series/80208/
> State:	failure
> Details:	https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18299/index.html
> CI Bug Log - changes from CI_DRM_8834_full -> Patchwork_18299_full
> Summary
> FAILURE
> 
> Serious unknown changes coming with Patchwork_18299_full absolutely need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_18299_full, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> Possible new issues
> Here are the unknown changes that may have been introduced in Patchwork_18299_full:
> 
> IGT changes
> Possible regressions
> igt@gem_mmap_gtt@fault-concurrent:
> 

This regression is not related with this changes.Pushed to dinq, thanks for the patch.

> shard-snb: PASS -> DMESG-WARN
> igt@runner@aborted:
> 
> shard-snb: NOTRUN -> FAIL
> Known issues
> Here are the changes found in Patchwork_18299_full that come from known issues:
> 
> IGT changes
> Issues hit
> igt@gen9_exec_parse@allowed-all:
> 
> shard-apl: PASS -> DMESG-WARN (i915#1436 / i915#1635 / i915#716)
> igt@gen9_exec_parse@allowed-single:
> 
> shard-skl: PASS -> INCOMPLETE (i915#1436 / i915#716)
> igt@i915_selftest@mock@contexts:
> 
> shard-apl: PASS -> INCOMPLETE (i915#1635)
> igt@kms_big_fb@y-tiled-64bpp-rotate-0:
> 
> shard-glk: PASS -> DMESG-FAIL (i915#118 / i915#95)
> igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge:
> 
> shard-skl: PASS -> DMESG-WARN (i915#1982) +14 similar issues
> igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2:
> 
> shard-glk: PASS -> FAIL (i915#2122)
> igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-dp1:
> 
> shard-kbl: PASS -> DMESG-WARN (i915#1982)
> igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
> 
> shard-skl: PASS -> FAIL (i915#2122)
> igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
> 
> shard-kbl: PASS -> DMESG-WARN (i915#180) +5 similar issues
> igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite:
> 
> shard-tglb: PASS -> DMESG-WARN (i915#1982) +4 similar issues
> igt@kms_hdr@bpc-switch:
> 
> shard-skl: PASS -> FAIL (i915#1188)
> igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
> 
> shard-iclb: PASS -> INCOMPLETE (i915#1185)
> igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
> 
> shard-skl: PASS -> FAIL (fdo#108145 / i915#265) +1 similar issue
> igt@kms_psr2_su@frontbuffer:
> 
> shard-iclb: PASS -> SKIP (fdo#109642 / fdo#111068) +1 similar issue
> igt@kms_psr@psr2_cursor_render:
> 
> shard-iclb: PASS -> SKIP (fdo#109441) +3 similar issues
> igt@perf_pmu@module-unload:
> 
> shard-iclb: PASS -> DMESG-WARN (i915#1982)
> Possible fixes
> {igt@feature_discovery@psr2}:
> 
> shard-iclb: SKIP (i915#658) -> PASS
> igt@gem_exec_suspend@basic-s3:
> 
> shard-skl: INCOMPLETE -> PASS
> igt@gem_mmap_gtt@fault-concurrent:
> 
> shard-glk: DMESG-WARN (i915#2165) -> PASS
> igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
> 
> shard-apl: FAIL (i915#1635) -> PASS
> igt@gen9_exec_parse@allowed-all:
> 
> shard-kbl: DMESG-WARN (i915#1436 / i915#716) -> PASS
> igt@i915_selftest@mock@requests:
> 
> shard-skl: INCOMPLETE (i915#198) -> PASS
> igt@kms_big_fb@y-tiled-64bpp-rotate-180:
> 
> shard-glk: DMESG-FAIL (i915#118 / i915#95) -> PASS
> igt@kms_big_fb@y-tiled-8bpp-rotate-180:
> 
> shard-kbl: DMESG-WARN (i915#1982) -> PASS
> igt@kms_frontbuffer_tracking@fbc-suspend:
> 
> shard-kbl: DMESG-WARN (i915#180) -> PASS +3 similar issues
> igt@kms_hdr@bpc-switch-suspend:
> 
> shard-skl: FAIL (i915#1188) -> PASS
> igt@kms_plane@plane-panning-bottom-right-pipe-c-planes:
> 
> shard-skl: DMESG-WARN (i915#1982) -> PASS +6 similar issues
> igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
> 
> shard-glk: DMESG-WARN (i915#1982) -> PASS
> igt@kms_psr@psr2_primary_mmap_gtt:
> 
> shard-iclb: SKIP (fdo#109441) -> PASS +1 similar issue
> igt@kms_setmode@basic:
> 
> shard-kbl: FAIL (i915#31) -> PASS
> Warnings
> igt@gem_exec_reloc@basic-concurrent0:
> 
> shard-apl: INCOMPLETE (i915#1635) -> FAIL (i915#1635 / i915#1930)
> igt@gem_exec_reloc@basic-spin-others@vcs0:
> 
> shard-snb: WARN (i915#2021) -> WARN (i915#2036)
> igt@kms_content_protection@lic:
> 
> shard-kbl: TIMEOUT (i915#1319) -> TIMEOUT (i915#1319 / i915#1958)
> igt@kms_content_protection@srm:
> 
> shard-kbl: TIMEOUT (i915#1319 / i915#1958) -> TIMEOUT (i915#1319)
> igt@kms_dp_dsc@basic-dsc-enable-edp:
> 
> shard-iclb: DMESG-WARN (i915#1226) -> SKIP (fdo#109349)
> igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
> 
> shard-skl: DMESG-WARN (i915#1982) -> DMESG-FAIL (i915#1982)
> igt@runner@aborted:
> 
> shard-apl: FAIL (i915#1611 / i915#1635) -> (FAIL, FAIL) (fdo#109271 / i915#1635 / i915#2110 / i915#716)
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> Participating hosts (11 -> 11)
> No changes in participating hosts
> 
> Build changes
> Linux: CI_DRM_8834 -> Patchwork_18299
> CI-20190529: 20190529
> CI_DRM_8834: ac25ad7789fe4cc689a854d823a226ce24bb0a62 @ git://anongit.freedesktop.org/gfx-ci/linux
> IGT_5757: d78c7fd293cb228fe03ccff730202b033e25ff18 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
> Patchwork_18299: c424984659634a354c06464d0590a6fd66a6ad3e @ git://anongit.freedesktop.org/gfx-ci/linux
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
