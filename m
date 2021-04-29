Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7337F36E6B2
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 10:16:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 426976EDAB;
	Thu, 29 Apr 2021 08:16:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DAD66EDAB
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 08:16:36 +0000 (UTC)
IronPort-SDR: L/65AP+RJP42tj5Tn1uYjeswlI4g01u+J6iOo4cuqVT62NTZutMN/Nd2rUhBlVFZujvF2o2Zad
 /90XUluUqLzg==
X-IronPort-AV: E=McAfee;i="6200,9189,9968"; a="197055872"
X-IronPort-AV: E=Sophos;i="5.82,258,1613462400"; d="scan'208";a="197055872"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2021 01:16:35 -0700
IronPort-SDR: 9OG0gQAjqwzr9mPM9jxdj/Jrxifmhu2zqJFSjkh3Xzz6RPvBkNBbOmlM028bux/Lfo2g9+sicg
 PqUbfDGTXiAw==
X-IronPort-AV: E=Sophos;i="5.82,258,1613462400"; d="scan'208";a="430733384"
Received: from ggaliero-mobl.ger.corp.intel.com (HELO zkempczy-mobl2)
 ([10.213.24.186])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2021 01:16:34 -0700
Date: Thu, 29 Apr 2021 10:16:31 +0200
From: Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20210429081631.GA3868@zkempczy-mobl2>
References: <20210428173021.38241-1-zbigniew.kempczynski@intel.com>
 <161963902225.24077.2676825703402958112@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161963902225.24077.2676825703402958112@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_relocation_exceptions_for_two_other_platforms?=
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

On Wed, Apr 28, 2021 at 07:43:42PM +0000, Patchwork wrote:
>    Patch Details
> 
>    Series:  drm/i915: Add relocation exceptions for two other platforms         
>    URL:     https://patchwork.freedesktop.org/series/89594/                     
>    State:   failure                                                             
>    Details: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20017/index.html 
> 
>       CI Bug Log - changes from CI_DRM_10023_full -> Patchwork_20017_full
> 
> Summary
> 
>    FAILURE
> 
>    Serious unknown changes coming with Patchwork_20017_full absolutely need
>    to be
>    verified manually.
> 
>    If you think the reported changes have nothing to do with the changes
>    introduced in Patchwork_20017_full, please notify your bug team to allow
>    them
>    to document this new failure mode, which will reduce false positives in
>    CI.
> 
> Possible new issues
> 
>    Here are the unknown changes that may have been introduced in
>    Patchwork_20017_full:
> 
>   IGT changes
> 
>     Possible regressions
> 
>      * igt@kms_flip_tiling@flip-changes-tiling-yf@edp-1-pipe-b:
>           * shard-skl: PASS -> FAIL

I don't think enabling relocations on rkl/adl has the influence to skl
but if anyone knows I'm wrong please share the details. Otherwise
I would rerun the series to ensure this is incidental failure.

--
Zbigniew


