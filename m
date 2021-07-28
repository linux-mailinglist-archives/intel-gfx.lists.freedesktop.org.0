Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B75D3D9352
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jul 2021 18:38:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E6826E44F;
	Wed, 28 Jul 2021 16:38:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16DE46E44F
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Jul 2021 16:38:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10059"; a="212428200"
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="212428200"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 09:38:18 -0700
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="417300184"
Received: from hseyedro-mobl.amr.corp.intel.com (HELO intel.com)
 ([10.213.174.18])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 09:38:17 -0700
Date: Wed, 28 Jul 2021 12:38:16 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YQGH+EriORLJZ1/H@intel.com>
References: <20210727173338.901264-1-badal.nilawar@intel.com>
 <162744900128.22807.11890040340376975221@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <162744900128.22807.11890040340376975221@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/1=5D_drm/i915=3A_dgfx_cards_need_to_wait?=
 =?utf-8?q?_on_pcode=27s_uncore_init_done?=
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

On Wed, Jul 28, 2021 at 05:10:01AM -0000, Patchwork wrote:
>    Patch Details
> 
>    Series: series starting with [1/1] drm/i915: dgfx cards need to wait on
>    pcode's uncore init done
>    URL: [1]https://patchwork.freedesktop.org/series/93075/
>    State: failure
>    Details:
>    [2]https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/index.html
> 
>       CI Bug Log - changes from CI_DRM_10405_full -> Patchwork_20720_full
> 
> Summary
> 
>    FAILURE
> 
>    Serious unknown changes coming with Patchwork_20720_full absolutely
>    need to be
>    verified manually.
> 
>    If you think the reported changes have nothing to do with the changes
>    introduced in Patchwork_20720_full, please notify your bug team to
>    allow them
>    to document this new failure mode, which will reduce false positives in
>    CI.
> 
> Possible new issues
> 
>    Here are the unknown changes that may have been introduced in
>    Patchwork_20720_full:
> 
>   IGT changes
> 
>     Possible regressions
> 
>      * igt@kms_selftest@all@damage_iter_no_damage:
>           + shard-apl: NOTRUN -> [3]INCOMPLETE

This is not related.
Well, I should have triggered a CI re-run, for cleaning this up, but I ended up
pushing it :/ Bad example, sorry yall.

But yeap, patch is merged. Thanks for the patch.

