Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A361407302
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Sep 2021 23:40:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C15166EABE;
	Fri, 10 Sep 2021 21:40:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23A8C6EABE
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Sep 2021 21:40:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10103"; a="218011015"
X-IronPort-AV: E=Sophos;i="5.85,284,1624345200"; d="scan'208";a="218011015"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2021 14:40:28 -0700
X-IronPort-AV: E=Sophos;i="5.85,284,1624345200"; d="scan'208";a="549719078"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box)
 ([10.1.27.20])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2021 14:40:28 -0700
Date: Fri, 10 Sep 2021 14:35:26 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <20210910213526.GA24797@jons-linux-dev-box>
References: <20210909164744.31249-1-matthew.brost@intel.com>
 <163121482410.16810.9936448856600893205@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <163121482410.16810.9936448856600893205@emeril.freedesktop.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgQ2xl?=
 =?utf-8?q?an_up_GuC_CI_failures=2C_simplify_locking=2C_and_kernel_DOC_=28?=
 =?utf-8?q?rev11=29?=
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

On Thu, Sep 09, 2021 at 07:13:44PM +0000, Patchwork wrote:
> Patch Details
> 
> Series:  Clean up GuC CI failures, simplify locking, and kernel DOC (rev11)
> URL:     https://patchwork.freedesktop.org/series/93704/
> State:   failure
> Details: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21004/index.html
> 
> CI Bug Log - changes from CI_DRM_10565_full -> Patchwork_21004_full
> 
> Summary
> 
> FAILURE
> 
> Serious unknown changes coming with Patchwork_21004_full absolutely need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_21004_full, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> Possible new issues
> 
> Here are the unknown changes that may have been introduced in
> Patchwork_21004_full:
> 
> IGT changes
> 
> Possible regressions
> 
>   • igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
> 
>       □ shard-iclb: PASS -> SKIP
>   • igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
> 
>       □ shard-tglb: PASS -> INCOMPLETE
> 

Neither of the above seem to be related to this series and also have
similar failures in other series latety.

e.g. Below series has same failures:
https://patchwork.freedesktop.org/series/93800/

Matt

