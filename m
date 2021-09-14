Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00D3640A5A5
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Sep 2021 06:56:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D58A96E3D6;
	Tue, 14 Sep 2021 04:56:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B6106E3DA
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Sep 2021 04:56:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10106"; a="218701046"
X-IronPort-AV: E=Sophos;i="5.85,291,1624345200"; d="scan'208";a="218701046"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2021 21:56:12 -0700
X-IronPort-AV: E=Sophos;i="5.85,291,1624345200"; d="scan'208";a="543671005"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box)
 ([10.1.27.20])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2021 21:56:11 -0700
Date: Mon, 13 Sep 2021 21:51:12 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20210914045112.GA23610@jons-linux-dev-box>
References: <20210913195604.16181-1-matthew.brost@intel.com>
 <163158760911.3457.9759952424087790598@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <163158760911.3457.9759952424087790598@emeril.freedesktop.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Add_a_cancel_request_selftest_that_triggers_?=
 =?utf-8?q?a_reset?=
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

On Tue, Sep 14, 2021 at 02:46:49AM +0000, Patchwork wrote:
> Patch Details
> 
> Series:  drm/i915/selftests: Add a cancel request selftest that triggers a
>          reset
> URL:     https://patchwork.freedesktop.org/series/94631/
> State:   failure
> Details: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21030/index.html
> 
> CI Bug Log - changes from CI_DRM_10575_full -> Patchwork_21030_full
> 
> Summary
> 
> FAILURE
> 
> Serious unknown changes coming with Patchwork_21030_full absolutely need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_21030_full, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> Possible new issues
> 
> Here are the unknown changes that may have been introduced in
> Patchwork_21030_full:
> 
> IGT changes
> 
> Possible regressions
> 
>   • igt@gem_softpin@noreloc-s3:
> 
>       □ shard-snb: NOTRUN -> DMESG-WARN
>   • igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
> 
>       □ shard-iclb: PASS -> SKIP

Clearly neither of these failures has anything to do with this patch as
this patch just introduces a new selftest. CI is clean with an RB this
patch can be merged.

Matt 