> 
>     Suppressed
> 
>    The following results come from untrusted machines, tests, or statuses.
>    They do not affect the overall result.
>      * igt@kms_busy@basic-hang:
>           + {shard-rkl}: NOTRUN -> [4]SKIP +1 similar issue
>      * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
>           + {shard-rkl}: [5]SKIP ([6]i915#1849) -> [7]DMESG-WARN
> 
> Known issues
> 
>    Here are the changes found in Patchwork_20720_full that come from known
>    issues:
> 
>   IGT changes
> 
>     Issues hit
> 
>      * igt@feature_discovery@psr2:
>           + shard-iclb: [8]PASS -> [9]SKIP ([i915#658])
>      * igt@gem_ctx_isolation@preservation-s3@bcs0:
>           + shard-kbl: [10]PASS -> [11]DMESG-WARN ([12]i915#180) +2
>             similar issues
>           + shard-apl: NOTRUN -> [13]DMESG-WARN ([14]i915#180) +3 similar
>             issues
>      * igt@gem_ctx_persistence@process:
>           + shard-snb: NOTRUN -> [15]SKIP ([16]fdo#109271 / [17]i915#1099)
>             +4 similar issues
>      * igt@gem_ctx_shared@q-in-order:
>           + shard-snb: NOTRUN -> [18]SKIP ([19]fdo#109271) +209 similar
>             issues
>      * igt@gem_exec_fair@basic-none@vecs0:
>           + shard-glk: [20]PASS -> [21]FAIL ([i915#2842] / [i915#3468])
>      * igt@gem_exec_fair@basic-pace@rcs0:
>           + shard-kbl: [22]PASS -> [23]FAIL ([i915#2851])
>      * igt@gem_exec_fair@basic-pace@vcs0:
>           + shard-iclb: [24]PASS -> [25]FAIL ([i915#2842]) +1 similar
>             issue
>      * igt@gem_exec_fair@basic-throttle@rcs0:
>           + shard-glk: [26]PASS -> [27]FAIL ([i915#2842]) +2 similar
>             issues
>      * igt@gem_exec_whisper@basic-contexts-forked-all:
>           + shard-glk: [28]PASS -> [29]DMESG-WARN ([30]i915#118 /
>             [i915#95]) +1 similar issue
>      * igt@gem_huc_copy@huc-copy:
>           + shard-apl: NOTRUN -> [31]SKIP ([32]fdo#109271 / [33]i915#2190)
>      * igt@gem_mmap_offset@clear:
>           + shard-skl: [34]PASS -> [35]FAIL ([36]i915#1888 / [i915#3160])
>      * igt@gem_pwrite@basic-exhaustion:
>           + shard-apl: NOTRUN -> [37]WARN ([i915#2658])
>      * igt@gem_userptr_blits@vma-merge:
>           + shard-snb: NOTRUN -> [38]FAIL ([i915#2724])
>      * igt@i915_pm_rpm@fences:
>           + shard-tglb: NOTRUN -> [39]SKIP ([i915#579])
>      * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>           + shard-apl: NOTRUN -> [40]SKIP ([41]fdo#109271 / [i915#3777])
>             +2 similar issues
>      * igt@kms_chamelium@hdmi-edid-change-during-suspend:
>           + shard-apl: NOTRUN -> [42]SKIP ([43]fdo#109271 /
>             [44]fdo#111827) +30 similar issues
>      * igt@kms_color@pipe-a-legacy-gamma:
>           + shard-skl: [45]PASS -> [46]DMESG-WARN ([47]i915#1982)
>      * igt@kms_color_chamelium@pipe-c-ctm-red-to-blue:
>           + shard-snb: NOTRUN -> [48]SKIP ([49]fdo#109271 /
>             [50]fdo#111827) +9 similar issues
>      * igt@kms_color_chamelium@pipe-invalid-gamma-lut-sizes:
>           + shard-skl: NOTRUN -> [51]SKIP ([52]fdo#109271 /
>             [53]fdo#111827)
>      * igt@kms_content_protection@legacy:
>           + shard-apl: NOTRUN -> [54]TIMEOUT ([55]i915#1319)
>      * igt@kms_content_protection@uevent:
>           + shard-apl: NOTRUN -> [56]FAIL ([57]i915#2105)
>      * igt@kms_cursor_crc@pipe-d-cursor-128x128-offscreen:
>           + shard-kbl: NOTRUN -> [58]SKIP ([59]fdo#109271)
>      * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
>           + shard-tglb: NOTRUN -> [60]SKIP ([61]fdo#111825)
>      * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
>           + shard-skl: [62]PASS -> [63]FAIL ([i915#79])
>      * igt@kms_flip@flip-vs-expired-vblank@b-dp1:
>           + shard-apl: NOTRUN -> [64]FAIL ([i915#79])
>      * igt@kms_flip@plain-flip-ts-check@a-edp1:
>           + shard-skl: [65]PASS -> [66]FAIL ([67]i915#2122)
>      * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
>           + shard-apl: NOTRUN -> [68]SKIP ([69]fdo#109271 / [i915#533]) +1
>             similar issue
>      * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
>           + shard-apl: NOTRUN -> [70]FAIL ([i915#265])
>      * igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:
>           + shard-apl: NOTRUN -> [71]FAIL ([72]fdo#108145 / [i915#265]) +2
>             similar issues
>      * igt@kms_plane_alpha_blend@pipe-c-coverage-vs-premult-vs-constant:
>           + shard-iclb: [73]PASS -> [74]SKIP ([75]fdo#109278)
>      * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-w
>        ith-clipping-clamping:
>           + shard-apl: NOTRUN -> [76]SKIP ([77]fdo#109271 / [i915#2733])
>      * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
>           + shard-apl: NOTRUN -> [78]SKIP ([79]fdo#109271 / [i915#658]) +7
>             similar issues
>      * igt@kms_psr@psr2_cursor_render:
>           + shard-iclb: [80]PASS -> [81]SKIP ([82]fdo#109441) +2 similar
>             issues
>      * igt@kms_writeback@writeback-invalid-parameters:
>           + shard-apl: NOTRUN -> [83]SKIP ([84]fdo#109271 / [85]i915#2437)
>      * igt@nouveau_crc@pipe-a-source-outp-inactive:
>           + shard-skl: NOTRUN -> [86]SKIP ([87]fdo#109271) +3 similar
>             issues
>      * igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
>           + shard-apl: NOTRUN -> [88]SKIP ([89]fdo#109271) +354 similar
>             issues
>      * igt@sysfs_clients@fair-1:
>           + shard-apl: NOTRUN -> [90]SKIP ([91]fdo#109271 / [i915#2994])
>             +4 similar issues
> 
>     Possible fixes
> 
>      * igt@fbdev@nullptr:
>           + {shard-rkl}: [92]SKIP ([i915#2582]) -> [93]PASS
>      * igt@gem_ctx_persistence@engines-hang@bcs0:
>           + {shard-rkl}: [94]FAIL ([95]i915#2410) -> [96]PASS
>      * igt@gem_eio@unwedge-stress:
>           + shard-iclb: [97]TIMEOUT ([98]i915#2369 / [99]i915#2481 /
>             [i915#3070]) -> [100]PASS
>      * igt@gem_exec_fair@basic-none@vecs0:
>           + shard-kbl: [101]FAIL ([i915#2842]) -> [102]PASS +1 similar
>             issue
>      * igt@gem_exec_fair@basic-pace@bcs0:
>           + shard-tglb: [103]FAIL ([i915#2842]) -> [104]PASS +2 similar
>             issues
>      * igt@gem_mmap_gtt@cpuset-medium-copy-odd:
>           + shard-iclb: [105]FAIL ([i915#307]) -> [106]PASS
>      * igt@gem_ppgtt@flink-and-close-vma-leak:
>           + shard-glk: [107]FAIL ([i915#644]) -> [108]PASS
>      * igt@gem_workarounds@suspend-resume:
>           + shard-apl: [109]DMESG-WARN ([110]i915#180) -> [111]PASS +1
>             similar issue
>      * igt@kms_big_fb@linear-32bpp-rotate-0:
>           + shard-glk: [112]DMESG-WARN ([113]i915#118 / [i915#95]) ->
>             [114]PASS
>      * igt@kms_big_fb@linear-8bpp-rotate-180:
>           + {shard-rkl}: [115]SKIP ([i915#3638]) -> [116]PASS
>      * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180:
>           + {shard-rkl}: [117]SKIP ([i915#3721]) -> [118]PASS +2 similar
>             issues
>      * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs:
>           + {shard-rkl}: [119]FAIL ([i915#3678]) -> [120]PASS
>      * igt@kms_color@pipe-a-ctm-0-75:
>           + {shard-rkl}: [121]SKIP ([122]i915#1149 / [123]i915#1849) ->
>             [124]PASS +1 similar issue
>      * igt@kms_color@pipe-b-ctm-negative:
>           + shard-skl: [125]DMESG-WARN ([126]i915#1982) -> [127]PASS +1
>             similar issue
>      * igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen:
>           + {shard-rkl}: [128]SKIP ([129]fdo#112022) -> [130]PASS +8
>             similar issues
>      * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>           + shard-skl: [131]FAIL ([132]i915#2346) -> [133]PASS
>      * igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:
>           + {shard-rkl}: [134]SKIP ([135]fdo#111825) -> [136]PASS +2
>             similar issues
>      * igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled:
>           + {shard-rkl}: [137]SKIP ([138]fdo#111314) -> [139]PASS +4
>             similar issues
>      * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap
>        -wc:
>           + {shard-rkl}: [140]SKIP ([141]i915#1849) -> [142]PASS +21
>             similar issues
>      * igt@kms_hdr@bpc-switch-suspend:
>           + shard-skl: [143]FAIL ([144]i915#1188) -> [145]PASS +1 similar
>             issue
>      * igt@kms_plane@plane-panning-bottom-right@pipe-b-planes:
>           + {shard-rkl}: [146]SKIP ([i915#3558]) -> [147]PASS +1 similar
>             issue
>      * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>           + shard-skl: [148]FAIL ([149]fdo#108145 / [i915#265]) ->
>             [150]PASS +2 similar issues
>      * igt@kms_plane_multiple@atomic-pipe-a-tiling-x:
>           + {shard-rkl}: [151]SKIP ([152]i915#1849 / [i915#3558]) ->
>             [153]PASS
>      * igt@kms_psr@primary_mmap_cpu:
>           + {shard-rkl}: [154]SKIP ([155]i915#1072) -> [156]PASS
>      * igt@kms_psr@psr2_primary_page_flip:
>           + shard-iclb: [157]SKIP ([158]fdo#109441) -> [159]PASS +1
>             similar issue
>      * igt@kms_vblank@pipe-a-ts-continuation-modeset:
>           + {shard-rkl}: [160]SKIP ([161]i915#1845) -> [162]PASS +10
>             similar issues
>      * igt@perf@polling-small-buf:
>           + shard-skl: [163]FAIL ([164]i915#1722) -> [165]PASS
> 
>     Warnings
> 
>      * igt@gem_exec_fair@basic-none-rrul@rcs0:
>           + shard-iclb: [166]FAIL ([i915#2842]) -> [167]FAIL ([i915#2852])
>      * igt@gem_mmap_gtt@cpuset-medium-copy:
>           + shard-iclb: [168]FAIL ([169]i915#2428) -> [170]FAIL
>             ([i915#307])
>      * igt@i915_pm_rc6_residency@rc6-idle:
>           + shard-iclb: [171]WARN ([172]i915#1804 / [i915#2684]) ->
>             [173]WARN ([i915#2684])
>      * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>           + shard-skl: [174]FAIL ([i915#3743]) -> [175]FAIL ([i915#3722])
>      * igt@kms_psr2_sf@cursor-plane-update-sf:
>           + shard-iclb: [176]SKIP ([i915#2920]) -> [177]SKIP ([i915#658])
>             +2 similar issues
>      * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
>           + shard-iclb: [178]SKIP ([i915#658]) -> [179]SKIP ([i915#2920])
>             +2 similar issues
>      * igt@runner@aborted:
>           + shard-kbl: ([180]FAIL, [181]FAIL) ([182]i915#2426 /
>             [i915#3002] / [i915#3363]) -> ([183]FAIL, [184]FAIL,
>             [185]FAIL, [186]FAIL, [187]FAIL) ([188]i915#1436 /
>             [189]i915#180 / [190]i915#1814 / [191]i915#2426 /
>             [192]i915#2505 / [i915#3002] / [i915#3363])
>           + shard-apl: ([193]FAIL, [194]FAIL, [195]FAIL) ([196]fdo#109271
>             / [197]i915#180 / [198]i915#1814 / [i915#3002] / [i915#3363])
>             -> ([199]FAIL, [200]FAIL, [201]FAIL) ([202]i915#180 /
>             [203]i915#2426 / [i915#3363])
> 
>    {name}: This element is suppressed. This means it is ignored when
>    computing
>    the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> References
> 
>    1. https://patchwork.freedesktop.org/series/93075/
>    2. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/index.html
>    3. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-apl2/igt@kms_selftest@all@damage_iter_no_damage.html
>    4. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-rkl-1/igt@kms_busy@basic-hang.html
>    5. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-rkl-5/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
>    6. https://gitlab.freedesktop.org/drm/intel/issues/1849
>    7. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-rkl-6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
>    8. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-iclb2/igt@feature_discovery@psr2.html
>    9. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-iclb8/igt@feature_discovery@psr2.html
>   10. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@bcs0.html
>   11. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@bcs0.html
>   12. https://gitlab.freedesktop.org/drm/intel/issues/180
>   13. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-apl8/igt@gem_ctx_isolation@preservation-s3@bcs0.html
>   14. https://gitlab.freedesktop.org/drm/intel/issues/180
>   15. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-snb2/igt@gem_ctx_persistence@process.html
>   16. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   17. https://gitlab.freedesktop.org/drm/intel/issues/1099
>   18. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-snb2/igt@gem_ctx_shared@q-in-order.html
>   19. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   20. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-glk7/igt@gem_exec_fair@basic-none@vecs0.html
>   21. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-glk1/igt@gem_exec_fair@basic-none@vecs0.html
>   22. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html
>   23. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-kbl3/igt@gem_exec_fair@basic-pace@rcs0.html
>   24. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs0.html
>   25. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-iclb8/igt@gem_exec_fair@basic-pace@vcs0.html
>   26. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html
>   27. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-glk1/igt@gem_exec_fair@basic-throttle@rcs0.html
>   28. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-glk3/igt@gem_exec_whisper@basic-contexts-forked-all.html
>   29. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-glk2/igt@gem_exec_whisper@basic-contexts-forked-all.html
>   30. https://gitlab.freedesktop.org/drm/intel/issues/118
>   31. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-apl8/igt@gem_huc_copy@huc-copy.html
>   32. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   33. https://gitlab.freedesktop.org/drm/intel/issues/2190
>   34. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-skl4/igt@gem_mmap_offset@clear.html
>   35. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-skl7/igt@gem_mmap_offset@clear.html
>   36. https://gitlab.freedesktop.org/drm/intel/issues/1888
>   37. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-apl3/igt@gem_pwrite@basic-exhaustion.html
>   38. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-snb5/igt@gem_userptr_blits@vma-merge.html
>   39. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-tglb5/igt@i915_pm_rpm@fences.html
>   40. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-apl2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
>   41. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   42. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-apl2/igt@kms_chamelium@hdmi-edid-change-during-suspend.html
>   43. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   44. https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   45. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-skl9/igt@kms_color@pipe-a-legacy-gamma.html
>   46. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-skl4/igt@kms_color@pipe-a-legacy-gamma.html
>   47. https://gitlab.freedesktop.org/drm/intel/issues/1982
>   48. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-snb5/igt@kms_color_chamelium@pipe-c-ctm-red-to-blue.html
>   49. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   50. https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   51. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-skl7/igt@kms_color_chamelium@pipe-invalid-gamma-lut-sizes.html
>   52. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   53. https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   54. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-apl3/igt@kms_content_protection@legacy.html
>   55. https://gitlab.freedesktop.org/drm/intel/issues/1319
>   56. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-apl1/igt@kms_content_protection@uevent.html
>   57. https://gitlab.freedesktop.org/drm/intel/issues/2105
>   58. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-kbl4/igt@kms_cursor_crc@pipe-d-cursor-128x128-offscreen.html
>   59. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   60. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-tglb5/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html
>   61. https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   62. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
>   63. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
>   64. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-apl8/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html
>   65. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-skl1/igt@kms_flip@plain-flip-ts-check@a-edp1.html
>   66. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-skl1/igt@kms_flip@plain-flip-ts-check@a-edp1.html
>   67. https://gitlab.freedesktop.org/drm/intel/issues/2122
>   68. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-apl3/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html
>   69. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   70. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html
>   71. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-apl2/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html
>   72. https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   73. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-iclb8/igt@kms_plane_alpha_blend@pipe-c-coverage-vs-premult-vs-constant.html
>   74. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-iclb2/igt@kms_plane_alpha_blend@pipe-c-coverage-vs-premult-vs-constant.html
>   75. https://bugs.freedesktop.org/show_bug.cgi?id=109278
>   76. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-apl6/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html
>   77. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   78. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-apl3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html
>   79. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   80. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
>   81. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-iclb8/igt@kms_psr@psr2_cursor_render.html
>   82. https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   83. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-apl8/igt@kms_writeback@writeback-invalid-parameters.html
>   84. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   85. https://gitlab.freedesktop.org/drm/intel/issues/2437
>   86. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-skl7/igt@nouveau_crc@pipe-a-source-outp-inactive.html
>   87. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   88. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-apl3/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html
>   89. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   90. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-apl2/igt@sysfs_clients@fair-1.html
>   91. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   92. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-rkl-5/igt@fbdev@nullptr.html
>   93. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-rkl-6/igt@fbdev@nullptr.html
>   94. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-rkl-2/igt@gem_ctx_persistence@engines-hang@bcs0.html
>   95. https://gitlab.freedesktop.org/drm/intel/issues/2410
>   96. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-rkl-1/igt@gem_ctx_persistence@engines-hang@bcs0.html
>   97. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-iclb4/igt@gem_eio@unwedge-stress.html
>   98. https://gitlab.freedesktop.org/drm/intel/issues/2369
>   99. https://gitlab.freedesktop.org/drm/intel/issues/2481
>  100. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-iclb5/igt@gem_eio@unwedge-stress.html
>  101. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-kbl1/igt@gem_exec_fair@basic-none@vecs0.html
>  102. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-kbl4/igt@gem_exec_fair@basic-none@vecs0.html
>  103. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-tglb2/igt@gem_exec_fair@basic-pace@bcs0.html
>  104. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-tglb6/igt@gem_exec_fair@basic-pace@bcs0.html
>  105. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-iclb4/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html
>  106. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-iclb2/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html
>  107. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-glk9/igt@gem_ppgtt@flink-and-close-vma-leak.html
>  108. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html
>  109. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-apl7/igt@gem_workarounds@suspend-resume.html
>  110. https://gitlab.freedesktop.org/drm/intel/issues/180
>  111. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-apl3/igt@gem_workarounds@suspend-resume.html
>  112. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-glk1/igt@kms_big_fb@linear-32bpp-rotate-0.html
>  113. https://gitlab.freedesktop.org/drm/intel/issues/118
>  114. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-glk5/igt@kms_big_fb@linear-32bpp-rotate-0.html
>  115. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-rkl-5/igt@kms_big_fb@linear-8bpp-rotate-180.html
>  116. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-180.html
>  117. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-rkl-5/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180.html
>  118. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-rkl-6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180.html
>  119. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-rkl-5/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs.html
>  120. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-rkl-6/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs.html
>  121. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-rkl-5/igt@kms_color@pipe-a-ctm-0-75.html
>  122. https://gitlab.freedesktop.org/drm/intel/issues/1149
>  123. https://gitlab.freedesktop.org/drm/intel/issues/1849
>  124. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-rkl-6/igt@kms_color@pipe-a-ctm-0-75.html
>  125. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-skl5/igt@kms_color@pipe-b-ctm-negative.html
>  126. https://gitlab.freedesktop.org/drm/intel/issues/1982
>  127. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-skl10/igt@kms_color@pipe-b-ctm-negative.html
>  128. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-rkl-5/igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen.html
>  129. https://bugs.freedesktop.org/show_bug.cgi?id=112022
>  130. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen.html
>  131. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>  132. https://gitlab.freedesktop.org/drm/intel/issues/2346
>  133. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>  134. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-rkl-5/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html
>  135. https://bugs.freedesktop.org/show_bug.cgi?id=111825
>  136. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html
>  137. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-rkl-5/igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled.html
>  138. https://bugs.freedesktop.org/show_bug.cgi?id=111314
>  139. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled.html
>  140. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-wc.html
>  141. https://gitlab.freedesktop.org/drm/intel/issues/1849
>  142. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-wc.html
>  143. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html
>  144. https://gitlab.freedesktop.org/drm/intel/issues/1188
>  145. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html
>  146. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-rkl-5/igt@kms_plane@plane-panning-bottom-right@pipe-b-planes.html
>  147. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-rkl-6/igt@kms_plane@plane-panning-bottom-right@pipe-b-planes.html
>  148. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>  149. https://bugs.freedesktop.org/show_bug.cgi?id=108145
>  150. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>  151. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-rkl-5/igt@kms_plane_multiple@atomic-pipe-a-tiling-x.html
>  152. https://gitlab.freedesktop.org/drm/intel/issues/1849
>  153. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-a-tiling-x.html
>  154. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-rkl-5/igt@kms_psr@primary_mmap_cpu.html
>  155. https://gitlab.freedesktop.org/drm/intel/issues/1072
>  156. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-rkl-6/igt@kms_psr@primary_mmap_cpu.html
>  157. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-iclb8/igt@kms_psr@psr2_primary_page_flip.html
>  158. https://bugs.freedesktop.org/show_bug.cgi?id=109441
>  159. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
>  160. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-rkl-5/igt@kms_vblank@pipe-a-ts-continuation-modeset.html
>  161. https://gitlab.freedesktop.org/drm/intel/issues/1845
>  162. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-rkl-6/igt@kms_vblank@pipe-a-ts-continuation-modeset.html
>  163. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-skl9/igt@perf@polling-small-buf.html
>  164. https://gitlab.freedesktop.org/drm/intel/issues/1722
>  165. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-skl4/igt@perf@polling-small-buf.html
>  166. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-iclb2/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>  167. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-iclb8/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>  168. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-iclb1/igt@gem_mmap_gtt@cpuset-medium-copy.html
>  169. https://gitlab.freedesktop.org/drm/intel/issues/2428
>  170. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-iclb4/igt@gem_mmap_gtt@cpuset-medium-copy.html
>  171. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html
>  172. https://gitlab.freedesktop.org/drm/intel/issues/1804
>  173. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html
>  174. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-skl2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
>  175. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-skl2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
>  176. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html
>  177. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-iclb8/igt@kms_psr2_sf@cursor-plane-update-sf.html
>  178. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-iclb4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html
>  179. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html
>  180. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-kbl4/igt@runner@aborted.html
>  181. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-kbl4/igt@runner@aborted.html
>  182. https://gitlab.freedesktop.org/drm/intel/issues/2426
>  183. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-kbl1/igt@runner@aborted.html
>  184. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-kbl1/igt@runner@aborted.html
>  185. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-kbl7/igt@runner@aborted.html
>  186. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-kbl6/igt@runner@aborted.html
>  187. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-kbl7/igt@runner@aborted.html
>  188. https://gitlab.freedesktop.org/drm/intel/issues/1436
>  189. https://gitlab.freedesktop.org/drm/intel/issues/180
>  190. https://gitlab.freedesktop.org/drm/intel/issues/1814
>  191. https://gitlab.freedesktop.org/drm/intel/issues/2426
>  192. https://gitlab.freedesktop.org/drm/intel/issu
>  193. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-apl3/igt@runner@aborted.html
>  194. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-apl7/igt@runner@aborted.html
>  195. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10405/shard-apl6/igt@runner@aborted.html
>  196. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>  197. https://gitlab.freedesktop.org/drm/intel/issues/180
>  198. https://gitlab.freedesktop.org/drm/intel/issues/1814
>  199. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-apl2/igt@runner@aborted.html
>  200. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-apl8/igt@runner@aborted.html
>  201. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20720/shard-apl8/igt@runner@aborted.html
>  202. https://gitlab.freedesktop.org/drm/intel/issues/180
>  203. https://gitlab.freedesktop.org/drm/intel/issues/2426

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
