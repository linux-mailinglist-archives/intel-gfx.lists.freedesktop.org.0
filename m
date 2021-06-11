Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 485C53A41CB
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Jun 2021 14:13:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 496ED6EE8B;
	Fri, 11 Jun 2021 12:13:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 173FD6EE8B
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Jun 2021 12:13:51 +0000 (UTC)
IronPort-SDR: 0hxD0FzDt1RDXcgugL1YPNi+DQ79SjFC60/tqKdhTMhvLtXjUgBLf80x19xMFItHgvA0fj/xAK
 8Qs8ib/pGgVw==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="203680767"
X-IronPort-AV: E=Sophos;i="5.83,265,1616482800"; d="scan'208";a="203680767"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2021 05:13:50 -0700
IronPort-SDR: VK2oJQyqVtebToyRIuPqwdPwi7huueeEOOIxy3fSu5d/0YYGZFHV4qUhYO4RYDOH/NsW+JYfhN
 82wOLluvzIYw==
X-IronPort-AV: E=Sophos;i="5.83,265,1616482800"; d="scan'208";a="450745153"
Received: from kdobkakr-mobl.ger.corp.intel.com (HELO zkempczy-mobl2)
 ([10.213.15.179])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2021 05:13:49 -0700
Date: Fri, 11 Jun 2021 14:13:46 +0200
From: Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20210611121346.GA49802@zkempczy-mobl2>
References: <20210611062328.16228-1-zbigniew.kempczynski@intel.com>
 <162340807984.29314.15989375352897107641@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <162340807984.29314.15989375352897107641@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_relocation_exceptions_for_two_other_platforms_=28r?=
 =?utf-8?q?ev6=29?=
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

On Fri, Jun 11, 2021 at 10:41:19AM +0000, Patchwork wrote:
>    Patch Details
> 
>    Series:  drm/i915: Add relocation exceptions for two other platforms (rev6)  
>    URL:     https://patchwork.freedesktop.org/series/89594/                     
>    State:   failure                                                             
>    Details: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20342/index.html 
> 
>       CI Bug Log - changes from CI_DRM_10209_full -> Patchwork_20342_full
> 
> Summary
> 
>    FAILURE
> 
>    Serious unknown changes coming with Patchwork_20342_full absolutely need
>    to be
>    verified manually.
> 
>    If you think the reported changes have nothing to do with the changes
>    introduced in Patchwork_20342_full, please notify your bug team to allow
>    them
>    to document this new failure mode, which will reduce false positives in
>    CI.
> 
>    External URL:
>    https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20342/index.html
> 
> Possible new issues
> 
>    Here are the unknown changes that may have been introduced in
>    Patchwork_20342_full:
> 
>   IGT changes
> 
>     Possible regressions
> 
>      * igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2:
>           * shard-glk: PASS -> INCOMPLETE

Unrelated, patch enables relocations on ADL when require_force_probe flag is set.

--
Zbigniew