> 
> Suppressed
> 
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
> 
>   • igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>       □ {shard-rkl}: SKIP ([i915#4070]) -> SKIP
> 
> Known issues
> 
> Here are the changes found in Patchwork_21030_full that come from known issues:
> 
> IGT changes
> 
> Issues hit
> 
>   • igt@gem_ctx_persistence@legacy-engines-mixed-process:
> 
>       □ shard-snb: NOTRUN -> SKIP ([fdo#109271] / [i915#1099]) +6 similar
>         issues
>   • igt@gem_eio@unwedge-stress:
> 
>       □ shard-iclb: PASS -> TIMEOUT ([i915#2369] / [i915#2481] / [i915#3070])
>   • igt@gem_exec_fair@basic-none-share@rcs0:
> 
>       □ shard-tglb: PASS -> FAIL ([i915#2842]) +1 similar issue
>   • igt@gem_exec_fair@basic-pace-share@rcs0:
> 
>       □ shard-tglb: NOTRUN -> FAIL ([i915#2842])
>   • igt@gem_exec_fair@basic-pace-solo@rcs0:
> 
>       □ shard-iclb: PASS -> FAIL ([i915#2842])
>   • igt@gem_exec_fair@basic-sync@rcs0:
> 
>       □ shard-kbl: PASS -> SKIP ([fdo#109271])
>   • igt@gem_huc_copy@huc-copy:
> 
>       □ shard-tglb: PASS -> SKIP ([i915#2190])
>   • igt@gem_pread@exhaustion:
> 
>       □ shard-snb: NOTRUN -> WARN ([i915#2658])
>   • igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:
> 
>       □ shard-iclb: NOTRUN -> SKIP ([i915#768])
>   • igt@gem_userptr_blits@coherency-sync:
> 
>       □ shard-tglb: NOTRUN -> SKIP ([fdo#110542])
>   • igt@gem_userptr_blits@dmabuf-sync:
> 
>       □ shard-kbl: NOTRUN -> SKIP ([fdo#109271] / [i915#3323])
>   • igt@gem_userptr_blits@input-checking:
> 
>       □ shard-snb: NOTRUN -> DMESG-WARN ([i915#3002])
>   • igt@gem_userptr_blits@unsync-unmap-after-close:
> 
>       □ shard-tglb: NOTRUN -> SKIP ([i915#3297])
>   • igt@gem_userptr_blits@vma-merge:
> 
>       □ shard-snb: NOTRUN -> FAIL ([i915#2724])
>   • igt@gem_workarounds@suspend-resume:
> 
>       □ shard-tglb: PASS -> INCOMPLETE ([i915#456]) +2 similar issues
>   • igt@gen7_exec_parse@oacontrol-tracking:
> 
>       □ shard-tglb: NOTRUN -> SKIP ([fdo#109289]) +1 similar issue
>   • igt@gen9_exec_parse@bb-secure:
> 
>       □ shard-iclb: NOTRUN -> SKIP ([i915#2856])
>   • igt@gen9_exec_parse@shadow-peek:
> 
>       □ shard-tglb: NOTRUN -> SKIP ([i915#2856]) +1 similar issue
>   • igt@i915_selftest@live@evict:
> 
>       □ shard-skl: NOTRUN -> INCOMPLETE ([i915#198])
>   • igt@i915_selftest@live@gt_lrc:
> 
>       □ shard-tglb: NOTRUN -> DMESG-FAIL ([i915#2373])
>   • igt@i915_selftest@live@gt_pm:
> 
>       □ shard-tglb: NOTRUN -> DMESG-FAIL ([i915#1759] / [i915#2291])
> 
>       □ shard-skl: NOTRUN -> DMESG-FAIL ([i915#1886] / [i915#2291])
> 
>   • igt@i915_selftest@live@hangcheck:
> 
>       □ shard-snb: PASS -> INCOMPLETE ([i915#3921])
>   • igt@kms_big_fb@linear-16bpp-rotate-270:
> 
>       □ shard-tglb: NOTRUN -> SKIP ([fdo#111614]) +1 similar issue
>   • igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:
> 
>       □ shard-kbl: NOTRUN -> SKIP ([fdo#109271] / [i915#3777]) +1 similar issue
>   • igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
> 
>       □ shard-tglb: NOTRUN -> SKIP ([fdo#111615])
>   • igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
> 
>       □ shard-iclb: NOTRUN -> SKIP ([fdo#109278] / [i915#3886]) +2 similar
>         issues
>   • igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
> 
>       □ shard-kbl: NOTRUN -> SKIP ([fdo#109271] / [i915#3886]) +8 similar
>         issues
>   • igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
> 
>       □ shard-apl: NOTRUN -> SKIP ([fdo#109271] / [i915#3886]) +9 similar
>         issues
>   • igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
> 
>       □ shard-skl: NOTRUN -> SKIP ([fdo#109271] / [i915#3886]) +4 similar
>         issues
>   • igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
> 
>       □ shard-tglb: NOTRUN -> SKIP ([i915#3689] / [i915#3886]) +2 similar
>         issues
>   • igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_ccs:
> 
>       □ shard-tglb: NOTRUN -> SKIP ([i915#3689]) +1 similar issue
>   • igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_ccs:
> 
>       □ shard-snb: NOTRUN -> SKIP ([fdo#109271]) +494 similar issues
>   • igt@kms_chamelium@hdmi-hpd-for-each-pipe:
> 
>       □ shard-kbl: NOTRUN -> SKIP ([fdo#109271] / [fdo#111827]) +8 similar
>         issues
>   • igt@kms_chamelium@vga-hpd-after-suspend:
> 
>       □ shard-skl: NOTRUN -> SKIP ([fdo#109271] / [fdo#111827]) +6 similar
>         issues
> 
>       □ shard-iclb: NOTRUN -> SKIP ([fdo#109284] / [fdo#111827]) +1 similar
>         issue
> 
>   • igt@kms_color_chamelium@pipe-c-ctm-0-25:
> 
>       □ shard-apl: NOTRUN -> SKIP ([fdo#109271] / [fdo#111827]) +17 similar
>         issues
>   • igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:
> 
>       □ shard-snb: NOTRUN -> SKIP ([fdo#109271] / [fdo#111827]) +19 similar
>         issues
>   • igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes:
> 
>       □ shard-tglb: NOTRUN -> SKIP ([fdo#109284] / [fdo#111827]) +6 similar
>         issues
>   • igt@kms_content_protection@lic:
> 
>       □ shard-apl: NOTRUN -> TIMEOUT ([i915#1319])
>   • igt@kms_content_protection@type1:
> 
>       □ shard-tglb: NOTRUN -> SKIP ([fdo#111828])
>   • igt@kms_cursor_crc@pipe-a-cursor-size-change:
> 
>       □ shard-snb: NOTRUN -> FAIL ([i915#4024])
>   • igt@kms_cursor_crc@pipe-b-cursor-32x10-random:
> 
>       □ shard-tglb: NOTRUN -> SKIP ([i915#3359]) +2 similar issues
>   • igt@kms_cursor_crc@pipe-b-cursor-512x512-offscreen:
> 
>       □ shard-iclb: NOTRUN -> SKIP ([fdo#109278] / [fdo#109279])
>   • igt@kms_cursor_crc@pipe-b-cursor-suspend:
> 
>       □ shard-skl: PASS -> INCOMPLETE ([i915#300])
>   • igt@kms_cursor_crc@pipe-d-cursor-32x32-onscreen:
> 
>       □ shard-iclb: NOTRUN -> SKIP ([fdo#109278]) +3 similar issues
> 
>       □ shard-tglb: NOTRUN -> SKIP ([i915#3319])
> 
>   • igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen:
> 
>       □ shard-tglb: NOTRUN -> SKIP ([fdo#109279] / [i915#3359]) +3 similar
>         issues
>   • igt@kms_cursor_legacy@pipe-d-torture-bo:
> 
>       □ shard-apl: NOTRUN -> SKIP ([fdo#109271] / [i915#533]) +1 similar issue
>   • igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2:
> 
>       □ shard-glk: PASS -> FAIL ([i915#2122])
>   • igt@kms_flip@flip-vs-expired-vblank@c-dp1:
> 
>       □ shard-kbl: PASS -> FAIL ([i915#79])
>   • igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
> 
>       □ shard-apl: PASS -> DMESG-WARN ([i915#180]) +4 similar issues
>   • igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
> 
>       □ shard-skl: PASS -> FAIL ([i915#2122])
>   • igt@kms_frontbuffer_tracking@fbc-suspend:
> 
>       □ shard-kbl: PASS -> DMESG-WARN ([i915#180]) +3 similar issues
>   • igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plflip-blt:
> 
>       □ shard-tglb: NOTRUN -> SKIP ([fdo#111825]) +14 similar issues
>   • igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:
> 
>       □ shard-kbl: NOTRUN -> SKIP ([fdo#109271]) +109 similar issues
>   • igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-blt:
> 
>       □ shard-iclb: NOTRUN -> SKIP ([fdo#109280]) +5 similar issues
>   • igt@kms_hdr@bpc-switch-suspend:
> 
>       □ shard-skl: PASS -> FAIL ([i915#1188])
>   • igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
> 
>       □ shard-skl: NOTRUN -> FAIL ([fdo#108145] / [i915#265]) +2 similar issues
>   • igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
> 
>       □ shard-apl: NOTRUN -> FAIL ([fdo#108145] / [i915#265]) +2 similar issues
>   • igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
> 
>       □ shard-kbl: NOTRUN -> FAIL ([fdo#108145] / [i915#265])
>   • igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
> 
>       □ shard-skl: PASS -> FAIL ([fdo#108145] / [i915#265])
>   • igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
> 
>       □ shard-kbl: NOTRUN -> FAIL ([i915#265]) +1 similar issue
>   • igt@kms_plane_lowres@pipe-d-tiling-yf:
> 
>       □ shard-tglb: NOTRUN -> SKIP ([fdo#112054]) +1 similar issue
>   • igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5:
> 
>       □ shard-iclb: NOTRUN -> SKIP ([i915#658])
>   • igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:
> 
>       □ shard-skl: NOTRUN -> SKIP ([fdo#109271] / [i915#658]) +2 similar issues
>   • igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
> 
>       □ shard-kbl: NOTRUN -> SKIP ([fdo#109271] / [i915#658])
>   • igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:
> 
>       □ shard-apl: NOTRUN -> SKIP ([fdo#109271] / [i915#658]) +5 similar issues
>   • igt@kms_psr2_sf@plane-move-sf-dmg-area-1:
> 
>       □ shard-tglb: NOTRUN -> SKIP ([i915#2920])
>   • igt@kms_psr@psr2_primary_blt:
> 
>       □ shard-iclb: PASS -> SKIP ([fdo#109441]) +1 similar issue
>   • igt@kms_psr@psr2_primary_mmap_gtt:
> 
>       □ shard-tglb: NOTRUN -> FAIL ([i915#132] / [i915#3467]) +1 similar issue
>   • igt@kms_sysfs_edid_timing:
> 
>       □ shard-apl: NOTRUN -> FAIL ([IGT#2])
>   • igt@kms_vblank@pipe-d-wait-forked-hang:
> 
>       □ shard-apl: NOTRUN -> SKIP ([fdo#109271]) +206 similar issues
>   • igt@kms_writeback@writeback-check-output:
> 
>       □ shard-apl: NOTRUN -> SKIP ([fdo#109271] / [i915#2437])
> 
>       □ shard-iclb: NOTRUN -> SKIP ([i915#2437])
> 
>       □ shard-tglb: NOTRUN -> SKIP ([i915#2437])
> 
>   • igt@perf@gen12-mi-rpc:
> 
>       □ shard-skl: NOTRUN -> SKIP ([fdo#109271]) +80 similar issues
>   • igt@perf@polling-parameterized:
> 
>       □ shard-skl: PASS -> FAIL ([i915#1542])
>   • igt@prime_nv_pcopy@test1_macro:
> 
>       □ shard-tglb: NOTRUN -> SKIP ([fdo#109291])
>   • igt@sysfs_clients@fair-1:
> 
>       □ shard-apl: NOTRUN -> SKIP ([fdo#109271] / [i915#2994]) +1 similar issue
> 
>       □ shard-tglb: NOTRUN -> SKIP ([i915#2994]) +1 similar issue
> 
>   • igt@sysfs_clients@sema-10:
> 
>       □ shard-kbl: NOTRUN -> SKIP ([fdo#109271] / [i915#2994]) +1 similar issue
>   • igt@sysfs_clients@split-10:
> 
>       □ shard-skl: NOTRUN -> SKIP ([fdo#109271] / [i915#2994])
> 
> Possible fixes
> 
>   • igt@feature_discovery@psr2:
> 
>       □ {shard-rkl}: SKIP ([i915#658]) -> PASS
>   • igt@gem_ctx_isolation@preservation-s3@vecs0:
> 
>       □ shard-kbl: DMESG-WARN ([i915#180]) -> PASS +2 similar issues
>   • igt@gem_eio@reset-stress:
> 
>       □ {shard-rkl}: FAIL ([i915#3115]) -> PASS
>   • igt@gem_exec_fair@basic-deadline:
> 
>       □ shard-kbl: FAIL ([i915#2846]) -> PASS
>   • igt@gem_exec_fair@basic-flow@rcs0:
> 
>       □ shard-tglb: FAIL ([i915#2842]) -> PASS +1 similar issue
>   • igt@gem_exec_fair@basic-none@rcs0:
> 
>       □ shard-glk: FAIL ([i915#2842]) -> PASS
>   • igt@gem_exec_fair@basic-pace-solo@rcs0:
> 
>       □ shard-kbl: FAIL ([i915#2842]) -> PASS
>   • igt@gem_exec_fair@basic-pace@vcs0:
> 
>       □ {shard-rkl}: FAIL ([i915#2842]) -> PASS +1 similar issue
>   • igt@gem_exec_fair@basic-pace@vecs0:
> 
>       □ shard-kbl: SKIP ([fdo#109271]) -> PASS
>   • igt@gem_exec_suspend@basic-s4-devices:
> 
>       □ {shard-rkl}: INCOMPLETE ([i915#3189]) -> PASS
>   • igt@gem_fenced_exec_thrash@no-spare-fences:
> 
>       □ shard-snb: INCOMPLETE ([i915#2055]) -> PASS
>   • igt@gem_mmap_offset@clear:
> 
>       □ {shard-rkl}: FAIL ([i915#3160]) -> PASS
>   • igt@i915_pm_dc@dc6-dpms:
> 
>       □ shard-iclb: FAIL ([i915#454]) -> PASS
>   • igt@i915_pm_rpm@system-suspend-execbuf:
> 
>       □ shard-skl: INCOMPLETE ([i915#146] / [i915#151]) -> PASS
>   • igt@i915_selftest@live@gt_pm:
> 
>       □ {shard-rkl}: DMESG-FAIL ([i915#1021]) -> PASS
>   • igt@kms_async_flips@alternate-sync-async-flip:
> 
>       □ shard-skl: FAIL ([i915#2521]) -> PASS
> 
> SECURITY NOTE: file ~/.netrc must not be accessible by others
