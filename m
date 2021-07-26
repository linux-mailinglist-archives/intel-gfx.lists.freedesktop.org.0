Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B90A3D5842
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jul 2021 13:07:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD0826F911;
	Mon, 26 Jul 2021 11:07:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 740566F911
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jul 2021 11:07:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10056"; a="199448065"
X-IronPort-AV: E=Sophos;i="5.84,270,1620716400"; d="scan'208";a="199448065"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2021 04:07:51 -0700
X-IronPort-AV: E=Sophos;i="5.84,270,1620716400"; d="scan'208";a="634016910"
Received: from dechasso-mobl3.amr.corp.intel.com (HELO intel.com)
 ([10.212.115.115])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2021 04:07:50 -0700
Date: Mon, 26 Jul 2021 07:07:49 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YP6XhVt+tWJMYfs1@intel.com>
References: <20210724001114.249295-1-lucas.demarchi@intel.com>
 <162713023874.10881.10719881156223672120@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <162713023874.10881.10719881156223672120@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogIGZhaWx1cmUgZm9yIFJl?=
 =?utf-8?q?move_CNL_support?=
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Jul 24, 2021 at 12:37:18PM -0000, Patchwork wrote:
>    Patch Details
> 
>    Series:  Remove CNL support
>    URL:     [1]https://patchwork.freedesktop.org/series/92969/
>    State:   failure
>    Details:
>    [2]https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/index.html
> 
>       CI Bug Log - changes from CI_DRM_10383_full -> Patchwork_20701_full
> 
> Summary
> 
>    FAILURE
> 
>    Serious unknown changes coming with Patchwork_20701_full absolutely
>    need to be
>    verified manually.
> 
>    If you think the reported changes have nothing to do with the changes
>    introduced in Patchwork_20701_full, please notify your bug team to
>    allow them
>    to document this new failure mode, which will reduce false positives in
>    CI.
> 
> Possible new issues
> 
>    Here are the unknown changes that may have been introduced in
>    Patchwork_20701_full:
> 
>   IGT changes
> 
>     Possible regressions
> 
>      * igt@kms_universal_plane@universal-plane-pipe-b-sanity:
>           + shard-glk: [3]PASS -> [4]FAIL +23 similar issues

