Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C907162DBF
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 19:07:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD1BA6EA5B;
	Tue, 18 Feb 2020 18:06:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 877E46EA5B
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 18:06:58 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 10:06:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,456,1574150400"; d="scan'208";a="315132489"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga001.jf.intel.com with SMTP; 18 Feb 2020 10:06:43 -0800
Date: Tue, 18 Feb 2020 10:06:43 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20200218180643.GV2014153@mdroper-desk1.amr.corp.intel.com>
References: <20200212191728.25227-1-rafael.antognolli@intel.com>
 <158190879883.7223.12813820017711972762@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158190879883.7223.12813820017711972762@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogIGZhaWx1cmUgZm9yIGRy?=
 =?utf-8?q?m/i915/tgl=3A_Add_Wa=5F1808121037_to_tgl=2E?=
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

On Mon, Feb 17, 2020 at 03:06:38AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/tgl: Add Wa_1808121037 to tgl.
> URL   : https://patchwork.freedesktop.org/series/73379/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_7926_full -> Patchwork_16550_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_16550_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_16550_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_16550_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@perf@oa-formats:
>     - shard-iclb:         [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb3/igt@perf@oa-formats.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16550/shard-iclb3/igt@perf@oa-formats.html

This appears to be known issue

        https://gitlab.freedesktop.org/drm/intel/issues/573

and unrelated to this patch.  Applied to dinq; thanks for the patch.


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_16550_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_parallel@vcs1-fds:
>     - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112080]) +14 similar issues
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16550/shard-iclb5/igt@gem_exec_parallel@vcs1-fds.html
> 
>   * igt@gem_exec_schedule@preempt-contexts-bsd2:
>     - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276]) +13 similar issues
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb1/igt@gem_exec_schedule@preempt-contexts-bsd2.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16550/shard-iclb3/igt@gem_exec_schedule@preempt-contexts-bsd2.html
> 
>   * igt@gem_exec_schedule@wide-bsd:
>     - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +5 similar issues
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb5/igt@gem_exec_schedule@wide-bsd.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16550/shard-iclb1/igt@gem_exec_schedule@wide-bsd.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-snoop:
>     - shard-hsw:          [PASS][9] -> [FAIL][10] ([i915#694])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-hsw5/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16550/shard-hsw1/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html
> 
>   * igt@gem_softpin@noreloc-s3:
>     - shard-skl:          [PASS][11] -> [INCOMPLETE][12] ([i915#69])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl4/igt@gem_softpin@noreloc-s3.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16550/shard-skl7/igt@gem_softpin@noreloc-s3.html
> 
>   * igt@gem_workarounds@suspend-resume-context:
>     - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +2 similar issues
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-apl7/igt@gem_workarounds@suspend-resume-context.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16550/shard-apl4/igt@gem_workarounds@suspend-resume-context.html
> 
>   * igt@kms_color@pipe-a-gamma:
>     - shard-tglb:         [PASS][15] -> [FAIL][16] ([i915#1149])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-tglb7/igt@kms_color@pipe-a-gamma.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16550/shard-tglb2/igt@kms_color@pipe-a-gamma.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-128x128-random:
>     - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#54])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16550/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-skl:          [PASS][19] -> [FAIL][20] ([IGT#5])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16550/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible:
>     - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#79])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16550/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
>     - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +2 similar issues
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16550/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>     - shard-skl:          [PASS][25] -> [FAIL][26] ([fdo#108145] / [i915#265])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16550/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
>     - shard-skl:          [PASS][27] -> [FAIL][28] ([fdo#108145])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16550/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
> 
>   * igt@kms_plane_lowres@pipe-a-tiling-y:
>     - shard-glk:          [PASS][29] -> [FAIL][30] ([i915#899])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-glk3/igt@kms_plane_lowres@pipe-a-tiling-y.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16550/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-y.html
> 
>   * igt@kms_psr2_su@frontbuffer:
>     - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109642] / [fdo#111068])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16550/shard-iclb8/igt@kms_psr2_su@frontbuffer.html
> 
>   * igt@kms_psr@no_drrs:
>     - shard-iclb:         [PASS][33] -> [FAIL][34] ([i915#173])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb7/igt@kms_psr@no_drrs.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16550/shard-iclb1/igt@kms_psr@no_drrs.html
> 
>   * igt@kms_psr@psr2_cursor_plane_move:
>     - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109441]) +2 similar issues
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16550/shard-iclb7/igt@kms_psr@psr2_cursor_plane_move.html
> 
>   * igt@prime_mmap_coherency@ioctl-errors:
>     - shard-hsw:          [PASS][37] -> [FAIL][38] ([i915#831])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-hsw1/igt@prime_mmap_coherency@ioctl-errors.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16550/shard-hsw5/igt@prime_mmap_coherency@ioctl-errors.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_caching@reads:
>     - shard-hsw:          [FAIL][39] ([i915#694]) -> [PASS][40]
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-hsw6/igt@gem_caching@reads.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16550/shard-hsw1/igt@gem_caching@reads.html
> 
>   * igt@gem_ctx_isolation@vcs1-dirty-create:
>     - shard-iclb:         [SKIP][41] ([fdo#112080]) -> [PASS][42] +8 similar issues
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb3/igt@gem_ctx_isolation@vcs1-dirty-create.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16550/shard-iclb2/igt@gem_ctx_isolation@vcs1-dirty-create.html
> 
>   * igt@gem_ctx_shared@exec-single-timeline-bsd:
>     - shard-iclb:         [SKIP][43] ([fdo#110841]) -> [PASS][44]
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16550/shard-iclb7/igt@gem_ctx_shared@exec-single-timeline-bsd.html
> 
>   * igt@gem_exec_balancer@smoke:
>     - shard-iclb:         [SKIP][45] ([fdo#110854]) -> [PASS][46]
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb3/igt@gem_exec_balancer@smoke.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16550/shard-iclb2/igt@gem_exec_balancer@smoke.html
> 
>   * igt@gem_exec_schedule@pi-userfault-bsd:
>     - shard-iclb:         [SKIP][47] ([i915#677]) -> [PASS][48]
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb2/igt@gem_exec_schedule@pi-userfault-bsd.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16550/shard-iclb5/igt@gem_exec_schedule@pi-userfault-bsd.html
> 
>   * igt@gem_exec_schedule@preemptive-hang-bsd:
>     - shard-iclb:         [SKIP][49] ([fdo#112146]) -> [PASS][50] +7 similar issues
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16550/shard-iclb3/igt@gem_exec_schedule@preemptive-hang-bsd.html
> 
>   * igt@gem_ppgtt@flink-and-close-vma-leak:
>     - shard-kbl:          [FAIL][51] ([i915#644]) -> [PASS][52]
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-kbl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16550/shard-kbl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-skl:          [INCOMPLETE][53] ([i915#716]) -> [PASS][54]
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl9/igt@gen9_exec_parse@allowed-single.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16550/shard-skl10/igt@gen9_exec_parse@allowed-single.html
> 
>   * {igt@kms_hdr@bpc-switch-dpms}:
>     - shard-skl:          [FAIL][55] ([i915#1188]) -> [PASS][56] +1 similar issue
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16550/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
>     - shard-apl:          [DMESG-WARN][57] ([i915#180]) -> [PASS][58] +2 similar issues
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-apl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16550/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
>     - shard-kbl:          [DMESG-WARN][59] ([i915#180]) -> [PASS][60] +1 similar issue
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16550/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>     - shard-skl:          [FAIL][61] ([fdo#108145]) -> [PASS][62]
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16550/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [FAIL][63] ([fdo#108145] / [i915#265]) -> [PASS][64]
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16550/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_primary_mmap_cpu:
>     - shard-iclb:         [SKIP][65] ([fdo#109441]) -> [PASS][66] +3 similar issues
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb3/igt@kms_psr@psr2_primary_mmap_cpu.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16550/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
> 
>   * igt@kms_setmode@basic:
>     - shard-apl:          [FAIL][67] ([i915#31]) -> [PASS][68]
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-apl7/igt@kms_setmode@basic.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16550/shard-apl1/igt@kms_setmode@basic.html
>     - shard-hsw:          [FAIL][69] ([i915#31]) -> [PASS][70]
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-hsw1/igt@kms_setmode@basic.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16550/shard-hsw5/igt@kms_setmode@basic.html
> 
>   * igt@prime_vgem@fence-wait-bsd2:
>     - shard-iclb:         [SKIP][71] ([fdo#109276]) -> [PASS][72] +21 similar issues
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb6/igt@prime_vgem@fence-wait-bsd2.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16550/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
>     - shard-iclb:         [FAIL][73] ([IGT#28]) -> [SKIP][74] ([fdo#112080])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16550/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
> 
>   * igt@gem_tiled_blits@interruptible:
>     - shard-hsw:          [FAIL][75] ([i915#818]) -> [FAIL][76] ([i915#694])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-hsw2/igt@gem_tiled_blits@interruptible.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16550/shard-hsw1/igt@gem_tiled_blits@interruptible.html
> 
>   * igt@kms_dp_dsc@basic-dsc-enable-edp:
>     - shard-iclb:         [SKIP][77] ([fdo#109349]) -> [DMESG-WARN][78] ([i915#1226])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb6/igt@kms_dp_dsc@basic-dsc-enable-edp.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16550/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
>   [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
>   [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
>   [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
>   [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
>   [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
>   [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
>   [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
>   [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
>   [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
>   [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
>   [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
>   [i915#831]: https://gitlab.freedesktop.org/drm/intel/issues/831
>   [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
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
>   * Linux: CI_DRM_7926 -> Patchwork_16550
> 
>   CI-20190529: 20190529
>   CI_DRM_7926: 6b2fe829d300abf285e9db8b252ffacd216df3ed @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5437: ae42fedfd0c536c560e8e17b06d9c7b94a4e8f0c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_16550: 311bb8e099cc5b1119247fbf73e1499d52c691f2 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16550/index.html
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

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
