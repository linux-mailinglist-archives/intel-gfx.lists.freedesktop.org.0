Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5917773FCC3
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jun 2023 15:23:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1348310E1AB;
	Tue, 27 Jun 2023 13:23:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFCBE10E2DF
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jun 2023 13:23:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687872214; x=1719408214;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=9V2Ma5lOn5IrNS0ULRpyIvUz2TSnEsktWn5RXYYudsE=;
 b=G/rPZ9MsrKixNQXomwbOtkDbyexMhmrpTnWugAENMSXreKPBVDt3tZcY
 pp9MIlYrTew9EyAzWzmt8ewymAEm3BEt3ljLTQQn6sPhHxLIh6UOzjL74
 pP8JZG/91+3zevhoNQUmpicJYdR2uD+v3qyq6tn1fO43jpI20/3o77ZxS
 8GVN1kqMBmJ5nkNevVsIwyGCdzJxc5ihnTeB23NLg8UXo+7yDGadw7nYY
 +Su0MtW9lnyQEnmUkUDlagPS5NQIOSTEyoYNaiVE1o/c+YLQikhXIloiH
 llH5Ib+FLYS7nlKqoK17MNfUqB7NzFxzQrMCuB+57gRmD6l6ZUjT93yTF A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10754"; a="425239309"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="425239309"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2023 06:23:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10754"; a="829653237"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="829653237"
Received: from unknown (HELO ideak-desk) ([10.237.72.78])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2023 06:23:12 -0700
Date: Tue, 27 Jun 2023 16:23:17 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <ZJrixfmPdpQ9v8Az@ideak-desk>
References: <20230626162847.3571036-1-imre.deak@intel.com>
 <168785922771.2459.15823368414608096851@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <168785922771.2459.15823368414608096851@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/adlp=3A_Disable_display_RM_unclaimed_checks_while_DC6_is_?=
 =?utf-8?q?enabled?=
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jun 27, 2023 at 09:47:07AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/adlp: Disable display RM unclaimed checks while DC6 is enabled
> URL   : https://patchwork.freedesktop.org/series/119874/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_13324_full -> Patchwork_119874v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_119874v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_119874v1_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (9 -> 9)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_119874v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####

All these failures are on unrelated platforms (mtlp, dg2) as the change only
affects adlp:

