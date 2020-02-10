Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 178CD1581C8
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2020 18:53:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A88C89DBF;
	Mon, 10 Feb 2020 17:53:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F067089DBF
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2020 17:53:05 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Feb 2020 09:53:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,425,1574150400"; d="scan'208";a="431679999"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by fmsmga005.fm.intel.com with SMTP; 10 Feb 2020 09:53:05 -0800
Date: Mon, 10 Feb 2020 09:53:05 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20200210175305.GJ232048@mdroper-desk1.amr.corp.intel.com>
References: <20200207001417.1229251-1-matthew.d.roper@intel.com>
 <158130753482.3098.5576533045978954525@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158130753482.3098.5576533045978954525@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D__drm/i915/ehl=3A_Update_port_clock_?=
 =?utf-8?q?voltage_level_requirements?=
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

On Mon, Feb 10, 2020 at 04:05:34AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [1/2] drm/i915/ehl: Update port clock voltage level requirements
> URL   : https://patchwork.freedesktop.org/series/73123/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_7881_full -> Patchwork_16474_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Applied to dinq.  Thanks Jose for the reviews.


Matt

> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_16474_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_schedule@preempt-bsd:
>     - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112146]) +2 similar issues
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7881/shard-iclb5/igt@gem_exec_schedule@preempt-bsd.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16474/shard-iclb4/igt@gem_exec_schedule@preempt-bsd.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
>     - shard-hsw:          [PASS][3] -> [FAIL][4] ([i915#694]) +1 similar issue
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7881/shard-hsw7/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16474/shard-hsw2/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
> 
>   * igt@gem_ppgtt@flink-and-close-vma-leak:
>     - shard-apl:          [PASS][5] -> [FAIL][6] ([i915#644])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7881/shard-apl8/igt@gem_ppgtt@flink-and-close-vma-leak.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16474/shard-apl4/igt@gem_ppgtt@flink-and-close-vma-leak.html
> 
>   * igt@gem_tiled_blits@normal:
>     - shard-hsw:          [PASS][7] -> [FAIL][8] ([i915#818])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7881/shard-hsw6/igt@gem_tiled_blits@normal.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16474/shard-hsw5/igt@gem_tiled_blits@normal.html
> 
>   * igt@gem_workarounds@suspend-resume-context:
>     - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180]) +2 similar issues
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7881/shard-apl8/igt@gem_workarounds@suspend-resume-context.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16474/shard-apl4/igt@gem_workarounds@suspend-resume-context.html
> 
>   * igt@i915_pm_dc@dc5-dpms:
>     - shard-iclb:         [PASS][11] -> [FAIL][12] ([i915#447])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7881/shard-iclb6/igt@i915_pm_dc@dc5-dpms.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16474/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
> 
>   * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
>     - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#72])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7881/shard-glk5/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16474/shard-glk3/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
>     - shard-hsw:          [PASS][15] -> [FAIL][16] ([i915#57])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7881/shard-hsw8/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16474/shard-hsw6/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-skl:          [PASS][17] -> [FAIL][18] ([IGT#5])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7881/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16474/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-kbl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +6 similar issues
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7881/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16474/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
>     - shard-skl:          [PASS][21] -> [FAIL][22] ([fdo#108145])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7881/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16474/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
> 
>   * igt@kms_psr@psr2_sprite_plane_move:
>     - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#109441])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7881/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16474/shard-iclb4/igt@kms_psr@psr2_sprite_plane_move.html
> 
>   * igt@kms_setmode@basic:
>     - shard-apl:          [PASS][25] -> [FAIL][26] ([i915#31])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7881/shard-apl6/igt@kms_setmode@basic.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16474/shard-apl3/igt@kms_setmode@basic.html
> 
>   * igt@perf_pmu@busy-accuracy-98-vcs1:
>     - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#112080]) +3 similar issues
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7881/shard-iclb1/igt@perf_pmu@busy-accuracy-98-vcs1.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16474/shard-iclb5/igt@perf_pmu@busy-accuracy-98-vcs1.html
> 
>   * igt@prime_vgem@fence-wait-bsd2:
>     - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109276]) +11 similar issues
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7881/shard-iclb4/igt@prime_vgem@fence-wait-bsd2.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16474/shard-iclb6/igt@prime_vgem@fence-wait-bsd2.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_async@concurrent-writes-bsd1:
>     - shard-iclb:         [SKIP][31] ([fdo#109276]) -> [PASS][32] +6 similar issues
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7881/shard-iclb5/igt@gem_exec_async@concurrent-writes-bsd1.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16474/shard-iclb4/igt@gem_exec_async@concurrent-writes-bsd1.html
> 
>   * igt@gem_exec_parallel@vcs1-fds:
>     - shard-iclb:         [SKIP][33] ([fdo#112080]) -> [PASS][34] +6 similar issues
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7881/shard-iclb3/igt@gem_exec_parallel@vcs1-fds.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16474/shard-iclb1/igt@gem_exec_parallel@vcs1-fds.html
> 
>   * igt@gem_exec_schedule@pi-common-bsd:
>     - shard-iclb:         [SKIP][35] ([i915#677]) -> [PASS][36]
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7881/shard-iclb4/igt@gem_exec_schedule@pi-common-bsd.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16474/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd.html
> 
>   * igt@gem_exec_schedule@preemptive-hang-bsd:
>     - shard-iclb:         [SKIP][37] ([fdo#112146]) -> [PASS][38] +3 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7881/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16474/shard-iclb6/igt@gem_exec_schedule@preemptive-hang-bsd.html
> 
>   * igt@gem_linear_blits@interruptible:
>     - shard-hsw:          [FAIL][39] ([i915#694]) -> [PASS][40]
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7881/shard-hsw2/igt@gem_linear_blits@interruptible.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16474/shard-hsw7/igt@gem_linear_blits@interruptible.html
> 
>   * igt@i915_selftest@live_gtt:
>     - shard-apl:          [TIMEOUT][41] ([fdo#112271]) -> [PASS][42]
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7881/shard-apl3/igt@i915_selftest@live_gtt.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16474/shard-apl8/igt@i915_selftest@live_gtt.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
>     - shard-hsw:          [DMESG-WARN][43] ([i915#44]) -> [PASS][44]
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7881/shard-hsw5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16474/shard-hsw1/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-suspend:
>     - shard-kbl:          [DMESG-WARN][45] ([i915#180]) -> [PASS][46] +6 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7881/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16474/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-skl:          [FAIL][47] ([IGT#5] / [i915#697]) -> [PASS][48]
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7881/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16474/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible:
>     - shard-skl:          [FAIL][49] ([i915#79]) -> [PASS][50]
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7881/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16474/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible:
>     - shard-apl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52] +3 similar issues
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7881/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16474/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
>     - shard-skl:          [FAIL][53] ([fdo#108145]) -> [PASS][54]
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7881/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16474/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
> 
>   * igt@kms_psr@no_drrs:
>     - shard-iclb:         [FAIL][55] ([i915#173]) -> [PASS][56]
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7881/shard-iclb1/igt@kms_psr@no_drrs.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16474/shard-iclb5/igt@kms_psr@no_drrs.html
> 
>   * igt@kms_psr@psr2_sprite_mmap_cpu:
>     - shard-iclb:         [SKIP][57] ([fdo#109441]) -> [PASS][58] +1 similar issue
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7881/shard-iclb1/igt@kms_psr@psr2_sprite_mmap_cpu.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16474/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html
> 
>   * igt@kms_setmode@basic:
>     - shard-skl:          [FAIL][59] ([i915#31]) -> [PASS][60]
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7881/shard-skl9/igt@kms_setmode@basic.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16474/shard-skl8/igt@kms_setmode@basic.html
>     - shard-kbl:          [FAIL][61] ([i915#31]) -> [PASS][62]
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7881/shard-kbl6/igt@kms_setmode@basic.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16474/shard-kbl7/igt@kms_setmode@basic.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_ctx_isolation@vcs1-nonpriv:
>     - shard-iclb:         [SKIP][63] ([fdo#112080]) -> [FAIL][64] ([IGT#28])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7881/shard-iclb3/igt@gem_ctx_isolation@vcs1-nonpriv.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16474/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv.html
> 
>   * igt@gem_tiled_blits@interruptible:
>     - shard-hsw:          [FAIL][65] ([i915#818]) -> [FAIL][66] ([i915#694])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7881/shard-hsw2/igt@gem_tiled_blits@interruptible.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16474/shard-hsw6/igt@gem_tiled_blits@interruptible.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-tglb:         [FAIL][67] ([i915#454]) -> [SKIP][68] ([i915#468])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7881/shard-tglb8/igt@i915_pm_dc@dc6-psr.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16474/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_selftest@live_blt:
>     - shard-hsw:          [DMESG-FAIL][69] ([i915#553] / [i915#725]) -> [DMESG-FAIL][70] ([i915#553])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7881/shard-hsw5/igt@i915_selftest@live_blt.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16474/shard-hsw7/igt@i915_selftest@live_blt.html
> 
>   * igt@kms_dp_dsc@basic-dsc-enable-edp:
>     - shard-iclb:         [SKIP][71] ([fdo#109349]) -> [DMESG-WARN][72] ([fdo#107724])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7881/shard-iclb7/igt@kms_dp_dsc@basic-dsc-enable-edp.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16474/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
> 
>   
>   [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
>   [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
>   [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
>   [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
>   [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
>   [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
>   [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
>   [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
>   [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
>   [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
>   [i915#57]: https://gitlab.freedesktop.org/drm/intel/issues/57
>   [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
>   [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
>   [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
>   [i915#697]: https://gitlab.freedesktop.org/drm/intel/issues/697
>   [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
>   [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
> 
> 
> Participating hosts (10 -> 10)
> ------------------------------
> 
>   No changes in participating hosts
> 
> 
> Build changes
> -------------
> 
>   * CI: CI-20190529 -> None
>   * Linux: CI_DRM_7881 -> Patchwork_16474
> 
>   CI-20190529: 20190529
>   CI_DRM_7881: f49d8692e642d735c322a11e92031c9ca043c77b @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5423: 02ef996e76b3bae1c62d6a1298462aba0b7ac51a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_16474: e6febe654c8bcb10cf9d49029a50226c642a6d69 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16474/index.html

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