> 
> Known issues
> 
>    Here are the changes found in Patchwork_20017_full that come from known
>    issues:
> 
>   IGT changes
> 
>     Issues hit
> 
>      * igt@gem_create@create-massive:
> 
>           * shard-skl: NOTRUN -> DMESG-WARN (i915#3002)
>      * igt@gem_ctx_persistence@idempotent:
> 
>           * shard-snb: NOTRUN -> SKIP (fdo#109271 / i915#1099) +2 similar
>             issues
>      * igt@gem_ctx_ringsize@active@bcs0:
> 
>           * shard-skl: PASS -> INCOMPLETE (i915#3316)
>      * igt@gem_ctx_shared@q-in-order:
> 
>           * shard-snb: NOTRUN -> SKIP (fdo#109271) +186 similar issues
>      * igt@gem_eio@unwedge-stress:
> 
>           * shard-tglb: PASS -> TIMEOUT (i915#2369 / i915#3063)
>      * igt@gem_exec_fair@basic-deadline:
> 
>           * shard-apl: NOTRUN -> FAIL (i915#2846)
>      * igt@gem_exec_fair@basic-none-solo@rcs0:
> 
>           * shard-kbl: NOTRUN -> FAIL (i915#2842) +1 similar issue
>      * igt@gem_exec_fair@basic-none@vcs1:
> 
>           * shard-iclb: NOTRUN -> FAIL (i915#2842)
>      * igt@gem_exec_fair@basic-none@vecs0:
> 
>           * shard-kbl: PASS -> FAIL (i915#2842)
>      * igt@gem_exec_fair@basic-throttle@rcs0:
> 
>           * shard-glk: PASS -> FAIL (i915#2842)
>      * igt@gem_exec_whisper@basic-forked:
> 
>           * shard-glk: PASS -> DMESG-WARN (i915#118 / i915#95)
>      * igt@gem_mmap_gtt@cpuset-medium-copy:
> 
>           * shard-iclb: PASS -> FAIL (i915#307)
>      * igt@gem_pwrite@basic-exhaustion:
> 
>           * shard-snb: NOTRUN -> WARN (i915#2658)
>      * igt@gen9_exec_parse@allowed-all:
> 
>           * shard-kbl: PASS -> DMESG-WARN (i915#1436 / i915#716)
>      * igt@gen9_exec_parse@bb-large:
> 
>           * shard-apl: NOTRUN -> FAIL (i915#3296)
>      * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
> 
>           * shard-kbl: NOTRUN -> SKIP (fdo#109271) +123 similar issues
>      * igt@i915_selftest@live@gt_pm:
> 
>           * shard-skl: NOTRUN -> DMESG-FAIL (i915#1886 / i915#2291)
>      * igt@kms_big_joiner@basic:
> 
>           * shard-apl: NOTRUN -> SKIP (fdo#109271 / i915#2705)
>      * igt@kms_color@pipe-a-ctm-0-5:
> 
>           * shard-skl: PASS -> DMESG-WARN (i915#1982)
>      * igt@kms_color_chamelium@pipe-a-ctm-0-75:
> 
>           * shard-kbl: NOTRUN -> SKIP (fdo#109271 / fdo#111827) +10 similar
>             issues
>      * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
> 
>           * shard-snb: NOTRUN -> SKIP (fdo#109271 / fdo#111827) +12 similar
>             issues
>      * igt@kms_color_chamelium@pipe-c-ctm-max:
> 
>           * shard-apl: NOTRUN -> SKIP (fdo#109271 / fdo#111827) +19 similar
>             issues
>      * igt@kms_color_chamelium@pipe-d-degamma:
> 
>           * shard-skl: NOTRUN -> SKIP (fdo#109271 / fdo#111827) +4 similar
>             issues
>      * igt@kms_content_protection@atomic-dpms:
> 
>           * shard-kbl: NOTRUN -> TIMEOUT (i915#1319)
>      * igt@kms_content_protection@uevent:
> 
>           * shard-kbl: NOTRUN -> FAIL (i915#2105)
>      * igt@kms_cursor_crc@pipe-b-cursor-256x256-random:
> 
>           * shard-skl: PASS -> FAIL (i915#54)
>      * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
> 
>           * shard-skl: PASS -> FAIL (i915#2346)
>      * igt@kms_cursor_legacy@pipe-d-single-bo:
> 
>           * shard-kbl: NOTRUN -> SKIP (fdo#109271 / i915#533) +1 similar
>             issue
>      * igt@kms_flip@flip-vs-suspend@b-vga1:
> 
>           * shard-snb: PASS -> DMESG-WARN (i915#2772)
>      * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:
> 
>           * shard-apl: NOTRUN -> SKIP (fdo#109271 / i915#2642)
>      * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
> 
>           * shard-apl: NOTRUN -> SKIP (fdo#109271 / i915#2672)
>      * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:
> 
>           * shard-skl: NOTRUN -> SKIP (fdo#109271) +40 similar issues
>      * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite:
> 
>           * shard-skl: PASS -> FAIL (i915#49)
>      * igt@kms_hdr@bpc-switch:
> 
>           * shard-skl: PASS -> FAIL (i915#1188)
>      * igt@kms_hdr@bpc-switch-suspend:
> 
>           * shard-kbl: PASS -> DMESG-WARN (i915#180) +5 similar issues
>      * igt@kms_pipe_crc_basic@read-crc-pipe-d:
> 
>           * shard-apl: NOTRUN -> SKIP (fdo#109271 / i915#533)
>      * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
> 
>           * shard-apl: NOTRUN -> FAIL (fdo#108145 / i915#265) +3 similar
>             issues
> 
>           * shard-kbl: NOTRUN -> FAIL (fdo#108145 / i915#265) +1 similar
>             issue
> 
>      * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
> 
>           * shard-apl: NOTRUN -> FAIL (i915#265)
>      * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
> 
>           * shard-skl: PASS -> FAIL (fdo#108145 / i915#265)
>      * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
> 
>           * shard-apl: NOTRUN -> SKIP (fdo#109271 / i915#658) +5 similar
>             issues
>      * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:
> 
>           * shard-kbl: NOTRUN -> SKIP (fdo#109271 / i915#658) +3 similar
>             issues
>      * igt@kms_psr2_su@frontbuffer:
> 
>           * shard-iclb: PASS -> SKIP (fdo#109642 / fdo#111068 / i915#658)
>      * igt@kms_psr@psr2_sprite_blt:
> 
>           * shard-iclb: PASS -> SKIP (fdo#109441) +2 similar issues
>      * igt@kms_vblank@pipe-d-ts-continuation-idle:
> 
>           * shard-apl: NOTRUN -> SKIP (fdo#109271) +236 similar issues
>      * igt@kms_writeback@writeback-fb-id:
> 
>           * shard-apl: NOTRUN -> SKIP (fdo#109271 / i915#2437)
>      * igt@kms_writeback@writeback-invalid-parameters:
> 
>           * shard-skl: NOTRUN -> SKIP (fdo#109271 / i915#2437)
>      * igt@sysfs_clients@busy:
> 
>           * shard-skl: NOTRUN -> SKIP (fdo#109271 / i915#2994)
>      * igt@sysfs_clients@fair-7:
> 
>           * shard-kbl: NOTRUN -> SKIP (fdo#109271 / i915#2994)
>      * igt@sysfs_clients@recycle:
> 
>           * shard-apl: NOTRUN -> SKIP (fdo#109271 / i915#2994) +2 similar
>             issues
> 
>     Possible fixes
> 
>      * igt@gem_create@create-clear:
> 
>           * shard-iclb: FAIL (i915#3160) -> PASS
>      * igt@gem_exec_fair@basic-flow@rcs0:
> 
>           * shard-tglb: FAIL (i915#2842) -> PASS +1 similar issue
>      * igt@gem_exec_fair@basic-pace-share@rcs0:
> 
>           * shard-glk: FAIL (i915#2842) -> PASS
> 
>           * shard-kbl: FAIL (i915#2842) -> PASS
> 
>      * igt@gem_exec_fair@basic-throttle@rcs0:
> 
>           * shard-iclb: FAIL (i915#2849) -> PASS
>      * igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
> 
>           * shard-glk: FAIL (i915#307) -> PASS
>      * igt@kms_async_flips@alternate-sync-async-flip:
> 
>           * shard-skl: FAIL (i915#2521) -> PASS
>      * igt@kms_fbcon_fbt@fbc-suspend:
> 
>           * shard-apl: INCOMPLETE (i915#180) -> PASS
> 
>           * shard-kbl: INCOMPLETE (i915#155 / i915#180 / i915#636) -> PASS
> 
>      * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
> 
>           * shard-kbl: DMESG-WARN (i915#180) -> PASS +8 similar issues
>      * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
> 
>           * shard-skl: FAIL (i915#2122) -> PASS +2 similar issues
>      * igt@kms_psr@psr2_sprite_plane_move:
> 
>           * shard-iclb: SKIP (fdo#109441) -> PASS +1 similar issue
>      * igt@kms_universal_plane@universal-plane-gen9-features-pipe-a:
> 
>           * shard-skl: DMESG-WARN (i915#1982) -> PASS
> 
>     Warnings
> 
>      * igt@i915_pm_rc6_residency@rc6-fence:
> 
>           * shard-iclb: WARN (i915#2684) -> WARN (i915#2681 / i915#2684) +1
>             similar issue
>      * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:
> 
>           * shard-iclb: SKIP (i915#658) -> SKIP (i915#2920) +2 similar issues
>      * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
> 
>           * shard-iclb: SKIP (i915#2920) -> SKIP (i915#658) +1 similar issue
>      * igt@runner@aborted:
> 
>           * shard-kbl: (FAIL, FAIL, FAIL, FAIL, FAIL, FAIL, FAIL, FAIL, FAIL,
>             FAIL, FAIL) (i915#1436 / i915#180 / i915#1814 / i915#2292 /
>             i915#2505 / i915#3002 / i915#602 / i915#92) -> (FAIL, FAIL, FAIL,
>             FAIL, FAIL, FAIL, FAIL, FAIL, FAIL, FAIL) (fdo#109271 / i915#1436
>             / i915#180 / i915#1814 / i915#2505 / i915#3002 / i915#716)
> 
>           * shard-skl: (FAIL, FAIL) (i915#2029 / i915#3002) -> (FAIL, FAIL,
>             FAIL, FAIL, FAIL, FAIL) (i915#198 / i915#2029 / i915#3002 /
>             i915#3057)
> 
> Participating hosts (11 -> 11)
> 
>    No changes in participating hosts
> 
> Build changes
> 
>      * Linux: CI_DRM_10023 -> Patchwork_20017
> 
>    CI-20190529: 20190529
>    CI_DRM_10023: a8bf9e284933fa5c1cb821b48ba95821e5d1cc3f @
>    git://anongit.freedesktop.org/gfx-ci/linux
>    IGT_6076: 9ab0820dbd07781161c1ace6973ea222fd24e53a @
>    git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>    Patchwork_20017: fcbabd445c5707a6699da0a665a399273dc73ab0 @
>    git://anongit.freedesktop.org/gfx-ci/linux
>    piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
>    git://anongit.freedesktop.org/piglit
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
