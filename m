Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 702F7168A1F
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 23:57:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78A2E6E2A3;
	Fri, 21 Feb 2020 22:57:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F23066E2A3
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 22:57:10 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Feb 2020 14:57:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,470,1574150400"; d="scan'208";a="259770118"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by fmsmga004.fm.intel.com with SMTP; 21 Feb 2020 14:57:10 -0800
Date: Fri, 21 Feb 2020 14:57:10 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20200221225710.GG3112363@mdroper-desk1.amr.corp.intel.com>
References: <20200210202853.1546453-1-matthew.d.roper@intel.com>
 <158232510799.7917.4069988923604487500@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158232510799.7917.4069988923604487500@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=3A_Add_Wa=5F22010178259=3Atgl_=28rev2=29?=
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

On Fri, Feb 21, 2020 at 10:45:07PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/tgl: Add Wa_22010178259:tgl (rev2)
> URL   : https://patchwork.freedesktop.org/series/73255/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_7967_full -> Patchwork_16634_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.
> 

Applied to dinq.  Thanks Jose for the review.


Matt

>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_16634_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_shared@exec-shared-gtt-bsd2:
>     - shard-tglb:         [PASS][1] -> [FAIL][2] ([i915#616])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-tglb1/igt@gem_ctx_shared@exec-shared-gtt-bsd2.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/shard-tglb7/igt@gem_ctx_shared@exec-shared-gtt-bsd2.html
> 
>   * igt@gem_exec_schedule@out-order-bsd2:
>     - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276]) +8 similar issues
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb4/igt@gem_exec_schedule@out-order-bsd2.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/shard-iclb6/igt@gem_exec_schedule@out-order-bsd2.html
> 
>   * igt@gem_exec_schedule@pi-shared-iova-bsd:
>     - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#677])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb7/igt@gem_exec_schedule@pi-shared-iova-bsd.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/shard-iclb4/igt@gem_exec_schedule@pi-shared-iova-bsd.html
> 
>   * igt@gem_exec_schedule@preempt-queue-bsd:
>     - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +1 similar issue
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb3/igt@gem_exec_schedule@preempt-queue-bsd.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd.html
> 
>   * igt@gem_softpin@noreloc-s3:
>     - shard-skl:          [PASS][9] -> [INCOMPLETE][10] ([i915#69])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-skl7/igt@gem_softpin@noreloc-s3.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/shard-skl6/igt@gem_softpin@noreloc-s3.html
> 
>   * igt@gem_tiled_partial_pwrite_pread@writes-after-reads:
>     - shard-hsw:          [PASS][11] -> [FAIL][12] ([i915#817])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-hsw2/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/shard-hsw6/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html
> 
>   * igt@gem_workarounds@suspend-resume-context:
>     - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +2 similar issues
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-apl7/igt@gem_workarounds@suspend-resume-context.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/shard-apl1/igt@gem_workarounds@suspend-resume-context.html
> 
>   * igt@gen7_exec_parse@basic-allocation:
>     - shard-hsw:          [PASS][15] -> [FAIL][16] ([i915#694])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-hsw7/igt@gen7_exec_parse@basic-allocation.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/shard-hsw5/igt@gen7_exec_parse@basic-allocation.html
> 
>   * igt@i915_selftest@live_gt_heartbeat:
>     - shard-apl:          [PASS][17] -> [DMESG-FAIL][18] ([fdo#112406])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-apl6/igt@i915_selftest@live_gt_heartbeat.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/shard-apl6/igt@i915_selftest@live_gt_heartbeat.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-kbl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +7 similar issues
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_flip@flip-vs-suspend:
>     - shard-skl:          [PASS][21] -> [INCOMPLETE][22] ([i915#221])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-skl2/igt@kms_flip@flip-vs-suspend.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/shard-skl4/igt@kms_flip@flip-vs-suspend.html
> 
>   * igt@kms_plane_lowres@pipe-a-tiling-x:
>     - shard-glk:          [PASS][23] -> [FAIL][24] ([i915#899])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-glk5/igt@kms_plane_lowres@pipe-a-tiling-x.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/shard-glk5/igt@kms_plane_lowres@pipe-a-tiling-x.html
> 
>   * igt@kms_psr2_su@frontbuffer:
>     - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109642] / [fdo#111068])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/shard-iclb4/igt@kms_psr2_su@frontbuffer.html
> 
>   * igt@kms_psr@no_drrs:
>     - shard-iclb:         [PASS][27] -> [FAIL][28] ([i915#173])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb8/igt@kms_psr@no_drrs.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/shard-iclb1/igt@kms_psr@no_drrs.html
> 
>   * igt@kms_psr@psr2_cursor_blt:
>     - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109441])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/shard-iclb4/igt@kms_psr@psr2_cursor_blt.html
> 
>   * igt@perf_pmu@init-busy-vcs1:
>     - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#112080]) +7 similar issues
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb2/igt@perf_pmu@init-busy-vcs1.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/shard-iclb5/igt@perf_pmu@init-busy-vcs1.html
> 
>   * igt@prime_mmap_coherency@ioctl-errors:
>     - shard-hsw:          [PASS][33] -> [FAIL][34] ([i915#831])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-hsw2/igt@prime_mmap_coherency@ioctl-errors.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/shard-hsw6/igt@prime_mmap_coherency@ioctl-errors.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_caching@read-writes:
>     - shard-hsw:          [FAIL][35] ([i915#694]) -> [PASS][36]
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-hsw8/igt@gem_caching@read-writes.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/shard-hsw2/igt@gem_caching@read-writes.html
> 
>   * igt@gem_ctx_isolation@vcs1-dirty-create:
>     - shard-iclb:         [SKIP][37] ([fdo#112080]) -> [PASS][38] +15 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb3/igt@gem_ctx_isolation@vcs1-dirty-create.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/shard-iclb2/igt@gem_ctx_isolation@vcs1-dirty-create.html
> 
>   * igt@gem_ctx_isolation@vecs0-s3:
>     - shard-glk:          [INCOMPLETE][39] ([i915#58] / [k.org#198133]) -> [PASS][40]
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-glk1/igt@gem_ctx_isolation@vecs0-s3.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/shard-glk1/igt@gem_ctx_isolation@vecs0-s3.html
> 
>   * {igt@gem_ctx_persistence@close-replace-race}:
>     - shard-tglb:         [INCOMPLETE][41] ([i915#1291]) -> [PASS][42]
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-tglb5/igt@gem_ctx_persistence@close-replace-race.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/shard-tglb2/igt@gem_ctx_persistence@close-replace-race.html
> 
>   * {igt@gem_ctx_persistence@legacy-engines-mixed-process@blt}:
>     - shard-apl:          [INCOMPLETE][43] ([fdo#103927] / [i915#1197] / [i915#1239]) -> [PASS][44]
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-apl4/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/shard-apl6/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
> 
>   * {igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1}:
>     - shard-apl:          [FAIL][45] ([i915#679]) -> [PASS][46]
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-apl4/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/shard-apl6/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1.html
> 
>   * igt@gem_exec_balancer@hang:
>     - shard-tglb:         [FAIL][47] ([i915#1277]) -> [PASS][48]
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-tglb8/igt@gem_exec_balancer@hang.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/shard-tglb3/igt@gem_exec_balancer@hang.html
> 
>   * {igt@gem_exec_schedule@implicit-both-bsd1}:
>     - shard-iclb:         [SKIP][49] ([fdo#109276] / [i915#677]) -> [PASS][50] +2 similar issues
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb8/igt@gem_exec_schedule@implicit-both-bsd1.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd1.html
> 
>   * {igt@gem_exec_schedule@implicit-write-read-bsd}:
>     - shard-iclb:         [SKIP][51] ([i915#677]) -> [PASS][52]
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb4/igt@gem_exec_schedule@implicit-write-read-bsd.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/shard-iclb6/igt@gem_exec_schedule@implicit-write-read-bsd.html
> 
>   * igt@gem_exec_schedule@independent-bsd2:
>     - shard-iclb:         [SKIP][53] ([fdo#109276]) -> [PASS][54] +14 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb8/igt@gem_exec_schedule@independent-bsd2.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/shard-iclb1/igt@gem_exec_schedule@independent-bsd2.html
> 
>   * igt@gem_exec_schedule@preemptive-hang-bsd:
>     - shard-iclb:         [SKIP][55] ([fdo#112146]) -> [PASS][56] +3 similar issues
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-bsd.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/shard-iclb5/igt@gem_exec_schedule@preemptive-hang-bsd.html
> 
>   * igt@gem_userptr_blits@sync-unmap-cycles:
>     - shard-hsw:          [INCOMPLETE][57] ([CI#80] / [i915#61]) -> [PASS][58]
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-hsw8/igt@gem_userptr_blits@sync-unmap-cycles.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/shard-hsw2/igt@gem_userptr_blits@sync-unmap-cycles.html
> 
>   * igt@i915_pm_dc@dc5-dpms:
>     - shard-iclb:         [FAIL][59] ([i915#447]) -> [PASS][60]
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/shard-iclb2/igt@i915_pm_dc@dc5-dpms.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-apl:          [DMESG-WARN][61] ([i915#180]) -> [PASS][62] +5 similar issues
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/shard-apl2/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@kms_flip@dpms-vs-vblank-race-interruptible:
>     - shard-glk:          [FAIL][63] ([i915#407]) -> [PASS][64]
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-glk6/igt@kms_flip@dpms-vs-vblank-race-interruptible.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/shard-glk9/igt@kms_flip@dpms-vs-vblank-race-interruptible.html
> 
>   * {igt@kms_hdr@bpc-switch-dpms}:
>     - shard-skl:          [FAIL][65] ([i915#1188]) -> [PASS][66] +1 similar issue
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * {igt@kms_hdr@bpc-switch-suspend}:
>     - shard-kbl:          [DMESG-WARN][67] ([i915#180]) -> [PASS][68] +1 similar issue
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-kbl6/igt@kms_hdr@bpc-switch-suspend.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/shard-kbl1/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
>     - shard-skl:          [FAIL][69] ([fdo#108145]) -> [PASS][70] +1 similar issue
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
> 
>   * igt@kms_psr@psr2_no_drrs:
>     - shard-iclb:         [SKIP][71] ([fdo#109441]) -> [PASS][72] +2 similar issues
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb1/igt@kms_psr@psr2_no_drrs.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
> 
>   * igt@kms_setmode@basic:
>     - shard-apl:          [FAIL][73] ([i915#31]) -> [PASS][74]
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-apl8/igt@kms_setmode@basic.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/shard-apl4/igt@kms_setmode@basic.html
>     - shard-skl:          [FAIL][75] ([i915#31]) -> [PASS][76]
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-skl4/igt@kms_setmode@basic.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/shard-skl8/igt@kms_setmode@basic.html
> 
>   * igt@perf_pmu@cpu-hotplug:
>     - shard-hsw:          [INCOMPLETE][77] ([i915#1176] / [i915#61]) -> [PASS][78]
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-hsw6/igt@perf_pmu@cpu-hotplug.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/shard-hsw7/igt@perf_pmu@cpu-hotplug.html
> 
>   * igt@prime_mmap_coherency@read:
>     - shard-hsw:          [FAIL][79] ([i915#914]) -> [PASS][80]
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-hsw8/igt@prime_mmap_coherency@read.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/shard-hsw1/igt@prime_mmap_coherency@read.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_ctx_isolation@vcs1-nonpriv:
>     - shard-iclb:         [FAIL][81] ([IGT#28]) -> [SKIP][82] ([fdo#112080])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv.html
> 
>   * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
>     - shard-iclb:         [SKIP][83] ([fdo#112080]) -> [FAIL][84] ([IGT#28])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
> 
>   * igt@gem_tiled_blits@normal:
>     - shard-hsw:          [FAIL][85] ([i915#694]) -> [FAIL][86] ([i915#818]) +1 similar issue
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-hsw7/igt@gem_tiled_blits@normal.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/shard-hsw2/igt@gem_tiled_blits@normal.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-tglb:         [FAIL][87] ([i915#454]) -> [SKIP][88] ([i915#468])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-tglb3/igt@i915_pm_dc@dc6-psr.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_rpm@gem-execbuf:
>     - shard-snb:          [INCOMPLETE][89] ([i915#82]) -> [SKIP][90] ([fdo#109271])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-snb2/igt@i915_pm_rpm@gem-execbuf.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/shard-snb6/igt@i915_pm_rpm@gem-execbuf.html
> 
>   * igt@kms_dp_dsc@basic-dsc-enable-edp:
>     - shard-iclb:         [DMESG-WARN][91] ([i915#1226]) -> [SKIP][92] ([fdo#109349])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/shard-iclb5/igt@kms_dp_dsc@basic-dsc-enable-edp.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
>   [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
>   [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
>   [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
>   [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
>   [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
>   [fdo#112406]: https://bugs.freedesktop.org/show_bug.cgi?id=112406
>   [i915#1176]: https://gitlab.freedesktop.org/drm/intel/issues/1176
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1197]: https://gitlab.freedesktop.org/drm/intel/issues/1197
>   [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
>   [i915#1239]: https://gitlab.freedesktop.org/drm/intel/issues/1239
>   [i915#1277]: https://gitlab.freedesktop.org/drm/intel/issues/1277
>   [i915#1291]: https://gitlab.freedesktop.org/drm/intel/issues/1291
>   [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
>   [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
>   [i915#407]: https://gitlab.freedesktop.org/drm/intel/issues/407
>   [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
>   [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
>   [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
>   [i915#616]: https://gitlab.freedesktop.org/drm/intel/issues/616
>   [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
>   [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
>   [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
>   [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
>   [i915#817]: https://gitlab.freedesktop.org/drm/intel/issues/817
>   [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
>   [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
>   [i915#831]: https://gitlab.freedesktop.org/drm/intel/issues/831
>   [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
>   [i915#914]: https://gitlab.freedesktop.org/drm/intel/issues/914
>   [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133
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
>   * Linux: CI_DRM_7967 -> Patchwork_16634
> 
>   CI-20190529: 20190529
>   CI_DRM_7967: 0d3c3511d707cc46d78ffcf7fe39ac882c0030af @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5452: c05dc6cd816feb1cc518ce777ab3fd6c81893113 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_16634: 432a7f4dd272a8a0dee928428627301f2a7bb7f7 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16634/index.html

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
