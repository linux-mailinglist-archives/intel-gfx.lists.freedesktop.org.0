Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 532B1445C8A
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Nov 2021 00:05:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29FCB739AD;
	Thu,  4 Nov 2021 23:05:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 456DB739A6
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Nov 2021 23:05:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10158"; a="292644904"
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="292644904"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 16:05:03 -0700
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="730294389"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 16:05:02 -0700
Date: Thu, 4 Nov 2021 16:05:00 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
Message-ID: <20211104230500.GM137318@mdroper-desk1.amr.corp.intel.com>
References: <20211015210041.16858-1-radhakrishna.sripada@intel.com>
 <163434888584.20371.15202835726483417163@emeril.freedesktop.org>
 <c28fbf66fd5b433eabe90f16a2557af3@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <c28fbf66fd5b433eabe90f16a2557af3@intel.com>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Update_memory_bandwidth_formulae_=28rev9=29?=
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 04, 2021 at 11:43:31AM -0700, Sripada, Radhakrishna wrote:
>    Link: [1]File-List
> 
>     
> 
>     
> 
>    From: Patchwork <patchwork@emeril.freedesktop.org>
>    Sent: Friday, October 15, 2021 6:48 PM
>    To: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>
>    Cc: intel-gfx@lists.freedesktop.org
>    Subject: ✗ Fi.CI.IGT: failure for drm/i915: Update memory bandwidth
>    formulae (rev9)
> 
>     
> 
>    Patch Details
> 
>  Series:  drm/i915: Update memory bandwidth formulae (rev9)
>  URL:     [2]https://patchwork.freedesktop.org/series/95138/
>  State:   failure
>  Details: [3]https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/index.html
> 
>       CI Bug Log - changes from CI_DRM_10744_full -> Patchwork_21357_full
> 
> Summary
> 
>    FAILURE
> 
>    Serious unknown changes coming with Patchwork_21357_full absolutely need
>    to be
>    verified manually.
> 
>    If you think the reported changes have nothing to do with the changes
>    introduced in Patchwork_21357_full, please notify your bug team to allow
>    them
>    to document this new failure mode, which will reduce false positives in
>    CI.
> 
> Possible new issues
> 
>    Here are the unknown changes that may have been introduced in
>    Patchwork_21357_full:
> 
>   IGT changes
> 
>     Possible regressions
> 
>      o igt@kms_bw@linear-tiling-6-displays-3840x2160p:
> 
>         o shard-tglb: NOTRUN -> [4]SKIP
> 
>    RK: This test looks flaky and has failed across multiple platforms. The
>    error does not indicate issue wrt bw calculations and
>           can be ignored.

Applied to drm-intel-next.  Thanks for the patch and the review.


Matt

