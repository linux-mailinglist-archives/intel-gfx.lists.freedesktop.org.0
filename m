Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D48E39736A
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jun 2021 14:38:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65D4D6EA42;
	Tue,  1 Jun 2021 12:38:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 197956EA34
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Jun 2021 12:38:29 +0000 (UTC)
IronPort-SDR: 75fAiIHD3JNx0/favjn9rC7bmqIE2/KJvkx3IsFzB4EoHdkLNLCQaWdZjxdpcy3Atda0tNiPqz
 TQ2Hz+P0E1Uw==
X-IronPort-AV: E=McAfee;i="6200,9189,10001"; a="289157644"
X-IronPort-AV: E=Sophos;i="5.83,239,1616482800"; d="scan'208";a="289157644"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2021 05:38:26 -0700
IronPort-SDR: FoUdsm4AoDBeB6D6kAqEsu4o5OdM16+C/yx6sNWS7T4CCLobbVEIODxhSIVoJ2ombDubCAW93H
 PnnHLTXxa3WA==
X-IronPort-AV: E=Sophos;i="5.83,239,1616482800"; d="scan'208";a="445318759"
Received: from slockwoo-mobl.ger.corp.intel.com (HELO zkempczy-mobl2)
 ([10.213.8.163])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2021 05:38:24 -0700
Date: Tue, 1 Jun 2021 14:38:21 +0200
From: Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20210601123821.GA94276@zkempczy-mobl2>
References: <20210601082847.78389-1-zbigniew.kempczynski@intel.com>
 <162254741446.19249.11657476310784023648@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <162254741446.19249.11657476310784023648@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_relocation_exceptions_for_two_other_platforms_=28r?=
 =?utf-8?q?ev3=29?=
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

On Tue, Jun 01, 2021 at 11:36:54AM +0000, Patchwork wrote:
>    Patch Details
> 
>    Series:  drm/i915: Add relocation exceptions for two other platforms (rev3)  
>    URL:     https://patchwork.freedesktop.org/series/89594/                     
>    State:   failure                                                             
>    Details: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20244/index.html 
> 
>       CI Bug Log - changes from CI_DRM_10153_full -> Patchwork_20244_full
> 
> Summary
> 
>    FAILURE
> 
>    Serious unknown changes coming with Patchwork_20244_full absolutely need
>    to be
>    verified manually.
> 
>    If you think the reported changes have nothing to do with the changes
>    introduced in Patchwork_20244_full, please notify your bug team to allow
>    them
>    to document this new failure mode, which will reduce false positives in
>    CI.
> 
> Possible new issues
> 
>    Here are the unknown changes that may have been introduced in
>    Patchwork_20244_full:
> 
>   IGT changes
> 
>     Possible regressions
> 
>      * igt@kms_plane_lowres@pipe-a-tiling-y:
>           * shard-iclb: NOTRUN -> SKIP
> 
>   Piglit changes
> 
>     Possible regressions
> 
>      * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 1
>        8 128 4 (NEW):
>           * pig-glk-j5005: NOTRUN -> INCOMPLETE +1 similar issue

I don't think change is related to regression mentiontioned above.

--
Zbigniew



