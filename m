Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27EB5271BAA
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Sep 2020 09:22:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 540476E167;
	Mon, 21 Sep 2020 07:22:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCAE76E16F
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Sep 2020 07:21:58 +0000 (UTC)
IronPort-SDR: glR3v28rwhaZp68ZmHRXNSyydZybQDE3CsL7AHsRo1gRUP7a+CmJdksJoqPlwPu4R4ZZRTRTNQ
 RXtnZUxwe5YQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9750"; a="157710064"
X-IronPort-AV: E=Sophos;i="5.77,286,1596524400"; d="scan'208";a="157710064"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2020 00:21:57 -0700
IronPort-SDR: Ug1dOzgDOGbvFI2wLn1AKawWz7GaIcvB//YJ8Lf7vZljcr72vJYcf81cZu4cjWiiAi7tn2Bf2r
 OPopOz55fsNQ==
X-IronPort-AV: E=Sophos;i="5.77,286,1596524400"; d="scan'208";a="453891828"
Received: from mateuszp-mobl1.ger.corp.intel.com (HELO zkempczy-mobl2)
 ([10.213.5.247])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2020 00:21:56 -0700
Date: Mon, 21 Sep 2020 09:21:52 +0200
From: Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20200921072152.GA10497@zkempczy-mobl2>
References: <20200921035017.6868-1-zbigniew.kempczynski@intel.com>
 <160067133669.8245.4104828993180371761@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <160067133669.8245.4104828993180371761@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Ensure_bo_is_dirty_when_WB-mapped_on_!llc_in_pagefault?=
 =?utf-8?q?_handler_=28rev2=29?=
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

On Mon, Sep 21, 2020 at 06:55:36AM +0000, Patchwork wrote:
>    Patch Details
> 
>    Series:  drm/i915: Ensure bo is dirty when WB-mapped on !llc in pagefault    
>             handler (rev2)                                                      
>    URL:     https://patchwork.freedesktop.org/series/81881/                     
>    State:   failure                                                             
>    Details: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18538/index.html 
> 
>        CI Bug Log - changes from CI_DRM_9025_full -> Patchwork_18538_full
> 
> Summary
> 
>    FAILURE
> 
>    Serious unknown changes coming with Patchwork_18538_full absolutely need
>    to be
>    verified manually.
> 
>    If you think the reported changes have nothing to do with the changes
>    introduced in Patchwork_18538_full, please notify your bug team to allow
>    them
>    to document this new failure mode, which will reduce false positives in
>    CI.
> 
> Possible new issues
> 
>    Here are the unknown changes that may have been introduced in
>    Patchwork_18538_full:
> 
>   IGT changes
> 
>     Possible regressions
> 
>      * igt@kms_flip@2x-nonexisting-fb-interruptible@ac-vga1-hdmi-a1:
>           * shard-hsw: NOTRUN -> INCOMPLETE +1 similar issue

Unrelated. See below.