> 
>     
> 
>    Thanks,
> 
>    Radhakrishna Sripada
> 
>     Warnings
> 
>      o igt@runner@aborted:
> 
>         o shard-iclb: ([5]FAIL, [6]FAIL, [7]FAIL, [8]FAIL, [9]FAIL, [10]FAIL)
>           ([i915#3002] / [i915#4006]) -> ([11]FAIL, [12]FAIL, [13]FAIL,
>           [14]FAIL, [15]FAIL) ([i915#3002])
> 
> Known issues
> 
>    Here are the changes found in Patchwork_21357_full that come from known
>    issues:
> 
>   IGT changes
> 
>     Issues hit
> 
>      o igt@gem_create@create-massive:
> 
>         o shard-apl: NOTRUN -> [16]DMESG-WARN ([i915#3002])
> 
>      o igt@gem_ctx_persistence@engines-hang:
> 
>         o shard-snb: NOTRUN -> [17]SKIP ([fdo#109271] / [i915#1099])
> 
>      o igt@gem_ctx_sseu@invalid-args:
> 
>         o shard-tglb: NOTRUN -> [18]SKIP ([i915#280])
> 
>      o igt@gem_exec_fair@basic-none-solo@rcs0:
> 
>         o shard-kbl: NOTRUN -> [19]FAIL ([i915#2842])
> 
>      o igt@gem_exec_fair@basic-none-vip@rcs0:
> 
>         o shard-kbl: [20]PASS -> [21]FAIL ([i915#2842])
> 
>      o igt@gem_exec_fair@basic-pace-share@rcs0:
> 
>         o shard-tglb: NOTRUN -> [22]FAIL ([i915#2842])
> 
>      o igt@gem_exec_fair@basic-pace-solo@rcs0:
> 
>         o shard-glk: [23]PASS -> [24]FAIL ([i915#2842]) +1 similar issue
> 
>      o igt@gem_exec_params@no-bsd:
> 
>         o shard-tglb: NOTRUN -> [25]SKIP ([fdo#109283])
> 
>      o igt@gem_pread@exhaustion:
> 
>         o shard-apl: NOTRUN -> [26]WARN ([i915#2658])
>         o shard-kbl: NOTRUN -> [27]WARN ([i915#2658])
> 
>      o igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
> 
>         o shard-tglb: NOTRUN -> [28]SKIP ([i915#4270])
> 
>      o igt@gem_softpin@allocator-basic-reserve:
> 
>         o shard-skl: [29]PASS -> [30]DMESG-WARN ([i915#1982])
> 
>      o igt@gem_userptr_blits@create-destroy-unsync:
> 
>         o shard-tglb: NOTRUN -> [31]SKIP ([i915#3297])
> 
>      o igt@gem_userptr_blits@input-checking:
> 
>         o shard-skl: NOTRUN -> [32]DMESG-WARN ([i915#3002])
> 
>      o igt@gen3_render_tiledy_blits:
> 
>         o shard-iclb: NOTRUN -> [33]SKIP ([fdo#109289])
> 
>      o igt@gen9_exec_parse@basic-rejected:
> 
>         o shard-tglb: NOTRUN -> [34]SKIP ([i915#2856])
> 
>      o igt@gen9_exec_parse@unaligned-access:
> 
>         o shard-iclb: NOTRUN -> [35]SKIP ([i915#2856])
> 
>      o igt@kms_big_fb@linear-32bpp-rotate-0:
> 
>         o shard-glk: [36]PASS -> [37]DMESG-WARN ([i915#118])
> 
>      o igt@kms_big_fb@x-tiled-16bpp-rotate-90:
> 
>         o shard-tglb: NOTRUN -> [38]SKIP ([fdo#111614]) +1 similar issue
> 
>      o igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:
> 
>         o shard-kbl: NOTRUN -> [39]SKIP ([fdo#109271] / [i915#3777]) +1
>           similar issue
>         o shard-apl: NOTRUN -> [40]SKIP ([fdo#109271] / [i915#3777]) +1
>           similar issue
> 
>      o igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
> 
>         o shard-skl: NOTRUN -> [41]FAIL ([i915#3722])
> 
>      o igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:
> 
>         o shard-tglb: NOTRUN -> [42]SKIP ([fdo#111615])
> 
>      o igt@kms_big_joiner@basic:
> 
>         o shard-iclb: NOTRUN -> [43]SKIP ([i915#2705])
> 
>      o igt@kms_bw@linear-tiling-4-displays-3840x2160p:
> 
>         o shard-tglb: NOTRUN -> [44]FAIL ([i915#1385])
> 
>      o igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
> 
>         o shard-iclb: NOTRUN -> [45]SKIP ([fdo#109278] / [i915#3886])
> 
>      o igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
> 
>         o shard-skl: NOTRUN -> [46]SKIP ([fdo#109271] / [i915#3886])
> 
>      o igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_ccs:
> 
>         o shard-snb: NOTRUN -> [47]SKIP ([fdo#109271]) +218 similar issues
> 
>      o igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
> 
>         o shard-kbl: NOTRUN -> [48]SKIP ([fdo#109271] / [i915#3886]) +5
>           similar issues
> 
>      o igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
> 
>         o shard-apl: NOTRUN -> [49]SKIP ([fdo#109271] / [i915#3886]) +8
>           similar issues
> 
>      o igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs:
> 
>         o shard-tglb: NOTRUN -> [50]SKIP ([i915#3689] / [i915#3886])
> 
>      o igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_gen12_mc_ccs:
> 
>         o shard-iclb: NOTRUN -> [51]SKIP ([fdo#109278]) +7 similar issues
> 
>      o igt@kms_ccs@pipe-d-crc-primary-rotation-180-yf_tiled_ccs:
> 
>         o shard-tglb: NOTRUN -> [52]SKIP ([i915#3689]) +1 similar issue
> 
>      o igt@kms_chamelium@dp-edid-change-during-suspend:
> 
>         o shard-iclb: NOTRUN -> [53]SKIP ([fdo#109284] / [fdo#111827]) +3
>           similar issues
> 
>      o igt@kms_chamelium@hdmi-audio-edid:
> 
>         o shard-kbl: NOTRUN -> [54]SKIP ([fdo#109271] / [fdo#111827]) +10
>           similar issues
> 
>      o igt@kms_chamelium@vga-hpd:
> 
>         o shard-apl: NOTRUN -> [55]SKIP ([fdo#109271] / [fdo#111827]) +19
>           similar issues
> 
>      o igt@kms_chamelium@vga-hpd-for-each-pipe:
> 
>         o shard-skl: NOTRUN -> [56]SKIP ([fdo#109271] / [fdo#111827]) +7
>           similar issues
> 
>      o igt@kms_chamelium@vga-hpd-without-ddc:
> 
>         o shard-snb: NOTRUN -> [57]SKIP ([fdo#109271] / [fdo#111827]) +11
>           similar issues
> 
>      o igt@kms_color_chamelium@pipe-d-ctm-max:
> 
>         o shard-tglb: NOTRUN -> [58]SKIP ([fdo#109284] / [fdo#111827]) +7
>           similar issues
> 
>      o igt@kms_content_protection@atomic:
> 
>         o shard-kbl: NOTRUN -> [59]TIMEOUT ([i915#1319]) +1 similar issue
>         o shard-apl: NOTRUN -> [60]TIMEOUT ([i915#1319])
> 
>      o igt@kms_content_protection@dp-mst-type-0:
> 
>         o shard-tglb: NOTRUN -> [61]SKIP ([i915#3116])
> 
>      o igt@kms_content_protection@type1:
> 
>         o shard-tglb: NOTRUN -> [62]SKIP ([fdo#111828])
> 
>      o igt@kms_cursor_crc@pipe-a-cursor-512x512-onscreen:
> 
>         o shard-tglb: NOTRUN -> [63]SKIP ([fdo#109279] / [i915#3359]) +2
>           similar issues
> 
>      o igt@kms_cursor_crc@pipe-d-cursor-max-size-sliding:
> 
>         o shard-tglb: NOTRUN -> [64]SKIP ([i915#3359]) +2 similar issues
> 
>      o igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
> 
>         o shard-glk: [65]PASS -> [66]FAIL ([i915#72])
> 
>      o igt@kms_cursor_legacy@cursora-vs-flipb-atomic:
> 
>         o shard-iclb: NOTRUN -> [67]SKIP ([fdo#109274] / [fdo#109278])
> 
>      o igt@kms_cursor_legacy@flip-vs-cursor-legacy:
> 
>         o shard-skl: [68]PASS -> [69]FAIL ([i915#2346])
> 
>      o igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2:
> 
>         o shard-glk: [70]PASS -> [71]FAIL ([i915#79]) +1 similar issue
> 
>      o igt@kms_flip@flip-vs-expired-vblank@a-dp1:
> 
>         o shard-apl: NOTRUN -> [72]FAIL ([i915#79])
> 
>      o igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
> 
>         o shard-skl: [73]PASS -> [74]FAIL ([i915#2122]) +1 similar issue
> 
>      o igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
> 
>         o shard-tglb: NOTRUN -> [75]SKIP ([i915#2587])
> 
>      o igt@kms_frontbuffer_tracking@fbc-suspend:
> 
>         o shard-kbl: [76]PASS -> [77]DMESG-WARN ([i915#180]) +2 similar
>           issues
> 
>      o igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt:
> 
>         o shard-skl: NOTRUN -> [78]SKIP ([fdo#109271]) +66 similar issues
> 
>      o igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plflip-blt:
> 
>         o shard-tglb: NOTRUN -> [79]SKIP ([fdo#111825]) +16 similar issues
> 
>      o igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render:
> 
>         o shard-iclb: NOTRUN -> [80]SKIP ([fdo#109280]) +3 similar issues
> 
>      o igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite:
> 
>         o shard-apl: NOTRUN -> [81]SKIP ([fdo#109271]) +204 similar issues
> 
>      o igt@kms_hdr@static-toggle-dpms:
> 
>         o shard-tglb: NOTRUN -> [82]SKIP ([i915#1187])
> 
>      o igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
> 
>         o shard-tglb: NOTRUN -> [83]SKIP ([fdo#109289])
> 
>      o igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
> 
>         o shard-apl: [84]PASS -> [85]DMESG-WARN ([i915#180]) +1 similar issue
> 
>      o igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
> 
>         o shard-tglb: [86]PASS -> [87]INCOMPLETE ([i915#456])
> 
>      o igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
> 
>         o shard-apl: NOTRUN -> [88]FAIL ([fdo#108145] / [i915#265]) +3
>           similar issues
> 
>      o igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
> 
>         o shard-kbl: NOTRUN -> [89]FAIL ([fdo#108145] / [i915#265])
> 
>      o igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
> 
>         o shard-skl: NOTRUN -> [90]FAIL ([fdo#108145] / [i915#265])
> 
>      o igt@kms_plane_lowres@pipe-b-tiling-y:
> 
>         o shard-tglb: NOTRUN -> [91]SKIP ([i915#3536])
> 
>      o igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
> 
>         o shard-tglb: NOTRUN -> [92]SKIP ([i915#2920]) +1 similar issue
> 
>      o igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:
> 
>         o shard-kbl: NOTRUN -> [93]SKIP ([fdo#109271] / [i915#658]) +2
>           similar issues
> 
>      o igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:
> 
>         o shard-skl: NOTRUN -> [94]SKIP ([fdo#109271] / [i915#658])
> 
>      o igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
> 
>         o shard-apl: NOTRUN -> [95]SKIP ([fdo#109271] / [i915#658]) +1
>           similar issue
> 
>      o igt@kms_psr@psr2_cursor_blt:
> 
>         o shard-tglb: NOTRUN -> [96]FAIL ([i915#132] / [i915#3467])
> 
>      o igt@kms_psr@psr2_cursor_mmap_cpu:
> 
>         o shard-iclb: NOTRUN -> [97]SKIP ([fdo#109441])
> 
>      o igt@kms_setmode@basic:
> 
>         o shard-snb: NOTRUN -> [98]FAIL ([i915#31])
> 
>      o igt@kms_vblank@pipe-d-wait-idle:
> 
>         o shard-kbl: NOTRUN -> [99]SKIP ([fdo#109271] / [i915#533]) +1
>           similar issue
>         o shard-apl: NOTRUN -> [100]SKIP ([fdo#109271] / [i915#533]) +1
>           similar issue
> 
>      o igt@kms_writeback@writeback-check-output:
> 
>         o shard-iclb: NOTRUN -> [101]SKIP ([i915#2437])
> 
>      o igt@kms_writeback@writeback-fb-id:
> 
>         o shard-apl: NOTRUN -> [102]SKIP ([fdo#109271] / [i915#2437]) +1
>           similar issue
> 
>      o igt@nouveau_crc@ctx-flip-threshold-reset-after-capture:
> 
>         o shard-tglb: NOTRUN -> [103]SKIP ([i915#2530])
> 
>      o igt@prime_nv_api@i915_nv_import_twice_check_flink_name:
> 
>         o shard-tglb: NOTRUN -> [104]SKIP ([fdo#109291]) +1 similar issue
> 
>      o igt@prime_nv_pcopy@test2:
> 
>         o shard-kbl: NOTRUN -> [105]SKIP ([fdo#109271]) +113 similar issues
> 
>      o igt@prime_nv_pcopy@test3_3:
> 
>         o shard-iclb: NOTRUN -> [106]SKIP ([fdo#109291])
> 
>      o igt@sysfs_clients@fair-7:
> 
>         o shard-tglb: NOTRUN -> [107]SKIP ([i915#2994])
> 
>      o igt@sysfs_clients@pidname:
> 
>         o shard-apl: NOTRUN -> [108]SKIP ([fdo#109271] / [i915#2994]) +3
>           similar issues
> 
>      o igt@sysfs_clients@split-25:
> 
>         o shard-kbl: NOTRUN -> [109]SKIP ([fdo#109271] / [i915#2994])
> 
>     Possible fixes
> 
>      o igt@gem_ctx_isolation@preservation-s3@bcs0:
> 
>         o shard-tglb: [110]INCOMPLETE ([i915#456]) -> [111]PASS
>         o shard-kbl: [112]DMESG-WARN ([i915#180]) -> [113]PASS +6 similar
>           issues
> 
>      o igt@gem_ctx_persistence@engines-hostile@vecs0:
> 
>         o shard-kbl: [114]FAIL ([i915#2410]) -> [115]PASS
> 
>      o igt@gem_exec_fair@basic-pace@vecs0:
> 
>         o shard-glk: [116]FAIL ([i915#2842]) -> [117]PASS
>         o shard-iclb: [118]FAIL ([i915#2842]) -> [119]PASS
> 
>      o igt@gem_exec_fair@basic-throttle@rcs0:
> 
>         o shard-iclb: [120]FAIL ([i915#2849]) -> [121]PASS
> 
>      o igt@i915_pm_rpm@system-suspend-modeset:
> 
>         o shard-tglb: [122]INCOMPLETE ([i915#2411] / [i915#456]) -> [123]PASS
>           +1 similar issue
> 
>      o igt@i915_selftest@live@hangcheck:
> 
>         o shard-iclb: [124]INCOMPLETE ([i915#3965]) -> [125]PASS
> 
>      o igt@i915_suspend@debugfs-reader:
> 
>         o shard-apl: [126]DMESG-WARN ([i915#180]) -> [127]PASS +1 similar
>           issue
> 
>      o igt@kms_cursor_crc@pipe-a-cursor-suspend:
> 
>         o shard-skl: [128]INCOMPLETE ([i915#2828] / [i915#300]) -> [129]PASS
> 
>      o igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:
> 
>         o shard-glk: [130]FAIL ([i915#79]) -> [131]PASS
> 
>      o igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
> 
>         o shard-iclb: [132]SKIP ([i915#3701]) -> [133]PASS
> 
>      o igt@kms_hdr@bpc-switch:
> 
>         o shard-skl: [134]FAIL ([i915#1188]) -> [135]PASS
> 
>      o igt@kms_plane@plane-position-covered@pipe-a-planes:
> 
>         o shard-tglb: [136]INCOMPLETE -> [137]PASS
> 
>      o igt@kms_psr@psr2_cursor_plane_onoff:
> 
>         o shard-iclb: [138]SKIP ([fdo#109441]) -> [139]PASS
> 
>      o igt@perf@polling-parameterized:
> 
>         o shard-iclb: [140]FAIL ([i915#1542]) -> [PASS][138]
> 
> References
> 
>    Visible links
>    1. file:///tmp/cid:filelist.xml@01D7D171.2F8E17F0
>    2. https://patchwork.freedesktop.org/series/95138/
>    3. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/index.html
>    4. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-tglb5/igt@kms_bw@linear-tiling-6-displays-3840x2160p.html
>    5. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-iclb3/igt@runner@aborted.html
>    6. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-iclb4/igt@runner@aborted.html
>    7. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-iclb6/igt@runner@aborted.html
>    8. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-iclb4/igt@runner@aborted.html
>    9. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-iclb8/igt@runner@aborted.html
>   10. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-iclb5/igt@runner@aborted.html
>   11. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-iclb1/igt@runner@aborted.html
>   12. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-iclb4/igt@runner@aborted.html
>   13. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-iclb5/igt@runner@aborted.html
>   14. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-iclb5/igt@runner@aborted.html
>   15. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-iclb7/igt@runner@aborted.html
>   16. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-apl6/igt@gem_create@create-massive.html
>   17. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-snb5/igt@gem_ctx_persistence@engines-hang.html
>   18. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-tglb8/igt@gem_ctx_sseu@invalid-args.html
>   19. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-kbl6/igt@gem_exec_fair@basic-none-solo@rcs0.html
>   20. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-kbl1/igt@gem_exec_fair@basic-none-vip@rcs0.html
>   21. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-kbl4/igt@gem_exec_fair@basic-none-vip@rcs0.html
>   22. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html
>   23. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-glk1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>   24. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-glk1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>   25. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-tglb3/igt@gem_exec_params@no-bsd.html
>   26. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-apl1/igt@gem_pread@exhaustion.html
>   27. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-kbl6/igt@gem_pread@exhaustion.html
>   28. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-tglb1/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html
>   29. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-skl7/igt@gem_softpin@allocator-basic-reserve.html
>   30. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-skl8/igt@gem_softpin@allocator-basic-reserve.html
>   31. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-tglb1/igt@gem_userptr_blits@create-destroy-unsync.html
>   32. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-skl10/igt@gem_userptr_blits@input-checking.html
>   33. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-iclb8/igt@gen3_render_tiledy_blits.html
>   34. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-tglb3/igt@gen9_exec_parse@basic-rejected.html
>   35. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-iclb8/igt@gen9_exec_parse@unaligned-access.html
>   36. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-glk7/igt@kms_big_fb@linear-32bpp-rotate-0.html
>   37. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-glk5/igt@kms_big_fb@linear-32bpp-rotate-0.html
>   38. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-tglb2/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html
>   39. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-kbl6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
>   40. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-apl1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
>   41. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-skl10/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
>   42. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-tglb8/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
>   43. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-iclb8/igt@kms_big_joiner@basic.html
>   44. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-tglb8/igt@kms_bw@linear-tiling-4-displays-3840x2160p.html
>   45. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-iclb8/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html
>   46. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-skl1/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html
>   47. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-snb5/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_ccs.html
>   48. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-kbl7/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html
>   49. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-apl3/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
>   50. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-tglb3/igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs.html
>   51. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-iclb8/igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_gen12_mc_ccs.html
>   52. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-tglb1/igt@kms_ccs@pipe-d-crc-primary-rotation-180-yf_tiled_ccs.html
>   53. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-iclb8/igt@kms_chamelium@dp-edid-change-during-suspend.html
>   54. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-kbl3/igt@kms_chamelium@hdmi-audio-edid.html
>   55. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-apl2/igt@kms_chamelium@vga-hpd.html
>   56. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-skl7/igt@kms_chamelium@vga-hpd-for-each-pipe.html
>   57. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-snb5/igt@kms_chamelium@vga-hpd-without-ddc.html
>   58. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-tglb1/igt@kms_color_chamelium@pipe-d-ctm-max.html
>   59. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-kbl6/igt@kms_content_protection@atomic.html
>   60. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-apl1/igt@kms_content_protection@atomic.html
>   61. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-tglb8/igt@kms_content_protection@dp-mst-type-0.html
>   62. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-tglb8/igt@kms_content_protection@type1.html
>   63. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-tglb8/igt@kms_cursor_crc@pipe-a-cursor-512x512-onscreen.html
>   64. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-tglb3/igt@kms_cursor_crc@pipe-d-cursor-max-size-sliding.html
>   65. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
>   66. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
>   67. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-iclb8/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html
>   68. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
>   69. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
>   70. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html
>   71. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html
>   72. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-apl2/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html
>   73. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
>   74. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
>   75. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-tglb8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html
>   76. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
>   77. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
>   78. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-skl7/igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt.html
>   79. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plflip-blt.html
>   80. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-iclb8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render.html
>   81. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-apl3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite.html
>   82. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-tglb2/igt@kms_hdr@static-toggle-dpms.html
>   83. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-tglb8/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html
>   84. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
>   85. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
>   86. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-tglb3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
>   87. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-tglb7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
>   88. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
>   89. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-kbl6/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html
>   90. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
>   91. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-tglb3/igt@kms_plane_lowres@pipe-b-tiling-y.html
>   92. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-tglb8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html
>   93. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-kbl6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html
>   94. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-skl10/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html
>   95. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-apl8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html
>   96. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-tglb8/igt@kms_psr@psr2_cursor_blt.html
>   97. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-iclb8/igt@kms_psr@psr2_cursor_mmap_cpu.html
>   98. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-snb7/igt@kms_setmode@basic.html
>   99. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-kbl6/igt@kms_vblank@pipe-d-wait-idle.html
>  100. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-apl1/igt@kms_vblank@pipe-d-wait-idle.html
>  101. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-iclb8/igt@kms_writeback@writeback-check-output.html
>  102. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-apl3/igt@kms_writeback@writeback-fb-id.html
>  103. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-tglb8/igt@nouveau_crc@ctx-flip-threshold-reset-after-capture.html
>  104. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-tglb1/igt@prime_nv_api@i915_nv_import_twice_check_flink_name.html
>  105. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-kbl6/igt@prime_nv_pcopy@test2.html
>  106. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-iclb8/igt@prime_nv_pcopy@test3_3.html
>  107. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-tglb8/igt@sysfs_clients@fair-7.html
>  108. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-apl8/igt@sysfs_clients@pidname.html
>  109. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-kbl6/igt@sysfs_clients@split-25.html
>  110. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-tglb7/igt@gem_ctx_isolation@preservation-s3@bcs0.html
>  111. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-tglb3/igt@gem_ctx_isolation@preservation-s3@bcs0.html
>  112. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@bcs0.html
>  113. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@bcs0.html
>  114. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-kbl3/igt@gem_ctx_persistence@engines-hostile@vecs0.html
>  115. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-kbl7/igt@gem_ctx_persistence@engines-hostile@vecs0.html
>  116. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-glk4/igt@gem_exec_fair@basic-pace@vecs0.html
>  117. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-glk6/igt@gem_exec_fair@basic-pace@vecs0.html
>  118. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-iclb1/igt@gem_exec_fair@basic-pace@vecs0.html
>  119. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-iclb8/igt@gem_exec_fair@basic-pace@vecs0.html
>  120. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html
>  121. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html
>  122. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-tglb7/igt@i915_pm_rpm@system-suspend-modeset.html
>  123. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-tglb5/igt@i915_pm_rpm@system-suspend-modeset.html
>  124. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-iclb6/igt@i915_selftest@live@hangcheck.html
>  125. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-iclb8/igt@i915_selftest@live@hangcheck.html
>  126. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-apl1/igt@i915_suspend@debugfs-reader.html
>  127. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-apl7/igt@i915_suspend@debugfs-reader.html
>  128. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>  129. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>  130. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html
>  131. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html
>  132. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html
>  133. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html
>  134. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-skl5/igt@kms_hdr@bpc-switch.html
>  135. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-skl4/igt@kms_hdr@bpc-switch.html
>  136. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-tglb8/igt@kms_plane@plane-position-covered@pipe-a-planes.html
>  137. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-tglb8/igt@kms_plane@plane-position-covered@pipe-a-planes.html
>  138. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10744/shard-iclb1/igt@kms_psr@psr2_cursor_plane_onoff.html
>  139. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21357/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
>  140. https://i/

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
