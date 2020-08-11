Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EFE3241E14
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Aug 2020 18:21:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF20189F38;
	Tue, 11 Aug 2020 16:21:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FE1C89F38
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Aug 2020 16:21:00 +0000 (UTC)
IronPort-SDR: 2wfQ6mSSzfvfpWbOh9Nt0UAw9BetC4QyMlnVL3hK1AnAz4KiRMgLAHWuk71TBKNuAW8W1citCN
 2bdmbqo60OaA==
X-IronPort-AV: E=McAfee;i="6000,8403,9710"; a="154882797"
X-IronPort-AV: E=Sophos;i="5.76,301,1592895600"; d="scan'208";a="154882797"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2020 09:20:58 -0700
IronPort-SDR: WJ1sNMJZ+ZiZ6+u+YZdWyoiIyhrWPKqZUz3Mq9IrVO7xxqvU0tbEsIsUdtJjTHSXWM4eIjdOAP
 hYANTZKD9zXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,301,1592895600"; d="scan'208";a="368993908"
Received: from orsmsx606-2.jf.intel.com (HELO ORSMSX606.amr.corp.intel.com)
 ([10.22.229.86])
 by orsmga001.jf.intel.com with ESMTP; 11 Aug 2020 09:20:58 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 11 Aug 2020 09:20:58 -0700
Received: from orsmsx154.amr.corp.intel.com (10.22.226.12) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 11 Aug 2020 09:20:58 -0700
Received: from orsmsx151.amr.corp.intel.com ([169.254.7.123]) by
 ORSMSX154.amr.corp.intel.com ([169.254.11.41]) with mapi id 14.03.0439.000;
 Tue, 11 Aug 2020 09:20:57 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2VyaWVzIHN0YXJ0aW5nIHdp?=
 =?utf-8?B?dGggW0NJLDEvMl0gZHJtL2k5MTU6IEluaXRpYWwgaW1wbGVtZW50YXRpb24g?=
 =?utf-8?Q?of_PSR2_selective_fetch_(rev2)?=
Thread-Index: AQHWb4GpDwH8a+fmfUOGMGeA41Vxf6kzjcqA
Date: Tue, 11 Aug 2020 16:20:57 +0000
Message-ID: <818c60ede6ba950733ff97dfc8c02e67444307fd.camel@intel.com>
References: <20200810174144.76761-1-jose.souza@intel.com>
 <159711055702.3767.13381828964250608459@emeril.freedesktop.org>
In-Reply-To: <159711055702.3767.13381828964250608459@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.254.184.17]
Content-ID: <FF320EC6A068FE43A116D06C2C12D744@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/2=5D_drm/i915=3A_Initial_implementa?=
 =?utf-8?q?tion_of_PSR2_selective_fetch_=28rev2=29?=
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

On Tue, 2020-08-11 at 01:49 +0000, Patchwork wrote:
> Patch Details
> Series:	series starting with [CI,1/2] drm/i915: Initial implementation of PSR2 selective fetch (rev2)
> URL:	https://patchwork.freedesktop.org/series/80478/
> State:	success
> Details:	https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18337/index.html
> CI Bug Log - changes from CI_DRM_8866_full -> Patchwork_18337_full
> Summary
> SUCCESS
> 
> No regressions found.

pushed to dinq, thanks for the review GG.