> 
> Known issues
> 
>    Here are the changes found in Patchwork_18538_full that come from known
>    issues:
> 
>   IGT changes
> 
>     Issues hit
> 
>      * igt@gem_ctx_persistence@engines-mixed-process@bcs0:
> 
>           * shard-skl: PASS -> FAIL (i915#2374)
>      * igt@gem_ctx_persistence@legacy-engines-mixed@vebox:
> 
>           * shard-kbl: PASS -> DMESG-WARN (i915#1982)
>      * igt@gem_exec_reloc@basic-many-active@rcs0:
> 
>           * shard-glk: PASS -> FAIL (i915#2389) +3 similar issues
>      * igt@gem_huc_copy@huc-copy:
> 
>           * shard-tglb: PASS -> SKIP (i915#2190)
>      * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
> 
>           * shard-hsw: PASS -> FAIL (i915#96)
>      * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
> 
>           * shard-skl: PASS -> DMESG-WARN (i915#1982) +5 similar issues
>      * igt@kms_cursor_legacy@pipe-b-torture-bo:
> 
>           * shard-iclb: PASS -> DMESG-WARN (i915#128)
>      * igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled:
> 
>           * shard-skl: PASS -> FAIL (i915#177 / i915#52 / i915#54)
>      * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen:
> 
>           * shard-tglb: PASS -> DMESG-WARN (i915#1982) +2 similar issues
>      * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc:
> 
>           * shard-skl: PASS -> FAIL (i915#49) +1 similar issue
>      * igt@kms_hdr@bpc-switch-suspend:
> 
>           * shard-skl: PASS -> FAIL (i915#1188) +1 similar issue
>      * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
> 
>           * shard-iclb: PASS -> INCOMPLETE (i915#1185 / i915#250)
>      * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
> 
>           * shard-skl: PASS -> FAIL (fdo#108145 / i915#265) +1 similar issue
>      * igt@kms_psr@psr2_cursor_render:
> 
>           * shard-iclb: PASS -> SKIP (fdo#109441) +1 similar issue
> 
>     Possible fixes
> 
>      * igt@gem_eio@suspend:
> 
>           * shard-iclb: INCOMPLETE (i915#2483) -> PASS


>      * igt@gem_mmap_offset@blt-coherency:
> 
>           * shard-glk: FAIL (i915#2328) -> PASS

Change was related to fix above coherency issue. 

--
Zbigniew


>      * igt@gem_userptr_blits@sync-unmap-cycles:
> 
>           * shard-skl: TIMEOUT (i915#1958 / i915#2424) -> PASS
>      * igt@i915_selftest@mock@contexts:
> 
>           * shard-apl: INCOMPLETE (i915#1635 / i915#2278) -> PASS
>      * igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic:
> 
>           * shard-hsw: INCOMPLETE (CI#80) -> PASS
>      * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
> 
>           * shard-glk: FAIL (i915#72) -> PASS
>      * igt@kms_flip@2x-dpms-vs-vblank-race@ab-vga1-hdmi-a1:
> 
>           * shard-hsw: DMESG-WARN (i915#1982) -> PASS
>      * igt@kms_flip@2x-flip-vs-suspend-interruptible@bc-vga1-hdmi-a1:
> 
>           * shard-hsw: INCOMPLETE (i915#2055) -> PASS
>      * igt@kms_flip@flip-vs-suspend@c-dp1:
> 
>           * shard-kbl: DMESG-WARN (i915#180) -> PASS +3 similar issues
>      * igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
> 
>           * shard-skl: FAIL (i915#2122) -> PASS +1 similar issue
>      * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
> 
>           * shard-iclb: DMESG-WARN (i915#1982) -> PASS
>      * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-fullscreen:
> 
>           * shard-tglb: DMESG-WARN (i915#1982) -> PASS
>      * igt@kms_hdr@bpc-switch-dpms:
> 
>           * shard-skl: FAIL (i915#1188) -> PASS
>      * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
> 
>           * shard-skl: DMESG-WARN (i915#1982) -> PASS +5 similar issues
>      * igt@kms_psr@psr2_sprite_mmap_gtt:
> 
>           * shard-iclb: SKIP (fdo#109441) -> PASS +1 similar issue
>      * igt@kms_setmode@basic:
> 
>           * shard-skl: FAIL (i915#31) -> PASS
> 
>           * shard-hsw: FAIL (i915#31) -> PASS
> 
>      * igt@kms_vblank@pipe-b-query-busy:
> 
>           * shard-apl: DMESG-WARN (i915#1635 / i915#1982) -> PASS +2 similar
>             issues
> 
>     Warnings
> 
>      * igt@kms_flip@flip-vs-suspend@a-edp1:
>           * shard-skl: INCOMPLETE (i915#198 / i915#1982) -> DMESG-WARN
>             (i915#1982)
> 
> Participating hosts (11 -> 11)
> 
>    No changes in participating hosts
> 
> Build changes
> 
>      * Linux: CI_DRM_9025 -> Patchwork_18538
> 
>    CI-20190529: 20190529
>    CI_DRM_9025: 955d04e2ed0cf4bb4679f594a852cc2eebe8266b @
>    git://anongit.freedesktop.org/gfx-ci/linux
>    IGT_5787: 0ec962017c8131de14e0cb038f7f76b1f17ed637 @
>    git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>    Patchwork_18538: 3d2651f10f098ace6866668664fb8e5a145eadd1 @
>    git://anongit.freedesktop.org/gfx-ci/linux
>    piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
>    git://anongit.freedesktop.org/piglit
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
