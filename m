Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D5CD3D4479
	for <lists+intel-gfx@lfdr.de>; Sat, 24 Jul 2021 05:00:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54BE16EA46;
	Sat, 24 Jul 2021 03:00:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 120586EA46
 for <intel-gfx@lists.freedesktop.org>; Sat, 24 Jul 2021 03:00:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10054"; a="212044065"
X-IronPort-AV: E=Sophos;i="5.84,265,1620716400"; d="scan'208";a="212044065"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2021 20:00:35 -0700
X-IronPort-AV: E=Sophos;i="5.84,265,1620716400"; d="scan'208";a="497499416"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2021 20:00:35 -0700
Date: Fri, 23 Jul 2021 20:00:33 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20210724030033.GH1556418@mdroper-desk1.amr.corp.intel.com>
References: <20210723170618.1477415-1-matthew.d.roper@intel.com>
 <162709370963.10882.4012562598570313160@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <162709370963.10882.4012562598570313160@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Program_chicken_bit_during_DP_MST_sequence_on_TGL+?=
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

On Sat, Jul 24, 2021 at 02:28:29AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Program chicken bit during DP MST sequence on TGL+
> URL   : https://patchwork.freedesktop.org/series/92958/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10379_full -> Patchwork_20696_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_20696_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_20696_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_20696_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live@execlists:
>     - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10379/shard-tglb6/igt@i915_selftest@live@execlists.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-tglb6/igt@i915_selftest@live@execlists.html

Random disconnect/system hang during a GT selftest; not related to the
DP-MST display programming here.

Patch applied drm-intel-next; thanks Jose for the review.


Matt

> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@kms_ccs@pipe-a-bad-rotation-90-yf_tiled_ccs:
>     - {shard-rkl}:        [FAIL][3] ([i915#3678]) -> [SKIP][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10379/shard-rkl-5/igt@kms_ccs@pipe-a-bad-rotation-90-yf_tiled_ccs.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-rkl-6/igt@kms_ccs@pipe-a-bad-rotation-90-yf_tiled_ccs.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
>     - {shard-rkl}:        [SKIP][5] ([i915#1849]) -> [DMESG-WARN][6]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10379/shard-rkl-5/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-rkl-6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_20696_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@feature_discovery@chamelium:
>     - shard-iclb:         NOTRUN -> [SKIP][7] ([fdo#111827])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-iclb8/igt@feature_discovery@chamelium.html
> 
>   * igt@gem_ctx_persistence@engines-mixed:
>     - shard-snb:          NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#1099]) +5 similar issues
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-snb2/igt@gem_ctx_persistence@engines-mixed.html
> 
>   * igt@gem_ctx_persistence@many-contexts:
>     - shard-tglb:         [PASS][9] -> [FAIL][10] ([i915#2410])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10379/shard-tglb2/igt@gem_ctx_persistence@many-contexts.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-tglb2/igt@gem_ctx_persistence@many-contexts.html
> 
>   * igt@gem_eio@in-flight-contexts-1us:
>     - shard-iclb:         [PASS][11] -> [TIMEOUT][12] ([i915#3070])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10379/shard-iclb7/igt@gem_eio@in-flight-contexts-1us.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-iclb4/igt@gem_eio@in-flight-contexts-1us.html
> 
>   * igt@gem_eio@in-flight-suspend:
>     - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +1 similar issue
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10379/shard-kbl3/igt@gem_eio@in-flight-suspend.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-kbl6/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [PASS][15] -> [TIMEOUT][16] ([i915#2369] / [i915#3063] / [i915#3648])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10379/shard-tglb6/igt@gem_eio@unwedge-stress.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-tglb3/igt@gem_eio@unwedge-stress.html
>     - shard-iclb:         [PASS][17] -> [TIMEOUT][18] ([i915#2369] / [i915#2481] / [i915#3070])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10379/shard-iclb8/igt@gem_eio@unwedge-stress.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-iclb2/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-kbl:          [PASS][19] -> [FAIL][20] ([i915#2846])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10379/shard-kbl7/igt@gem_exec_fair@basic-deadline.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-kbl4/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglb:         [PASS][21] -> [FAIL][22] ([i915#2842])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10379/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html
>     - shard-glk:          [PASS][23] -> [FAIL][24] ([i915#2842])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10379/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-iclb:         NOTRUN -> [FAIL][25] ([i915#2842]) +1 similar issue
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-iclb8/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>     - shard-glk:          NOTRUN -> [FAIL][26] ([i915#2842])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-glk5/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-tglb:         [PASS][27] -> [FAIL][28] ([i915#2876])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10379/shard-tglb3/igt@gem_exec_fair@basic-pace@rcs0.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-tglb6/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
>     - shard-snb:          NOTRUN -> [SKIP][29] ([fdo#109271]) +531 similar issues
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-snb5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-apl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [i915#2190])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-apl7/igt@gem_huc_copy@huc-copy.html
>     - shard-glk:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#2190])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-glk5/igt@gem_huc_copy@huc-copy.html
>     - shard-iclb:         NOTRUN -> [SKIP][32] ([i915#2190])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-iclb8/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy-odd:
>     - shard-iclb:         [PASS][33] -> [FAIL][34] ([i915#2428])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10379/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-apl:          NOTRUN -> [WARN][35] ([i915#2658])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-apl8/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-kbl:          NOTRUN -> [WARN][36] ([i915#2658])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-kbl2/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][37] ([i915#768])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-iclb8/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-apl:          NOTRUN -> [FAIL][38] ([i915#3318])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-apl7/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gen7_exec_parse@basic-allowed:
>     - shard-skl:          NOTRUN -> [SKIP][39] ([fdo#109271]) +34 similar issues
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-skl2/igt@gen7_exec_parse@basic-allowed.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-skl:          [PASS][40] -> [DMESG-WARN][41] ([i915#1436] / [i915#716])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10379/shard-skl3/igt@gen9_exec_parse@allowed-single.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-skl3/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_rpm@basic-rte:
>     - shard-apl:          NOTRUN -> [FAIL][42] ([i915#579])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-apl7/igt@i915_pm_rpm@basic-rte.html
>     - shard-iclb:         NOTRUN -> [FAIL][43] ([i915#579])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-iclb8/igt@i915_pm_rpm@basic-rte.html
> 
>   * igt@i915_pm_rpm@drm-resources-equal:
>     - shard-tglb:         NOTRUN -> [SKIP][44] ([i915#579])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-tglb2/igt@i915_pm_rpm@drm-resources-equal.html
> 
>   * igt@i915_pm_rpm@gem-mmap-type:
>     - shard-iclb:         NOTRUN -> [SKIP][45] ([i915#579])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-iclb8/igt@i915_pm_rpm@gem-mmap-type.html
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
>     - shard-iclb:         NOTRUN -> [SKIP][46] ([fdo#110725] / [fdo#111614])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-iclb8/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-kbl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [i915#3777]) +1 similar issue
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-kbl4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
>     - shard-apl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#3777]) +1 similar issue
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-apl1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-90:
>     - shard-iclb:         [PASS][49] -> [DMESG-WARN][50] ([i915#3621])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10379/shard-iclb4/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-iclb1/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
>     - shard-iclb:         NOTRUN -> [SKIP][51] ([fdo#110723])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-iclb8/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-180:
>     - shard-tglb:         NOTRUN -> [SKIP][52] ([fdo#111615])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-tglb2/igt@kms_big_fb@yf-tiled-64bpp-rotate-180.html
> 
>   * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][53] ([i915#3689])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-tglb2/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_ccs.html
> 
>   * igt@kms_chamelium@dp-mode-timings:
>     - shard-apl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [fdo#111827]) +27 similar issues
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-apl2/igt@kms_chamelium@dp-mode-timings.html
> 
>   * igt@kms_chamelium@hdmi-mode-timings:
>     - shard-snb:          NOTRUN -> [SKIP][55] ([fdo#109271] / [fdo#111827]) +20 similar issues
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-snb6/igt@kms_chamelium@hdmi-mode-timings.html
> 
>   * igt@kms_chamelium@vga-frame-dump:
>     - shard-glk:          NOTRUN -> [SKIP][56] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-glk5/igt@kms_chamelium@vga-frame-dump.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-0-25:
>     - shard-kbl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-kbl4/igt@kms_color_chamelium@pipe-b-ctm-0-25.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-limited-range:
>     - shard-iclb:         NOTRUN -> [SKIP][58] ([fdo#109284] / [fdo#111827]) +3 similar issues
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-iclb8/igt@kms_color_chamelium@pipe-c-ctm-limited-range.html
> 
>   * igt@kms_color_chamelium@pipe-c-degamma:
>     - shard-skl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-skl2/igt@kms_color_chamelium@pipe-c-degamma.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-iclb:         NOTRUN -> [SKIP][60] ([fdo#109300] / [fdo#111066])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-iclb8/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-apl:          NOTRUN -> [TIMEOUT][61] ([i915#1319]) +1 similar issue
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-apl1/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-32x32-random:
>     - shard-iclb:         NOTRUN -> [SKIP][62] ([fdo#109278]) +15 similar issues
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-iclb8/igt@kms_cursor_crc@pipe-a-cursor-32x32-random.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-512x170-random:
>     - shard-iclb:         NOTRUN -> [SKIP][63] ([fdo#109278] / [fdo#109279])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-iclb8/igt@kms_cursor_crc@pipe-a-cursor-512x170-random.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
>     - shard-iclb:         NOTRUN -> [SKIP][64] ([fdo#109274] / [fdo#109278])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-iclb8/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-apl:          [PASS][65] -> [INCOMPLETE][66] ([i915#180] / [i915#1982])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10379/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
>     - shard-apl:          [PASS][67] -> [DMESG-WARN][68] ([i915#180]) +2 similar issues
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10379/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@b-dp1:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][69] ([i915#180]) +1 similar issue
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-apl1/igt@kms_flip@flip-vs-suspend@b-dp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@c-dp1:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][70] ([i915#180]) +1 similar issue
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][71] ([i915#3699])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-skl2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt:
>     - shard-iclb:         NOTRUN -> [SKIP][72] ([fdo#109280]) +8 similar issues
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-iclb8/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render:
>     - shard-glk:          NOTRUN -> [SKIP][73] ([fdo#109271]) +29 similar issues
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-glk5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:
>     - shard-kbl:          NOTRUN -> [SKIP][74] ([fdo#109271]) +76 similar issues
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-kbl4/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html
> 
>   * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
>     - shard-kbl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#533])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-kbl6/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
>     - shard-apl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#533])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-apl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
>     - shard-apl:          NOTRUN -> [FAIL][77] ([fdo#108145] / [i915#265]) +2 similar issues
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
>     - shard-kbl:          NOTRUN -> [FAIL][78] ([fdo#108145] / [i915#265])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-kbl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
>     - shard-apl:          NOTRUN -> [FAIL][79] ([i915#265])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-apl1/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
>     - shard-skl:          NOTRUN -> [FAIL][80] ([fdo#108145] / [i915#265])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
> 
>   * igt@kms_plane_lowres@pipe-b-tiling-none:
>     - shard-iclb:         NOTRUN -> [SKIP][81] ([i915#3536]) +1 similar issue
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-iclb8/igt@kms_plane_lowres@pipe-b-tiling-none.html
> 
>   * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
>     - shard-apl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#2733])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-apl7/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:
>     - shard-iclb:         NOTRUN -> [SKIP][83] ([i915#658])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-iclb8/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html
>     - shard-glk:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#658])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-glk5/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
>     - shard-apl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#658]) +4 similar issues
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-apl1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
>     - shard-kbl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [i915#658]) +1 similar issue
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-kbl2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html
> 
>   * igt@kms_psr@psr2_basic:
>     - shard-iclb:         [PASS][87] -> [SKIP][88] ([fdo#109441]) +2 similar issues
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10379/shard-iclb2/igt@kms_psr@psr2_basic.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-iclb7/igt@kms_psr@psr2_basic.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_cpu:
>     - shard-iclb:         NOTRUN -> [SKIP][89] ([fdo#109441])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-iclb8/igt@kms_psr@psr2_cursor_mmap_cpu.html
> 
>   * igt@kms_setmode@basic:
>     - shard-snb:          NOTRUN -> [FAIL][90] ([i915#31])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-snb2/igt@kms_setmode@basic.html
> 
>   * igt@kms_vblank@pipe-d-ts-continuation-idle:
>     - shard-apl:          NOTRUN -> [SKIP][91] ([fdo#109271]) +337 similar issues
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-apl8/igt@kms_vblank@pipe-d-ts-continuation-idle.html
> 
>   * igt@kms_vrr@flip-suspend:
>     - shard-iclb:         NOTRUN -> [SKIP][92] ([fdo#109502])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-iclb8/igt@kms_vrr@flip-suspend.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-apl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [i915#2437])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-apl2/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@perf@polling:
>     - shard-skl:          [PASS][94] -> [FAIL][95] ([i915#1542])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10379/shard-skl4/igt@perf@polling.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-skl9/igt@perf@polling.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-glk:          [PASS][96] -> [FAIL][97] ([i915#1542])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10379/shard-glk4/igt@perf@polling-parameterized.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-glk4/igt@perf@polling-parameterized.html
> 
>   * igt@perf@unprivileged-single-ctx-counters:
>     - shard-iclb:         NOTRUN -> [SKIP][98] ([fdo#109289]) +1 similar issue
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-iclb8/igt@perf@unprivileged-single-ctx-counters.html
> 
>   * igt@prime_nv_pcopy@test3_3:
>     - shard-iclb:         NOTRUN -> [SKIP][99] ([fdo#109291])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-iclb8/igt@prime_nv_pcopy@test3_3.html
> 
>   * igt@sysfs_clients@sema-10:
>     - shard-kbl:          NOTRUN -> [SKIP][100] ([fdo#109271] / [i915#2994])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-kbl2/igt@sysfs_clients@sema-10.html
> 
>   * igt@sysfs_clients@sema-50:
>     - shard-apl:          NOTRUN -> [SKIP][101] ([fdo#109271] / [i915#2994]) +5 similar issues
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-apl7/igt@sysfs_clients@sema-50.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@fbdev@write:
>     - {shard-rkl}:        [SKIP][102] ([i915#2582]) -> [PASS][103]
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10379/shard-rkl-5/igt@fbdev@write.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-rkl-6/igt@fbdev@write.html
> 
>   * igt@feature_discovery@psr2:
>     - shard-iclb:         [SKIP][104] ([i915#658]) -> [PASS][105]
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10379/shard-iclb3/igt@feature_discovery@psr2.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-iclb2/igt@feature_discovery@psr2.html
>     - {shard-rkl}:        [SKIP][106] ([i915#658]) -> [PASS][107]
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10379/shard-rkl-5/igt@feature_discovery@psr2.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-rkl-6/igt@feature_discovery@psr2.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@rcs0:
>     - shard-skl:          [INCOMPLETE][108] ([i915#198]) -> [PASS][109] +1 similar issue
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10379/shard-skl10/igt@gem_ctx_isolation@preservation-s3@rcs0.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-skl2/igt@gem_ctx_isolation@preservation-s3@rcs0.html
> 
>   * igt@gem_eio@in-flight-contexts-10ms:
>     - shard-tglb:         [TIMEOUT][110] ([i915#3063]) -> [PASS][111]
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10379/shard-tglb6/igt@gem_eio@in-flight-contexts-10ms.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-tglb1/igt@gem_eio@in-flight-contexts-10ms.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-glk:          [FAIL][112] ([i915#2846]) -> [PASS][113]
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10379/shard-glk4/igt@gem_exec_fair@basic-deadline.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-glk4/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-kbl:          [FAIL][114] ([i915#2842]) -> [PASS][115] +1 similar issue
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10379/shard-kbl6/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-kbl2/igt@gem_exec_fair@basic-none-solo@rcs0.html
>     - shard-glk:          [FAIL][116] ([i915#2842]) -> [PASS][117] +1 similar issue
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10379/shard-glk7/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-glk5/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_whisper@basic-contexts-forked:
>     - shard-iclb:         [INCOMPLETE][118] ([i915#1895]) -> [PASS][119]
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10379/shard-iclb8/igt@gem_exec_whisper@basic-contexts-forked.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-iclb8/igt@gem_exec_whisper@basic-contexts-forked.html
> 
>   * igt@gem_mmap_gtt@cpuset-medium-copy:
>     - shard-glk:          [FAIL][120] ([i915#1888] / [i915#307]) -> [PASS][121]
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10379/shard-glk2/igt@gem_mmap_gtt@cpuset-medium-copy.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-glk6/igt@gem_mmap_gtt@cpuset-medium-copy.html
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-tglb:         [WARN][122] ([i915#2681]) -> [PASS][123]
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10379/shard-tglb7/igt@i915_pm_rc6_residency@rc6-fence.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-tglb5/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-180:
>     - {shard-rkl}:        [SKIP][124] ([i915#3638]) -> [PASS][125]
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10379/shard-rkl-5/igt@kms_big_fb@linear-16bpp-rotate-180.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-rkl-6/igt@kms_big_fb@linear-16bpp-rotate-180.html
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-180:
>     - shard-iclb:         [DMESG-WARN][126] ([i915#3621]) -> [PASS][127]
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10379/shard-iclb1/igt@kms_big_fb@linear-64bpp-rotate-180.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-iclb8/igt@kms_big_fb@linear-64bpp-rotate-180.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
>     - {shard-rkl}:        [SKIP][128] ([i915#3721]) -> [PASS][129] +3 similar issues
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10379/shard-rkl-5/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-32bpp-rotate-270:
>     - {shard-rkl}:        [SKIP][130] ([fdo#111614]) -> [PASS][131]
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10379/shard-rkl-5/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-rkl-6/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
>     - {shard-rkl}:        [FAIL][132] ([i915#3678]) -> [PASS][133] +6 similar issues
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10379/shard-rkl-5/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-rkl-6/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_color@pipe-b-ctm-0-25:
>     - {shard-rkl}:        [SKIP][134] ([i915#1149] / [i915#1849]) -> [PASS][135] +3 similar issues
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10379/shard-rkl-5/igt@kms_color@pipe-b-ctm-0-25.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-rkl-6/igt@kms_color@pipe-b-ctm-0-25.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding:
>     - {shard-rkl}:        [SKIP][136] ([fdo#112022]) -> [PASS][137] +10 similar issues
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10379/shard-rkl-5/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-suspend:
>     - shard-kbl:          [DMESG-WARN][138] ([i915#180]) -> [PASS][139] +2 similar issues
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10379/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
> 
>   * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
>     - {shard-rkl}:        [SKIP][140] ([fdo#111825]) -> [PASS][141] +3 similar issues
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10379/shard-rkl-5/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb8888-mmap-
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20696/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