I got to the end of the display related ones and I couldn't spot
where this bug is :(

> 
> Known issues
> 
>    Here are the changes found in Patchwork_20701_full that come from known
>    issues:
> 
>   IGT changes
> 
>     Issues hit
> 
>      * igt@feature_discovery@psr2:
>           + shard-iclb: [5]PASS -> [6]SKIP ([i915#658])
>      * igt@gem_ctx_persistence@engines-queued:
>           + shard-snb: NOTRUN -> [7]SKIP ([fdo#109271] / [i915#1099])
>      * igt@gem_eio@in-flight-suspend:
>           + shard-apl: [8]PASS -> [9]DMESG-WARN ([i915#180]) +2 similar
>             issues
>      * igt@gem_exec_fair@basic-deadline:
>           + shard-glk: [10]PASS -> [11]FAIL ([i915#2846])
>      * igt@gem_exec_fair@basic-none-rrul@rcs0:
>           + shard-glk: [12]PASS -> [13]FAIL ([i915#2842]) +2 similar
>             issues
>      * igt@gem_exec_fair@basic-none@vcs1:
>           + shard-kbl: [14]PASS -> [15]FAIL ([i915#2842]) +1 similar issue
>      * igt@gem_exec_fair@basic-pace@rcs0:
>           + shard-tglb: [16]PASS -> [17]FAIL ([i915#2851])
>      * igt@gem_exec_fair@basic-pace@vecs0:
>           + shard-kbl: NOTRUN -> [18]FAIL ([i915#2842]) +1 similar issue
>      * igt@gem_exec_schedule@pi-ringfull@vecs0:
>           + shard-skl: [19]PASS -> [20]FAIL ([i915#3397])
>      * igt@gem_userptr_blits@dmabuf-sync:
>           + shard-apl: NOTRUN -> [21]SKIP ([fdo#109271] / [i915#3323])
>      * igt@gem_userptr_blits@input-checking:
>           + shard-snb: NOTRUN -> [22]DMESG-WARN ([i915#3002])
>      * igt@i915_pm_rpm@drm-resources-equal:
>           + shard-tglb: NOTRUN -> [23]SKIP ([i915#579])
>      * igt@kms_async_flips@alternate-sync-async-flip:
>           + shard-skl: [24]PASS -> [25]FAIL ([i915#2521])
>      * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
>           + shard-glk: [26]PASS -> [27]DMESG-WARN ([i915#118] / [i915#95])
>      * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>           + shard-apl: NOTRUN -> [28]SKIP ([fdo#109271] / [i915#3777]) +1
>             similar issue
>      * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>           + shard-skl: NOTRUN -> [29]SKIP ([fdo#109271] / [i915#3777])
>      * igt@kms_big_fb@yf-tiled-64bpp-rotate-180:
>           + shard-tglb: NOTRUN -> [30]SKIP ([fdo#111615])
>      * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_ccs:
>           + shard-tglb: NOTRUN -> [31]SKIP ([i915#3689])
>      * igt@kms_chamelium@dp-mode-timings:
>           + shard-apl: NOTRUN -> [32]SKIP ([fdo#109271] / [fdo#111827])
>             +21 similar issues
>      * igt@kms_chamelium@hdmi-hpd-enable-disable-mode:
>           + shard-snb: NOTRUN -> [33]SKIP ([fdo#109271] / [fdo#111827])
>             +13 similar issues
>      * igt@kms_color_chamelium@pipe-a-ctm-0-25:
>           + shard-skl: NOTRUN -> [34]SKIP ([fdo#109271] / [fdo#111827]) +1
>             similar issue
>      * igt@kms_color_chamelium@pipe-a-ctm-0-75:
>           + shard-kbl: NOTRUN -> [35]SKIP ([fdo#109271] / [fdo#111827]) +4
>             similar issues
>      * igt@kms_content_protection@atomic-dpms:
>           + shard-apl: NOTRUN -> [36]TIMEOUT ([i915#1319])
>      * igt@kms_cursor_legacy@pipe-d-single-bo:
>           + shard-kbl: NOTRUN -> [37]SKIP ([fdo#109271] / [i915#533]) +1
>             similar issue
>      * igt@kms_cursor_legacy@pipe-d-torture-bo:
>           + shard-iclb: NOTRUN -> [38]SKIP ([fdo#109278]) +3 similar
>             issues
>      * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-hdmi-a1:
>           + shard-glk: [39]PASS -> [40]FAIL ([i915#2122])
>      * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
>           + shard-skl: [41]PASS -> [42]FAIL ([i915#79])
>      * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2:
>           + shard-glk: [43]PASS -> [44]FAIL ([i915#79])
>      * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
>           + shard-skl: [45]PASS -> [46]FAIL ([i915#2122]) +2 similar
>             issues
>      * igt@kms_flip@flip-vs-expired-vblank@b-dp1:
>           + shard-kbl: [47]PASS -> [48]FAIL ([i915#79])
>      * igt@kms_flip@flip-vs-suspend@a-dp1:
>           + shard-apl: NOTRUN -> [49]DMESG-WARN ([i915#180])
>      * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
>           + shard-apl: NOTRUN -> [50]SKIP ([fdo#109271] / [i915#2672])
>      * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:
>           + shard-iclb: NOTRUN -> [51]SKIP ([fdo#109280]) +1 similar issue
>      * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:
>           + shard-kbl: NOTRUN -> [52]SKIP ([fdo#109271]) +54 similar
>             issues
>      * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-rend
>        er:
>           + shard-snb: NOTRUN -> [53]SKIP ([fdo#109271]) +287 similar
>             issues
>      * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
>           + shard-kbl: NOTRUN -> [54]FAIL ([fdo#108145] / [i915#265]) +1
>             similar issue
>      * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
>           + shard-apl: NOTRUN -> [55]FAIL ([fdo#108145] / [i915#265]) +3
>             similar issues
>      * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
>           + shard-apl: NOTRUN -> [56]FAIL ([i915#265])
>      * igt@kms_plane_lowres@pipe-b-tiling-yf:
>           + shard-iclb: NOTRUN -> [57]SKIP ([i915#3536])
>      * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
>           + shard-apl: NOTRUN -> [58]SKIP ([fdo#109271] / [i915#658]) +4
>             similar issues
>      * igt@kms_psr2_su@frontbuffer:
>           + shard-kbl: NOTRUN -> [59]SKIP ([fdo#109271] / [i915#658])
>      * igt@kms_psr@psr2_cursor_render:
>           + shard-iclb: [60]PASS -> [61]SKIP ([fdo#109441]) +1 similar
>             issue
>      * igt@kms_setmode@basic:
>           + shard-snb: NOTRUN -> [62]FAIL ([i915#31])
>      * igt@kms_sysfs_edid_timing:
>           + shard-skl: NOTRUN -> [63]FAIL ([IGT#2])
>      * igt@kms_vblank@pipe-b-accuracy-idle:
>           + shard-glk: [64]PASS -> [65]FAIL ([i915#43])
>      * igt@kms_vblank@pipe-d-wait-idle:
>           + shard-apl: NOTRUN -> [66]SKIP ([fdo#109271] / [i915#533]) +4
>             similar issues
>      * igt@kms_writeback@writeback-fb-id:
>           + shard-apl: NOTRUN -> [67]SKIP ([fdo#109271] / [i915#2437]) +1
>             similar issue
>      * igt@perf@polling-parameterized:
>           + shard-tglb: [68]PASS -> [69]FAIL ([i915#1542])
>      * igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:
>           + shard-apl: NOTRUN -> [70]SKIP ([fdo#109271]) +308 similar
>             issues
>      * igt@prime_nv_api@i915_self_import:
>           + shard-skl: NOTRUN -> [71]SKIP ([fdo#109271]) +22 similar
>             issues
>      * igt@sysfs_clients@fair-7:
>           + shard-apl: NOTRUN -> [72]SKIP ([fdo#109271] / [i915#2994]) +3
>             similar issues
> 
>     Possible fixes
> 
>      * igt@gem_ctx_persistence@engines-hang@rcs0:
>           + {shard-rkl}: [73]FAIL ([i915#2410]) -> [74]PASS
>      * igt@gem_exec_fair@basic-deadline:
>           + shard-kbl: [75]FAIL ([i915#2846]) -> [76]PASS
>      * igt@gem_exec_fair@basic-flow@rcs0:
>           + shard-tglb: [77]FAIL ([i915#2842]) -> [78]PASS +1 similar
>             issue
>      * igt@gem_exec_fair@basic-none-solo@rcs0:
>           + shard-kbl: [79]FAIL ([i915#2842]) -> [80]PASS +1 similar issue
>      * igt@gem_exec_fair@basic-none@bcs0:
>           + shard-iclb: [81]FAIL ([i915#2842]) -> [82]PASS
>      * igt@gen9_exec_parse@allowed-single:
>           + shard-skl: [83]DMESG-WARN ([i915#1436] / [i915#716]) ->
>             [84]PASS
>      * igt@i915_pm_backlight@fade:
>           + {shard-rkl}: [85]SKIP ([i915#3012]) -> [86]PASS
>      * igt@i915_pm_rc6_residency@rc6-fence:
>           + shard-tglb: [87]WARN ([i915#2681]) -> [88]PASS
>      * igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180:
>           + {shard-rkl}: [89]SKIP ([i915#3721]) -> [90]PASS +4 similar
>             issues
>      * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
>           + {shard-rkl}: [91]SKIP ([i915#3638]) -> [92]PASS
>      * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
>           + {shard-rkl}: [93]FAIL ([i915#3678]) -> [94]PASS +4 similar
>             issues
>      * igt@kms_color@pipe-c-ctm-max:
>           + {shard-rkl}: [95]SKIP ([i915#1149] / [i915#1849]) -> [96]PASS
>      * igt@kms_cursor_crc@pipe-b-cursor-alpha-transparent:
>           + {shard-rkl}: [97]SKIP ([fdo#112022]) -> [98]PASS +5 similar
>             issues
>      * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
>           + {shard-rkl}: [99]SKIP ([fdo#111825]) -> [100]PASS +2 similar
>             issues
>      * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled:
>           + {shard-rkl}: [101]SKIP ([fdo#111314]) -> [102]PASS +3 similar
>             issues
>      * igt@kms_fbcon_fbt@fbc-suspend:
>           + shard-kbl: [103]INCOMPLETE ([i915#155] / [i915#180] /
>             [i915#636]) -> [104]PASS
>      * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>           + shard-apl: [105]DMESG-WARN ([i915#180]) -> [106]PASS +2
>             similar issues
>      * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
>           + shard-skl: [107]FAIL ([i915#2122]) -> [108]PASS +1 similar
>             issue
>      * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap
>        -gtt:
>           + {shard-rkl}: [109]SKIP ([i915#1849]) -> [110]PASS +24 similar
>             issues
>      * igt@kms_hdr@bpc-switch-suspend:
>           + shard-kbl: [111]DMESG-WARN ([i915#180]) -> [112]PASS +1
>             similar issue
>      * igt@kms_plane@pixel-format@pipe-a-planes:
>           + {shard-rkl}: [113]SKIP ([i915#3558]) -> [114]PASS +1 similar
>             issue
>      * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>           + shard-skl: [115]FAIL ([fdo#108145] / [i915#265]) -> [116]PASS
>             +1 similar issue
>      * igt@kms_psr@primary_blt:
>           + {shard-rkl}: [117]SKIP ([i915#1072]) -> [118]PASS
>      * igt@kms_psr@psr2_primary_page_flip:
>           + shard-iclb: [119]SKIP ([fdo#109441]) -> [120]PASS +2 similar
>             issues
>      * igt@kms_vblank@pipe-c-query-forked-hang:
>           + {shard-rkl}: [121]SKIP ([i915#1845]) -> [122]PASS +11 similar
>             issues
>      * igt@perf@blocking:
>           + {shard-rkl}: [123]FAIL ([i915#1542]) -> [124]PASS
>      * igt@perf@polling-parameterized:
>           + shard-skl: [125]FAIL ([i915#1542]) -> [126]PASS
> 
>     Warnings
> 
>      * igt@gem_exec_fair@basic-none-rrul@rcs0:
>           + shard-iclb: [127]FAIL ([i915#2852]) -> [128]FAIL ([i915#2842])
>      * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:
>           + shard-iclb: [129]SKIP ([i915#2920]) -> [130]SKIP ([i915#658])
>             +2 similar issues
>      * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:
>           + shard-iclb: [131]SKIP ([i915#658]) -> [132]SKIP ([i915#2920])
>             +2 similar issues
>      * igt@runner@aborted:
>           + shard-kbl: ([133]FAIL, [134]FAIL, [135]FAIL, [136]FAIL,
>             [137]FAIL) ([i915#180] / [i915#1814] / [i915#2505] /
>             [i915#3002] / [i915#3363] / [i915#92]) -> ([138]FAIL,
>             [139]FAIL) ([i915#3002] / [i915#3363])
>           + shard-apl: ([140]FAIL, [141]FAIL, [142]FAIL, [143]FAIL)
>             ([i915#180] / [i915#1814] / [i915#3002] / [i915#3363]) ->
>             ([144]FAIL, [145]FAIL, [146]FAIL, [147]FAIL, [148]FAIL)
>             ([i915#1610] / [i915#180] / [i915#1814] / [i915#3002] /
>             [i915#3363])
>           + shard-skl: ([149]FAIL, [150]FAIL, [151]FAIL) ([i915#1436] /
>             [i915#3002] / [i915#3363]) -> ([152]FAIL, [153]FAIL)
>             ([i915#3002] / [i915#3363])
> 
>    {name}: Th
> 
> References
> 
>    1. https://patchwork.freedesktop.org/series/92969/
>    2. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/index.html
>    3. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-glk8/igt@kms_universal_plane@universal-plane-pipe-b-sanity.html
>    4. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-glk1/igt@kms_universal_plane@universal-plane-pipe-b-sanity.html
>    5. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-iclb2/igt@feature_discovery@psr2.html
>    6. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-iclb7/igt@feature_discovery@psr2.html
>    7. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-snb6/igt@gem_ctx_persistence@engines-queued.html
>    8. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-apl2/igt@gem_eio@in-flight-suspend.html
>    9. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-apl6/igt@gem_eio@in-flight-suspend.html
>   10. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-glk8/igt@gem_exec_fair@basic-deadline.html
>   11. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-glk1/igt@gem_exec_fair@basic-deadline.html
>   12. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>   13. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-glk9/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>   14. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-kbl4/igt@gem_exec_fair@basic-none@vcs1.html
>   15. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-kbl2/igt@gem_exec_fair@basic-none@vcs1.html
>   16. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-tglb5/igt@gem_exec_fair@basic-pace@rcs0.html
>   17. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-tglb2/igt@gem_exec_fair@basic-pace@rcs0.html
>   18. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html
>   19. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-skl4/igt@gem_exec_schedule@pi-ringfull@vecs0.html
>   20. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-skl8/igt@gem_exec_schedule@pi-ringfull@vecs0.html
>   21. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-apl8/igt@gem_userptr_blits@dmabuf-sync.html
>   22. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-snb6/igt@gem_userptr_blits@input-checking.html
>   23. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-tglb1/igt@i915_pm_rpm@drm-resources-equal.html
>   24. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-skl10/igt@kms_async_flips@alternate-sync-async-flip.html
>   25. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip.html
>   26. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-glk7/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
>   27. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-glk6/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
>   28. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-apl8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
>   29. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-skl4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
>   30. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-tglb1/igt@kms_big_fb@yf-tiled-64bpp-rotate-180.html
>   31. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-tglb1/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_ccs.html
>   32. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-apl3/igt@kms_chamelium@dp-mode-timings.html
>   33. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-snb5/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html
>   34. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-skl4/igt@kms_color_chamelium@pipe-a-ctm-0-25.html
>   35. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-kbl7/igt@kms_color_chamelium@pipe-a-ctm-0-75.html
>   36. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-apl1/igt@kms_content_protection@atomic-dpms.html
>   37. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-kbl3/igt@kms_cursor_legacy@pipe-d-single-bo.html
>   38. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-iclb2/igt@kms_cursor_legacy@pipe-d-torture-bo.html
>   39. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-glk5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-hdmi-a1.html
>   40. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-glk8/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-hdmi-a1.html
>   41. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
>   42. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
>   43. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html
>   44. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html
>   45. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
>   46. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
>   47. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-kbl4/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html
>   48. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-kbl2/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html
>   49. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-apl1/igt@kms_flip@flip-vs-suspend@a-dp1.html
>   50. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-apl2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html
>   51. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html
>   52. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt.html
>   53. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-snb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html
>   54. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-kbl3/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
>   55. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
>   56. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-apl1/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
>   57. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-iclb2/igt@kms_plane_lowres@pipe-b-tiling-yf.html
>   58. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-apl8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html
>   59. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-kbl3/igt@kms_psr2_su@frontbuffer.html
>   60. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
>   61. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-iclb7/igt@kms_psr@psr2_cursor_render.html
>   62. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-snb6/igt@kms_setmode@basic.html
>   63. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-skl4/igt@kms_sysfs_edid_timing.html
>   64. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-glk4/igt@kms_vblank@pipe-b-accuracy-idle.html
>   65. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-glk3/igt@kms_vblank@pipe-b-accuracy-idle.html
>   66. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-apl2/igt@kms_vblank@pipe-d-wait-idle.html
>   67. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-apl2/igt@kms_writeback@writeback-fb-id.html
>   68. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-tglb5/igt@perf@polling-parameterized.html
>   69. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-tglb2/igt@perf@polling-parameterized.html
>   70. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-apl2/igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name.html
>   71. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-skl4/igt@prime_nv_api@i915_self_import.html
>   72. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-apl8/igt@sysfs_clients@fair-7.html
>   73. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-rkl-2/igt@gem_ctx_persistence@engines-hang@rcs0.html
>   74. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-rkl-5/igt@gem_ctx_persistence@engines-hang@rcs0.html
>   75. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-kbl3/igt@gem_exec_fair@basic-deadline.html
>   76. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-kbl1/igt@gem_exec_fair@basic-deadline.html
>   77. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html
>   78. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html
>   79. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-kbl1/igt@gem_exec_fair@basic-none-solo@rcs0.html
>   80. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-kbl3/igt@gem_exec_fair@basic-none-solo@rcs0.html
>   81. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-iclb2/igt@gem_exec_fair@basic-none@bcs0.html
>   82. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-iclb7/igt@gem_exec_fair@basic-none@bcs0.html
>   83. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-skl3/igt@gen9_exec_parse@allowed-single.html
>   84. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-skl4/igt@gen9_exec_parse@allowed-single.html
>   85. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-rkl-2/igt@i915_pm_backlight@fade.html
>   86. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-rkl-6/igt@i915_pm_backlight@fade.html
>   87. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-tglb6/igt@i915_pm_rc6_residency@rc6-fence.html
>   88. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-tglb7/igt@i915_pm_rc6_residency@rc6-fence.html
>   89. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-rkl-2/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180.html
>   90. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-rkl-6/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180.html
>   91. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-rkl-2/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
>   92. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-rkl-6/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
>   93. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-rkl-2/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html
>   94. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-rkl-6/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html
>   95. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-rkl-2/igt@kms_color@pipe-c-ctm-max.html
>   96. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-rkl-6/igt@kms_color@pipe-c-ctm-max.html
>   97. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-rkl-2/igt@kms_cursor_crc@pipe-b-cursor-alpha-transparent.html
>   98. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-alpha-transparent.html
>   99. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-rkl-2/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
>  100. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
>  101. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled.html
>  102. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled.html
>  103. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html
>  104. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html
>  105. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>  106. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>  107. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
>  108. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
>  109. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html
>  110. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html
>  111. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-kbl6/igt@kms_hdr@bpc-switch-suspend.html
>  112. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-kbl7/igt@kms_hdr@bpc-switch-suspend.html
>  113. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-rkl-2/igt@kms_plane@pixel-format@pipe-a-planes.html
>  114. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-rkl-6/igt@kms_plane@pixel-format@pipe-a-planes.html
>  115. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>  116. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>  117. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-rkl-2/igt@kms_psr@primary_blt.html
>  118. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-rkl-6/igt@kms_psr@primary_blt.html
>  119. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-iclb8/igt@kms_psr@psr2_primary_page_flip.html
>  120. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
>  121. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-rkl-2/igt@kms_vblank@pipe-c-query-forked-hang.html
>  122. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-rkl-6/igt@kms_vblank@pipe-c-query-forked-hang.html
>  123. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-rkl-6/igt@perf@blocking.html
>  124. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-rkl-6/igt@perf@blocking.html
>  125. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-skl3/igt@perf@polling-parameterized.html
>  126. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-skl4/igt@perf@polling-parameterized.html
>  127. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-iclb4/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>  128. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-iclb8/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>  129. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html
>  130. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-iclb7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html
>  131. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-iclb1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html
>  132. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html
>  133. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-kbl7/igt@runner@aborted.html
>  134. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-kbl3/igt@runner@aborted.html
>  135. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-kbl6/igt@runner@aborted.html
>  136. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-kbl7/igt@runner@aborted.html
>  137. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-kbl3/igt@runner@aborted.html
>  138. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-kbl4/igt@runner@aborted.html
>  139. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-kbl3/igt@runner@aborted.html
>  140. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-apl6/igt@runner@aborted.html
>  141. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-apl1/igt@runner@aborted.html
>  142. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-apl2/igt@runner@aborted.html
>  143. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-apl7/igt@runner@aborted.html
>  144. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-apl1/igt@runner@aborted.html
>  145. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-apl6/igt@runner@aborted.html
>  146. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-apl1/igt@runner@aborted.html
>  147. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-apl6/igt@runner@aborted.html
>  148. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-apl3/igt@runner@aborted.html
>  149. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-skl8/igt@runner@aborted.html
>  150. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-skl5/igt@runner@aborted.html
>  151. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10383/shard-skl3/igt@runner@aborted.html
>  152. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-skl1/igt@runner@aborted.html
>  153. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20701/shard-skl10/igt@runner@aborted.html

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
