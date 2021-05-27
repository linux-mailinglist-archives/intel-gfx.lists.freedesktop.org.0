Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFACE393526
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 19:50:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 071E96E115;
	Thu, 27 May 2021 17:50:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52D456E115
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 17:50:32 +0000 (UTC)
IronPort-SDR: I65I+YM0LnR1vFmAxuM/5keU5rbzdBK+9tis97QKigk0MEu9MvieZeykp7I8ZEa5obVHl5FHs7
 eGnuJ29wa5zA==
X-IronPort-AV: E=McAfee;i="6200,9189,9997"; a="202834054"
X-IronPort-AV: E=Sophos;i="5.83,228,1616482800"; d="scan'208";a="202834054"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2021 10:50:27 -0700
IronPort-SDR: TtSL1eb20tG7JAYwlYCOPxlpWQP1dv/bVv2uxKcyL8Z6av43La1/Bl4+uP/eoGLtMtNOOV75ju
 AGFoLgPHpbbw==
X-IronPort-AV: E=Sophos;i="5.83,228,1616482800"; d="scan'208";a="445121377"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2021 10:50:25 -0700
Date: Thu, 27 May 2021 20:50:21 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>,
 Tomi P Sarvela <tomi.p.sarvela@intel.com>
Message-ID: <20210527175021.GA2755566@ideak-desk.fi.intel.com>
References: <20210526203456.2733040-1-imre.deak@intel.com>
 <162213246650.12241.11924740988842131904@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <162213246650.12241.11924740988842131904@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/adlp=3A_Add_missing_TBT_AUX_-=3E_PW=232_power_domain_depe?=
 =?utf-8?q?ndencies?=
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

Hi Lakshmi, Tomi,

On Thu, May 27, 2021 at 04:21:06PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/adlp: Add missing TBT AUX -> PW#2 power domain dependencies
> URL   : https://patchwork.freedesktop.org/series/90631/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10138_full -> Patchwork_20215_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_20215_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_20215_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_20215_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@drm_read@fault-buffer:
>     - shard-tglb:         [PASS][1] -> [DMESG-WARN][2] +1 similar issue
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-tglb5/igt@drm_read@fault-buffer.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-tglb5/igt@drm_read@fault-buffer.html

Unrelated platform. The same issue on shard-tglb5 was reported earlier,
see

https://lists.freedesktop.org/archives/igt-dev/2021-May/031535.html

Could the eDP cable/panel get checked/replaced on this machine?