> 
> New tests
> 
>    New tests have been introduced between CI_DRM_10153_full and
>    Patchwork_20244_full:
> 
>   New Piglit tests (2)
> 
>      * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 1
>        8 128 4:
> 
>           * Statuses : 1 incomplete(s)
>           * Exec time: [0.0] s
>      * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 1
>        8 128 7:
> 
>           * Statuses : 1 incomplete(s)
>           * Exec time: [0.0] s
> 
> Known issues
> 
>    Here are the changes found in Patchwork_20244_full that come from known
>    issues:
> 
>   IGT changes
> 
>     Issues hit
> 
>      * igt@gem_create@create-clear:
> 
>           * shard-glk: PASS -> FAIL ([i915#3160])
>      * igt@gem_ctx_persistence@engines-hostile@rcs0:
> 
>           * shard-glk: PASS -> FAIL ([i915#2410])
>      * igt@gem_ctx_persistence@legacy-engines-mixed:
> 
>           * shard-snb: NOTRUN -> SKIP ([fdo#109271] / [i915#1099]) +8 similar
>             issues
>      * igt@gem_ctx_persistence@many-contexts:
> 
>           * shard-tglb: PASS -> FAIL ([i915#2410])
>      * igt@gem_eio@unwedge-stress:
> 
>           * shard-snb: NOTRUN -> FAIL ([i915#3354])
>      * igt@gem_exec_fair@basic-deadline:
> 
>           * shard-apl: NOTRUN -> FAIL ([i915#2846])
>      * igt@gem_exec_fair@basic-throttle@rcs0:
> 
>           * shard-glk: PASS -> FAIL ([i915#2842])
>      * igt@gem_exec_params@secure-non-master:
> 
>           * shard-iclb: NOTRUN -> SKIP ([fdo#112283])
>      * igt@gem_media_vme:
> 
>           * shard-skl: NOTRUN -> SKIP ([fdo#109271]) +37 similar issues
>      * igt@gem_mmap_gtt@cpuset-basic-small-copy:
> 
>           * shard-skl: PASS -> INCOMPLETE ([i915#198] / [i915#3468])
>      * igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:
> 
>           * shard-apl: NOTRUN -> INCOMPLETE ([i915#3468]) +1 similar issue
>      * igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
> 
>           * shard-tglb: PASS -> INCOMPLETE ([i915#3468])
>      * igt@gem_mmap_gtt@fault-concurrent-y:
> 
>           * shard-snb: NOTRUN -> INCOMPLETE ([i915#3468]) +1 similar issue
>      * igt@gem_pread@exhaustion:
> 
>           * shard-snb: NOTRUN -> WARN ([i915#2658])
> 
>           * shard-skl: NOTRUN -> WARN ([i915#2658])
> 
>      * igt@gem_userptr_blits@dmabuf-sync:
> 
>           * shard-apl: NOTRUN -> SKIP ([fdo#109271] / [i915#3323])
>      * igt@gem_userptr_blits@input-checking:
> 
>           * shard-snb: NOTRUN -> DMESG-WARN ([i915#3002])
>      * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
> 
>           * shard-iclb: NOTRUN -> SKIP ([i915#3297])
>      * igt@gen9_exec_parse@batch-zero-length:
> 
>           * shard-iclb: NOTRUN -> SKIP ([fdo#112306])
>      * igt@gen9_exec_parse@bb-large:
> 
>           * shard-apl: NOTRUN -> FAIL ([i915#3296])
>      * igt@i915_pm_rpm@modeset-lpsp-stress:
> 
>           * shard-apl: NOTRUN -> SKIP ([fdo#109271]) +181 similar issues
>      * igt@i915_suspend@forcewake:
> 
>           * shard-kbl: PASS -> DMESG-WARN ([i915#180]) +3 similar issues
>      * igt@kms_big_fb@linear-16bpp-rotate-90:
> 
>           * shard-iclb: NOTRUN -> SKIP ([fdo#110725] / [fdo#111614])
>      * igt@kms_color@pipe-b-ctm-0-5:
> 
>           * shard-skl: PASS -> DMESG-WARN ([i915#1982])
>      * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
> 
>           * shard-snb: NOTRUN -> SKIP ([fdo#109271] / [fdo#111827]) +33
>             similar issues
> 
>           * shard-kbl: NOTRUN -> SKIP ([fdo#109271] / [fdo#111827])
> 
>           * shard-iclb: NOTRUN -> SKIP ([fdo#109284] / [fdo#111827])
> 
>      * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
> 
>           * shard-apl: NOTRUN -> SKIP ([fdo#109271] / [fdo#111827]) +15
>             similar issues
>      * igt@kms_color_chamelium@pipe-d-ctm-0-75:
> 
>           * shard-skl: NOTRUN -> SKIP ([fdo#109271] / [fdo#111827]) +2
>             similar issues
>      * igt@kms_content_protection@legacy:
> 
>           * shard-apl: NOTRUN -> TIMEOUT ([i915#1319])
>      * igt@kms_cursor_crc@pipe-b-cursor-512x170-random:
> 
>           * shard-iclb: NOTRUN -> SKIP ([fdo#109278] / [fdo#109279])
>      * igt@kms_cursor_crc@pipe-c-cursor-suspend:
> 
>           * shard-kbl: NOTRUN -> DMESG-WARN ([i915#180])
>      * igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:
> 
>           * shard-snb: NOTRUN -> SKIP ([fdo#109271]) +596 similar issues
>      * igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
> 
>           * shard-iclb: NOTRUN -> SKIP ([fdo#109274] / [fdo#109278])
>      * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
> 
>           * shard-apl: PASS -> FAIL ([i915#2346])
>      * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:
> 
>           * shard-skl: PASS -> FAIL ([i915#2346])
>      * igt@kms_fbcon_fbt@fbc-suspend:
> 
>           * shard-kbl: PASS -> INCOMPLETE ([i915#155] / [i915#180] /
>             [i915#636])
>      * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:
> 
>           * shard-iclb: NOTRUN -> SKIP ([fdo#109274])
>      * igt@kms_flip@2x-wf_vblank-ts-check-interruptible@ab-hdmi-a1-hdmi-a2:
> 
>           * shard-glk: PASS -> FAIL ([i915#2122])
>      * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
> 
>           * shard-apl: NOTRUN -> SKIP ([fdo#109271] / [i915#2642])
>      * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-msflip-blt:
> 
>           * shard-iclb: NOTRUN -> SKIP ([fdo#109280]) +3 similar issues
>      * igt@kms_hdr@bpc-switch-suspend:
> 
>           * shard-skl: PASS -> FAIL ([i915#1188])
>      * igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:
> 
>           * shard-kbl: NOTRUN -> SKIP ([fdo#109271]) +29 similar issues
>      * igt@kms_pipe_crc_basic@read-crc-pipe-d:
> 
>           * shard-kbl: NOTRUN -> SKIP ([fdo#109271] / [i915#533])
> 
>           * shard-apl: NOTRUN -> SKIP ([fdo#109271] / [i915#533]) +1 similar
>             issue
> 
>      * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
> 
>           * shard-skl: NOTRUN -> SKIP ([fdo#109271] / [i915#533])
>      * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
> 
>           * shard-skl: NOTRUN -> FAIL ([fdo#108145] / [i915#265])
>      * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
> 
>           * shard-apl: NOTRUN -> FAIL ([i915#265])
> 
>           * shard-kbl: NOTRUN -> FAIL ([i915#265])
> 
>      * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
> 
>           * shard-apl: NOTRUN -> FAIL ([fdo#108145] / [i915#265])
>      * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
> 
>           * shard-skl: PASS -> FAIL ([fdo#108145] / [i915#265])
>      * igt@kms_plane_alpha_blend@pipe-d-alpha-transparent-fb:
> 
>           * shard-iclb: NOTRUN -> SKIP ([fdo#109278]) +9 similar issues
>      * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
> 
>           * shard-skl: NOTRUN -> SKIP ([fdo#109271] / [i915#658])
>      * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
> 
>           * shard-apl: NOTRUN -> SKIP ([fdo#109271] / [i915#658]) +3 similar
>             issues
>      * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:
> 
>           * shard-iclb: NOTRUN -> SKIP ([i915#658])
> 
>           * shard-kbl: NOTRUN -> SKIP ([fdo#109271] / [i915#658])
> 
>      * igt@kms_psr@psr2_primary_mmap_cpu:
> 
>           * shard-iclb: PASS -> SKIP ([fdo#109441]) +1 similar issue
>      * igt@nouveau_crc@pipe-a-ctx-flip-skip-current-frame:
> 
>           * shard-iclb: NOTRUN -> SKIP ([i915#2530])
>      * igt@perf@per-context-mode-unprivileged:
> 
>           * shard-iclb: NOTRUN -> SKIP ([fdo#109289])
>      * igt@sysfs_clients@fair-7:
> 
>           * shard-skl: NOTRUN -> SKIP ([fdo#109271] / [i915#2994])
>      * igt@sysfs_clients@recycle:
> 
>           * shard-apl: NOTRUN -> SKIP ([fdo#109271] / [i915#2994])
>      * igt@vgem_basic@dmabuf-fence:
> 
>           * shard-glk: PASS -> DMESG-WARN ([i915#118] / [i915#95])
> 
>     Possible fixes
> 
>      * igt@gem_eio@unwedge-stress:
> 
>           * shard-skl: TIMEOUT ([i915#2369] / [i915#3063]) -> PASS
>      * igt@gem_exec_fair@basic-deadline:
> 
>           * shard-glk: FAIL ([i915#2846]) -> PASS
>      * igt@gem_exec_fair@basic-none@rcs0:
> 
>           * shard-kbl: FAIL ([i915#2842]) -> PASS +3 similar issues
> 
>           * shard-glk: FAIL ([i915#2842]) -> PASS
> 
>      * igt@gem_exec_fair@basic-pace-share@rcs0:
> 
>           * shard-tglb: FAIL ([i915#2842]) -> PASS
>      * igt@gem_exec_whisper@basic-contexts-priority:
> 
>           * shard-iclb: INCOMPLETE ([i915#1895]) -> PASS
>      * igt@gem_huc_copy@huc-copy:
> 
>           * shard-tglb: SKIP ([i915#2190]) -> PASS
>      * igt@gem_mmap_gtt@big-copy:
> 
>           * shard-skl: FAIL ([i915#307]) -> PASS
>      * igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
> 
>           * shard-apl: INCOMPLETE ([i915#3468]) -> PASS
>      * igt@kms_color@pipe-c-ctm-max:
> 
>           * shard-skl: DMESG-WARN ([i915#1982]) -> PASS
>      * igt@kms_cursor_edge_walk@pipe-a-256x256-left-edge:
> 
>           * shard-glk: DMESG-FAIL ([i915#118] / [i915#70] / [i915#95]) ->
>             PASS
>      * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
> 
>           * shard-skl: FAIL ([i915#2346]) -> PASS
>      * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
> 
>           * shard-apl: DMESG-WARN ([i915#180]) -> PASS +1 similar issue
>      * igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
> 
>           * shard-skl: FAIL ([i915#2122]) -> PASS +1 similar issue
>      * igt@kms_hdr@bpc-switch:
> 
>           * shard-skl: FAIL ([i915#1188]) -> PASS
>      * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
> 
>           * shard-kbl: DMESG-WARN ([i915#180]) -> PASS +4 similar issues
>      * igt@kms_plane@pixel-format-source-clamping@pipe-a-planes:
> 
>           * shard-skl: INCOMPLETE ([i915#1982]) -> PASS
>      * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
> 
>           * shard-skl: FAIL ([fdo#108145] / [i915#265]) -> PASS
>      * igt@kms_psr@psr2_primary_mmap_gtt:
> 
>           * shard-iclb: SKIP ([fdo#109441]) -> PASS
>      * igt@perf@polling-parameterized:
> 
>           * shard-skl: FAIL ([i915#1542]) -> PASS
>      * igt@perf@polling-small-buf:
> 
>           * shard-skl: FAIL ([i915#1722]) -> PASS
> 
>     Warnings
> 
>      * igt@gem_exec_fair@basic-none-rrul@rcs0:
> 
>           * shard-iclb: FAIL ([i915#2852]) -> FAIL ([i915#2842])
>      * igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
> 
>           * shard-snb: INCOMPLETE ([i915#2055]) -> INCOMPLETE ([i915#2055] /
>             [i915#3468])
>      * igt@i915_pm_dc@dc3co-vpb-simulation:
> 
>           * shard-iclb: SKIP ([i915#588]) -> SKIP ([i915#658])
>      * igt@i915_pm_rc6_residency@rc6-fence:
> 
>           * shard-iclb: WARN ([i915#2684]) -> WARN ([i915#1804] /
>             [i915#2684]) +1 similar issue
>      * igt@i915_selftest@live@execlists:
> 
>           * shard-tglb: DMESG-FAIL ([i915#3462]) -> INCOMPLETE ([i915#3462])
>      * igt@kms_psr2_sf@plane-move-sf-dmg-area-0:
> 
>           * shard-iclb: SKIP ([i915#658]) -> SKIP ([i915#2920])
>      * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
> 
>           * shard-iclb: SKIP ([i915#2920]) -> SKIP ([i915#658]) +1 similar
>             issue
>      * igt@runner@aborted:
> 
>           * shard-kbl: (FAIL, FAIL, FAIL, FAIL, FAIL, FAIL, [FAIL][143],
>             [FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148],
>             [FAIL][149], [FAIL][150], [FAIL][151], [FAIL][152]) ([i915#1436]
>             / [i915#180] / [i915#1814] / [i915#2722] / [i915#3002] /
>             [i915#3363] / [i915#602]) -> ([FAIL][153], [FAIL][154],
>             [FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158], [FAIL][159],
>             [FAIL][160], [FAIL][161], [FAIL][162], [FAIL][163], [FAIL][164],
>             [FAIL][165], [FAIL][166], [FAIL][167], [FAIL][168], [FAIL][169],
>             [FAIL][170]) ([i915#1436] / [i915#180] / [i915#1814] /
>             [i915#2292] / [i915#2722] / [i915#3002] / [i915#3363] /
>             [i915#92])
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
