Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F21B23F8D78
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Aug 2021 20:01:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EF9A6E895;
	Thu, 26 Aug 2021 18:01:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9ED936E056
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Aug 2021 18:01:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10088"; a="214678729"
X-IronPort-AV: E=Sophos;i="5.84,354,1620716400"; d="scan'208";a="214678729"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2021 11:01:36 -0700
X-IronPort-AV: E=Sophos;i="5.84,354,1620716400"; d="scan'208";a="508469109"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box)
 ([10.1.27.20])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2021 11:01:35 -0700
Date: Thu, 26 Aug 2021 10:56:26 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20210826175626.GA20306@jons-linux-dev-box>
References: <20210826032327.18078-1-matthew.brost@intel.com>
 <162997407641.15048.13722510657471353554@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <162997407641.15048.13722510657471353554@emeril.freedesktop.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgQ2xl?=
 =?utf-8?q?an_up_GuC_CI_failures=2C_simplify_locking=2C_and_kernel_DOC_=28?=
 =?utf-8?q?rev5=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Aug 26, 2021 at 10:34:36AM +0000, Patchwork wrote:
> Patch Details
> 
> Series:  Clean up GuC CI failures, simplify locking, and kernel DOC (rev5)
> URL:     https://patchwork.freedesktop.org/series/93704/
> State:   failure
> Details: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20896/index.html
> 
> CI Bug Log - changes from CI_DRM_10522_full -> Patchwork_20896_full
> 
> Summary
> 
> FAILURE
> 
> Serious unknown changes coming with Patchwork_20896_full absolutely need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_20896_full, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> Possible new issues
> 
> Here are the unknown changes that may have been introduced in
> Patchwork_20896_full:
> 
> IGT changes
> 
> Possible regressions
> 
>   • igt@gem_exec_schedule@reorder-wide@vcs0:
>       □ shard-skl: PASS -> FAIL
> 

Not really sure what this one is about but I don't see how it could be
related to this series as almost all the changes in this series are in
the GuC backend while this test is runing on a much older platform.

Matt 

