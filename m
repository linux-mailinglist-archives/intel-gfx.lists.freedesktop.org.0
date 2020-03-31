Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5FF199C89
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 19:07:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7CE06E86B;
	Tue, 31 Mar 2020 17:07:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71EFD6E86B
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Mar 2020 17:07:48 +0000 (UTC)
IronPort-SDR: +I7EJWbrH6OZXQmEhxafy35J64R2b6tw1rN3tU6/6iGkEgu9WK2Uq/WqqqPfdXg6InsxiDMI4t
 Lbj6mSReNusA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2020 10:07:39 -0700
IronPort-SDR: QNa4LRenPrr51VM2tNxi6CZa/LRcowR9VQPr2Jx8SvhwrqcnxN0NUekCDUUcq3Io/gA1JHut4u
 W3rXHwbb/HgA==
X-IronPort-AV: E=Sophos;i="5.72,328,1580803200"; d="scan'208";a="422368215"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2020 10:07:38 -0700
Date: Tue, 31 Mar 2020 20:07:33 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org, Jose Souza <jose.souza@intel.com>
Message-ID: <20200331170733.GD721@ideak-desk.fi.intel.com>
References: <20200330152244.11316-1-imre.deak@intel.com>
 <158564805923.5564.11730807722298030894@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158564805923.5564.11730807722298030894@emeril.freedesktop.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/icl+=3A_Don=27t_enable_DDI_IO_power_on_a_TypeC_port_in_TB?=
 =?utf-8?q?T_mode?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 31, 2020 at 09:47:39AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/icl+: Don't enable DDI IO power on a TypeC port in TBT mode
> URL   : https://patchwork.freedesktop.org/series/75253/
> State : success

