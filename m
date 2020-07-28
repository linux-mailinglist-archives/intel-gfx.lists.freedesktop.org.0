Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D212722FF0B
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jul 2020 03:45:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87413899E6;
	Tue, 28 Jul 2020 01:45:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C379C899E6
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jul 2020 01:45:33 +0000 (UTC)
IronPort-SDR: zNNZ8FtA7gmMcT5Y4IrtvtQef8j6+xyEdH6XVWOUg93u5vwUrQrM+8lfKnGp7MQ4b0Pm3rfEfr
 8i4Y8l4u/CHw==
X-IronPort-AV: E=McAfee;i="6000,8403,9695"; a="149001728"
X-IronPort-AV: E=Sophos;i="5.75,404,1589266800"; d="scan'208";a="149001728"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2020 18:45:32 -0700
IronPort-SDR: jZ1hB4nLSq7Y/+XtsgHYEKMfTC+DnMjBTE/DBSC1F6tAD2LdwvRLAnYwxVwNLGIWVPXD8PfyJZ
 7/cKdeZZQikA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,404,1589266800"; d="scan'208";a="489719517"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by fmsmga006.fm.intel.com with ESMTP; 27 Jul 2020 18:45:32 -0700
Received: from orsmsx155.amr.corp.intel.com (10.22.240.21) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 27 Jul 2020 18:45:31 -0700
Received: from orsmsx151.amr.corp.intel.com ([169.254.7.138]) by
 ORSMSX155.amr.corp.intel.com ([169.254.7.214]) with mapi id 14.03.0439.000;
 Mon, 27 Jul 2020 18:45:31 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJtL2k5MTU6IEltcGxlbWVu?=
 =?utf-8?Q?t_WA_14011294188_(rev2)?=
Thread-Index: AQHWZFfNqdxpQnz7TUmjg2aM2l/c4qkcrs+A
Date: Tue, 28 Jul 2020 01:45:31 +0000
Message-ID: <6483bedeab1e92c02a31d45df9f83eea4d29abcc.camel@intel.com>
References: <20200727164729.28836-1-jose.souza@intel.com>
 <159588311411.26746.7787315533182984275@emeril.freedesktop.org>
In-Reply-To: <159588311411.26746.7787315533182984275@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.18.116.17]
Content-ID: <52E062021715284495780E7EE2D7B5B1@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Implement_WA_14011294188_=28rev2=29?=
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

On Mon, 2020-07-27 at 20:51 +0000, Patchwork wrote:
> Patch Details
> Series:	drm/i915: Implement WA 14011294188 (rev2)
> URL:	https://patchwork.freedesktop.org/series/79825/
> State:	success
> Details:	https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18245/index.html
> CI Bug Log - changes from CI_DRM_8797_full -> Patchwork_18245_full
> Summary
> SUCCESS
> 
> No regressions found.

Thanks for the review Matt.Pushed to dinq.