> 
> Known issues
> 
>    Here are the changes found in Patchwork_20342_full that come from known
>    issues:
> 
>   IGT changes
> 
>     Issues hit
> 
>      * igt@gem_ctx_persistence@legacy-engines-mixed-process:
> 
>           * shard-snb: NOTRUN -> SKIP (fdo#109271 / i915#1099) +3 similar
>             issues
>      * igt@gem_ctx_persistence@smoketest:
> 
>           * shard-kbl: PASS -> FAIL (i915#2896)
>      * igt@gem_eio@unwedge-stress:
> 
>           * shard-snb: NOTRUN -> FAIL (i915#3354)
>      * igt@gem_exec_fair@basic-none-vip@rcs0:
> 
>           * shard-kbl: PASS -> FAIL (i915#2842)
>      * igt@gem_exec_fair@basic-none@vcs1:
> 
>           * shard-iclb: NOTRUN -> FAIL (i915#2842)
>      * igt@gem_mmap_gtt@cpuset-big-copy-xy:
> 
>           * shard-iclb: PASS -> FAIL (i915#307)
>      * igt@gem_pwrite@basic-exhaustion:
> 
>           * shard-kbl: NOTRUN -> WARN (i915#2658)
>      * igt@gem_userptr_blits@dmabuf-sync:
> 
>           * shard-apl: NOTRUN -> SKIP (fdo#109271 / i915#3323)
>      * igt@gem_userptr_blits@vma-merge:
> 
>           * shard-apl: NOTRUN -> FAIL (i915#3318)
> 
>           * shard-kbl: NOTRUN -> FAIL (i915#3318)
> 
>      * igt@gen9_exec_parse@bb-large:
> 
>           * shard-apl: NOTRUN -> FAIL (i915#3296)
>      * igt@i915_pm_dc@dc6-dpms:
> 
>           * shard-skl: NOTRUN -> FAIL (i915#454)
>      * igt@i915_pm_dc@dc6-psr:
> 
>           * shard-skl: PASS -> FAIL (i915#454)
>      * igt@i915_selftest@live@execlists:
> 
>           * shard-apl: NOTRUN -> DMESG-FAIL (i915#3462)
>      * igt@i915_suspend@debugfs-reader:
> 
>           * shard-skl: PASS -> INCOMPLETE (i915#198)
>      * igt@kms_ccs@pipe-a-ccs-on-another-bo:
> 
>           * shard-snb: NOTRUN -> SKIP (fdo#109271) +336 similar issues
>      * igt@kms_ccs@pipe-c-ccs-on-another-bo:
> 
>           * shard-skl: NOTRUN -> SKIP (fdo#109271 / fdo#111304)
>      * igt@kms_chamelium@hdmi-aspect-ratio:
> 
>           * shard-kbl: NOTRUN -> SKIP (fdo#109271 / fdo#111827) +5 similar
>             issues
>      * igt@kms_chamelium@hdmi-mode-timings:
> 
>           * shard-snb: NOTRUN -> SKIP (fdo#109271 / fdo#111827) +20 similar
>             issues
>      * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
> 
>           * shard-apl: NOTRUN -> SKIP (fdo#109271 / fdo#111827) +16 similar
>             issues
>      * igt@kms_color_chamelium@pipe-d-degamma:
> 
>           * shard-skl: NOTRUN -> SKIP (fdo#109271 / fdo#111827) +3 similar
>             issues
>      * igt@kms_content_protection@atomic-dpms:
> 
>           * shard-kbl: NOTRUN -> TIMEOUT (i915#1319)
>      * igt@kms_cursor_crc@pipe-b-cursor-suspend:
> 
>           * shard-kbl: NOTRUN -> DMESG-WARN (i915#180)
>      * igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen:
> 
>           * shard-glk: PASS -> FAIL (i915#3444)
>      * igt@kms_cursor_crc@pipe-c-cursor-suspend:
> 
>           * shard-kbl: PASS -> DMESG-WARN (i915#180) +1 similar issue
> 
>           * shard-apl: PASS -> DMESG-WARN (i915#180)
> 
>      * igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:
> 
>           * shard-skl: PASS -> FAIL (i915#2122)
>      * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
> 
>           * shard-skl: NOTRUN -> SKIP (fdo#109271 / i915#2642)
>      * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
> 
>           * shard-apl: NOTRUN -> SKIP (fdo#109271 / i915#2672)
>      * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:
> 
>           * shard-skl: NOTRUN -> SKIP (fdo#109271) +35 similar issues
>      * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render:
> 
>           * shard-skl: PASS -> FAIL (i915#49)
>      * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
> 
>           * shard-kbl: NOTRUN -> SKIP (fdo#109271 / i915#533)
>      * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
> 
>           * shard-apl: NOTRUN -> FAIL (fdo#108145 / i915#265) +2 similar
>             issues
>      * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
> 
>           * shard-skl: PASS -> FAIL (fdo#108145 / i915#265) +2 similar issues
>      * igt@kms_plane_multiple@atomic-pipe-d-tiling-x:
> 
>           * shard-kbl: NOTRUN -> SKIP (fdo#109271) +75 similar issues
>      * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
> 
>           * shard-kbl: NOTRUN -> SKIP (fdo#109271 / i915#658) +2 similar
>             issues
> 
>           * shard-apl: NOTRUN -> SKIP (fdo#109271 / i915#658) +3 similar
>             issues
> 
>      * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
> 
>           * shard-skl: NOTRUN -> SKIP (fdo#109271 / i915#658) +1 similar
>             issue
>      * igt@kms_psr@psr2_cursor_plane_move:
> 
>           * shard-iclb: PASS -> SKIP (fdo#109441) +1 similar issue
>      * igt@kms_setmode@basic:
> 
>           * shard-snb: NOTRUN -> FAIL (i915#31)
>      * igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
> 
>           * shard-apl: NOTRUN -> SKIP (fdo#109271) +162 similar issues
>      * igt@perf@polling-parameterized:
> 
>           * shard-skl: PASS -> FAIL (i915#1542)
>      * igt@sysfs_clients@create:
> 
>           * shard-kbl: NOTRUN -> SKIP (fdo#109271 / i915#2994)
>      * igt@sysfs_clients@sema-50:
> 
>           * shard-apl: NOTRUN -> SKIP (fdo#109271 / i915#2994) +2 similar
>             issues
>      * igt@sysfs_heartbeat_interval@mixed@bcs0:
> 
>           * shard-skl: NOTRUN -> FAIL (i915#1731)
> 
>     Possible fixes
> 
>      * igt@gem_exec_fair@basic-none-solo@rcs0:
> 
>           * shard-kbl: FAIL (i915#2842) -> PASS
>      * igt@gem_exec_fair@basic-throttle@rcs0:
> 
>           * shard-glk: FAIL (i915#2842) -> PASS +1 similar issue
> 
>           * shard-iclb: FAIL (i915#2849) -> PASS
> 
>      * igt@gem_mmap_gtt@big-copy-odd:
> 
>           * shard-skl: FAIL (i915#307) -> PASS
>      * igt@kms_cursor_crc@pipe-b-cursor-suspend:
> 
>           * shard-apl: DMESG-WARN (i915#180) -> PASS
>      * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2:
> 
>           * shard-glk: FAIL (i915#79) -> PASS
>      * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
> 
>           * shard-skl: FAIL (i915#79) -> PASS
>      * igt@kms_flip@flip-vs-suspend@c-dp1:
> 
>           * shard-kbl: DMESG-WARN (i915#180) -> PASS +5 similar issues
>      * igt@kms_psr@psr2_cursor_plane_onoff:
> 
>           * shard-iclb: SKIP (fdo#109441) -> PASS +1 similar issue
>      * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
> 
>           * shard-kbl: INCOMPLETE (i915#155) -> PASS
>      * igt@kms_vblank@pipe-b-query-forked-hang:
> 
>           * shard-skl: DMESG-WARN (i915#1982) -> PASS
> 
>     Warnings
> 
>      * igt@gem_exec_fair@basic-none-rrul@rcs0:
> 
>           * shard-iclb: FAIL (i915#2842) -> FAIL (i915#2852)
>      * igt@i915_pm_rc6_residency@rc6-fence:
> 
>           * shard-iclb: WARN (i915#2684) -> WARN (i915#1804 / i915#2684) +1
>             similar issue
>      * igt@i915_selftest@live@execlists:
> 
>           * shard-tglb: INCOMPLETE (i915#3462) -> DMESG-FAIL (i915#3462)
> 
>           * shard-iclb: INCOMPLETE (i915#2782 / i915#3462) -> DMESG-FAIL
>             (i915#3462)
> 
>      * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:
> 
>           * shard-iclb: SKIP (i915#2920) -> SKIP (i915#658) +1 similar issue
>      * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:
> 
>           * shard-iclb: SKIP (i915#658) -> SKIP (i915#2920) +4 similar issues
>      * igt@runner@aborted:
> 
>           * shard-kbl: (FAIL, FAIL, FAIL, FAIL, FAIL, FAIL, FAIL, FAIL)
>             (i915#1436 / i915#180 / i915#1814 / i915#2505 / i915#3002 /
>             i915#3363) -> (FAIL, FAIL, FAIL, FAIL, FAIL, FAIL, FAIL)
>             (i915#1436 / i915#180 / i915#1814 / i915#2292 / i915#2505 /
>             i915#3002 / i915#3363)
> 
>           * shard-iclb: (FAIL, FAIL, FAIL) (i915#2782 / i915#3002) -> (FAIL,
>             FAIL, FAIL) (i915#2426 / i915#2782 / i915#3002)
> 
>           * shard-apl: (FAIL, FAIL, FAIL) (i915#1814 / i915#3002 / i915#3363)
>             -> (FAIL, FAIL, FAIL, FAIL) (fdo#109271 / i915#1814 / i915#3002 /
>             i915#3363)
> 
>           * shard-tglb: (FAIL, FAIL, FAIL) (i915#1436 / i915#2966 /
>             i915#3002) -> (FAIL, FAIL, FAIL) (i915#1436 / i915#2426 /
>             i915#2966 / i915#3002)
> 
>           * shard-skl: (FAIL, FAIL) (i915#3002 / i915#3363) -> (FAIL, FAIL,
>             FAIL) (i915#1436 / i915#3002 / i915#3363)
> 
> Participating hosts (11 -> 7)
> 
>    Missing (4): pig-skl-6260u pig-kbl-iris pig-glk-j5005 pig-icl-1065g7
> 
> Build changes
> 
>      * Linux: CI_DRM_10209 -> Patchwork_20342
>      * Piglit: piglit_4509 -> None
> 
>    CI-20190529: 20190529
>    CI_DRM_10209: a86fe137c0ea2e44c75b4b6c3f447af677508679 @
>    git://anongit.freedesktop.org/gfx-ci/linux
>    IGT_6104: f8f81bd3752f3126a47d9dbba2d0ab29f7c17a19 @
>    https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>    Patchwork_20342: 1c0bccbe90d81101674d0e63fca938e2e6e55c4e @
>    git://anongit.freedesktop.org/gfx-ci/linux
>    piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
>    git://anongit.freedesktop.org/piglit
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