>   * igt@i915_pm_sseu@full-enable:
>     - shard-skl:          [PASS][3] -> [FAIL][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-skl2/igt@i915_pm_sseu@full-enable.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-skl2/igt@i915_pm_sseu@full-enable.html

Unrelated platform, a similar issue seen before:
https://gitlab.freedesktop.org/drm/intel/-/issues/286

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_20215_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_persistence@legacy-engines-mixed:
>     - shard-snb:          NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#1099]) +2 similar issues
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-snb2/igt@gem_ctx_persistence@legacy-engines-mixed.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-glk:          [PASS][6] -> [FAIL][7] ([i915#2846])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-glk6/igt@gem_exec_fair@basic-deadline.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-glk8/igt@gem_exec_fair@basic-deadline.html
>     - shard-apl:          NOTRUN -> [FAIL][8] ([i915#2846])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-apl8/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-tglb:         [PASS][9] -> [FAIL][10] ([i915#2842])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-tglb7/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-tglb3/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][11] ([i915#2842])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-iclb1/igt@gem_exec_fair@basic-none@vcs1.html
>     - shard-kbl:          [PASS][12] -> [FAIL][13] ([i915#2842])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-kbl3/igt@gem_exec_fair@basic-none@vcs1.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-kbl2/igt@gem_exec_fair@basic-none@vcs1.html
> 
>   * igt@gem_exec_reloc@basic-wide-active@rcs0:
>     - shard-snb:          NOTRUN -> [FAIL][14] ([i915#2389]) +2 similar issues
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-snb2/igt@gem_exec_reloc@basic-wide-active@rcs0.html
> 
>   * igt@gem_exec_suspend@basic-s3:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][15] ([i915#180])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-kbl2/igt@gem_exec_suspend@basic-s3.html
> 
>   * igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:
>     - shard-apl:          NOTRUN -> [INCOMPLETE][16] ([i915#3468]) +1 similar issue
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-apl8/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html
>     - shard-kbl:          [PASS][17] -> [INCOMPLETE][18] ([i915#3468])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-kbl2/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-kbl4/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html
> 
>   * igt@gem_mmap_gtt@cpuset-medium-copy-xy:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][19] ([i915#3468])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-glk6/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html
> 
>   * igt@gem_mmap_gtt@fault-concurrent-x:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][20] ([i915#198] / [i915#3468])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-skl10/igt@gem_mmap_gtt@fault-concurrent-x.html
> 
>   * igt@gem_mmap_gtt@fault-concurrent-y:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][21] ([i915#3468])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-skl9/igt@gem_mmap_gtt@fault-concurrent-y.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-snb:          NOTRUN -> [WARN][22] ([i915#2658])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-snb2/igt@gem_pwrite@basic-exhaustion.html
>     - shard-apl:          NOTRUN -> [WARN][23] ([i915#2658])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-apl2/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_render_copy@yf-tiled-to-vebox-linear:
>     - shard-iclb:         NOTRUN -> [SKIP][24] ([i915#768])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-iclb6/igt@gem_render_copy@yf-tiled-to-vebox-linear.html
> 
>   * igt@gem_softpin@noreloc-s3:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][25] ([i915#180]) +1 similar issue
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-apl2/igt@gem_softpin@noreloc-s3.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-kbl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#3323])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-kbl7/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@unsync-unmap:
>     - shard-iclb:         NOTRUN -> [SKIP][27] ([i915#3297])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-iclb1/igt@gem_userptr_blits@unsync-unmap.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-apl:          NOTRUN -> [FAIL][28] ([i915#3318])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-apl1/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gem_vm_create@destroy-race:
>     - shard-tglb:         [PASS][29] -> [TIMEOUT][30] ([i915#2795])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-tglb1/igt@gem_vm_create@destroy-race.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-tglb3/igt@gem_vm_create@destroy-race.html
> 
>   * igt@gen7_exec_parse@batch-without-end:
>     - shard-iclb:         NOTRUN -> [SKIP][31] ([fdo#109289])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-iclb4/igt@gen7_exec_parse@batch-without-end.html
> 
>   * igt@kms_big_fb@x-tiled-8bpp-rotate-90:
>     - shard-iclb:         NOTRUN -> [SKIP][32] ([fdo#110725] / [fdo#111614]) +1 similar issue
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-iclb6/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_joiner@invalid-modeset:
>     - shard-apl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [i915#2705])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-apl2/igt@kms_big_joiner@invalid-modeset.html
> 
>   * igt@kms_ccs@pipe-c-ccs-on-another-bo:
>     - shard-skl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [fdo#111304])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-skl10/igt@kms_ccs@pipe-c-ccs-on-another-bo.html
> 
>   * igt@kms_chamelium@dp-frame-dump:
>     - shard-iclb:         NOTRUN -> [SKIP][35] ([fdo#109284] / [fdo#111827]) +5 similar issues
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-iclb4/igt@kms_chamelium@dp-frame-dump.html
> 
>   * igt@kms_chamelium@hdmi-aspect-ratio:
>     - shard-skl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [fdo#111827]) +6 similar issues
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-skl10/igt@kms_chamelium@hdmi-aspect-ratio.html
> 
>   * igt@kms_chamelium@hdmi-cmp-planar-formats:
>     - shard-kbl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-kbl7/igt@kms_chamelium@hdmi-cmp-planar-formats.html
> 
>   * igt@kms_chamelium@hdmi-edid-change-during-suspend:
>     - shard-apl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [fdo#111827]) +24 similar issues
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-apl2/igt@kms_chamelium@hdmi-edid-change-during-suspend.html
> 
>   * igt@kms_color@pipe-a-ctm-negative:
>     - shard-skl:          [PASS][39] -> [DMESG-WARN][40] ([i915#1982])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-skl7/igt@kms_color@pipe-a-ctm-negative.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-skl1/igt@kms_color@pipe-a-ctm-negative.html
> 
>   * igt@kms_color@pipe-d-ctm-red-to-blue:
>     - shard-iclb:         NOTRUN -> [SKIP][41] ([fdo#109278] / [i915#1149])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-iclb6/igt@kms_color@pipe-d-ctm-red-to-blue.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
>     - shard-snb:          NOTRUN -> [SKIP][42] ([fdo#109271] / [fdo#111827]) +10 similar issues
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-snb2/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html
> 
>   * igt@kms_color_chamelium@pipe-d-gamma:
>     - shard-iclb:         NOTRUN -> [SKIP][43] ([fdo#109278] / [fdo#109284] / [fdo#111827]) +1 similar issue
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-iclb4/igt@kms_color_chamelium@pipe-d-gamma.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-apl:          NOTRUN -> [TIMEOUT][44] ([i915#1319])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-apl8/igt@kms_content_protection@srm.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen:
>     - shard-apl:          NOTRUN -> [FAIL][45] ([i915#3444])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-apl2/igt@kms_cursor_crc@pipe-b-cursor-64x21-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-128x128-rapid-movement:
>     - shard-glk:          NOTRUN -> [SKIP][46] ([fdo#109271]) +20 similar issues
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-glk6/igt@kms_cursor_crc@pipe-d-cursor-128x128-rapid-movement.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-32x10-offscreen:
>     - shard-iclb:         NOTRUN -> [SKIP][47] ([fdo#109278]) +10 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-iclb6/igt@kms_cursor_crc@pipe-d-cursor-32x10-offscreen.html
> 
>   * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
>     - shard-tglb:         [PASS][48] -> [DMESG-WARN][49] ([i915#2868] / [i915#533])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-tglb5/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-tglb5/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
>     - shard-skl:          [PASS][50] -> [FAIL][51] ([i915#2346])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-kbl:          [PASS][52] -> [INCOMPLETE][53] ([i915#155] / [i915#180] / [i915#636])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>     - shard-kbl:          [PASS][54] -> [DMESG-WARN][55] ([i915#180]) +3 similar issues
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen:
>     - shard-tglb:         [PASS][56] -> [DMESG-WARN][57] ([i915#2868]) +1 similar issue
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:
>     - shard-skl:          NOTRUN -> [SKIP][58] ([fdo#109271]) +62 similar issues
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-skl10/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-wc:
>     - shard-glk:          [PASS][59] -> [FAIL][60] ([i915#49])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-glk2/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-wc.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-glk8/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render:
>     - shard-snb:          NOTRUN -> [SKIP][61] ([fdo#109271]) +178 similar issues
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-snb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-cpu:
>     - shard-iclb:         NOTRUN -> [SKIP][62] ([fdo#109280]) +8 similar issues
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-iclb6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-skl:          [PASS][63] -> [FAIL][64] ([i915#1188]) +1 similar issue
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-apl:          [PASS][65] -> [DMESG-WARN][66] ([i915#180])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-apl8/igt@kms_hdr@bpc-switch-suspend.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-apl1/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
>     - shard-apl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#533])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-apl8/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
>     - shard-kbl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#533])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-kbl7/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
>     - shard-apl:          NOTRUN -> [FAIL][69] ([fdo#108145] / [i915#265]) +5 similar issues
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
>     - shard-apl:          NOTRUN -> [FAIL][70] ([i915#265])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>     - shard-skl:          [PASS][71] -> [FAIL][72] ([fdo#108145] / [i915#265])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
>     - shard-kbl:          NOTRUN -> [FAIL][73] ([i915#265])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-kbl7/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
>     - shard-apl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#658]) +8 similar issues
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-apl3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
>     - shard-skl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#658]) +1 similar issue
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-skl10/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
>     - shard-kbl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#658]) +1 similar issue
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-kbl2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
>     - shard-iclb:         NOTRUN -> [SKIP][77] ([i915#658])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-iclb6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html
> 
>   * igt@kms_psr2_su@page_flip:
>     - shard-glk:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#658])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-glk6/igt@kms_psr2_su@page_flip.html
> 
>   * igt@kms_psr@psr2_dpms:
>     - shard-iclb:         [PASS][79] -> [SKIP][80] ([fdo#109441]) +1 similar issue
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-iclb2/igt@kms_psr@psr2_dpms.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-iclb5/igt@kms_psr@psr2_dpms.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-skl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#2437])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-skl9/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-glk:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#2437])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-glk6/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
>     - shard-apl:          NOTRUN -> [SKIP][83] ([fdo#109271]) +251 similar issues
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-apl7/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html
> 
>   * igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame:
>     - shard-iclb:         NOTRUN -> [SKIP][84] ([i915#2530])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-iclb6/igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame.html
> 
>   * igt@perf@polling-small-buf:
>     - shard-skl:          [PASS][85] -> [FAIL][86] ([i915#1722])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-skl3/igt@perf@polling-small-buf.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-skl8/igt@perf@polling-small-buf.html
> 
>   * igt@prime_nv_pcopy@test2:
>     - shard-kbl:          NOTRUN -> [SKIP][87] ([fdo#109271]) +51 similar issues
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-kbl7/igt@prime_nv_pcopy@test2.html
> 
>   * igt@prime_nv_pcopy@test3_3:
>     - shard-iclb:         NOTRUN -> [SKIP][88] ([fdo#109291]) +1 similar issue
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-iclb4/igt@prime_nv_pcopy@test3_3.html
> 
>   * igt@sysfs_clients@create:
>     - shard-apl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#2994]) +5 similar issues
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-apl6/igt@sysfs_clients@create.html
>     - shard-skl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [i915#2994])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-skl10/igt@sysfs_clients@create.html
> 
>   * igt@sysfs_clients@recycle:
>     - shard-iclb:         NOTRUN -> [SKIP][91] ([i915#2994])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-iclb6/igt@sysfs_clients@recycle.html
> 
>   * igt@sysfs_clients@sema-50:
>     - shard-kbl:          NOTRUN -> [SKIP][92] ([fdo#109271] / [i915#2994])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-kbl7/igt@sysfs_clients@sema-50.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_isolation@preservation-s3@vcs0:
>     - shard-kbl:          [DMESG-WARN][93] ([i915#180]) -> [PASS][94] +3 similar issues
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@bcs0:
>     - shard-tglb:         [FAIL][95] ([i915#2842]) -> [PASS][96] +1 similar issue
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-tglb6/igt@gem_exec_fair@basic-pace@bcs0.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-tglb5/igt@gem_exec_fair@basic-pace@bcs0.html
> 
>   * igt@gem_mmap_gtt@cpuset-basic-small-copy:
>     - shard-iclb:         [INCOMPLETE][97] ([i915#3468]) -> [PASS][98]
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-iclb1/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-iclb6/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
>     - shard-snb:          [INCOMPLETE][99] ([i915#2055]) -> [PASS][100]
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-snb6/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-snb2/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy-odd:
>     - shard-glk:          [FAIL][101] ([i915#307]) -> [PASS][102]
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-glk4/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-glk8/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
> 
>   * igt@gem_spin_batch@engines@vecs0:
>     - shard-apl:          [FAIL][103] ([i915#2898]) -> [PASS][104]
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-apl8/igt@gem_spin_batch@engines@vecs0.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-apl7/igt@gem_spin_batch@engines@vecs0.html
> 
>   * igt@gem_userptr_blits@huge-split:
>     - shard-tglb:         [FAIL][105] ([i915#3376]) -> [PASS][106]
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-tglb1/igt@gem_userptr_blits@huge-split.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-tglb6/igt@gem_userptr_blits@huge-split.html
> 
>   * igt@kms_color@pipe-c-ctm-0-75:
>     - shard-skl:          [DMESG-WARN][107] ([i915#1982]) -> [PASS][108]
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-skl4/igt@kms_color@pipe-c-ctm-0-75.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-skl8/igt@kms_color@pipe-c-ctm-0-75.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-skl:          [FAIL][109] ([i915#2346]) -> [PASS][110] +1 similar issue
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:
>     - shard-glk:          [FAIL][111] ([i915#79]) -> [PASS][112]
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
>     - shard-iclb:         [FAIL][113] ([i915#79]) -> [PASS][114]
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-iclb3/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-iclb1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@a-dp1:
>     - shard-apl:          [DMESG-WARN][115] ([i915#180]) -> [PASS][116]
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-apl6/igt@kms_flip@flip-vs-suspend@a-dp1.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-apl2/igt@kms_flip@flip-vs-suspend@a-dp1.html
> 
>   * igt@kms_psr@psr2_sprite_mmap_cpu:
>     - shard-iclb:         [SKIP][117] ([fdo#109441]) -> [PASS][118]
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-iclb8/igt@kms_psr@psr2_sprite_mmap_cpu.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html
> 
>   * igt@kms_vblank@pipe-c-ts-continuation-idle-hang:
>     - shard-glk:          [DMESG-WARN][119] ([i915#118] / [i915#95]) -> [PASS][120]
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-glk2/igt@kms_vblank@pipe-c-ts-continuation-idle-hang.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-glk4/igt@kms_vblank@pipe-c-ts-continuation-idle-hang.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-skl:          [FAIL][121] ([i915#1542]) -> [PASS][122]
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-skl10/igt@perf@polling-parameterized.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-skl9/igt@perf@polling-parameterized.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_mmap_gtt@cpuset-medium-copy-xy:
>     - shard-iclb:         [INCOMPLETE][123] ([i915#3468]) -> [FAIL][124] ([i915#307])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-iclb3/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-iclb4/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-iclb:         [WARN][125] ([i915#2684]) -> [WARN][126] ([i915#1804] / [i915#2684])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:
>     - shard-iclb:         [SKIP][127] ([i915#2920]) -> [SKIP][128] ([i915#658]) +1 similar issue
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:
>     - shard-iclb:         [SKIP][129] ([i915#658]) -> [SKIP][130] ([i915#2920]) +1 similar issue
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-iclb8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2292] / [i915#2722] / [i915#3002] / [i915#3363] / [i915#602]) -> ([FAIL][148], [FAIL][149], [FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153], [FAIL][154], [FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158], [FAIL][159], [FAIL][160], [FAIL][161], [FAIL][162], [FAIL][163], [FAIL][164]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2722] / [i915#3002] / [i915#3363] / [i915#92])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-kbl1/igt@runner@aborted.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-kbl1/igt@runner@aborted.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-kbl1/igt@runner@aborted.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-kbl1/igt@runner@aborted.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-kbl2/igt@runner@aborted.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-kbl2/igt@runner@aborted.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-kbl2/igt@runner@aborted.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-kbl2/igt@runner@aborted.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-kbl3/igt@runner@aborted.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-kbl4/igt@runner@aborted.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-kbl4/igt@runner@aborted.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-kbl3/igt@runner@aborted.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-kbl7/igt@runner@aborted.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-kbl7/igt@runner@aborted.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10138/shard-kbl7/igt@runner@aborted.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20215/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
