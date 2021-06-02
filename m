Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 031673988AB
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jun 2021 13:55:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53D7889EA3;
	Wed,  2 Jun 2021 11:55:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D58A989EA3
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Jun 2021 11:55:03 +0000 (UTC)
IronPort-SDR: zFZtxLwMDoEknkSScr6A1Gb8pQTVOLqwn9YNkKOFANGAW4vRNbsYIlXymb+bwbwjRo9hj7M71Z
 SOpmZNTvnDgA==
X-IronPort-AV: E=McAfee;i="6200,9189,10002"; a="267642308"
X-IronPort-AV: E=Sophos;i="5.83,242,1616482800"; d="scan'208";a="267642308"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2021 04:55:02 -0700
IronPort-SDR: /vsKxsreGVvMM3syjlITaiD+GuKJXVqbLQHHitKnFufZrLgOWXPK5RQ5VTyKdo1mUXibO2KEDB
 fSfXzDJxUyow==
X-IronPort-AV: E=Sophos;i="5.83,242,1616482800"; d="scan'208";a="479682860"
Received: from pdominik-mobl.ger.corp.intel.com (HELO zkempczy-mobl2)
 ([10.213.11.138])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2021 04:55:01 -0700
Date: Wed, 2 Jun 2021 13:54:57 +0200
From: Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20210602115457.GD3702@zkempczy-mobl2>
References: <20210601142442.100754-1-zbigniew.kempczynski@intel.com>
 <162261979678.11227.12918812151779339075@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <162261979678.11227.12918812151779339075@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_relocation_exceptions_for_two_other_platforms_=28r?=
 =?utf-8?q?ev4=29?=
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

On Wed, Jun 02, 2021 at 07:43:16AM +0000, Patchwork wrote:
>    Patch Details
> 
>    Series:  drm/i915: Add relocation exceptions for two other platforms (rev4)  
>    URL:     https://patchwork.freedesktop.org/series/89594/                     
>    State:   failure                                                             
>    Details: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20258/index.html 
> 
>       CI Bug Log - changes from CI_DRM_10156_full -> Patchwork_20258_full
> 
> Summary
> 
>    FAILURE
> 
>    Serious unknown changes coming with Patchwork_20258_full absolutely need
>    to be
>    verified manually.
> 
>    If you think the reported changes have nothing to do with the changes
>    introduced in Patchwork_20258_full, please notify your bug team to allow
>    them
>    to document this new failure mode, which will reduce false positives in
>    CI.
> 
> Possible new issues
> 
>    Here are the unknown changes that may have been introduced in
>    Patchwork_20258_full:
> 
>   IGT changes
> 
>     Possible regressions
> 
>      * igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled:
>           * shard-skl: PASS -> FAIL

Patches keeps relocations as they are on SKL so this is not related 
to the code imo.

--
Zbigniew