> 
>   * igt@gem_exec_whisper@basic-contexts:
>     - shard-mtlp:         [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-mtlp-1/igt@gem_exec_whisper@basic-contexts.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-mtlp-8/igt@gem_exec_whisper@basic-contexts.html

<7>[  533.846432] i915 0000:00:02.0: [drm:i915_drop_caches_set [i915]] Dropping caches: 0x0000005c [0x0000005c]
<5>[  569.034687] Fence expiration time out i915-0000:00:02.0:gem_exec_whispe[7589]:56!

Some open issues with the same error message:
https://gitlab.freedesktop.org/drm/intel/-/issues/8723
https://gitlab.freedesktop.org/drm/intel/-/issues/8568
https://gitlab.freedesktop.org/drm/intel/-/issues/8521

>   * igt@i915_selftest@perf@request:
>     - shard-dg2:          [PASS][3] -> [ABORT][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-dg2-6/igt@i915_selftest@perf@request.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-dg2-7/igt@i915_selftest@perf@request.html

<7> [386.392356] intel_gt_set_wedged called from intel_gt_set_wedged_on_fini+0xd/0x30 [i915]
<7> [386.462872] i915 0000:03:00.0: [drm:drm_client_release] drm_fb_helper
<4> [503.591120] [IGT] Per-test timeout exceeded. Killing the current test with SIGQUIT.

...

<6> [503.592768] task:kworker/3:0     state:I stack:14040 pid:30    ppid:2      flags:0x00004000
<6> [503.592772] Workqueue:  0x0 (i915-unordered)
<6> [503.592776] Call Trace:
<6> [503.592777]  <TASK>
<6> [503.592780]  __schedule+0x3a4/0xd80
<6> [503.592783]  ? find_held_lock+0x2b/0x80
<6> [503.592788]  schedule+0x5c/0xd0a

...

<6> [503.593419] task:kworker/5:1     state:I stack:12576 pid:44    ppid:2      flags:0x00004000
<6> [503.593423] Workqueue:  0x0 (i915-unordered)
<6> [503.593427] Call Trace:
<6> [503.593428]  <TASK>
<6> [503.593431]  __schedule+0x3a4/0xd80
<6> [503.593433]  ? find_held_lock+0x2b/0x80
<6> [503.593439]  schedule+0x5c/0xd0

...

<6> [503.613955]  tasklet_kill+0xa9/0xf0
<6> [503.613959]  ? __pfx_var_wake_function+0x10/0x10
<6> [503.613980]  guc_sched_engine_destroy+0x23/0x30 [i915]
<6> [503.614163]  intel_engine_cleanup_common+0x187/0x290 [i915]
<6> [503.614313]  guc_release+0x18/0x30 [i915]
<6> [503.614496]  intel_engines_release+0x6d/0x1b0 [i915]
<6> [503.614608]  intel_gt_driver_remove+0x2a/0x40 [i915]
<6> [503.614723]  i915_gem_driver_remove+0x1e/0x50 [i915]
<6> [503.614865]  i915_driver_remove+0xda/0x100 [i915]
<6> [503.614964]  i915_pci_probe+0x13f/0x210 [i915]
<6> [503.615062]  pci_device_probe+0x95/0x120
<6> [503.615067]  really_probe+0x164/0x3c0

> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [TIMEOUT][5]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-dg2-2/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-2.html

<7>[   61.215371] [IGT] kms_atomic_transition: starting subtest plane-all-modeset-transition
<7>[   61.224517] [IGT] kms_atomic_transition: starting dynamic subtest pipe-A-HDMI-A-2
...
<5>[  181.240392] [IGT] Per-test timeout exceeded. Killing the current test with SIGQUIT.

On all other shard-dg2 machines the same test takes about 20 seconds. I
wonder if logging to serial console on this machine is what slows down
the test so much (which isn't enabled on any other DG2 machines):

<6>[    0.000000] Command line: BOOT_IMAGE=/boot/drm_intel root=/dev/nvme0n1p2 rootwait fsck.repair=yes console=tty1 console=ttyS0,115200n8 console=tty1 pcie_ports=native ignore_loglevel systemd.unit=multi-user.target debug drm.debug=0xa nmi_watchdog=panic,auto panic=5 softdog.soft_panic=5 drm.debug=0xe log_buf_len=1M trace_clock=global 3 ro

>   * igt@kms_color@ctm-0-25@pipe-d:
>     - shard-dg2:          [PASS][6] -> [FAIL][7] +3 similar issues
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-dg2-10/igt@kms_color@ctm-0-25@pipe-d.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-dg2-9/igt@kms_color@ctm-0-25@pipe-d.html

Flaky connection / link training failure and atomic commits failing
afterwards due to reduced maximum BW:

<7>[  498.338353] [IGT] kms_color: starting subtest ctm-0-25
...
<7>[  500.001481] i915 0000:03:00.0: [drm:intel_dp_link_train_phy [i915]] [CONNECTOR:276:DP-4][ENCODER:275:DDI D/PHY D][DPRX] Link Training failed at link rate = 540000, lane count = 4
...
<7>[  501.541883] [IGT] kms_color: finished subtest ctm-0-25, FAIL
<7>[  501.659709] i915 0000:03:00.0: [drm:intel_dp_link_train_phy [i915]] [CONNECTOR:276:DP-4][ENCODER:275:DDI D/PHY D][DPRX] Link Training passed at link rate = 270000, lane count = 4

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_119874v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@drm_fdinfo@most-busy-check-all@rcs0:
>     - shard-rkl:          [PASS][8] -> [FAIL][9] ([i915#7742]) +1 similar issue
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-rkl-2/igt@drm_fdinfo@most-busy-check-all@rcs0.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-rkl-6/igt@drm_fdinfo@most-busy-check-all@rcs0.html
> 
>   * igt@drm_fdinfo@virtual-busy-all:
>     - shard-dg2:          NOTRUN -> [SKIP][10] ([i915#8414])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-dg2-6/igt@drm_fdinfo@virtual-busy-all.html
> 
>   * igt@gem_basic@multigpu-create-close:
>     - shard-dg2:          NOTRUN -> [SKIP][11] ([i915#7697])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-dg2-6/igt@gem_basic@multigpu-create-close.html
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-rkl:          [PASS][12] -> [FAIL][13] ([i915#6268])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-rkl-7/igt@gem_ctx_exec@basic-nohangcheck.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-rkl-2/igt@gem_ctx_exec@basic-nohangcheck.html
>     - shard-tglu:         [PASS][14] -> [FAIL][15] ([i915#6268])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-tglu-3/igt@gem_ctx_exec@basic-nohangcheck.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-tglu-8/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_eio@hibernate:
>     - shard-dg2:          NOTRUN -> [ABORT][16] ([i915#7975] / [i915#8213])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-dg2-6/igt@gem_eio@hibernate.html
> 
>   * igt@gem_exec_balancer@bonded-pair:
>     - shard-mtlp:         NOTRUN -> [SKIP][17] ([i915#4771])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-mtlp-5/igt@gem_exec_balancer@bonded-pair.html
> 
>   * igt@gem_exec_endless@dispatch@rcs0:
>     - shard-tglu:         [PASS][18] -> [TIMEOUT][19] ([i915#3778] / [i915#7392] / [i915#7921])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-tglu-6/igt@gem_exec_endless@dispatch@rcs0.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-tglu-7/igt@gem_exec_endless@dispatch@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglu:         [PASS][20] -> [FAIL][21] ([i915#2842])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-tglu-6/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-tglu-5/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-glk:          [PASS][22] -> [FAIL][23] ([i915#2842])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-glk4/igt@gem_exec_fair@basic-pace@rcs0.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-glk1/igt@gem_exec_fair@basic-pace@rcs0.html
>     - shard-rkl:          [PASS][24] -> [FAIL][25] ([i915#2842]) +1 similar issue
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-rkl-4/igt@gem_exec_fair@basic-pace@rcs0.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-rkl-6/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_reloc@basic-wc-cpu-active:
>     - shard-mtlp:         NOTRUN -> [SKIP][26] ([i915#3281])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-mtlp-7/igt@gem_exec_reloc@basic-wc-cpu-active.html
> 
>   * igt@gem_exec_whisper@basic-fds-forked-all:
>     - shard-tglu:         [PASS][27] -> [INCOMPLETE][28] ([i915#6755] / [i915#7392])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-tglu-4/igt@gem_exec_whisper@basic-fds-forked-all.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-tglu-9/igt@gem_exec_whisper@basic-fds-forked-all.html
> 
>   * igt@gem_exec_whisper@basic-normal:
>     - shard-mtlp:         [PASS][29] -> [FAIL][30] ([i915#6363])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-mtlp-6/igt@gem_exec_whisper@basic-normal.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-mtlp-5/igt@gem_exec_whisper@basic-normal.html
> 
>   * igt@gem_mmap_offset@clear@smem0:
>     - shard-dg2:          [PASS][31] -> [DMESG-WARN][32] ([i915#8304])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-dg2-5/igt@gem_mmap_offset@clear@smem0.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-dg2-6/igt@gem_mmap_offset@clear@smem0.html
> 
>   * igt@gem_mmap_wc@bad-offset:
>     - shard-mtlp:         NOTRUN -> [SKIP][33] ([i915#4083])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-mtlp-7/igt@gem_mmap_wc@bad-offset.html
> 
>   * igt@gem_mmap_wc@write-cpu-read-wc-unflushed:
>     - shard-dg2:          NOTRUN -> [SKIP][34] ([i915#4083])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-dg2-6/igt@gem_mmap_wc@write-cpu-read-wc-unflushed.html
> 
>   * igt@gem_softpin@noreloc-s3:
>     - shard-dg2:          [PASS][35] -> [FAIL][36] ([fdo#103375]) +1 similar issue
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-dg2-8/igt@gem_softpin@noreloc-s3.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-dg2-5/igt@gem_softpin@noreloc-s3.html
> 
>   * igt@gem_tiled_fence_blits@basic:
>     - shard-dg2:          NOTRUN -> [SKIP][37] ([i915#4077])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-dg2-6/igt@gem_tiled_fence_blits@basic.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-cycles:
>     - shard-mtlp:         NOTRUN -> [SKIP][38] ([i915#3297])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-mtlp-7/igt@gem_userptr_blits@unsync-unmap-cycles.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-apl:          [PASS][39] -> [ABORT][40] ([i915#5566])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-apl7/igt@gen9_exec_parse@allowed-single.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-apl4/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@valid-registers:
>     - shard-dg2:          NOTRUN -> [SKIP][41] ([i915#2856])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-dg2-6/igt@gen9_exec_parse@valid-registers.html
> 
>   * igt@i915_pm_rc6_residency@rc6-accuracy:
>     - shard-mtlp:         NOTRUN -> [SKIP][42] ([fdo#109289] / [i915#8403])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-mtlp-8/igt@i915_pm_rc6_residency@rc6-accuracy.html
> 
>   * igt@i915_pm_rpm@modeset-non-lpsp-stress:
>     - shard-rkl:          [PASS][43] -> [SKIP][44] ([i915#1397]) +2 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-rkl-2/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-rkl-7/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@i915_selftest@live@requests:
>     - shard-mtlp:         [PASS][45] -> [DMESG-FAIL][46] ([i915#8497])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-mtlp-8/igt@i915_selftest@live@requests.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-mtlp-6/igt@i915_selftest@live@requests.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1:
>     - shard-mtlp:         [PASS][47] -> [FAIL][48] ([i915#2521])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-mtlp-7/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-mtlp-4/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-270:
>     - shard-mtlp:         NOTRUN -> [SKIP][49] ([fdo#111614])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-mtlp-7/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-mtlp:         [PASS][50] -> [FAIL][51] ([i915#3743])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
>     - shard-mtlp:         [PASS][52] -> [FAIL][53] ([i915#5138])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-270:
>     - shard-dg2:          NOTRUN -> [SKIP][54] ([fdo#111614])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-dg2-6/igt@kms_big_fb@linear-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#5190])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-dg2-6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
>     - shard-mtlp:         NOTRUN -> [SKIP][56] ([fdo#111615])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-mtlp-7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][57] ([i915#6095]) +2 similar issues
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-mtlp-7/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-basic-4_tiled_mtl_mc_ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][58] ([i915#5354]) +2 similar issues
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-dg2-6/igt@kms_ccs@pipe-b-crc-primary-basic-4_tiled_mtl_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#3689] / [i915#5354])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-dg2-6/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_ccs.html
> 
>   * igt@kms_content_protection@legacy@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [TIMEOUT][60] ([i915#7173])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-dg2-11/igt@kms_content_protection@legacy@pipe-a-dp-4.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-dg2:          NOTRUN -> [SKIP][61] ([i915#4579] / [i915#7118]) +1 similar issue
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-dg2-8/igt@kms_content_protection@srm.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-512x512:
>     - shard-dg2:          NOTRUN -> [SKIP][62] ([i915#3359])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-dg2-6/igt@kms_cursor_crc@cursor-offscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x170:
>     - shard-mtlp:         NOTRUN -> [SKIP][63] ([i915#3359])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-mtlp-8/igt@kms_cursor_crc@cursor-onscreen-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-32x10:
>     - shard-mtlp:         NOTRUN -> [SKIP][64] ([i915#4579]) +2 similar issues
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-sliding-32x10.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:
>     - shard-mtlp:         NOTRUN -> [SKIP][65] ([i915#3546])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-mtlp-7/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-mtlp:         [PASS][66] -> [FAIL][67] ([i915#2346])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-mtlp-8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-mtlp-7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
>     - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#3555] / [i915#4579]) +2 similar issues
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-dg2-8/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
> 
>   * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][69] ([fdo#109274])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-dg2-6/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-cpu:
>     - shard-dg2:          [PASS][70] -> [FAIL][71] ([i915#6880])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-cpu.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][72] ([i915#8708])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-blt:
>     - shard-mtlp:         NOTRUN -> [SKIP][73] ([i915#1825]) +3 similar issues
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-blt.html
> 
>   * igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [FAIL][74] ([fdo#103375])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-dg2-11/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-4.html
> 
>   * igt@kms_hdr@invalid-hdr:
>     - shard-dg2:          NOTRUN -> [SKIP][75] ([i915#4579] / [i915#6953] / [i915#8228])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-dg2-6/igt@kms_hdr@invalid-hdr.html
>     - shard-rkl:          NOTRUN -> [SKIP][76] ([i915#4579] / [i915#6953] / [i915#8228])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-rkl-1/igt@kms_hdr@invalid-hdr.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size:
>     - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#4579] / [i915#6953])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-dg2-8/igt@kms_plane_scaling@intel-max-src-size.html
> 
>   * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [SKIP][78] ([i915#5176]) +7 similar issues
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-dg2-9/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-a-dp-4.html
> 
>   * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-d-dp-4:
>     - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#4579] / [i915#5176]) +1 similar issue
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-dg2-9/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-d-dp-4.html
> 
>   * igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][80] ([i915#4579] / [i915#5176]) +5 similar issues
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-rkl-7/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-1:
>     - shard-snb:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#4579]) +11 similar issues
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-snb1/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][82] ([i915#5176]) +5 similar issues
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-rkl-2/igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][83] ([i915#5235]) +1 similar issue
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-rkl-2/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][84] ([i915#4579] / [i915#5235]) +1 similar issue
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-rkl-2/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-dp-4:
>     - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#5235]) +11 similar issues
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-dg2-9/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-dp-4.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d-dp-4:
>     - shard-dg2:          NOTRUN -> [SKIP][86] ([i915#4579] / [i915#5235]) +3 similar issues
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-dg2-9/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d-dp-4.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-hdmi-a-1:
>     - shard-snb:          NOTRUN -> [SKIP][87] ([fdo#109271]) +16 similar issues
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-snb1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_rotation_crc@primary-rotation-90:
>     - shard-rkl:          [PASS][88] -> [ABORT][89] ([i915#8311])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-rkl-2/igt@kms_rotation_crc@primary-rotation-90.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-rkl-4/igt@kms_rotation_crc@primary-rotation-90.html
> 
>   * igt@perf_pmu@busy-double-start@ccs0:
>     - shard-mtlp:         [PASS][90] -> [FAIL][91] ([i915#4349])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-mtlp-7/igt@perf_pmu@busy-double-start@ccs0.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-mtlp-4/igt@perf_pmu@busy-double-start@ccs0.html
> 
>   * igt@perf_pmu@busy-double-start@ccs3:
>     - shard-dg2:          [PASS][92] -> [FAIL][93] ([i915#4349]) +9 similar issues
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-dg2-10/igt@perf_pmu@busy-double-start@ccs3.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-dg2-9/igt@perf_pmu@busy-double-start@ccs3.html
> 
>   * igt@v3d/v3d_perfmon@create-single-perfmon:
>     - shard-mtlp:         NOTRUN -> [SKIP][94] ([i915#2575]) +1 similar issue
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-mtlp-8/igt@v3d/v3d_perfmon@create-single-perfmon.html
> 
>   * igt@vc4/vc4_dmabuf_poll@poll-write-waits-until-write-done:
>     - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#7711]) +1 similar issue
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-dg2-6/igt@vc4/vc4_dmabuf_poll@poll-write-waits-until-write-done.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_persistence@smoketest:
>     - shard-tglu:         [FAIL][96] ([i915#5099]) -> [PASS][97]
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-tglu-6/igt@gem_ctx_persistence@smoketest.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-tglu-7/igt@gem_ctx_persistence@smoketest.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-glk:          [FAIL][98] ([i915#2842]) -> [PASS][99]
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-glk1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-glk5/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-rkl:          [FAIL][100] ([i915#2842]) -> [PASS][101] +1 similar issue
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-rkl-4/igt@gem_exec_fair@basic-pace@vecs0.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-rkl-6/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_suspend@basic-s3-devices@smem:
>     - shard-mtlp:         [FAIL][102] ([i915#6121] / [i915#7052]) -> [PASS][103]
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-mtlp-5/igt@gem_exec_suspend@basic-s3-devices@smem.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-mtlp-4/igt@gem_exec_suspend@basic-s3-devices@smem.html
> 
>   * igt@gem_exec_whisper@basic-contexts-forked-all:
>     - shard-mtlp:         [TIMEOUT][104] ([i915#8628]) -> [PASS][105]
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-mtlp-7/igt@gem_exec_whisper@basic-contexts-forked-all.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-mtlp-2/igt@gem_exec_whisper@basic-contexts-forked-all.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - {shard-dg1}:        [TIMEOUT][106] ([i915#5493]) -> [PASS][107]
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-dg1-15/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-dg1-19/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:
>     - shard-dg2:          [SKIP][108] ([i915#1937] / [i915#4579]) -> [PASS][109]
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-dg2-6/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-dg2-10/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
> 
>   * igt@i915_pm_rpm@dpms-lpsp:
>     - {shard-dg1}:        [SKIP][110] ([i915#1397]) -> [PASS][111] +3 similar issues
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-dg1-15/igt@i915_pm_rpm@dpms-lpsp.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-dg1-19/igt@i915_pm_rpm@dpms-lpsp.html
> 
>   * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-dg2:          [SKIP][112] ([i915#1397]) -> [PASS][113] +1 similar issue
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-dg2-10/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-dg2-9/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
>     - shard-rkl:          [SKIP][114] ([i915#1397]) -> [PASS][115] +2 similar issues
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-rkl-7/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
> 
>   * igt@i915_selftest@live@gt_mocs:
>     - shard-mtlp:         [DMESG-FAIL][116] ([i915#7059]) -> [PASS][117]
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-mtlp-8/igt@i915_selftest@live@gt_mocs.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-mtlp-6/igt@i915_selftest@live@gt_mocs.html
> 
>   * igt@i915_selftest@live@slpc:
>     - shard-mtlp:         [DMESG-WARN][118] ([i915#6367]) -> [PASS][119]
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-mtlp-8/igt@i915_selftest@live@slpc.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-mtlp-6/igt@i915_selftest@live@slpc.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-mtlp:         [FAIL][120] ([i915#3743]) -> [PASS][121] +1 similar issue
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-mtlp:         [FAIL][122] ([i915#5138]) -> [PASS][123]
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-apl:          [FAIL][124] ([i915#2346]) -> [PASS][125]
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-mtlp:         [FAIL][126] ([i915#4767]) -> [PASS][127]
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-mtlp-4/igt@kms_fbcon_fbt@psr-suspend.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-mtlp-3/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_sysfs_edid_timing:
>     - shard-dg2:          [FAIL][128] ([IGT#2]) -> [PASS][129]
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-dg2-10/igt@kms_sysfs_edid_timing.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-dg2-9/igt@kms_sysfs_edid_timing.html
> 
>   * igt@kms_vblank@pipe-c-accuracy-idle:
>     - shard-glk:          [FAIL][130] -> [PASS][131]
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-glk9/igt@kms_vblank@pipe-c-accuracy-idle.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-glk7/igt@kms_vblank@pipe-c-accuracy-idle.html
> 
>   * igt@perf_pmu@busy-double-start@vecs0:
>     - {shard-dg1}:        [FAIL][132] ([i915#4349]) -> [PASS][133]
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-dg1-19/igt@perf_pmu@busy-double-start@vecs0.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-dg1-13/igt@perf_pmu@busy-double-start@vecs0.html
> 
>   * igt@perf_pmu@multi-client@rcs0:
>     - {shard-dg1}:        [FAIL][134] -> [PASS][135]
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-dg1-17/igt@perf_pmu@multi-client@rcs0.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-dg1-18/igt@perf_pmu@multi-client@rcs0.html
> 
>   * igt@perf_pmu@rc6-suspend:
>     - shard-mtlp:         [FAIL][136] ([fdo#103375]) -> [PASS][137] +2 similar issues
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-mtlp-5/igt@perf_pmu@rc6-suspend.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-mtlp-4/igt@perf_pmu@rc6-suspend.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_whisper@basic-contexts-priority-all:
>     - shard-mtlp:         [TIMEOUT][138] ([i915#7392]) -> [ABORT][139] ([i915#8131])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-mtlp-2/igt@gem_exec_whisper@basic-contexts-priority-all.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-mtlp-6/igt@gem_exec_whisper@basic-contexts-priority-all.html
> 
>   * igt@kms_async_flips@crc@pipe-a-edp-1:
>     - shard-mtlp:         [FAIL][140] ([i915#8247]) -> [DMESG-FAIL][141] ([i915#1982] / [i915#8561])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-mtlp-4/igt@kms_async_flips@crc@pipe-a-edp-1.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-mtlp-3/igt@kms_async_flips@crc@pipe-a-edp-1.html
> 
>   * igt@kms_content_protection@mei_interface:
>     - shard-dg2:          [SKIP][142] ([i915#4579] / [i915#7118]) -> [SKIP][143] ([i915#4579] / [i915#7118] / [i915#7162]) +1 similar issue
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-dg2-1/igt@kms_content_protection@mei_interface.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-dg2-11/igt@kms_content_protection@mei_interface.html
> 
>   * igt@kms_fbcon_fbt@psr:
>     - shard-rkl:          [SKIP][144] ([fdo#110189] / [i915#3955]) -> [SKIP][145] ([i915#3955])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-rkl-1/igt@kms_fbcon_fbt@psr.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-rkl-7/igt@kms_fbcon_fbt@psr.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-rkl:          [SKIP][146] ([i915#3955]) -> [SKIP][147] ([fdo#110189] / [i915#3955])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-rkl-7/igt@kms_fbcon_fbt@psr-suspend.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - shard-rkl:          [SKIP][148] ([fdo#109285]) -> [SKIP][149] ([fdo#109285] / [i915#4098])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-rkl-7/igt@kms_force_connector_basic@force-load-detect.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-rkl-2/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-rkl:          [SKIP][150] ([i915#4816]) -> [SKIP][151] ([i915#4070] / [i915#4816])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-rkl-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@perf@non-zero-reason@0-rcs0:
>     - shard-dg2:          [FAIL][152] ([i915#7757]) -> [FAIL][153] ([i915#7484])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13324/shard-dg2-11/igt@perf@non-zero-reason@0-rcs0.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/shard-dg2-8/igt@perf@non-zero-reason@0-rcs0.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
>   [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
>   [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
>   [i915#5099]: https://gitlab.freedesktop.org/drm/intel/issues/5099
>   [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6121]: https://gitlab.freedesktop.org/drm/intel/issues/6121
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6363]: https://gitlab.freedesktop.org/drm/intel/issues/6363
>   [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
>   [i915#6755]: https://gitlab.freedesktop.org/drm/intel/issues/6755
>   [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
>   [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
>   [i915#7052]: https://gitlab.freedesktop.org/drm/intel/issues/7052
>   [i915#7059]: https://gitlab.freedesktop.org/drm/intel/issues/7059
>   [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7162]: https://gitlab.freedesktop.org/drm/intel/issues/7162
>   [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
>   [i915#7392]: https://gitlab.freedesktop.org/drm/intel/issues/7392
>   [i915#7484]: https://gitlab.freedesktop.org/drm/intel/issues/7484
>   [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
>   [i915#7757]: https://gitlab.freedesktop.org/drm/intel/issues/7757
>   [i915#7921]: https://gitlab.freedesktop.org/drm/intel/issues/7921
>   [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
>   [i915#8131]: https://gitlab.freedesktop.org/drm/intel/issues/8131
>   [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
>   [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
>   [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
>   [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
>   [i915#8304]: https://gitlab.freedesktop.org/drm/intel/issues/8304
>   [i915#8311]: https://gitlab.freedesktop.org/drm/intel/issues/8311
>   [i915#8403]: https://gitlab.freedesktop.org/drm/intel/issues/8403
>   [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
>   [i915#8497]: https://gitlab.freedesktop.org/drm/intel/issues/8497
>   [i915#8502]: https://gitlab.freedesktop.org/drm/intel/issues/8502
>   [i915#8561]: https://gitlab.freedesktop.org/drm/intel/issues/8561
>   [i915#8628]: https://gitlab.freedesktop.org/drm/intel/issues/8628
>   [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_13324 -> Patchwork_119874v1
> 
>   CI-20190529: 20190529
>   CI_DRM_13324: d0f10363d9fd8f1cb22a020a878f76c627389355 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7351: d8dc96b95c60e4737fdfa1664ce9b1dcebfdef60 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_119874v1: d0f10363d9fd8f1cb22a020a878f76c627389355 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119874v1/index.html