> New tests
> 
> New tests have been introduced between CI_DRM_10522_full and
> Patchwork_20896_full:
> 
> New IGT tests (1)
> 
>   • igt@i915_selftest@live@guc:
>       □ Statuses : 8 pass(s)
>       □ Exec time: [0.47, 4.95] s
> 
> Known issues
> 
> Here are the changes found in Patchwork_20896_full that come from known issues:
> 
> IGT changes
> 
> Issues hit
> 
>   • igt@gem_ctx_persistence@legacy-engines-mixed-process:
> 
>       □ shard-snb: NOTRUN -> SKIP (fdo#109271 / i915#1099) +1 similar issue
>   • igt@gem_ctx_sseu@mmap-args:
> 
>       □ shard-tglb: NOTRUN -> SKIP ([i915#280])
>   • igt@gem_eio@in-flight-10ms:
> 
>       □ shard-skl: PASS -> TIMEOUT ([i915#3063]) +1 similar issue
>   • igt@gem_exec_fair@basic-deadline:
> 
>       □ shard-kbl: PASS -> FAIL ([i915#2846])
>   • igt@gem_exec_fair@basic-none-solo@rcs0:
> 
>       □ shard-tglb: NOTRUN -> FAIL ([i915#2842])
>   • igt@gem_exec_fair@basic-pace@vcs1:
> 
>       □ shard-iclb: NOTRUN -> FAIL ([i915#2842])
>   • igt@gem_exec_fair@basic-pace@vecs0:
> 
>       □ shard-kbl: PASS -> FAIL ([i915#2842]) +1 similar issue
> 
>       □ shard-tglb: PASS -> FAIL ([i915#2842])
> 
>   • igt@gem_exec_fair@basic-throttle@rcs0:
> 
>       □ shard-glk: PASS -> FAIL ([i915#2842]) +1 similar issue
> 
>       □ shard-iclb: PASS -> FAIL ([i915#2849])
> 
>   • igt@gem_exec_params@secure-non-master:
> 
>       □ shard-tglb: NOTRUN -> SKIP (fdo#112283)
>   • igt@gem_pread@exhaustion:
> 
>       □ shard-snb: NOTRUN -> WARN ([i915#2658])
>   • igt@gem_render_copy@yf-tiled-to-vebox-linear:
> 
>       □ shard-iclb: NOTRUN -> SKIP ([i915#768])
>   • igt@gem_userptr_blits@readonly-pwrite-unsync:
> 
>       □ shard-tglb: NOTRUN -> SKIP ([i915#3297])
> 
>       □ shard-iclb: NOTRUN -> SKIP ([i915#3297])
> 
>   • igt@gen3_render_tiledy_blits:
> 
>       □ shard-tglb: NOTRUN -> SKIP (fdo#109289)
>   • igt@i915_pm_dc@dc6-psr:
> 
>       □ shard-iclb: PASS -> FAIL ([i915#454])
>   • igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
> 
>       □ shard-tglb: NOTRUN -> SKIP (fdo#111644 / i915#1397 / i915#2411)
>   • igt@kms_big_fb@linear-16bpp-rotate-90:
> 
>       □ shard-apl: NOTRUN -> SKIP (fdo#109271) +177 similar issues
>   • igt@kms_big_fb@linear-32bpp-rotate-0:
> 
>       □ shard-glk: PASS -> DMESG-WARN (i915#118 / [i915#95]) +2 similar issues
>   • igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:
> 
>       □ shard-skl: NOTRUN -> SKIP (fdo#109271 / [i915#3777])
>   • igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:
> 
>       □ shard-apl: NOTRUN -> SKIP (fdo#109271 / [i915#3777])
>   • igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip:
> 
>       □ shard-tglb: NOTRUN -> SKIP (fdo#111615)
>   • igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
> 
>       □ shard-skl: NOTRUN -> SKIP (fdo#109271 / [i915#3886]) +4 similar issues
>   • igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
> 
>       □ shard-apl: NOTRUN -> SKIP (fdo#109271 / [i915#3886]) +6 similar issues
>   • igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
> 
>       □ shard-iclb: NOTRUN -> SKIP (fdo#109278 / [i915#3886])
>   • igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs:
> 
>       □ shard-tglb: NOTRUN -> SKIP ([i915#3689] / [i915#3886])
>   • igt@kms_chamelium@dp-audio:
> 
>       □ shard-tglb: NOTRUN -> SKIP (fdo#109284 / fdo#111827) +1 similar issue
>   • igt@kms_chamelium@dp-crc-single:
> 
>       □ shard-snb: NOTRUN -> SKIP (fdo#109271 / fdo#111827) +8 similar issues
>   • igt@kms_chamelium@hdmi-hpd-fast:
> 
>       □ shard-iclb: NOTRUN -> SKIP (fdo#109284 / fdo#111827) +1 similar issue
>   • igt@kms_chamelium@vga-hpd-enable-disable-mode:
> 
>       □ shard-skl: NOTRUN -> SKIP (fdo#109271 / fdo#111827)
>   • igt@kms_color@pipe-d-ctm-green-to-red:
> 
>       □ shard-iclb: NOTRUN -> SKIP (fdo#109278 / i915#1149)
>   • igt@kms_color_chamelium@pipe-a-ctm-limited-range:
> 
>       □ shard-apl: NOTRUN -> SKIP (fdo#109271 / fdo#111827) +16 similar issues
>   • igt@kms_content_protection@atomic-dpms:
> 
>       □ shard-tglb: NOTRUN -> SKIP (fdo#111828) +1 similar issue
> 
>       □ shard-iclb: NOTRUN -> SKIP (fdo#109300 / fdo#111066)
> 
>   • igt@kms_content_protection@legacy:
> 
>       □ shard-apl: NOTRUN -> TIMEOUT (i915#1319)
>   • igt@kms_cursor_crc@pipe-a-cursor-32x32-sliding:
> 
>       □ shard-tglb: NOTRUN -> SKIP ([i915#3319])
>   • igt@kms_cursor_crc@pipe-b-cursor-512x512-offscreen:
> 
>       □ shard-skl: NOTRUN -> SKIP (fdo#109271) +35 similar issues
>   • igt@kms_cursor_crc@pipe-c-cursor-32x10-onscreen:
> 
>       □ shard-tglb: NOTRUN -> SKIP ([i915#3359])
>   • igt@kms_cursor_crc@pipe-c-cursor-512x512-random:
> 
>       □ shard-tglb: NOTRUN -> SKIP (fdo#109279 / [i915#3359])
>   • igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:
> 
>       □ shard-iclb: NOTRUN -> SKIP (fdo#109274)
>   • igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
> 
>       □ shard-skl: PASS -> FAIL ([i915#79])
>   • igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
> 
>       □ shard-apl: PASS -> DMESG-WARN (i915#180) +1 similar issue
>   • igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
> 
>       □ shard-skl: PASS -> FAIL (i915#2122)
>   • igt@kms_frontbuffer_tracking@fbc-suspend:
> 
>       □ shard-apl: NOTRUN -> DMESG-WARN (i915#180)
>   • igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt:
> 
>       □ shard-iclb: NOTRUN -> SKIP (fdo#109280) +1 similar issue
> 
>       □ shard-tglb: NOTRUN -> SKIP (fdo#111825) +2 similar issues
> 
>   • igt@kms_hdr@bpc-switch-suspend:
> 
>       □ shard-skl: PASS -> FAIL (i915#1188)
>   • igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
> 
>       □ shard-apl: NOTRUN -> FAIL (fdo#108145 / [i915#265]) +2 similar issues
>   • igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
> 
>       □ shard-skl: PASS -> FAIL (fdo#108145 / [i915#265]) +1 similar issue
>   • igt@kms_plane_cursor@pipe-c-viewport-size-128:
> 
>       □ shard-snb: NOTRUN -> SKIP (fdo#109271) +224 similar issues
>   • igt@kms_plane_cursor@pipe-d-viewport-size-64:
> 
>       □ shard-iclb: NOTRUN -> SKIP (fdo#109278) +3 similar issues
>   • igt@kms_plane_lowres@pipe-d-tiling-none:
> 
>       □ shard-tglb: NOTRUN -> SKIP ([i915#3536])
>   • igt@kms_prime@basic-crc@first-to-second:
> 
>       □ shard-tglb: NOTRUN -> SKIP (i915#1836)
>   • igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
> 
>       □ shard-tglb: NOTRUN -> SKIP ([i915#2920])
> 
>       □ shard-skl: NOTRUN -> SKIP (fdo#109271 / [i915#658])
> 
>       □ shard-iclb: NOTRUN -> SKIP ([i915#658])
> 
>   • igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
> 
>       □ shard-apl: NOTRUN -> SKIP (fdo#109271 / [i915#658]) +3 similar issues
>   • igt@kms_psr@psr2_suspend:
> 
>       □ shard-iclb: PASS -> SKIP (fdo#109441)
>   • igt@kms_vblank@pipe-d-wait-idle:
> 
>       □ shard-apl: NOTRUN -> SKIP (fdo#109271 / [i915#533])
>   • igt@kms_writeback@writeback-check-output:
> 
>       □ shard-iclb: NOTRUN -> SKIP ([i915#2437])
> 
>       □ shard-skl: NOTRUN -> SKIP (fdo#109271 / [i915#2437])
> 
>       □ shard-tglb: NOTRUN -> SKIP ([i915#2437])
> 
>   • igt@kms_writeback@writeback-invalid-parameters:
> 
>       □ shard-apl: NOTRUN -> SKIP (fdo#109271 / [i915#2437])
>   • igt@nouveau_crc@pipe-d-ctx-flip-detection:
> 
>       □ shard-tglb: NOTRUN -> SKIP ([i915#2530])
>   • igt@perf@polling-parameterized:
> 
>       □ shard-skl: PASS -> FAIL (i915#1542)
>   • igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:
> 
>       □ shard-tglb: NOTRUN -> SKIP (fdo#109291)
>   • igt@sysfs_clients@fair-1:
> 
>       □ shard-skl: NOTRUN -> SKIP (fdo#109271 / [i915#2994])
>   • igt@sysfs_clients@fair-7:
> 
>       □ shard-apl: NOTRUN -> SKIP (fdo#109271 / [i915#2994]) +1 similar issue
>   • igt@sysfs_clients@sema-10:
> 
>       □ shard-tglb: NOTRUN -> SKIP ([i915#2994]) +1 similar issue
> 
> Possible fixes
> 
>   • igt@gem_eio@in-flight-10ms:
> 
>       □ {shard-rkl}: TIMEOUT ([i915#3063]) -> PASS
>   • igt@gem_eio@unwedge-stress:
> 
>       □ shard-tglb: TIMEOUT (i915#2369 / [i915#3063] / [i915#3648]) -> PASS
> 
>       □ {shard-rkl}: FAIL ([i915#3115]) -> PASS
> 
>   • igt@gem_exec_fair@basic-flow@rcs0:
> 
>       □ shard-kbl: SKIP (fdo#109271) -> PASS
>   • igt@gem_exec_fair@basic-none-share@rcs0:
> 
>       □ shard-apl: SKIP (fdo#109271) -> PASS
>   • igt@gem_exec_fair@basic-none-solo@rcs0:
> 
>       □ shard-kbl: FAIL ([i915#2842]) -> PASS +1 similar issue
>   • igt@gem_exec_fair@basic-none@rcs0:
> 
>       □ shard-glk: FAIL ([i915#2842]) -> PASS
>   • igt@gem_exec_fair@basic-throttle@rcs0:
> 
>       □ {shard-rkl}: FAIL ([i915#2842]) -> PASS
> 
>       □ shard-tglb: FAIL ([i915#2842]) -> PASS
> 
>   • igt@gem_mmap_gtt@cpuset-big-copy-xy:
> 
>       □ {shard-rkl}: FAIL ([i915#307]) -> PASS
>   • igt@kms_cursor_crc@pipe-c-cursor-suspend:
> 
>       □ shard-skl: INCOMPLETE ([i915#300]) -> PASS
>   • igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
> 
>       □ shard-skl: FAIL (i915#2346 / [i915#533]) -> PASS
> 
>       □ shard-glk: FAIL (i915#2346 / [i915#533]) -> PASS
> 
>   • igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
> 
>       □ shard-skl: FAIL (fdo#108145 / [i915#265]) -> PASS
>   • igt@perf@blocking:
> 
>       □ shard-skl: FAIL (i915#1542) -> PASS
>   • igt@perf@polling-parameterized:
> 
>       □ {shard-rkl}: FAIL (i915#1542) -> PASS
> 
> Warnings
> 
>   • igt@gem_exec_fair@basic-pace-solo@rcs0:
> 
>       □ shard-iclb: FAIL ([i915#2851]) -> FAIL ([i915#2842])
>   • igt@gem_exec_fair@basic-pace@vcs0:
> 
>       □ shard-kbl: FAIL ([i915#2842]) -> SKIP (fdo#109271)
>   • igt@kms_psr2_sf@plane-move-sf-dmg-area-0:
> 
>       □ shard-iclb: SKIP ([i915#2920]) -> SKIP ([i915#658])
>   • igt@runner@aborted:
> 
>       □ shard-apl: (FAIL, FAIL) ([i915#3002] / [i915#3363]) -> (FAIL, FAIL,
>         FAIL) (fdo#109271 / i915#180 / i915#1814 / [i915#3363])
> 
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> [i915#2
> 
> SECURITY NOTE: file ~/.netrc must not be accessible by others
