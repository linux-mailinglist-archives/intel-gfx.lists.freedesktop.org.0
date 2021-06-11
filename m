Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 983243A3C33
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Jun 2021 08:46:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 135F66E4F3;
	Fri, 11 Jun 2021 06:46:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D49B36E4F3
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Jun 2021 06:46:53 +0000 (UTC)
IronPort-SDR: +9bN2ljKARZrAEgG82Tos2aso7pQ9dp/1DQ9Y+y3KFdecAOujY2T9EP7nFim/xiYKmYXIKRMRO
 FpaYWgPiYHEA==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="202446956"
X-IronPort-AV: E=Sophos;i="5.83,265,1616482800"; d="scan'208";a="202446956"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 23:46:52 -0700
IronPort-SDR: sVHwXwDYWzB/VhR/fdDdwCMmznGL4kMbnNqK5Rfr051MUYEMk6xhCEs5epxff399uvt45PAmYM
 +RR6qQAI+Dfg==
X-IronPort-AV: E=Sophos;i="5.83,265,1616482800"; d="scan'208";a="449011144"
Received: from kdobkakr-mobl.ger.corp.intel.com (HELO zkempczy-mobl2)
 ([10.213.15.179])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 23:46:51 -0700
Date: Fri, 11 Jun 2021 08:46:48 +0200
From: Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20210611064648.GB3298@zkempczy-mobl2>
References: <20210610103955.67802-1-zbigniew.kempczynski@intel.com>
 <162333734069.27731.18248107940495777025@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <162333734069.27731.18248107940495777025@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_relocation_exceptions_for_two_other_platforms_=28r?=
 =?utf-8?q?ev5=29?=
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

On Thu, Jun 10, 2021 at 03:02:20PM +0000, Patchwork wrote:
>    Patch Details
> 
>    Series:  drm/i915: Add relocation exceptions for two other platforms (rev5)  
>    URL:     https://patchwork.freedesktop.org/series/89594/                     
>    State:   failure                                                             
>    Details: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20330/index.html 
> 
>       CI Bug Log - changes from CI_DRM_10204_full -> Patchwork_20330_full
> 
> Summary
> 
>    FAILURE
> 
>    Serious unknown changes coming with Patchwork_20330_full absolutely need
>    to be
>    verified manually.
> 
>    If you think the reported changes have nothing to do with the changes
>    introduced in Patchwork_20330_full, please notify your bug team to allow
>    them
>    to document this new failure mode, which will reduce false positives in
>    CI.
> 
> Possible new issues
> 
>    Here are the unknown changes that may have been introduced in
>    Patchwork_20330_full:
> 
>   IGT changes
> 
>     Possible regressions
> 
>      * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-xtiled:
>           * shard-skl: PASS -> FAIL

Unrelated, patch doesn't touch SKL.

--
Zbigniew

