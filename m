Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 538574032B5
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 04:40:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01E796E0F7;
	Wed,  8 Sep 2021 02:40:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF2E26E0F7
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 02:40:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="199895858"
X-IronPort-AV: E=Sophos;i="5.85,276,1624345200"; d="scan'208";a="199895858"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2021 19:40:46 -0700
X-IronPort-AV: E=Sophos;i="5.85,276,1624345200"; d="scan'208";a="431149186"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2021 19:40:45 -0700
Date: Tue, 7 Sep 2021 19:40:44 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
Message-ID: <20210908024044.GL461228@mdroper-desk1.amr.corp.intel.com>
References: <20210907171639.1221287-1-ayaz.siddiqui@intel.com>
 <163106168835.22224.10756898331473236614@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <163106168835.22224.10756898331473236614@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Add_separate_MOCS_table_for_Gen12_devices_other_tha?=
 =?utf-8?q?n_TGL/RKL?=
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

On Wed, Sep 08, 2021 at 12:41:28AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/gt: Add separate MOCS table for Gen12 devices other than TGL/RKL
> URL   : https://patchwork.freedesktop.org/series/94451/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10558_full -> Patchwork_20982_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_20982_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_20982_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_20982_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytiled:
>     - shard-iclb:         [PASS][1] -> [DMESG-WARN][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10558/shard-iclb3/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytiled.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-iclb2/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytiled.html

https://gitlab.freedesktop.org/drm/intel/-/issues/3728

> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
>     - shard-iclb:         [PASS][3] -> [SKIP][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10558/shard-iclb7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html

ICL display test behavior isn't related to the gen12 MOCS update from
this patch.

Applied to drm-intel-gt-next.  Thanks for the patch.


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_20982_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_create@create-massive:
>     - shard-snb:          NOTRUN -> [DMESG-WARN][5] ([i915#3002]) +1 similar issue
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-snb5/igt@gem_create@create-massive.html
> 
>   * igt@gem_ctx_persistence@legacy-engines-mixed:
>     - shard-snb:          NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#1099]) +6 similar issues
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-snb2/igt@gem_ctx_persistence@legacy-engines-mixed.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [PASS][7] -> [TIMEOUT][8] ([i915#2369] / [i915#3063] / [i915#3648])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10558/shard-tglb7/igt@gem_eio@unwedge-stress.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-tglb8/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][9] ([i915#2842])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-kbl:          [PASS][10] -> [FAIL][11] ([i915#2842])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10558/shard-kbl4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-kbl2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@bcs0:
>     - shard-tglb:         NOTRUN -> [FAIL][12] ([i915#2842]) +3 similar issues
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-tglb8/igt@gem_exec_fair@basic-pace@bcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-iclb:         [PASS][13] -> [FAIL][14] ([i915#2842])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10558/shard-iclb7/igt@gem_exec_fair@basic-pace@vecs0.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-iclb6/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#2842])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10558/shard-glk2/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-glk2/igt@gem_exec_fair@basic-throttle@rcs0.html
>     - shard-iclb:         [PASS][17] -> [FAIL][18] ([i915#2849])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10558/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy-odd:
>     - shard-iclb:         [PASS][19] -> [FAIL][20] ([i915#307])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10558/shard-iclb6/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-iclb1/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-apl:          NOTRUN -> [WARN][21] ([i915#2658])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-apl3/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_userptr_blits@access-control:
>     - shard-tglb:         NOTRUN -> [SKIP][22] ([i915#3297])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-tglb8/igt@gem_userptr_blits@access-control.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-apl:          NOTRUN -> [FAIL][23] ([i915#3318])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-apl8/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gen9_exec_parse@basic-rejected:
>     - shard-tglb:         NOTRUN -> [SKIP][24] ([i915#2856]) +2 similar issues
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-tglb1/igt@gen9_exec_parse@basic-rejected.html
> 
>   * igt@gen9_exec_parse@bb-start-out:
>     - shard-iclb:         NOTRUN -> [SKIP][25] ([i915#2856])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-iclb6/igt@gen9_exec_parse@bb-start-out.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [PASS][26] -> [FAIL][27] ([i915#454])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10558/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_lpsp@screens-disabled:
>     - shard-tglb:         NOTRUN -> [SKIP][28] ([i915#1902])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-tglb8/igt@i915_pm_lpsp@screens-disabled.html
> 
>   * igt@i915_pm_rpm@pc8-residency:
>     - shard-tglb:         NOTRUN -> [SKIP][29] ([fdo#109506] / [i915#2411])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-tglb5/igt@i915_pm_rpm@pc8-residency.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][30] ([i915#3722])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-skl8/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>     - shard-apl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#3777]) +2 similar issues
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-apl3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-180:
>     - shard-iclb:         NOTRUN -> [SKIP][32] ([fdo#110723])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-iclb6/igt@kms_big_fb@yf-tiled-8bpp-rotate-180.html
> 
>   * igt@kms_big_fb@yf-tiled-addfb:
>     - shard-tglb:         NOTRUN -> [SKIP][33] ([fdo#111615]) +1 similar issue
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-tglb8/igt@kms_big_fb@yf-tiled-addfb.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
>     - shard-apl:          NOTRUN -> [SKIP][34] ([fdo#109271]) +307 similar issues
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-apl7/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html
> 
>   * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#3886]) +18 similar issues
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-apl1/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-basic-yf_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][36] ([i915#3689]) +3 similar issues
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-tglb5/igt@kms_ccs@pipe-b-crc-primary-basic-yf_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][37] ([fdo#109278] / [i915#3886]) +2 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-iclb6/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][38] ([i915#3689] / [i915#3886])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-tglb5/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_chamelium@hdmi-crc-fast:
>     - shard-iclb:         NOTRUN -> [SKIP][39] ([fdo#109284] / [fdo#111827]) +1 similar issue
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-iclb1/igt@kms_chamelium@hdmi-crc-fast.html
> 
>   * igt@kms_chamelium@hdmi-edid-change-during-suspend:
>     - shard-apl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [fdo#111827]) +33 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-apl7/igt@kms_chamelium@hdmi-edid-change-during-suspend.html
> 
>   * igt@kms_chamelium@hdmi-hpd-fast:
>     - shard-snb:          NOTRUN -> [SKIP][41] ([fdo#109271] / [fdo#111827]) +22 similar issues
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-snb2/igt@kms_chamelium@hdmi-hpd-fast.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-0-75:
>     - shard-tglb:         NOTRUN -> [SKIP][42] ([fdo#109284] / [fdo#111827]) +6 similar issues
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-tglb8/igt@kms_color_chamelium@pipe-b-ctm-0-75.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-0-75:
>     - shard-iclb:         NOTRUN -> [SKIP][43] ([fdo#109278] / [fdo#109284] / [fdo#111827])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-iclb6/igt@kms_color_chamelium@pipe-d-ctm-0-75.html
> 
>   * igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:
>     - shard-skl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-skl6/igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes.html
> 
>   * igt@kms_content_protection@dp-mst-type-1:
>     - shard-iclb:         NOTRUN -> [SKIP][45] ([i915#3116])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-iclb1/igt@kms_content_protection@dp-mst-type-1.html
>     - shard-tglb:         NOTRUN -> [SKIP][46] ([i915#3116])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-tglb1/igt@kms_content_protection@dp-mst-type-1.html
> 
>   * igt@kms_content_protection@lic:
>     - shard-apl:          NOTRUN -> [TIMEOUT][47] ([i915#1319])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-apl7/igt@kms_content_protection@lic.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-iclb:         NOTRUN -> [SKIP][48] ([fdo#109300] / [fdo#111066])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-iclb6/igt@kms_content_protection@srm.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-apl:          [PASS][49] -> [DMESG-WARN][50] ([i915#180])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10558/shard-apl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-512x170-offscreen:
>     - shard-iclb:         NOTRUN -> [SKIP][51] ([fdo#109278] / [fdo#109279])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-iclb6/igt@kms_cursor_crc@pipe-b-cursor-512x170-offscreen.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-512x170-rapid-movement:
>     - shard-tglb:         NOTRUN -> [SKIP][52] ([i915#3359]) +1 similar issue
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-512x170-rapid-movement.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-512x170-onscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][53] ([fdo#109279] / [i915#3359]) +1 similar issue
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-tglb8/igt@kms_cursor_crc@pipe-d-cursor-512x170-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-64x64-random:
>     - shard-iclb:         NOTRUN -> [SKIP][54] ([fdo#109278]) +4 similar issues
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-iclb6/igt@kms_cursor_crc@pipe-d-cursor-64x64-random.html
> 
>   * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled:
>     - shard-skl:          [PASS][55] -> [DMESG-WARN][56] ([i915#1982]) +1 similar issue
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10558/shard-skl6/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-skl1/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-tglb:         [PASS][57] -> [INCOMPLETE][58] ([i915#456])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10558/shard-tglb3/igt@kms_fbcon_fbt@fbc-suspend.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-tglb7/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
>     - shard-apl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#2672])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-apl1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
>     - shard-snb:          NOTRUN -> [SKIP][60] ([fdo#109271]) +403 similar issues
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-snb5/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
>     - shard-skl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#2672])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-skl8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc:
>     - shard-tglb:         NOTRUN -> [SKIP][62] ([fdo#111825]) +17 similar issues
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-tglb:         [PASS][63] -> [INCOMPLETE][64] ([i915#2411] / [i915#456])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10558/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-suspend.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt:
>     - shard-skl:          NOTRUN -> [SKIP][65] ([fdo#109271]) +21 similar issues
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-skl8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-plflip-blt:
>     - shard-iclb:         NOTRUN -> [SKIP][66] ([fdo#109280]) +1 similar issue
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-plflip-blt.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
>     - shard-apl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#533]) +1 similar issue
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-apl7/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
>     - shard-apl:          NOTRUN -> [FAIL][68] ([fdo#108145] / [i915#265]) +1 similar issue
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
>     - shard-apl:          NOTRUN -> [FAIL][69] ([i915#265]) +1 similar issue
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-apl8/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
>     - shard-skl:          NOTRUN -> [FAIL][70] ([fdo#108145] / [i915#265])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
> 
>   * igt@kms_plane_multiple@atomic-pipe-b-tiling-yf:
>     - shard-tglb:         NOTRUN -> [SKIP][71] ([fdo#112054])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-tglb1/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5:
>     - shard-iclb:         NOTRUN -> [SKIP][72] ([i915#658])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-iclb6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
>     - shard-apl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#658]) +6 similar issues
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-apl1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:
>     - shard-tglb:         NOTRUN -> [SKIP][74] ([i915#2920]) +1 similar issue
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-tglb8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html
>     - shard-skl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#658])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-skl8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html
> 
>   * igt@kms_psr@psr2_cursor_blt:
>     - shard-tglb:         NOTRUN -> [FAIL][76] ([i915#132] / [i915#3467])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-tglb5/igt@kms_psr@psr2_cursor_blt.html
> 
>   * igt@kms_psr@psr2_cursor_plane_move:
>     - shard-iclb:         [PASS][77] -> [SKIP][78] ([fdo#109441]) +2 similar issues
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10558/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-iclb3/igt@kms_psr@psr2_cursor_plane_move.html
> 
>   * igt@kms_sysfs_edid_timing:
>     - shard-apl:          NOTRUN -> [FAIL][79] ([IGT#2])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-apl7/igt@kms_sysfs_edid_timing.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-suspend:
>     - shard-kbl:          [PASS][80] -> [DMESG-WARN][81] ([i915#180] / [i915#295])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10558/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
> 
>   * igt@kms_vrr@flipline:
>     - shard-tglb:         NOTRUN -> [SKIP][82] ([fdo#109502])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-tglb5/igt@kms_vrr@flipline.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-apl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#2437])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-apl7/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@nouveau_crc@pipe-b-source-outp-inactive:
>     - shard-iclb:         NOTRUN -> [SKIP][84] ([i915#2530])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-iclb6/igt@nouveau_crc@pipe-b-source-outp-inactive.html
> 
>   * igt@nouveau_crc@pipe-d-source-outp-inactive:
>     - shard-tglb:         NOTRUN -> [SKIP][85] ([i915#2530]) +2 similar issues
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-tglb5/igt@nouveau_crc@pipe-d-source-outp-inactive.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-skl:          [PASS][86] -> [FAIL][87] ([i915#1542])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10558/shard-skl3/igt@perf@polling-parameterized.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-skl6/igt@perf@polling-parameterized.html
> 
>   * igt@prime_nv_test@nv_i915_sharing:
>     - shard-tglb:         NOTRUN -> [SKIP][88] ([fdo#109291])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-tglb5/igt@prime_nv_test@nv_i915_sharing.html
> 
>   * igt@runner@aborted:
>     - shard-snb:          NOTRUN -> ([FAIL][89], [FAIL][90]) ([i915#3002])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-snb5/igt@runner@aborted.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-snb7/igt@runner@aborted.html
> 
>   * igt@sysfs_clients@busy:
>     - shard-tglb:         NOTRUN -> [SKIP][91] ([i915#2994])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-tglb5/igt@sysfs_clients@busy.html
>     - shard-skl:          NOTRUN -> [SKIP][92] ([fdo#109271] / [i915#2994])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-skl6/igt@sysfs_clients@busy.html
> 
>   * igt@sysfs_clients@recycle-many:
>     - shard-apl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [i915#2994]) +2 similar issues
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-apl1/igt@sysfs_clients@recycle-many.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_isolation@preservation-s3@bcs0:
>     - shard-tglb:         [INCOMPLETE][94] -> [PASS][95]
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10558/shard-tglb7/igt@gem_ctx_isolation@preservation-s3@bcs0.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-tglb5/igt@gem_ctx_isolation@preservation-s3@bcs0.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-skl:          [TIMEOUT][96] ([i915#2369] / [i915#3063]) -> [PASS][97]
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10558/shard-skl1/igt@gem_eio@unwedge-stress.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-skl8/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglb:         [FAIL][98] ([i915#2842]) -> [PASS][99] +1 similar issue
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10558/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vecs0:
>     - shard-kbl:          [FAIL][100] ([i915#2842]) -> [PASS][101]
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10558/shard-kbl2/igt@gem_exec_fair@basic-none@vecs0.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-kbl6/igt@gem_exec_fair@basic-none@vecs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-kbl:          [SKIP][102] ([fdo#109271]) -> [PASS][103]
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10558/shard-kbl3/igt@gem_exec_fair@basic-pace@rcs0.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-kbl2/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_whisper@basic-sync:
>     - shard-skl:          [INCOMPLETE][104] ([i915#2944]) -> [PASS][105]
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10558/shard-skl1/igt@gem_exec_whisper@basic-sync.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-skl8/igt@gem_exec_whisper@basic-sync.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [SKIP][106] ([i915#2190]) -> [PASS][107]
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10558/shard-tglb7/igt@gem_huc_copy@huc-copy.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-tglb5/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_mmap_offset@clear:
>     - shard-skl:          [FAIL][108] ([i915#1888] / [i915#3160]) -> [PASS][109]
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10558/shard-skl7/igt@gem_mmap_offset@clear.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-skl7/igt@gem_mmap_offset@clear.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-skl:          [DMESG-WARN][110] ([i915#1982]) -> [PASS][111] +3 similar issues
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10558/shard-skl7/igt@i915_module_load@reload-with-fault-injection.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-skl2/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-iclb:         [FAIL][112] ([i915#454]) -> [PASS][113]
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10558/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-iclb2/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-tglb:         [INCOMPLETE][114] ([i915#2411] / [i915#456]) -> [PASS][115]
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10558/shard-tglb7/igt@i915_suspend@forcewake.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-tglb8/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
>     - shard-glk:          [DMESG-WARN][116] ([i915#118] / [i915#95]) -> [PASS][117]
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10558/shard-glk8/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-glk7/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-skl:          [FAIL][118] ([i915#2346]) -> [PASS][119]
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10558/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled:
>     - shard-iclb:         [DMESG-WARN][120] -> [PASS][121]
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10558/shard-iclb2/igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-iclb6/igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-apl:          [INCOMPLETE][122] ([i915#180] / [i915#1982]) -> [PASS][123]
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10558/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
>     - shard-skl:          [FAIL][124] ([i915#79]) -> [PASS][125]
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10558/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
>     - shard-skl:          [FAIL][126] ([i915#2122]) -> [PASS][127]
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10558/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:
>     - shard-iclb:         [SKIP][128] ([i915#3701]) -> [PASS][129]
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10558/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-skl:          [FAIL][130] ([i915#1188]) -> [PASS][131]
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10558/shard-skl5/igt@kms_hdr@bpc-switch.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-skl1/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>     - shard-skl:          [FAIL][132] ([fdo#108145] / [i915#265]) -> [PASS][133] +1 similar issue
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10558/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_sprite_blt:
>     - shard-iclb:         [SKIP][134] ([fdo#109441]) -> [PASS][135] +1 similar issue
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10558/shard-iclb1/igt@kms_psr@psr2_sprite_blt.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-iclb:         [SKIP][136] ([i915#658]) -> [SKIP][137] ([i915#588])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10558/shard-iclb7/igt@i915_pm_dc@dc3co-vpb-simulation.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - shard-iclb:         [FAIL][138] ([i915#3343]) -> [SKIP][139] ([i915#3288])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10558/shard-iclb2/igt@i915_pm_dc@dc9-dpms.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-iclb:         [WARN][140] ([i915#1804] / [i915#2684]) -> [WARN]
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20982/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