> 
> Known issues
> 
>    Here are the changes found in Patchwork_20258_full that come from known
>    issues:
> 
>   IGT changes
> 
>     Issues hit
> 
>      * igt@gem_create@create-clear:
> 
>           * shard-glk: PASS -> FAIL ([i915#1888] / [i915#3160])
>      * igt@gem_ctx_persistence@legacy-engines-mixed:
> 
>           * shard-snb: NOTRUN -> SKIP ([fdo#109271] / [i915#1099]) +3 similar
>             issues
>      * igt@gem_eio@unwedge-stress:
> 
>           * shard-tglb: PASS -> TIMEOUT ([i915#2369] / [i915#3063])
>      * igt@gem_exec_fair@basic-none-rrul@rcs0:
> 
>           * shard-glk: PASS -> FAIL ([i915#2842])
>      * igt@gem_exec_fair@basic-none@vecs0:
> 
>           * shard-kbl: PASS -> FAIL ([i915#2842])
>      * igt@gem_exec_fair@basic-pace-share@rcs0:
> 
>           * shard-glk: NOTRUN -> FAIL ([i915#2842])
>      * igt@gem_exec_fair@basic-pace@vcs1:
> 
>           * shard-iclb: NOTRUN -> FAIL ([i915#2842]) +1 similar issue
>      * igt@gem_exec_reloc@basic-wide-active@rcs0:
> 
>           * shard-kbl: NOTRUN -> FAIL ([i915#2389]) +4 similar issues
>      * igt@gem_huc_copy@huc-copy:
> 
>           * shard-skl: NOTRUN -> SKIP ([fdo#109271] / [i915#2190])
>      * igt@gem_mmap_gtt@big-copy-odd:
> 
>           * shard-glk: PASS -> FAIL ([i915#307])
>      * igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:
> 
>           * shard-snb: NOTRUN -> INCOMPLETE ([i915#2055] / [i915#3468])
> 
>           * shard-kbl: PASS -> INCOMPLETE ([i915#3468])
> 
>      * igt@gem_mmap_gtt@cpuset-medium-copy-xy:
> 
>           * shard-skl: PASS -> FAIL ([i915#307]) +1 similar issue
>      * igt@gem_mmap_gtt@fault-concurrent:
> 
>           * shard-skl: NOTRUN -> INCOMPLETE ([i915#3468])
>      * igt@gem_mmap_gtt@fault-concurrent-x:
> 
>           * shard-snb: NOTRUN -> INCOMPLETE ([i915#3468] / [i915#3485])
>      * igt@gem_mmap_gtt@fault-concurrent-y:
> 
>           * shard-kbl: NOTRUN -> INCOMPLETE ([i915#3468])
> 
>           * shard-apl: NOTRUN -> INCOMPLETE ([i915#3468]) +1 similar issue
> 
>      * igt@gem_mmap_gtt@medium-copy-xy:
> 
>           * shard-kbl: PASS -> INCOMPLETE ([i915#2502] / [i915#3468])
>      * igt@gem_pwrite@basic-exhaustion:
> 
>           * shard-skl: NOTRUN -> WARN ([i915#2658])
>      * igt@gem_reg_read@bad-register:
> 
>           * shard-skl: PASS -> DMESG-WARN ([i915#1982])
>      * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:
> 
>           * shard-glk: NOTRUN -> SKIP ([fdo#109271]) +58 similar issues
>      * igt@gem_userptr_blits@input-checking:
> 
>           * shard-apl: NOTRUN -> DMESG-WARN ([i915#3002])
>      * igt@gem_userptr_blits@sync-overlap:
> 
>           * shard-glk: PASS -> DMESG-WARN ([i915#118] / [i915#95])
>      * igt@gem_userptr_blits@vma-merge:
> 
>           * shard-apl: NOTRUN -> FAIL ([i915#3318])
>      * igt@gen9_exec_parse@cmd-crossing-page:
> 
>           * shard-tglb: NOTRUN -> SKIP ([fdo#112306])
>      * igt@i915_pm_backlight@fade_with_suspend:
> 
>           * shard-skl: PASS -> INCOMPLETE ([i915#198])
>      * igt@i915_selftest@live@execlists:
> 
>           * shard-skl: NOTRUN -> INCOMPLETE ([i915#2782] / [i915#3462])
>      * igt@i915_selftest@live@gt_pm:
> 
>           * shard-skl: NOTRUN -> DMESG-FAIL ([i915#1886] / [i915#2291])
>      * igt@i915_selftest@live@hangcheck:
> 
>           * shard-snb: NOTRUN -> INCOMPLETE ([i915#2782])
>      * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
> 
>           * shard-tglb: NOTRUN -> SKIP ([fdo#111614]) +1 similar issue
>      * igt@kms_big_joiner@basic:
> 
>           * shard-apl: NOTRUN -> SKIP ([fdo#109271] / [i915#2705])
>      * igt@kms_big_joiner@invalid-modeset:
> 
>           * shard-kbl: NOTRUN -> SKIP ([fdo#109271] / [i915#2705])
>      * igt@kms_ccs@pipe-c-bad-pixel-format:
> 
>           * shard-skl: NOTRUN -> SKIP ([fdo#109271] / [fdo#111304])
>      * igt@kms_chamelium@hdmi-mode-timings:
> 
>           * shard-kbl: NOTRUN -> SKIP ([fdo#109271] / [fdo#111827]) +11
>             similar issues
>      * igt@kms_chamelium@vga-edid-read:
> 
>           * shard-apl: NOTRUN -> SKIP ([fdo#109271] / [fdo#111827]) +25
>             similar issues
>      * igt@kms_chamelium@vga-frame-dump:
> 
>           * shard-skl: NOTRUN -> SKIP ([fdo#109271] / [fdo#111827]) +8
>             similar issues
>      * igt@kms_color_chamelium@pipe-a-ctm-green-to-red:
> 
>           * shard-tglb: NOTRUN -> SKIP ([fdo#109284] / [fdo#111827]) +2
>             similar issues
>      * igt@kms_color_chamelium@pipe-d-degamma:
> 
>           * shard-glk: NOTRUN -> SKIP ([fdo#109271] / [fdo#111827]) +8
>             similar issues
>      * igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:
> 
>           * shard-snb: NOTRUN -> SKIP ([fdo#109271] / [fdo#111827]) +16
>             similar issues
>      * igt@kms_cursor_crc@pipe-b-cursor-32x10-random:
> 
>           * shard-tglb: NOTRUN -> SKIP ([i915#3359]) +3 similar issues
>      * igt@kms_cursor_crc@pipe-b-cursor-suspend:
> 
>           * shard-apl: NOTRUN -> DMESG-WARN ([i915#180])
>      * igt@kms_cursor_crc@pipe-c-cursor-suspend:
> 
>           * shard-kbl: PASS -> DMESG-WARN ([i915#180]) +6 similar issues
>      * igt@kms_cursor_crc@pipe-d-cursor-suspend:
> 
>           * shard-kbl: NOTRUN -> SKIP ([fdo#109271]) +98 similar issues
>      * igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:
> 
>           * shard-snb: NOTRUN -> SKIP ([fdo#109271]) +269 similar issues
>      * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
> 
>           * shard-skl: PASS -> FAIL ([i915#2346] / [i915#533])
>      * igt@kms_fbcon_fbt@fbc-suspend:
> 
>           * shard-kbl: PASS -> INCOMPLETE ([i915#155] / [i915#180] /
>             [i915#636])
>      * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
> 
>           * shard-tglb: NOTRUN -> SKIP ([fdo#111825]) +13 similar issues
>      * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
> 
>           * shard-apl: PASS -> DMESG-WARN ([i915#180]) +2 similar issues
>      * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:
> 
>           * shard-apl: NOTRUN -> SKIP ([fdo#109271] / [i915#2642])
>      * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
> 
>           * shard-glk: NOTRUN -> SKIP ([fdo#109271] / [i915#2642])
>      * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:
> 
>           * shard-skl: NOTRUN -> SKIP ([fdo#109271]) +63 similar issues
>      * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
> 
>           * shard-skl: NOTRUN -> SKIP ([fdo#109271] / [i915#533])
>      * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
> 
>           * shard-glk: NOTRUN -> SKIP ([fdo#109271] / [i915#533])
>      * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
> 
>           * shard-glk: NOTRUN -> FAIL ([fdo#108145] / [i915#265])
>      * igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:
> 
>           * shard-apl: NOTRUN -> FAIL ([fdo#108145] / [i915#265]) +3 similar
>             issues
>      * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
> 
>           * shard-skl: NOTRUN -> FAIL ([fdo#108145] / [i915#265]) +1 similar
>             issue
>      * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
> 
>           * shard-glk: NOTRUN -> FAIL ([i915#265])
>      * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
> 
>           * shard-skl: PASS -> FAIL ([fdo#108145] / [i915#265]) +1 similar
>             issue
>      * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
> 
>           * shard-kbl: NOTRUN -> FAIL ([fdo#108145] / [i915#265])
>      * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
> 
>           * shard-apl: NOTRUN -> FAIL ([i915#265])
>      * igt@kms_plane_lowres@pipe-b-tiling-yf:
> 
>           * shard-tglb: NOTRUN -> SKIP ([fdo#111615]) +1 similar issue
>      * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
> 
>           * shard-skl: NOTRUN -> SKIP ([fdo#109271] / [i915#2733])
>      * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
> 
>           * shard-kbl: NOTRUN -> SKIP ([fdo#109271] / [i915#658]) +3 similar
>             issues
> 
>           * shard-tglb: NOTRUN -> SKIP ([i915#2920])
> 
>      * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
> 
>           * shard-apl: NOTRUN -> SKIP ([fdo#109271] / [i915#658]) +4 similar
>             issues
>      * igt@kms_psr2_sf@plane-move-sf-dmg-area-2:
> 
>           * shard-glk: NOTRUN -> SKIP ([fdo#109271] / [i915#658]) +2 similar
>             issues
>      * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
> 
>           * shard-skl: NOTRUN -> SKIP ([fdo#109271] / [i915#658])
>      * igt@kms_psr2_su@frontbuffer:
> 
>           * shard-iclb: PASS -> SKIP ([fdo#109642] / [fdo#111068] /
>             [i915#658])
>      * igt@kms_psr2_su@page_flip:
> 
>           * shard-tglb: NOTRUN -> SKIP ([i915#1911])
>      * igt@kms_psr@psr2_cursor_render:
> 
>           * shard-iclb: PASS -> SKIP ([fdo#109441]) +1 similar issue
>      * igt@kms_setmode@basic:
> 
>           * shard-snb: NOTRUN -> FAIL ([i915#31])
>      * igt@kms_sysfs_edid_timing:
> 
>           * shard-apl: NOTRUN -> FAIL ([IGT#2])
>      * igt@kms_vblank@pipe-d-wait-forked-hang:
> 
>           * shard-apl: NOTRUN -> SKIP ([fdo#109271]) +200 similar issues
>      * igt@kms_vblank@pipe-d-wait-idle:
> 
>           * shard-apl: NOTRUN -> SKIP ([fdo#109271] / [i915#533]) +3 similar
>             issues
>      * igt@kms_writeback@writeback-check-output:
> 
>           * shard-skl: NOTRUN -> SKIP ([fdo#109271] / [i915#2437])
>      * igt@kms_writeback@writeback-fb-id:
> 
>           * shard-apl: NOTRUN -> SKIP ([fdo#109271] / [i915#2437]) +1 similar
>             issue
>      * igt@nouveau_crc@pipe-a-source-outp-complete:
> 
>           * shard-tglb: NOTRUN -> SKIP ([i915#2530]) +1 similar issue
>      * igt@sysfs_clients@fair-0:
> 
>           * shard-skl: NOTRUN -> SKIP ([fdo#109271] / [i915#2994])
>      * igt@sysfs_clients@recycle-many:
> 
>           * shard-apl: NOTRUN -> SKIP ([fdo#109271] / [i915#2994]) +3 similar
>             issues
> 
>     Possible fixes
> 
>      * igt@gem_ctx_persistence@many-contexts:
> 
>           * shard-tglb: FAIL ([i915#2410]) -> PASS
>      * igt@gem_ctx_ringsize@active@bcs0:
> 
>           * shard-skl: INCOMPLETE ([i915#3316]) -> PASS
>      * igt@gem_eio@in-flight-contexts-10ms:
> 
>           * shard-tglb: TIMEOUT ([i915#3063]) -> PASS
>      * igt@gem_exec_fair@basic-deadline:
> 
>           * shard-kbl: FAIL ([i915#2846]) -> PASS
>      * igt@gem_exec_fair@basic-none-share@rcs0:
> 
>           * shard-tglb: FAIL ([i915#2842]) -> PASS +1 similar issue
>      * igt@gem_exec_fair@basic-none@vcs0:
> 
>           * shard-kbl: FAIL ([i915#2842]) -> PASS +1 similar issue
>      * igt@gem_exec_fair@basic-pace@vcs0:
> 
>           * shard-iclb: FAIL ([i915#2842]) -> PASS
>      * igt@gem_mmap_gtt@cpuset-basic-small-copy:
> 
>           * shard-skl: INCOMPLETE ([i915#198] / [i915#3468]) -> PASS
> 
>           * shard-kbl: INCOMPLETE ([i915#3468]) -> PASS
> 
>      * igt@gem_mmap_gtt@cpuset-big-copy-xy:
> 
>           * shard-iclb: FAIL ([i915#307]) -> PASS +1 similar issue
>      * igt@gem_mmap_gtt@cpuset-medium-copy-odd:
> 
>           * shard-glk: FAIL ([i915#307]) -> PASS
>      * igt@gem_mmap_gtt@cpuset-medium-copy-xy:
> 
>           * shard-glk: INCOMPLETE ([i915#3468]) -> PASS
>      * igt@gem_mmap_gtt@medium-copy-xy:
> 
>           * shard-glk: INCOMPLETE ([i915#2055] / [i915#2502] / [i915#3468])
>             -> PASS
>      * igt@gem_vm_create@destroy-race:
> 
>           * shard-tglb: INCOMPLETE ([i915#3325]) -> PASS
>      * igt@kms_color@pipe-c-ctm-0-25:
> 
>           * shard-skl: DMESG-WARN ([i915#1982]) -> PASS
>      * igt@kms_cursor_crc@pipe-c-cursor-suspend:
> 
>           * shard-apl: DMESG-WARN ([i915#180]) -> PASS
>      * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
> 
>           * shard-skl: FAIL ([i915#2346]) -> PASS
>      * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@bc-hdmi-a1-hdmi-a2:
> 
>           * shard-glk: FAIL ([i915#2122]) -> PASS
>      * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
> 
>           * shard-skl: FAIL ([i915#79]) -> PASS
>      * igt@kms_hdr@bpc-switch-suspend:
> 
>           * shard-skl: FAIL ([i915#1188]) -> PASS
>      * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
> 
>           * shard-skl: [INCOMPLETE][140
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