> 
> Known issues
> 
>    Here are the changes found in Patchwork_20330_full that come from known
>    issues:
> 
>   IGT changes
> 
>     Issues hit
> 
>      * igt@gem_create@create-clear:
> 
>           * shard-glk: PASS -> FAIL (i915#1888 / i915#3160)
>      * igt@gem_ctx_persistence@clone:
> 
>           * shard-snb: NOTRUN -> SKIP (fdo#109271 / i915#1099) +3 similar
>             issues
>      * igt@gem_eio@unwedge-stress:
> 
>           * shard-snb: NOTRUN -> FAIL (i915#3354)
>      * igt@gem_exec_fair@basic-none-share@rcs0:
> 
>           * shard-glk: PASS -> FAIL (i915#2842)
>      * igt@gem_exec_fair@basic-none@vecs0:
> 
>           * shard-apl: PASS -> FAIL (i915#2842 / i915#3468)
>      * igt@gem_exec_fair@basic-pace-share@rcs0:
> 
>           * shard-tglb: PASS -> FAIL (i915#2842)
>      * igt@gem_exec_fair@basic-pace@vcs1:
> 
>           * shard-iclb: NOTRUN -> FAIL (i915#2842) +1 similar issue
> 
>           * shard-kbl: PASS -> FAIL (i915#2842) +1 similar issue
> 
>      * igt@gem_exec_whisper@basic-fds-all:
> 
>           * shard-glk: PASS -> DMESG-WARN (i915#118 / i915#95)
>      * igt@gem_huc_copy@huc-copy:
> 
>           * shard-kbl: NOTRUN -> SKIP (fdo#109271 / i915#2190)
>      * igt@gem_mmap_gtt@big-copy-odd:
> 
>           * shard-glk: PASS -> FAIL (i915#307)
>      * igt@gem_pwrite@basic-exhaustion:
> 
>           * shard-snb: NOTRUN -> WARN (i915#2658)
>      * igt@gem_userptr_blits@input-checking:
> 
>           * shard-apl: NOTRUN -> DMESG-WARN (i915#3002) +1 similar issue
>      * igt@i915_hangman@engine-error@vecs0:
> 
>           * shard-kbl: NOTRUN -> SKIP (fdo#109271) +37 similar issues
>      * igt@i915_selftest@live@execlists:
> 
>           * shard-apl: NOTRUN -> DMESG-FAIL (i915#3462)
>      * igt@kms_ccs@pipe-a-ccs-on-another-bo:
> 
>           * shard-snb: NOTRUN -> SKIP (fdo#109271) +288 similar issues
>      * igt@kms_chamelium@dp-crc-multiple:
> 
>           * shard-apl: NOTRUN -> SKIP (fdo#109271 / fdo#111827) +9 similar
>             issues
>      * igt@kms_color_chamelium@pipe-a-ctm-0-25:
> 
>           * shard-snb: NOTRUN -> SKIP (fdo#109271 / fdo#111827) +17 similar
>             issues
>      * igt@kms_color_chamelium@pipe-c-gamma:
> 
>           * shard-kbl: NOTRUN -> SKIP (fdo#109271 / fdo#111827) +3 similar
>             issues
>      * igt@kms_content_protection@srm:
> 
>           * shard-apl: NOTRUN -> TIMEOUT (i915#1319)
>      * igt@kms_cursor_crc@pipe-a-cursor-suspend:
> 
>           * shard-kbl: PASS -> DMESG-WARN (i915#180) +5 similar issues
>      * igt@kms_cursor_crc@pipe-b-cursor-alpha-opaque:
> 
>           * shard-snb: PASS -> SKIP (fdo#109271) +1 similar issue
>      * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ac-hdmi-a1-hdmi-a2:
> 
>           * shard-glk: PASS -> FAIL (i915#2122)
>      * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
> 
>           * shard-skl: PASS -> FAIL (i915#79)
>      * igt@kms_flip@plain-flip-fb-recreate@b-edp1:
> 
>           * shard-skl: PASS -> FAIL (i915#2122) +1 similar issue
>      * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:
> 
>           * shard-apl: NOTRUN -> SKIP (fdo#109271 / i915#2642)
>      * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
> 
>           * shard-kbl: NOTRUN -> SKIP (fdo#109271 / i915#2642)
>      * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:
> 
>           * shard-skl: PASS -> FAIL (i915#2546 / i915#49)
>      * igt@kms_hdr@bpc-switch-dpms:
> 
>           * shard-skl: PASS -> FAIL (i915#1188) +1 similar issue
>      * igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c:
> 
>           * shard-apl: NOTRUN -> SKIP (fdo#109271) +109 similar issues
>      * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
> 
>           * shard-apl: NOTRUN -> SKIP (fdo#109271 / i915#533) +1 similar
>             issue
>      * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
> 
>           * shard-apl: PASS -> DMESG-WARN (i915#180) +1 similar issue
>      * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
> 
>           * shard-apl: NOTRUN -> FAIL (fdo#108145 / i915#265) +1 similar
>             issue
>      * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
> 
>           * shard-apl: NOTRUN -> FAIL (i915#265)
>      * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
> 
>           * shard-skl: PASS -> FAIL (fdo#108145 / i915#265)
>      * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
> 
>           * shard-apl: NOTRUN -> SKIP (fdo#109271 / i915#658) +3 similar
>             issues
>      * igt@kms_psr@psr2_sprite_plane_move:
> 
>           * shard-iclb: PASS -> SKIP (fdo#109441) +1 similar issue
>      * igt@kms_setmode@basic:
> 
>           * shard-snb: NOTRUN -> FAIL (i915#31)
>      * igt@kms_writeback@writeback-check-output:
> 
>           * shard-apl: NOTRUN -> SKIP (fdo#109271 / i915#2437)
>      * igt@perf@gen12-mi-rpc:
> 
>           * shard-skl: NOTRUN -> SKIP (fdo#109271)
>      * igt@perf@polling-parameterized:
> 
>           * shard-skl: PASS -> FAIL (i915#1542)
>      * igt@sysfs_clients@fair-0:
> 
>           * shard-apl: NOTRUN -> SKIP (fdo#109271 / i915#2994) +1 similar
>             issue
> 
>     Possible fixes
> 
>      * igt@gem_ctx_isolation@preservation-s3@bcs0:
> 
>           * shard-kbl: INCOMPLETE -> PASS
>      * igt@gem_eio@unwedge-stress:
> 
>           * shard-tglb: TIMEOUT (i915#2369 / i915#3063) -> PASS
>      * igt@gem_exec_fair@basic-flow@rcs0:
> 
>           * shard-tglb: FAIL (i915#2842) -> PASS +1 similar issue
>      * igt@gem_exec_fair@basic-none-share@rcs0:
> 
>           * shard-iclb: FAIL (i915#2842) -> PASS
>      * igt@gem_exec_fair@basic-none@rcs0:
> 
>           * shard-kbl: FAIL (i915#2842) -> PASS
>      * igt@gem_exec_fair@basic-none@vcs0:
> 
>           * shard-apl: FAIL (i915#2842) -> PASS
>      * igt@gem_exec_fair@basic-pace-solo@rcs0:
> 
>           * shard-glk: FAIL (i915#2842) -> PASS +3 similar issues
>      * igt@gem_mmap_gtt@big-copy:
> 
>           * shard-skl: FAIL (i915#307) -> PASS
>      * igt@gem_mmap_gtt@cpuset-big-copy-odd:
> 
>           * shard-glk: FAIL (i915#307) -> PASS +1 similar issue
>      * igt@gem_mmap_offset@clear:
> 
>           * shard-skl: FAIL (i915#3160) -> PASS
>      * igt@gem_ppgtt@blt-vs-render-ctxn:
> 
>           * shard-glk: DMESG-WARN (i915#118 / i915#95) -> PASS +1 similar
>             issue
>      * igt@i915_selftest@live@hangcheck:
> 
>           * shard-snb: INCOMPLETE (i915#2782) -> PASS
>      * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
> 
>           * shard-skl: FAIL (i915#2346) -> PASS
>      * igt@kms_flip@absolute-wf_vblank-interruptible@a-edp1:
> 
>           * shard-skl: DMESG-WARN (i915#1982) -> PASS
>      * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
> 
>           * shard-apl: DMESG-WARN (i915#180) -> PASS +2 similar issues
>      * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
> 
>           * shard-kbl: DMESG-WARN (i915#180) -> PASS
>      * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
> 
>           * shard-kbl: FAIL (fdo#108145 / i915#265) -> PASS
>      * igt@kms_psr@psr2_cursor_render:
> 
>           * shard-iclb: SKIP (fdo#109441) -> PASS +2 similar issues
> 
>     Warnings
> 
>      * igt@gem_exec_fair@basic-throttle@rcs0:
> 
>           * shard-iclb: FAIL (i915#2842) -> FAIL (i915#2849)
>      * igt@i915_selftest@live@execlists:
> 
>           * shard-iclb: INCOMPLETE (i915#2782 / i915#3462) -> DMESG-FAIL
>             (i915#3462)
>      * igt@kms_psr2_sf@cursor-plane-update-sf:
> 
>           * shard-iclb: SKIP (i915#2920) -> SKIP (i915#658) +2 similar issues
>      * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
> 
>           * shard-iclb: SKIP (i915#658) -> SKIP (i915#2920) +2 similar issues
>      * igt@runner@aborted:
> 
>           * shard-kbl: (FAIL, FAIL, FAIL, FAIL, FAIL) (i915#1436 / i915#180 /
>             i915#1814 / i915#3002 / i915#3363) -> (FAIL, FAIL, FAIL, FAIL,
>             FAIL, FAIL, FAIL, FAIL) (i915#1436 / i915#180 / i915#1814 /
>             i915#2505 / i915#3002 / i915#3363 / i915#602)
> 
>           * shard-apl: (FAIL, FAIL, FAIL, FAIL) (i915#180 / i915#1814 /
>             i915#3363) -> (FAIL, FAIL, FAIL, FAIL, FAIL) (fdo#109271 /
>             i915#1814 / i915#3002 / i915#3363)
> 
>           * shard-skl: (FAIL, FAIL, FAIL) (i915#1436 / i915#3002 / i915#3363)
>             -> (FAIL, FAIL, FAIL) (i915#1436 / i915#2426 / i915#3002 /
>             i915#3363)
> 
> Participating hosts (11 -> 10)
> 
>    Missing (1): pig-icl-1065g7
> 
> Build changes
> 
>      * Linux: CI_DRM_10204 -> Patchwork_20330
> 
>    CI-20190529: 20190529
>    CI_DRM_10204: 49f55716c1c64348b925292c6cbaca589a6480e6 @
>    git://anongit.freedesktop.org/gfx-ci/linux
>    IGT_6103: 3aa79e55e73d4a49a5222e5dfde486b800a29fe7 @
>    https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>    Patchwork_20330: 8ea98a31aee7205732d42302847a8b71264d76fc @
>    git://anongit.freedesktop.org/gfx-ci/linux
>    piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
>    git://anongit.freedesktop.org/piglit
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