> 
> Possible new issues
> Here are the unknown changes that may have been introduced in Patchwork_18245_full:
> 
> Piglit changes
> Possible regressions
> spec@glsl-4.20@execution@vs_in@vs-input-double_dvec3-position-float_mat4x2_array3 (NEW):
> 
> {pig-icl-1065g7}: NOTRUN -> INCOMPLETE +5 similar issues
> spec@glsl-4.20@execution@vs_in@vs-input-position-int_int-double_dmat3x4_array2 (NEW):
> 
> {pig-icl-1065g7}: NOTRUN -> CRASH +1 similar issue
> New tests
> New tests have been introduced between CI_DRM_8797_full and Patchwork_18245_full:
> 
> New Piglit tests (8)
> spec@glsl-4.20@execution@vs_in@vs-input-double_dmat3-position-double_dmat2x4_array2:
> 
> Statuses : 1 crash(s)
> Exec time: [0.86] s
> spec@glsl-4.20@execution@vs_in@vs-input-double_dmat3x2-position-float_vec4_array3:
> 
> Statuses : 1 incomplete(s)
> Exec time: [0.0] s
> spec@glsl-4.20@execution@vs_in@vs-input-double_dvec3-position-float_mat4x2_array3:
> 
> Statuses : 1 incomplete(s)
> Exec time: [0.0] s
> spec@glsl-4.20@execution@vs_in@vs-input-float_mat2x3_array3-position-double_dmat4x3_array2:
> 
> Statuses : 1 incomplete(s)
> Exec time: [0.0] s
> spec@glsl-4.20@execution@vs_in@vs-input-float_mat2x4_array3-position-double_dvec4_array2:
> 
> Statuses : 1 incomplete(s)
> Exec time: [0.0] s
> spec@glsl-4.20@execution@vs_in@vs-input-float_vec2-double_dmat4_array2-position:
> 
> Statuses : 1 incomplete(s)
> Exec time: [0.0] s
> spec@glsl-4.20@execution@vs_in@vs-input-position-double_dmat2x4_array5-float_vec3_array3:
> 
> Statuses : 1 incomplete(s)
> Exec time: [0.0] s
> spec@glsl-4.20@execution@vs_in@vs-input-position-int_int-double_dmat3x4_array2:
> 
> Statuses : 1 crash(s)
> Exec time: [0.87] s
> Known issues
> Here are the changes found in Patchwork_18245_full that come from known issues:
> 
> IGT changes
> Issues hit
> igt@gem_exec_whisper@basic-queues:
> 
> shard-iclb: PASS -> DMESG-WARN (i915#1982)
> igt@kms_busy@basic-flip-pipe-c:
> 
> shard-skl: PASS -> DMESG-WARN (i915#1982) +11 similar issues
> igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen:
> 
> shard-skl: PASS -> FAIL (i915#54)
> igt@kms_cursor_legacy@pipe-b-torture-bo:
> 
> shard-iclb: PASS -> DMESG-WARN (i915#128)
> igt@kms_draw_crc@draw-method-rgb565-blt-untiled:
> 
> shard-skl: PASS -> FAIL (i915#52 / i915#54)
> igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
> 
> shard-kbl: PASS -> DMESG-WARN (i915#180) +12 similar issues
> igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
> 
> shard-skl: PASS -> DMESG-FAIL (i915#1982)
> igt@kms_frontbuffer_tracking@fbc-badstride:
> 
> shard-glk: PASS -> DMESG-WARN (i915#1982)
> igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
> 
> shard-tglb: PASS -> DMESG-WARN (i915#1982) +2 similar issues
> igt@kms_hdr@bpc-switch-suspend:
> 
> shard-skl: PASS -> FAIL (i915#1188)
> igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
> 
> shard-tglb: PASS -> INCOMPLETE (i915#456)
> igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
> 
> shard-skl: PASS -> FAIL (fdo#108145 / i915#265)
> igt@kms_psr@psr2_sprite_mmap_cpu:
> 
> shard-iclb: PASS -> SKIP (fdo#109441) +1 similar issue
> igt@kms_setmode@basic:
> 
> shard-apl: PASS -> FAIL (i915#1635 / i915#31)
> 
> shard-hsw: PASS -> FAIL (i915#31)
> 
> Possible fixes
> igt@gem_ctx_isolation@preservation-s3@rcs0:
> 
> shard-skl: INCOMPLETE (i915#198) -> PASS
> igt@gem_eio@in-flight-suspend:
> 
> shard-skl: DMESG-WARN (i915#1982) -> PASS +5 similar issues
> igt@gem_exec_whisper@basic-forked:
> 
> shard-glk: DMESG-WARN (i915#118 / i915#95) -> PASS
> igt@gem_huc_copy@huc-copy:
> 
> shard-tglb: SKIP (i915#2190) -> PASS
> igt@gem_linear_blits@normal:
> 
> shard-tglb: DMESG-WARN (i915#402) -> PASS
> igt@kms_atomic_interruptible@universal-setplane-primary:
> 
> shard-apl: DMESG-WARN (i915#1635 / i915#62) -> PASS +7 similar issues
> igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
> 
> shard-glk: FAIL (i915#72) -> PASS
> igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite:
> 
> shard-tglb: DMESG-WARN (i915#1982) -> PASS
> igt@kms_hdr@bpc-switch:
> 
> shard-skl: FAIL (i915#1188) -> PASS
> igt@kms_hdr@bpc-switch-suspend:
> 
> shard-kbl: DMESG-WARN (i915#180) -> PASS +6 similar issues
> igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
> 
> shard-skl: FAIL (fdo#108145 / i915#265) -> PASS +1 similar issue
> igt@kms_psr@psr2_cursor_plane_move:
> 
> shard-iclb: SKIP (fdo#109441) -> PASS +1 similar issue
> igt@kms_vblank@pipe-c-wait-busy-hang:
> 
> shard-apl: DMESG-WARN (i915#1635 / i915#1982) -> PASS +1 similar issue
> Warnings
> igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
> 
> shard-apl: DMESG-FAIL (fdo#108145 / i915#1635 / i915#62) -> FAIL (fdo#108145 / i915#1635 / i915#265)
> 
> shard-skl: FAIL (fdo#108145 / i915#265) -> DMESG-FAIL (fdo#108145 / i915#1982) +1 similar issue
> 
> igt@runner@aborted:
> 
> shard-apl: (FAIL, FAIL, FAIL, FAIL, FAIL, FAIL, FAIL, FAIL, FAIL, FAIL, FAIL, FAIL, FAIL, FAIL) (i915#1610 / i915#1635 / i915#2110 / i915#637) -> FAIL (i915#1635 / i915#2110)
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> Participating hosts (11 -> 11)
> No changes in participating hosts
> 
> Build changes
> Linux: CI_DRM_8797 -> Patchwork_18245
> CI-20190529: 20190529
> CI_DRM_8797: 37345f3896e61d4ba2e877ce5098c850e3bf03fd @ git://anongit.freedesktop.org/gfx-ci/linux
> IGT_5749: 2fef871e791ceab7841b899691c443167550173d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
> Patchwork_18245: 2c56ac274090f4372a4e348ca6eeae94be21d198 @ git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
