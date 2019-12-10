Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF708118D9E
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 17:31:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3C4289DD2;
	Tue, 10 Dec 2019 16:31:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 426 seconds by postgrey-1.36 at gabe;
 Tue, 10 Dec 2019 16:31:55 UTC
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93FBF89DD2
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 16:31:55 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 08:24:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,300,1571727600"; d="scan'208";a="363308760"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga004.jf.intel.com with ESMTP; 10 Dec 2019 08:24:47 -0800
Date: Tue, 10 Dec 2019 08:24:47 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20191210162447.GB85422@mdroper-desk1.amr.corp.intel.com>
References: <20191205224848.76712-1-matthew.d.roper@intel.com>
 <157563840724.31674.17581002334112974342@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157563840724.31674.17581002334112974342@emeril.freedesktop.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=3A_Program_BW=5FBUDDY_registers_during_display_init_?=
 =?utf-8?b?KHJldjMp?=
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

On Fri, Dec 06, 2019 at 01:20:07PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/tgl: Program BW_BUDDY registers during display init (rev3)
> URL   : https://patchwork.freedesktop.org/series/70461/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_7494_full -> Patchwork_15620_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_15620_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_15620_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_15620_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_ctx_persistence@processes:
>     - shard-glk:          [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-glk7/igt@gem_ctx_persistence@processes.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-glk8/igt@gem_ctx_persistence@processes.html
> 
>   * igt@gem_ctx_persistence@vcs0-mixed-process:
>     - shard-tglb:         [PASS][3] -> [FAIL][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-tglb8/igt@gem_ctx_persistence@vcs0-mixed-process.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-tglb8/igt@gem_ctx_persistence@vcs0-mixed-process.html

These two appear to be
https://gitlab.freedesktop.org/drm/intel/issues/679

> 
>   * igt@gem_vm_create@execbuf:
>     - shard-hsw:          [PASS][5] -> [DMESG-WARN][6] +1 similar issue
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-hsw6/igt@gem_vm_create@execbuf.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-hsw1/igt@gem_vm_create@execbuf.html

<4> [933.760909] ======================================================
<4> [933.760912] WARNING: possible circular locking dependency detected
<4> [933.760916] 5.4.0-rc8-CI-Patchwork_15620+ #1 Tainted: G     U           
<4> [933.760919] ------------------------------------------------------
<4> [933.760922] gem_vm_create/3961 is trying to acquire lock:
<4> [933.760925] ffff8884089d8d50 (&ppgtt->pin_mutex){+.+.}, at: gen6_ppgtt_pin+0x4d/0x110 [i915]
<4> [933.761001] but task is already holding lock:
<4> [933.761004] ffff888403e02c70 (&kernel#2){+.+.}, at: i915_request_create+0x16/0x1c0 [i915]
<4> [933.761067] which lock already depends on the new lock.


Not sure if there's an issue filed for this one yet or not.  But this
HSW locking issue wouldn't be caused by the TGL buddy programming in
this patch.

Applying to dinq.  Thanks Stan for the review (which he provided
off-list).


Matt


> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_15620_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_isolation@rcs0-s3:
>     - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180]) +4 similar issues
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html
> 
>   * igt@gem_ctx_isolation@vcs1-s3:
>     - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([i915#456])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-tglb3/igt@gem_ctx_isolation@vcs1-s3.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-tglb1/igt@gem_ctx_isolation@vcs1-s3.html
> 
>   * igt@gem_ctx_persistence@vcs1-hostile-preempt:
>     - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276] / [fdo#112080])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-iclb1/igt@gem_ctx_persistence@vcs1-hostile-preempt.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-iclb3/igt@gem_ctx_persistence@vcs1-hostile-preempt.html
> 
>   * igt@gem_exec_balancer@nop:
>     - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([fdo#111736])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-tglb4/igt@gem_exec_balancer@nop.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-tglb7/igt@gem_exec_balancer@nop.html
> 
>   * igt@gem_exec_parallel@fds:
>     - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([i915#470])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-tglb5/igt@gem_exec_parallel@fds.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-tglb6/igt@gem_exec_parallel@fds.html
> 
>   * igt@gem_exec_schedule@pi-ringfull-bsd2:
>     - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109276]) +7 similar issues
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-iclb4/igt@gem_exec_schedule@pi-ringfull-bsd2.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-iclb6/igt@gem_exec_schedule@pi-ringfull-bsd2.html
> 
>   * igt@gem_exec_schedule@reorder-wide-bsd:
>     - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#112146]) +2 similar issues
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-iclb5/igt@gem_exec_schedule@reorder-wide-bsd.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-iclb4/igt@gem_exec_schedule@reorder-wide-bsd.html
> 
>   * igt@gem_exec_store@pages-vcs1:
>     - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#112080]) +3 similar issues
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-iclb1/igt@gem_exec_store@pages-vcs1.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-iclb3/igt@gem_exec_store@pages-vcs1.html
> 
>   * igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive:
>     - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([i915#530])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-tglb4/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-tglb3/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html
> 
>   * igt@gem_userptr_blits@sync-unmap:
>     - shard-snb:          [PASS][25] -> [DMESG-WARN][26] ([fdo#111870])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-snb1/igt@gem_userptr_blits@sync-unmap.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-snb6/igt@gem_userptr_blits@sync-unmap.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [PASS][27] -> [FAIL][28] ([i915#454])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-iclb5/igt@i915_pm_dc@dc6-psr.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_selftest@live_perf:
>     - shard-hsw:          [PASS][29] -> [INCOMPLETE][30] ([i915#61])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-hsw2/igt@i915_selftest@live_perf.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-hsw1/igt@i915_selftest@live_perf.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-apl:          [PASS][31] -> [DMESG-WARN][32] ([i915#180])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-apl8/igt@i915_suspend@forcewake.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-apl1/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_color@pipe-c-ctm-max:
>     - shard-apl:          [PASS][33] -> [FAIL][34] ([i915#168])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-apl1/igt@kms_color@pipe-c-ctm-max.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-apl6/igt@kms_color@pipe-c-ctm-max.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:
>     - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#54]) +1 similar issue
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled:
>     - shard-skl:          [PASS][37] -> [DMESG-WARN][38] ([i915#728])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-skl10/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-skl4/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible:
>     - shard-skl:          [PASS][39] -> [INCOMPLETE][40] ([i915#221])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-skl4/igt@kms_flip@flip-vs-suspend-interruptible.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-cpu:
>     - shard-kbl:          [PASS][41] -> [DMESG-WARN][42] ([i915#728]) +1 similar issue
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-cpu.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:
>     - shard-iclb:         [PASS][43] -> [FAIL][44] ([i915#49]) +4 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-iclb4/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-apl:          [PASS][45] -> [INCOMPLETE][46] ([fdo#103927])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-apl8/igt@kms_frontbuffer_tracking@fbc-suspend.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-apl2/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary:
>     - shard-tglb:         [PASS][47] -> [FAIL][48] ([i915#49]) +1 similar issue
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff:
>     - shard-iclb:         [PASS][49] -> [DMESG-WARN][50] ([i915#728]) +2 similar issues
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-iclb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-iclb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt:
>     - shard-skl:          [PASS][51] -> [INCOMPLETE][52] ([i915#123])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt.html
> 
>   * igt@kms_plane@pixel-format-pipe-b-planes:
>     - shard-kbl:          [PASS][53] -> [INCOMPLETE][54] ([fdo#103665])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-kbl2/igt@kms_plane@pixel-format-pipe-b-planes.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-kbl3/igt@kms_plane@pixel-format-pipe-b-planes.html
> 
>   * igt@kms_psr@psr2_primary_page_flip:
>     - shard-iclb:         [PASS][55] -> [SKIP][56] ([fdo#109441])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-iclb1/igt@kms_psr@psr2_primary_page_flip.html
> 
>   * igt@kms_psr@suspend:
>     - shard-tglb:         [PASS][57] -> [INCOMPLETE][58] ([i915#456] / [i915#460])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-tglb3/igt@kms_psr@suspend.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-tglb8/igt@kms_psr@suspend.html
> 
>   * igt@kms_setmode@basic:
>     - shard-hsw:          [PASS][59] -> [FAIL][60] ([i915#31])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-hsw5/igt@kms_setmode@basic.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-hsw5/igt@kms_setmode@basic.html
>     - shard-kbl:          [PASS][61] -> [FAIL][62] ([i915#31])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-kbl6/igt@kms_setmode@basic.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-kbl3/igt@kms_setmode@basic.html
> 
>   * igt@kms_vblank@pipe-b-ts-continuation-suspend:
>     - shard-skl:          [PASS][63] -> [INCOMPLETE][64] ([i915#69])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-skl8/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-skl2/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_persistence@vcs1-mixed-process:
>     - shard-iclb:         [SKIP][65] ([fdo#109276] / [fdo#112080]) -> [PASS][66] +4 similar issues
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-iclb8/igt@gem_ctx_persistence@vcs1-mixed-process.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-iclb2/igt@gem_ctx_persistence@vcs1-mixed-process.html
> 
>   * {igt@gem_exec_balancer@bonded-chain}:
>     - shard-iclb:         [FAIL][67] ([i915#669]) -> [PASS][68]
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-iclb1/igt@gem_exec_balancer@bonded-chain.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-iclb3/igt@gem_exec_balancer@bonded-chain.html
> 
>   * igt@gem_exec_parallel@bcs0-fds:
>     - shard-hsw:          [DMESG-WARN][69] -> [PASS][70] +1 similar issue
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-hsw8/igt@gem_exec_parallel@bcs0-fds.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-hsw2/igt@gem_exec_parallel@bcs0-fds.html
> 
>   * igt@gem_exec_parse_blt@allowed-single:
>     - shard-skl:          [DMESG-WARN][71] -> [PASS][72]
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-skl3/igt@gem_exec_parse_blt@allowed-single.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-skl5/igt@gem_exec_parse_blt@allowed-single.html
>     - shard-apl:          [DMESG-WARN][73] ([i915#716]) -> [PASS][74]
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-apl2/igt@gem_exec_parse_blt@allowed-single.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-apl3/igt@gem_exec_parse_blt@allowed-single.html
> 
>   * igt@gem_exec_schedule@pi-ringfull-bsd:
>     - shard-iclb:         [SKIP][75] ([fdo#112146]) -> [PASS][76] +2 similar issues
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-iclb1/igt@gem_exec_schedule@pi-ringfull-bsd.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-iclb3/igt@gem_exec_schedule@pi-ringfull-bsd.html
> 
>   * igt@gem_exec_schedule@preempt-queue-bsd1:
>     - shard-iclb:         [SKIP][77] ([fdo#109276]) -> [PASS][78] +13 similar issues
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-iclb5/igt@gem_exec_schedule@preempt-queue-bsd1.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd1.html
> 
>   * igt@gem_ppgtt@flink-and-close-vma-leak:
>     - shard-apl:          [FAIL][79] ([i915#644]) -> [PASS][80]
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
> 
>   * igt@gem_sync@basic-each:
>     - shard-tglb:         [INCOMPLETE][81] ([i915#472] / [i915#707]) -> [PASS][82]
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-tglb3/igt@gem_sync@basic-each.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-tglb5/igt@gem_sync@basic-each.html
> 
>   * igt@gem_sync@basic-store-all:
>     - shard-tglb:         [INCOMPLETE][83] ([i915#472]) -> [PASS][84]
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-tglb6/igt@gem_sync@basic-store-all.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-tglb8/igt@gem_sync@basic-store-all.html
> 
>   * igt@i915_selftest@live_blt:
>     - shard-hsw:          [DMESG-FAIL][85] ([i915#683]) -> [PASS][86]
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-hsw2/igt@i915_selftest@live_blt.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-hsw1/igt@i915_selftest@live_blt.html
> 
>   * igt@i915_selftest@live_execlists:
>     - shard-tglb:         [INCOMPLETE][87] ([i915#647]) -> [PASS][88]
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-tglb8/igt@i915_selftest@live_execlists.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-tglb3/igt@i915_selftest@live_execlists.html
> 
>   * igt@i915_suspend@fence-restore-untiled:
>     - shard-skl:          [INCOMPLETE][89] ([i915#69]) -> [PASS][90]
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-skl2/igt@i915_suspend@fence-restore-untiled.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-skl3/igt@i915_suspend@fence-restore-untiled.html
> 
>   * igt@kms_big_fb@x-tiled-8bpp-rotate-180:
>     - shard-skl:          [INCOMPLETE][91] ([fdo#112347]) -> [PASS][92]
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-skl9/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-skl6/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html
>     - shard-tglb:         [INCOMPLETE][93] ([fdo#112393]) -> [PASS][94]
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-tglb4/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-tglb3/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html
> 
>   * igt@kms_ccs@pipe-a-crc-sprite-planes-basic:
>     - shard-skl:          [DMESG-WARN][95] ([i915#728]) -> [PASS][96] +3 similar issues
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-skl5/igt@kms_ccs@pipe-a-crc-sprite-planes-basic.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-skl9/igt@kms_ccs@pipe-a-crc-sprite-planes-basic.html
> 
>   * igt@kms_color@pipe-b-ctm-0-5:
>     - shard-skl:          [DMESG-WARN][97] ([i915#109]) -> [PASS][98]
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-skl2/igt@kms_color@pipe-b-ctm-0-5.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-skl9/igt@kms_color@pipe-b-ctm-0-5.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-alpha-opaque:
>     - shard-kbl:          [FAIL][99] ([i915#54]) -> [PASS][100]
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-alpha-opaque.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-alpha-opaque.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-128x42-sliding:
>     - shard-skl:          [FAIL][101] ([i915#54]) -> [PASS][102]
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-128x42-sliding.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-128x42-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:
>     - shard-apl:          [FAIL][103] ([i915#54]) -> [PASS][104]
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-apl8/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-suspend:
>     - shard-apl:          [DMESG-WARN][105] ([i915#180]) -> [PASS][106] +2 similar issues
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-apl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-apl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled:
>     - shard-skl:          [INCOMPLETE][107] ([i915#435]) -> [PASS][108]
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-skl7/igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-skl6/igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack:
>     - shard-tglb:         [FAIL][109] ([i915#49]) -> [PASS][110] +1 similar issue
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt:
>     - shard-kbl:          [DMESG-WARN][111] ([i915#728]) -> [PASS][112] +2 similar issues
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-kbl:          [DMESG-WARN][113] ([i915#180]) -> [PASS][114] +6 similar issues
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt:
>     - shard-iclb:         [FAIL][115] ([i915#49]) -> [PASS][116] +1 similar issue
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-iclb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-iclb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render:
>     - shard-iclb:         [INCOMPLETE][117] ([i915#123] / [i915#140]) -> [PASS][118]
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-iclb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-iclb4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html
> 
>   * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
>     - shard-kbl:          [INCOMPLETE][119] ([fdo#103665] / [i915#435]) -> [PASS][120]
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-kbl7/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-kbl7/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>     - shard-skl:          [FAIL][121] ([fdo#108145]) -> [PASS][122]
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_cursor_render:
>     - shard-iclb:         [SKIP][123] ([fdo#109441]) -> [PASS][124] +1 similar issue
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-iclb3/igt@kms_psr@psr2_cursor_render.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
> 
>   * igt@kms_vblank@pipe-c-ts-continuation-suspend:
>     - shard-tglb:         [INCOMPLETE][125] ([i915#456] / [i915#460]) -> [PASS][126]
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-tglb7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-tglb5/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
> 
>   * igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend:
>     - shard-tglb:         [INCOMPLETE][127] ([i915#460]) -> [PASS][128]
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-tglb1/igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-tglb6/igt@kms_vblank@pipe-d-ts-continuation-dpms-suspend.html
> 
>   * igt@perf@disabled-read-error:
>     - shard-hsw:          [INCOMPLETE][129] ([i915#61]) -> [PASS][130]
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-hsw2/igt@perf@disabled-read-error.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-hsw2/igt@perf@disabled-read-error.html
> 
>   * igt@perf_pmu@busy-check-all-vcs1:
>     - shard-iclb:         [SKIP][131] ([fdo#112080]) -> [PASS][132] +7 similar issues
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-iclb5/igt@perf_pmu@busy-check-all-vcs1.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-iclb2/igt@perf_pmu@busy-check-all-vcs1.html
> 
>   * igt@perf_pmu@busy-hang-vecs0:
>     - shard-iclb:         [DMESG-WARN][133] ([i915#728]) -> [PASS][134] +4 similar issues
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-iclb5/igt@perf_pmu@busy-hang-vecs0.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-iclb2/igt@perf_pmu@busy-hang-vecs0.html
>     - shard-tglb:         [DMESG-WARN][135] ([i915#728]) -> [PASS][136]
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-tglb1/igt@perf_pmu@busy-hang-vecs0.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-tglb3/igt@perf_pmu@busy-hang-vecs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
>     - shard-iclb:         [FAIL][137] ([IGT#28]) -> [SKIP][138] ([fdo#109276] / [fdo#112080])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-iclb3/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
> 
>   * igt@gem_eio@kms:
>     - shard-snb:          [DMESG-WARN][139] ([i915#444] / [i915#502]) -> [INCOMPLETE][140] ([i915#82])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-snb5/igt@gem_eio@kms.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-snb2/igt@gem_eio@kms.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt:
>     - shard-skl:          [INCOMPLETE][141] ([i915#123]) -> [DMESG-WARN][142] ([i915#728])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-skl5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_plane@pixel-format-pipe-a-planes:
>     - shard-skl:          [INCOMPLETE][143] ([fdo#112347] / [i915#648]) -> [INCOMPLETE][144] ([i915#648])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7494/shard-skl6/igt@kms_plane@pixel-format-pipe-a-planes.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/shard-skl5/igt@kms_plane@pixel-format-pipe-a-planes.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
>   [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
>   [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
>   [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
>   [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
>   [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
>   [fdo#112347]: https://bugs.freedesktop.org/show_bug.cgi?id=112347
>   [fdo#112393]: https://bugs.freedesktop.org/show_bug.cgi?id=112393
>   [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
>   [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
>   [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
>   [i915#168]: https://gitlab.freedesktop.org/drm/intel/issues/168
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
>   [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
>   [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
>   [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
>   [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
>   [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
>   [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
>   [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
>   [i915#502]: https://gitlab.freedesktop.org/drm/intel/issues/502
>   [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
>   [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
>   [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
>   [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
>   [i915#647]: https://gitlab.freedesktop.org/drm/intel/issues/647
>   [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
>   [i915#669]: https://gitlab.freedesktop.org/drm/intel/issues/669
>   [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
>   [i915#683]: https://gitlab.freedesktop.org/drm/intel/issues/683
>   [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
>   [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#728]: https://gitlab.freedesktop.org/drm/intel/issues/728
>   [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
> 
> 
> Participating hosts (11 -> 11)
> ------------------------------
> 
>   No changes in
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15620/index.html

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