> Suppressed
> 
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
> 
>   • igt@gem_eio@hibernate:
>       □ {shard-rkl}: TIMEOUT ([i915#3811]) -> FAIL
> 
> New tests
> 
> New tests have been introduced between CI_DRM_10565_full and
> Patchwork_21004_full:
> 
> New IGT tests (1)
> 
>   • igt@i915_selftest@live@guc:
>       □ Statuses : 6 pass(s)
>       □ Exec time: [0.46, 4.86] s
> 
> Known issues
> 
> Here are the changes found in Patchwork_21004_full that come from known issues:
> 
> IGT changes
> 
> Issues hit
> 
>   • igt@gem_ctx_persistence@smoketest:
> 
>       □ shard-snb: NOTRUN -> SKIP ([fdo#109271] / [i915#1099]) +1 similar issue
>   • igt@gem_exec_fair@basic-none-vip@rcs0:
> 
>       □ shard-kbl: PASS -> FAIL ([i915#2842])
>   • igt@gem_exec_fair@basic-none@vcs1:
> 
>       □ shard-iclb: NOTRUN -> FAIL ([i915#2842])
>   • igt@gem_exec_fair@basic-pace-share@rcs0:
> 
>       □ shard-tglb: PASS -> FAIL ([i915#2842]) +1 similar issue
>   • igt@gem_exec_flush@basic-batch-kernel-default-cmd:
> 
>       □ shard-snb: NOTRUN -> SKIP ([fdo#109271]) +331 similar issues
>   • igt@gem_exec_whisper@basic-contexts-forked-all:
> 
>       □ shard-glk: PASS -> DMESG-WARN ([i915#118] / [i915#95]) +1 similar issue
>   • igt@gem_render_copy@linear-to-vebox-y-tiled:
> 
>       □ shard-glk: NOTRUN -> SKIP ([fdo#109271]) +3 similar issues
>   • igt@gem_softpin@noreloc-s3:
> 
>       □ shard-apl: PASS -> DMESG-WARN ([i915#180]) +1 similar issue
>   • igt@gem_userptr_blits@dmabuf-unsync:
> 
>       □ shard-tglb: NOTRUN -> SKIP ([i915#3297])
> 
>       □ shard-iclb: NOTRUN -> SKIP ([i915#3297])
> 
>   • igt@gem_userptr_blits@input-checking:
> 
>       □ shard-snb: NOTRUN -> DMESG-WARN ([i915#3002])
>   • igt@gen9_exec_parse@allowed-single:
> 
>       □ shard-skl: PASS -> DMESG-WARN ([i915#1436] / [i915#716])
>   • igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
> 
>       □ shard-iclb: NOTRUN -> SKIP ([fdo#110723])
>   • igt@kms_big_fb@yf-tiled-addfb-size-overflow:
> 
>       □ shard-tglb: NOTRUN -> SKIP ([fdo#111615]) +1 similar issue
>   • igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
> 
>       □ shard-apl: NOTRUN -> SKIP ([fdo#109271] / [i915#3777]) +3 similar
>         issues
>   • igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
> 
>       □ shard-skl: NOTRUN -> FAIL ([i915#3722])
>   • igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
> 
>       □ shard-skl: NOTRUN -> SKIP ([fdo#109271] / [i915#3886])
>   • igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
> 
>       □ shard-apl: NOTRUN -> SKIP ([fdo#109271] / [i915#3886]) +11 similar
>         issues
>   • igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
> 
>       □ shard-glk: NOTRUN -> SKIP ([fdo#109271] / [i915#3886])
>   • igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:
> 
>       □ shard-kbl: NOTRUN -> SKIP ([fdo#109271] / [i915#3886])
>   • igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_mc_ccs:
> 
>       □ shard-tglb: NOTRUN -> SKIP ([i915#3689]) +2 similar issues
>   • igt@kms_chamelium@vga-hpd:
> 
>       □ shard-apl: NOTRUN -> SKIP ([fdo#109271] / [fdo#111827]) +23 similar
>         issues
>   • igt@kms_chamelium@vga-hpd-fast:
> 
>       □ shard-tglb: NOTRUN -> SKIP ([fdo#109284] / [fdo#111827]) +2 similar
>         issues
>   • igt@kms_chamelium@vga-hpd-for-each-pipe:
> 
>       □ shard-kbl: NOTRUN -> SKIP ([fdo#109271] / [fdo#111827]) +3 similar
>         issues
>   • igt@kms_color@pipe-b-ctm-0-75:
> 
>       □ shard-skl: PASS -> DMESG-WARN ([i915#1982])
>   • igt@kms_color_chamelium@pipe-b-gamma:
> 
>       □ shard-glk: NOTRUN -> SKIP ([fdo#109271] / [fdo#111827])
>   • igt@kms_color_chamelium@pipe-c-ctm-max:
> 
>       □ shard-iclb: NOTRUN -> SKIP ([fdo#109284] / [fdo#111827])
>   • igt@kms_color_chamelium@pipe-d-ctm-0-25:
> 
>       □ shard-skl: NOTRUN -> SKIP ([fdo#109271] / [fdo#111827]) +3 similar
>         issues
>   • igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:
> 
>       □ shard-snb: NOTRUN -> SKIP ([fdo#109271] / [fdo#111827]) +12 similar
>         issues
>   • igt@kms_content_protection@srm:
> 
>       □ shard-apl: NOTRUN -> TIMEOUT ([i915#1319])
>   • igt@kms_cursor_crc@pipe-a-cursor-32x10-random:
> 
>       □ shard-tglb: NOTRUN -> SKIP ([i915#3359])
>   • igt@kms_cursor_crc@pipe-a-cursor-max-size-sliding:
> 
>       □ shard-iclb: NOTRUN -> SKIP ([fdo#109278]) +3 similar issues
>   • igt@kms_cursor_crc@pipe-c-cursor-32x32-rapid-movement:
> 
>       □ shard-tglb: NOTRUN -> SKIP ([i915#3319])
>   • igt@kms_cursor_crc@pipe-d-cursor-suspend:
> 
>       □ shard-kbl: NOTRUN -> SKIP ([fdo#109271]) +40 similar issues
>   • igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
> 
>       □ shard-iclb: NOTRUN -> SKIP ([fdo#109274] / [fdo#109278])
>   • igt@kms_cursor_legacy@pipe-d-single-bo:
> 
>       □ shard-skl: NOTRUN -> SKIP ([fdo#109271] / [i915#533])
>   • igt@kms_cursor_legacy@pipe-d-torture-bo:
> 
>       □ shard-kbl: NOTRUN -> SKIP ([fdo#109271] / [i915#533])
>   • igt@kms_fbcon_fbt@psr-suspend:
> 
>       □ shard-tglb: PASS -> INCOMPLETE ([i915#2411] / [i915#456])
>   • igt@kms_flip@flip-vs-expired-vblank@a-edp1:
> 
>       □ shard-skl: PASS -> FAIL ([i915#79])
>   • igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
> 
>       □ shard-apl: NOTRUN -> SKIP ([fdo#109271] / [i915#2672])
>   • igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move:
> 
>       □ shard-iclb: NOTRUN -> SKIP ([fdo#109280]) +4 similar issues
>   • igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-pwrite:
> 
>       □ shard-tglb: NOTRUN -> SKIP ([fdo#111825]) +6 similar issues
>   • igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:
> 
>       □ shard-skl: NOTRUN -> SKIP ([fdo#109271]) +44 similar issues
>   • igt@kms_hdr@static-toggle:
> 
>       □ shard-tglb: NOTRUN -> SKIP ([i915#1187])
>   • igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
> 
>       □ shard-apl: NOTRUN -> SKIP ([fdo#109271] / [i915#533])
>   • igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
> 
>       □ shard-kbl: PASS -> DMESG-WARN ([i915#180]) +5 similar issues
>   • igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
> 
>       □ shard-kbl: NOTRUN -> FAIL ([fdo#108145] / [i915#265])
>   • igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
> 
>       □ shard-apl: NOTRUN -> FAIL ([fdo#108145] / [i915#265]) +2 similar issues
>   • igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
> 
>       □ shard-skl: PASS -> FAIL ([fdo#108145] / [i915#265])
>   • igt@kms_plane_lowres@pipe-b-tiling-x:
> 
>       □ shard-iclb: NOTRUN -> SKIP ([i915#3536])
>   • igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
> 
>       □ shard-kbl: NOTRUN -> SKIP ([fdo#109271] / [i915#658]) +1 similar issue
>   • igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
> 
>       □ shard-apl: NOTRUN -> SKIP ([fdo#109271] / [i915#658]) +4 similar issues
>   • igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
> 
>       □ shard-tglb: NOTRUN -> SKIP ([i915#2920]) +1 similar issue
> 
>       □ shard-iclb: NOTRUN -> SKIP ([i915#658])
> 
>   • igt@kms_psr@psr2_primary_blt:
> 
>       □ shard-iclb: PASS -> SKIP ([fdo#109441])
>   • igt@kms_vblank@pipe-a-ts-continuation-suspend:
> 
>       □ shard-skl: PASS -> INCOMPLETE ([i915#198])
>   • igt@kms_writeback@writeback-fb-id:
> 
>       □ shard-apl: NOTRUN -> SKIP ([fdo#109271] / [i915#2437])
>   • igt@kms_writeback@writeback-invalid-parameters:
> 
>       □ shard-kbl: NOTRUN -> SKIP ([fdo#109271] / [i915#2437])
>   • igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
> 
>       □ shard-apl: NOTRUN -> SKIP ([fdo#109271]) +299 similar issues
>   • igt@sysfs_clients@fair-0:
> 
>       □ shard-kbl: NOTRUN -> SKIP ([fdo#109271] / [i915#2994])
>   • igt@sysfs_clients@pidname:
> 
>       □ shard-apl: NOTRUN -> SKIP ([fdo#109271] / [i915#2994]) +2 similar
>         issues
>   • igt@sysfs_clients@split-50:
> 
>       □ shard-skl: NOTRUN -> SKIP ([fdo#109271] / [i915#2994])
> 
> Possible fixes
> 
>   • igt@fbdev@nullptr:
> 
>       □ {shard-rkl}: SKIP ([i915#2582]) -> PASS
>   • igt@feature_discovery@psr1:
> 
>       □ {shard-rkl}: SKIP ([i915#658]) -> PASS
>   • igt@gem_eio@reset-stress:
> 
>       □ {shard-rkl}: FAIL ([i915#3115]) -> PASS
>   • igt@gem_exec_fair@basic-none-solo@rcs0:
> 
>       □ shard-kbl: FAIL ([i915#2842]) -> PASS +1 similar issue
>   • igt@gem_exec_fair@basic-pace-solo@rcs0:
> 
>       □ shard-glk: FAIL ([i915#2842]) -> PASS
>   • igt@gem_exec_fair@basic-pace@bcs0:
> 
>       □ shard-tglb: FAIL ([i915#2842]) -> PASS
>   • igt@gem_exec_fair@basic-pace@rcs0:
> 
>       □ shard-kbl: SKIP ([fdo#109271]) -> PASS +1 similar issue
>   • igt@gem_workarounds@suspend-resume:
> 
>       □ shard-tglb: INCOMPLETE ([i915#456]) -> PASS
>   • igt@i915_pm_backlight@fade_with_suspend:
> 
>       □ {shard-rkl}: SKIP ([i915#3012]) -> PASS +1 similar issue
>   • igt@i915_pm_rpm@gem-pread:
> 
>       □ {shard-rkl}: SKIP ([fdo#109308]) -> PASS
>   • igt@i915_pm_rps@min-max-config-idle:
> 
>       □ {shard-rkl}: FAIL ([i915#4016]) -> PASS
>   • igt@i915_pm_rps@reset:
> 
>       □ {shard-rkl}: FAIL -> PASS
>   • igt@kms_atomic@test-only:
> 
>       □ {shard-rkl}: SKIP ([i915#1845]) -> PASS +31 similar issues
>   • igt@kms_big_fb@linear-32bpp-rotate-180:
> 
>       □ shard-glk: DMESG-WARN ([i915#118] / [i915#95]) -> PASS
>   • igt@kms_big_fb@y-tiled-32bpp-rotate-0:
> 
>       □ {shard-rkl}: SKIP ([i915#3638]) -> PASS +3 similar issues
>   • igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180:
> 
>       □ {shard-rkl}: SKIP ([i915#3721]) -> PASS +5 similar issues
>   • igt@kms_color@pipe-a-ctm-0-25:
> 
>       □ shard-skl: DMESG-WARN ([i915#1982]) -> PASS
>   • igt@kms_color@pipe-b-ctm-0-25:
> 
>       □ {shard-rkl}: SKIP ([i915#1149] / [i915#1849] / [i915#4070]) -> PASS +1
>         similar issue
>   • igt@kms_cursor_crc@pipe-b-cursor-256x85-random:
> 
>       □ {shard-rkl}: SKIP ([fdo#112022] / [i915#4070]) -> PASS +12 similar
>         issues
>   • igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge:
> 
>       □ {shard-rkl}: SKIP ([i915#1849] / [i915#4070]) -> PASS +6 similar issues
>   • igt@kms_cursor_legacy@flip-vs-cursor-legacy:
> 
>       □ {shard-rkl}: SKIP ([fdo#111825] / [i915#4070]) -> PASS +2 similar
>         issues
>   • igt@kms_dp_aux_dev:
> 
>       □ {shard-rkl}: SKIP ([i915#1257]) -> PASS
>   • igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled:
> 
>       □ {shard-rkl}: SKIP ([fdo#111314]) -> PASS +7 similar issues
>   • igt@kms_fbcon_fbt@psr-suspend:
> 
>       □ {shard-rkl}: SKIP ([fdo#110189] / [i915#3955]) -> PASS
>   • igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
> 
>       □ shard-skl: FAIL ([i915#79]) -> PASS +1 similar issue
>   • igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1:
> 
>       □ shard-kbl: FAIL ([i915#79]) -> PASS
>   • igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1:
> 
>       □ shard-glk: FAIL ([i915#79]) -> PASS +2 similar issues
>   • igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
> 
>       □ shard-kbl: DMESG-WARN ([i915#180]) -> PASS +1 similar issue
>   • igt@kms_flip@flip-vs-suspend@a-dp1:
> 
>       □ shard-apl: DMESG-WARN ([i915#180]) -> PASS +1 similar issue
>   • igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-wc:
> 
>       □ {shard-rkl}: [SKIP][139] ([i915
> 
> SECURITY NOTE: file ~/.netrc must not be accessible by others