Thanks for the review, pushed to -dinq.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_8219_full -> Patchwork_17137_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_17137_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_busy@busy-vcs1:
>     - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +7 similar issues
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb4/igt@gem_busy@busy-vcs1.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17137/shard-iclb5/igt@gem_busy@busy-vcs1.html
> 
>   * igt@gem_exec_schedule@implicit-both-bsd:
>     - shard-iclb:         [PASS][3] -> [SKIP][4] ([i915#677])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb5/igt@gem_exec_schedule@implicit-both-bsd.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17137/shard-iclb4/igt@gem_exec_schedule@implicit-both-bsd.html
> 
>   * igt@gem_exec_schedule@implicit-both-bsd1:
>     - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [i915#677]) +3 similar issues
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd1.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17137/shard-iclb6/igt@gem_exec_schedule@implicit-both-bsd1.html
> 
>   * igt@gem_exec_schedule@preempt-queue-bsd1:
>     - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276]) +13 similar issues
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd1.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17137/shard-iclb7/igt@gem_exec_schedule@preempt-queue-bsd1.html
> 
>   * igt@gem_exec_schedule@reorder-wide-bsd:
>     - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112146]) +2 similar issues
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb5/igt@gem_exec_schedule@reorder-wide-bsd.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17137/shard-iclb4/igt@gem_exec_schedule@reorder-wide-bsd.html
> 
>   * igt@gem_workarounds@suspend-resume-context:
>     - shard-apl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180]) +1 similar issue
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-apl2/igt@gem_workarounds@suspend-resume-context.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17137/shard-apl1/igt@gem_workarounds@suspend-resume-context.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible:
>     - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#46])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17137/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
>     - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#46])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17137/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
>     - shard-skl:          [PASS][17] -> [INCOMPLETE][18] ([i915#648] / [i915#69])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-skl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17137/shard-skl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>     - shard-skl:          [PASS][19] -> [FAIL][20] ([fdo#108145])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17137/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [PASS][21] -> [FAIL][22] ([fdo#108145] / [i915#265])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17137/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_sprite_render:
>     - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#109441]) +1 similar issue
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb2/igt@kms_psr@psr2_sprite_render.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17137/shard-iclb6/igt@kms_psr@psr2_sprite_render.html
> 
>   * igt@kms_setmode@basic:
>     - shard-apl:          [PASS][25] -> [FAIL][26] ([i915#31])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-apl4/igt@kms_setmode@basic.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17137/shard-apl6/igt@kms_setmode@basic.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-suspend:
>     - shard-kbl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180]) +3 similar issues
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17137/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_persistence@processes:
>     - shard-kbl:          [FAIL][29] ([i915#1528]) -> [PASS][30]
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-kbl1/igt@gem_ctx_persistence@processes.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17137/shard-kbl7/igt@gem_ctx_persistence@processes.html
> 
>   * igt@gem_exec_schedule@implicit-both-bsd2:
>     - shard-iclb:         [SKIP][31] ([fdo#109276] / [i915#677]) -> [PASS][32]
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb3/igt@gem_exec_schedule@implicit-both-bsd2.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17137/shard-iclb4/igt@gem_exec_schedule@implicit-both-bsd2.html
> 
>   * igt@gem_exec_schedule@pi-common-bsd:
>     - shard-iclb:         [SKIP][33] ([i915#677]) -> [PASS][34]
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb4/igt@gem_exec_schedule@pi-common-bsd.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17137/shard-iclb5/igt@gem_exec_schedule@pi-common-bsd.html
> 
>   * igt@gem_exec_schedule@preempt-queue-bsd:
>     - shard-iclb:         [SKIP][35] ([fdo#112146]) -> [PASS][36] +3 similar issues
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17137/shard-iclb5/igt@gem_exec_schedule@preempt-queue-bsd.html
> 
>   * igt@gem_exec_schedule@preempt-queue-bsd2:
>     - shard-iclb:         [SKIP][37] ([fdo#109276]) -> [PASS][38] +16 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb5/igt@gem_exec_schedule@preempt-queue-bsd2.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17137/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd2.html
> 
>   * igt@gem_workarounds@suspend-resume-fd:
>     - shard-kbl:          [DMESG-WARN][39] ([i915#180]) -> [PASS][40] +2 similar issues
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-kbl3/igt@gem_workarounds@suspend-resume-fd.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17137/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-kbl:          [DMESG-WARN][41] ([i915#180] / [i915#93] / [i915#95]) -> [PASS][42]
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17137/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible:
>     - shard-apl:          [DMESG-WARN][43] ([i915#180]) -> [PASS][44] +1 similar issue
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17137/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-skl:          [FAIL][45] ([i915#1188]) -> [PASS][46]
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17137/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>     - shard-skl:          [FAIL][47] ([fdo#108145] / [i915#265]) -> [PASS][48]
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17137/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_suspend:
>     - shard-iclb:         [SKIP][49] ([fdo#109441]) -> [PASS][50] +1 similar issue
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb1/igt@kms_psr@psr2_suspend.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17137/shard-iclb2/igt@kms_psr@psr2_suspend.html
> 
>   * igt@kms_vblank@pipe-b-query-forked-busy-hang:
>     - shard-tglb:         [INCOMPLETE][51] ([i915#1373]) -> [PASS][52]
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-tglb6/igt@kms_vblank@pipe-b-query-forked-busy-hang.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17137/shard-tglb7/igt@kms_vblank@pipe-b-query-forked-busy-hang.html
> 
>   * igt@perf_pmu@busy-no-semaphores-vcs1:
>     - shard-iclb:         [SKIP][53] ([fdo#112080]) -> [PASS][54] +10 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-iclb7/igt@perf_pmu@busy-no-semaphores-vcs1.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17137/shard-iclb1/igt@perf_pmu@busy-no-semaphores-vcs1.html
> 
>   * {igt@sysfs_heartbeat_interval@mixed@vecs0}:
>     - shard-skl:          [FAIL][55] ([i915#1459]) -> [PASS][56]
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-skl2/igt@sysfs_heartbeat_interval@mixed@vecs0.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17137/shard-skl10/igt@sysfs_heartbeat_interval@mixed@vecs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-tglb:         [SKIP][57] ([i915#468]) -> [FAIL][58] ([i915#454])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17137/shard-tglb6/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
>     - shard-snb:          [SKIP][59] ([fdo#109271]) -> [INCOMPLETE][60] ([i915#82])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8219/shard-snb5/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17137/shard-snb5/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
>   [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1373]: https://gitlab.freedesktop.org/drm/intel/issues/1373
>   [i915#1459]: https://gitlab.freedesktop.org/drm/intel/issues/1459
>   [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
>   [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
>   [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
>   [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
>   [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
>   [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
>   [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
>   [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
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
>   * Linux: CI_DRM_8219 -> Patchwork_17137
> 
>   CI-20190529: 20190529
>   CI_DRM_8219: 42de3b3c94078845ceed586199c039622561b522 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5545: 9e5bfd10d56f81b98e0229c6bb14670221fd0b54 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_17137: acd2a5c369724ba657f993e073c5bd424fa7b991 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17137/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
