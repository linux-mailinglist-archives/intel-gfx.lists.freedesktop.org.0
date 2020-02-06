Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95B01154DCB
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 22:20:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FD666FB64;
	Thu,  6 Feb 2020 21:20:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E707F6FB64
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Feb 2020 21:20:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Feb 2020 13:20:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,411,1574150400"; d="scan'208";a="264754984"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by fmsmga002.fm.intel.com with ESMTP; 06 Feb 2020 13:20:14 -0800
Received: from fmsmsx158.amr.corp.intel.com (10.18.116.75) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 6 Feb 2020 13:20:14 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.3]) by
 fmsmsx158.amr.corp.intel.com ([169.254.15.29]) with mapi id 14.03.0439.000;
 Thu, 6 Feb 2020 13:20:14 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJtL2k5MTUvZGlzcGxheTog?=
 =?utf-8?B?U2V0IFRSQU5TX0RESV9NT0RFX1NFTEVDVCB0byBkZWZhdWx0IHZhbHVlIHdo?=
 =?utf-8?Q?en_clearing_DDI_select?=
Thread-Index: AQHV3SOnS2mQI29pDUePnhBFy/lXEqgPMkSA
Date: Thu, 6 Feb 2020 21:20:13 +0000
Message-ID: <d4c2b5bd75a9af5052796cbef213dd3df6b25c8f.camel@intel.com>
References: <20200203225549.152301-1-jose.souza@intel.com>
 <158101731259.15034.4923766335867198128@emeril.freedesktop.org>
In-Reply-To: <158101731259.15034.4923766335867198128@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.13.27]
Content-ID: <755174E7CC91EE4E8782EA658767EEA0@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Set_TRANS=5FDDI=5FMODE=5FSELECT_to_default_val?=
 =?utf-8?q?ue_when_clearing_DDI_select?=
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

On Thu, 2020-02-06 at 19:28 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/display: Set TRANS_DDI_MODE_SELECT to default value
> when clearing DDI select
> URL   : https://patchwork.freedesktop.org/series/72943/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_7864_full -> Patchwork_16403_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Pushed to dinq with minor style changed that was requested by Ville,
thanks for the review.

> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_16403_full that come from
> known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_busy@busy-vcs1:
>     - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +12
> similar issues
>    [1]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-iclb4/igt@gem_busy@busy-vcs1.html
>    [2]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16403/shard-iclb8/igt@gem_busy@busy-vcs1.html
> 
>   * igt@gem_exec_schedule@preempt-queue-bsd:
>     - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112146]) +4
> similar issues
>    [3]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd.html
>    [4]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16403/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd.html
> 
>   * igt@gem_exec_schedule@promotion-bsd1:
>     - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276]) +18
> similar issues
>    [5]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-iclb1/igt@gem_exec_schedule@promotion-bsd1.html
>    [6]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16403/shard-iclb3/igt@gem_exec_schedule@promotion-bsd1.html
> 
>   * igt@gem_partial_pwrite_pread@reads-display:
>     - shard-hsw:          [PASS][7] -> [FAIL][8] ([i915#694])
>    [7]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-hsw1/igt@gem_partial_pwrite_pread@reads-display.html
>    [8]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16403/shard-hsw4/igt@gem_partial_pwrite_pread@reads-display.html
> 
>   * igt@gem_ppgtt@flink-and-close-vma-leak:
>     - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#644])
>    [9]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html
>    [10]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16403/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html
> 
>   * igt@i915_pm_rps@min-max-config-loaded:
>     - shard-iclb:         [PASS][11] -> [FAIL][12] ([i915#370])
>    [11]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-iclb8/igt@i915_pm_rps@min-max-config-loaded.html
>    [12]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16403/shard-iclb7/igt@i915_pm_rps@min-max-config-loaded.html
> 
>   * igt@kms_cursor_legacy@pipe-c-torture-move:
>     - shard-glk:          [PASS][13] -> [DMESG-WARN][14] ([i915#128])
>    [13]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-glk3/igt@kms_cursor_legacy@pipe-c-torture-move.html
>    [14]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16403/shard-glk9/igt@kms_cursor_legacy@pipe-c-torture-move.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank:
>     - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#79])
>    [15]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-skl1/igt@kms_flip@flip-vs-expired-vblank.html
>    [16]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16403/shard-skl6/igt@kms_flip@flip-vs-expired-vblank.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180])
> +4 similar issues
>    [17]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-apl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
>    [18]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16403/shard-apl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c-frame-sequence:
>     - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#53])
>    [19]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-skl7/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c-frame-sequence.html
>    [20]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16403/shard-skl3/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c-frame-sequence.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
>     - shard-kbl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180])
> +7 similar issues
>    [21]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
>    [22]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16403/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
> 
>   * igt@kms_psr2_su@page_flip:
>     - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#109642] /
> [fdo#111068])
>    [23]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-iclb2/igt@kms_psr2_su@page_flip.html
>    [24]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16403/shard-iclb5/igt@kms_psr2_su@page_flip.html
> 
>   * igt@kms_psr@psr2_primary_page_flip:
>     - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109441]) +1
> similar issue
>    [25]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
>    [26]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16403/shard-iclb5/igt@kms_psr@psr2_primary_page_flip.html
> 
>   * igt@kms_vblank@pipe-b-query-forked-busy-hang:
>     - shard-snb:          [PASS][27] -> [INCOMPLETE][28] ([CI#80] /
> [i915#82])
>    [27]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-snb5/igt@kms_vblank@pipe-b-query-forked-busy-hang.html
>    [28]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16403/shard-snb4/igt@kms_vblank@pipe-b-query-forked-busy-hang.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_balancer@smoke:
>     - shard-iclb:         [SKIP][29] ([fdo#110854]) -> [PASS][30]
>    [29]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-iclb3/igt@gem_exec_balancer@smoke.html
>    [30]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16403/shard-iclb4/igt@gem_exec_balancer@smoke.html
> 
>   * igt@gem_exec_parallel@vcs1-fds:
>     - shard-iclb:         [SKIP][31] ([fdo#112080]) -> [PASS][32] +18
> similar issues
>    [31]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-iclb6/igt@gem_exec_parallel@vcs1-fds.html
>    [32]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16403/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html
> 
>   * igt@gem_exec_schedule@independent-bsd2:
>     - shard-iclb:         [SKIP][33] ([fdo#109276]) -> [PASS][34] +23
> similar issues
>    [33]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-iclb6/igt@gem_exec_schedule@independent-bsd2.html
>    [34]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16403/shard-iclb2/igt@gem_exec_schedule@independent-bsd2.html
> 
>   * igt@gem_exec_schedule@pi-common-bsd:
>     - shard-iclb:         [SKIP][35] ([i915#677]) -> [PASS][36] +1
> similar issue
>    [35]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-iclb4/igt@gem_exec_schedule@pi-common-bsd.html
>    [36]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16403/shard-iclb8/igt@gem_exec_schedule@pi-common-bsd.html
> 
>   * igt@gem_exec_schedule@preempt-other-chain-bsd:
>     - shard-iclb:         [SKIP][37] ([fdo#112146]) -> [PASS][38] +7
> similar issues
>    [37]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html
>    [38]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16403/shard-iclb5/igt@gem_exec_schedule@preempt-other-chain-bsd.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-display:
>     - shard-hsw:          [FAIL][39] ([i915#694]) -> [PASS][40]
>    [39]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-hsw7/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
>    [40]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16403/shard-hsw6/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
> 
>   * igt@gem_tiled_blits@normal:
>     - shard-hsw:          [FAIL][41] ([i915#818]) -> [PASS][42]
>    [41]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-hsw7/igt@gem_tiled_blits@normal.html
>    [42]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16403/shard-hsw6/igt@gem_tiled_blits@normal.html
> 
>   * igt@gem_workarounds@suspend-resume:
>     - shard-apl:          [DMESG-WARN][43] ([i915#180]) -> [PASS][44]
>    [43]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-apl1/igt@gem_workarounds@suspend-resume.html
>    [44]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16403/shard-apl3/igt@gem_workarounds@suspend-resume.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-skl:          [FAIL][45] ([i915#454]) -> [PASS][46]
>    [45]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-skl8/igt@i915_pm_dc@dc6-psr.html
>    [46]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16403/shard-skl1/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_selftest@live_blt:
>     - shard-hsw:          [DMESG-FAIL][47] ([i915#725]) -> [PASS][48]
>    [47]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-hsw7/igt@i915_selftest@live_blt.html
>    [48]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16403/shard-hsw7/igt@i915_selftest@live_blt.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-suspend:
>     - shard-kbl:          [DMESG-WARN][49] ([i915#180]) -> [PASS][50]
> +3 similar issues
>    [49]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
>    [50]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16403/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank:
>     - shard-glk:          [FAIL][51] ([i915#79]) -> [PASS][52]
>    [51]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank.html
>    [52]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16403/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
>     - shard-skl:          [FAIL][53] ([fdo#108145]) -> [PASS][54]
>    [53]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
>    [54]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16403/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
> 
>   * igt@kms_plane_lowres@pipe-a-tiling-x:
>     - shard-glk:          [FAIL][55] ([i915#899]) -> [PASS][56] +1
> similar issue
>    [55]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-x.html
>    [56]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16403/shard-glk2/igt@kms_plane_lowres@pipe-a-tiling-x.html
> 
>   * igt@kms_psr@psr2_cursor_plane_onoff:
>     - shard-iclb:         [SKIP][57] ([fdo#109441]) -> [PASS][58] +3
> similar issues
>    [57]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-iclb6/igt@kms_psr@psr2_cursor_plane_onoff.html
>    [58]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16403/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
> 
>   * igt@prime_mmap_coherency@ioctl-errors:
>     - shard-hsw:          [FAIL][59] ([i915#831]) -> [PASS][60]
>    [59]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-hsw5/igt@prime_mmap_coherency@ioctl-errors.html
>    [60]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16403/shard-hsw1/igt@prime_mmap_coherency@ioctl-errors.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_ctx_isolation@vcs1-nonpriv:
>     - shard-iclb:         [SKIP][61] ([fdo#112080]) -> [FAIL][62]
> ([IGT#28])
>    [61]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv.html
>    [62]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16403/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv.html
> 
>   * igt@kms_dp_dsc@basic-dsc-enable-edp:
>     - shard-iclb:         [SKIP][63] ([fdo#109349]) -> [DMESG-
> WARN][64] ([fdo#107724])
>    [63]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7864/shard-iclb6/igt@kms_dp_dsc@basic-dsc-enable-edp.html
>    [64]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16403/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
> 
>   
>   [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
>   [IGT#28]: 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
>   [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
>   [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
>   [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
>   [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#370]: https://gitlab.freedesktop.org/drm/intel/issues/370
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
>   [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
>   [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
>   [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
>   [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
>   [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
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
>   * Linux: CI_DRM_7864 -> Patchwork_16403
> 
>   CI-20190529: 20190529
>   CI_DRM_7864: 5a140e2fc771e4c8b10d14e2db7bfb4996ee9d8a @
> git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5417: 33cc93c8ba5daa0b7498f297a4f626844d895d06 @
> git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_16403: 2efd2652094cf1f8a14a2b0eab9c8cfaa50d5be9 @
> git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
> git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16403/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