> 
> Known issues
> Here are the changes found in Patchwork_18337_full that come from known issues:
> 
> IGT changes
> Issues hit
> igt@drm_read@short-buffer-wakeup:
> 
> shard-skl: PASS -> DMESG-WARN (i915#1982) +10 similar issues
> igt@gem_eio@kms:
> 
> shard-snb: PASS -> DMESG-WARN (i915#1982)
> igt@gen9_exec_parse@allowed-all:
> 
> shard-skl: PASS -> DMESG-WARN (i915#1436 / i915#716)
> 
> shard-apl: PASS -> DMESG-WARN (i915#1436 / i915#1635 / i915#716)
> 
> igt@i915_selftest@mock@contexts:
> 
> shard-apl: PASS -> INCOMPLETE (i915#1635)
> igt@kms_big_fb@linear-64bpp-rotate-0:
> 
> shard-glk: PASS -> DMESG-FAIL (i915#118 / i915#95)
> igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
> 
> shard-hsw: PASS -> FAIL (i915#96)
> igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions:
> 
> shard-kbl: PASS -> DMESG-WARN (i915#1982)
> igt@kms_fbcon_fbt@psr-suspend:
> 
> shard-iclb: PASS -> TIMEOUT (i915#1958)
> igt@kms_flip@2x-flip-vs-wf_vblank@ab-hdmi-a1-hdmi-a2:
> 
> shard-glk: PASS -> DMESG-WARN (i915#1982)
> igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
> 
> shard-skl: PASS -> FAIL (i915#79)
> igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:
> 
> shard-glk: PASS -> FAIL (i915#79) +1 similar issue
> igt@kms_flip_tiling@flip-to-y-tiled:
> 
> shard-skl: PASS -> FAIL (i915#167)
> igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-gtt:
> 
> shard-skl: PASS -> FAIL (i915#49)
> igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
> 
> shard-kbl: PASS -> DMESG-WARN (i915#180) +4 similar issues
> igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
> 
> shard-skl: PASS -> FAIL (fdo#108145 / i915#265)
> igt@kms_psr@psr2_sprite_plane_move:
> 
> shard-iclb: PASS -> SKIP (fdo#109441) +2 similar issues
> igt@perf@blocking-parameterized:
> 
> shard-iclb: PASS -> FAIL (i915#1542)
> igt@perf@polling-parameterized:
> 
> shard-kbl: PASS -> FAIL (i915#1542)
> igt@perf_pmu@module-unload:
> 
> shard-tglb: PASS -> DMESG-WARN (i915#1982) +2 similar issues
> igt@syncobj_basic@bad-fd-to-handle:
> 
> shard-iclb: PASS -> DMESG-WARN (i915#1982)
> Possible fixes
> igt@gem_exec_reloc@basic-write-cpu:
> 
> shard-skl: DMESG-WARN (i915#1982) -> PASS +2 similar issues
> igt@gem_huc_copy@huc-copy:
> 
> shard-tglb: SKIP (i915#2190) -> PASS
> igt@kms_color@pipe-a-ctm-0-75:
> 
> shard-glk: DMESG-WARN (i915#118 / i915#95) -> PASS +2 similar issues
> igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions:
> 
> shard-apl: DMESG-WARN (i915#1635 / i915#1982) -> PASS
> igt@kms_flip@2x-nonexisting-fb@ab-vga1-hdmi-a1:
> 
> shard-hsw: DMESG-WARN (i915#1982) -> PASS
> igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1:
> 
> shard-kbl: DMESG-WARN (i915#1982) -> PASS
> igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
> 
> shard-kbl: DMESG-WARN (i915#180) -> PASS +9 similar issues
> igt@kms_flip@plain-flip-ts-check@b-edp1:
> 
> shard-skl: FAIL (i915#2122) -> PASS
> igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt:
> 
> shard-tglb: DMESG-WARN (i915#1982) -> PASS +1 similar issue
> igt@kms_hdr@bpc-switch-dpms:
> 
> shard-skl: FAIL (i915#1188) -> PASS +1 similar issue
> igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
> 
> shard-skl: FAIL (fdo#108145 / i915#265) -> PASS +2 similar issues
> igt@kms_psr2_su@frontbuffer:
> 
> shard-iclb: SKIP (fdo#109642 / fdo#111068) -> PASS
> igt@kms_psr@psr2_cursor_mmap_cpu:
> 
> shard-iclb: SKIP (fdo#109441) -> PASS +1 similar issue
> igt@kms_setmode@basic:
> 
> shard-kbl: FAIL (i915#31) -> PASS
> {igt@syncobj_timeline@wait-any-snapshot}:
> 
> shard-glk: FAIL (i915#2329) -> PASS
> Warnings
> igt@gem_exec_reloc@basic-concurrent16:
> 
> shard-apl: TIMEOUT (i915#1635 / i915#1958) -> INCOMPLETE (i915#1635 / i915#1958)
> igt@i915_pm_dc@dc3co-vpb-simulation:
> 
> shard-iclb: SKIP (i915#588) -> SKIP (i915#658)
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> Participating hosts (11 -> 11)
> No changes in participating hosts
> 
> Build changes
> Linux: CI_DRM_8866 -> Patchwork_18337
> CI-20190529: 20190529
> CI_DRM_8866: 14e46145f8add798ffc8d63a53e803749ccd3286 @ git://anongit.freedesktop.org/gfx-ci/linux
> IGT_5766: fc9f95086fc23f7f2226f7603241fbad3a214ee1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
> Patchwork_18337: 5ff01ec32f12f5cfd1a5929ada7cd25ec679f893 @ git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
