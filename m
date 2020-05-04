Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A50BA1C470D
	for <lists+intel-gfx@lfdr.de>; Mon,  4 May 2020 21:30:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A7B46E486;
	Mon,  4 May 2020 19:30:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C2076E486
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 May 2020 19:30:32 +0000 (UTC)
IronPort-SDR: S/FzQLRT8oUdstZjqtL9HOE8Ar47HxPfkZ+B0ATalJc5uhZga7gokb7oQd7xwn/nH+/3o+fvHo
 t4r5mBgdsP2g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 12:30:31 -0700
IronPort-SDR: 98IPl9lyyRIy/7LH/SX8moBzDQxnlDGBU+LBkY5GO8Z6pOuWwYXoqF8rPAa05ZObBeDPO78rIN
 WNvzlCQTIiRQ==
X-IronPort-AV: E=Sophos;i="5.73,353,1583222400"; d="scan'208";a="434210579"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 12:30:30 -0700
Date: Mon, 4 May 2020 22:29:54 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>
Message-ID: <20200504192954.GA7978@ideak-desk.fi.intel.com>
References: <20200504075828.20348-1-imre.deak@intel.com>
 <158861706607.5815.10204156884010687612@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158861706607.5815.10204156884010687612@emeril.freedesktop.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl+=3A_Fix_interrupt_handling_for_DP_AUX_transactions?=
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

Hi Lakshmi,

On Mon, May 04, 2020 at 06:31:06PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/tgl+: Fix interrupt handling for DP AUX transactions
> URL   : https://patchwork.freedesktop.org/series/76892/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_8416_full -> Patchwork_17564_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_17564_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_17564_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_17564_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_atomic_transition@plane-toggle-modeset-transition:
>     - shard-apl:          [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8416/shard-apl8/igt@kms_atomic_transition@plane-toggle-modeset-transition.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17564/shard-apl8/igt@kms_atomic_transition@plane-toggle-modeset-transition.html

On GEN9 nothing changed, so this must be unrelated. I couldn't find any
similar issues on gitlab, so could you add there a new ticket for it?

Thanks,
Imre

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_17564_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_flush@basic-wb-ro-before-default:
>     - shard-hsw:          [PASS][3] -> [INCOMPLETE][4] ([i915#61])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8416/shard-hsw6/igt@gem_exec_flush@basic-wb-ro-before-default.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17564/shard-hsw1/igt@gem_exec_flush@basic-wb-ro-before-default.html
> 
>   * igt@gem_workarounds@suspend-resume-fd:
>     - shard-apl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8416/shard-apl4/igt@gem_workarounds@suspend-resume-fd.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17564/shard-apl6/igt@gem_workarounds@suspend-resume-fd.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-64x21-onscreen:
>     - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#54])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8416/shard-glk8/igt@kms_cursor_crc@pipe-c-cursor-64x21-onscreen.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17564/shard-glk2/igt@kms_cursor_crc@pipe-c-cursor-64x21-onscreen.html
> 
>   * igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge:
>     - shard-apl:          [PASS][9] -> [FAIL][10] ([i915#70] / [i915#95])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8416/shard-apl3/igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17564/shard-apl4/igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge.html
> 
>   * igt@kms_flip_tiling@flip-changes-tiling-y:
>     - shard-apl:          [PASS][11] -> [FAIL][12] ([i915#95])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8416/shard-apl1/igt@kms_flip_tiling@flip-changes-tiling-y.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17564/shard-apl3/igt@kms_flip_tiling@flip-changes-tiling-y.html
>     - shard-kbl:          [PASS][13] -> [FAIL][14] ([i915#699] / [i915#93] / [i915#95])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8416/shard-kbl1/igt@kms_flip_tiling@flip-changes-tiling-y.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17564/shard-kbl6/igt@kms_flip_tiling@flip-changes-tiling-y.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:
>     - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#49])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8416/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17564/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:
>     - shard-snb:          [PASS][17] -> [SKIP][18] ([fdo#109271]) +3 similar issues
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8416/shard-snb6/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17564/shard-snb2/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>     - shard-skl:          [PASS][19] -> [FAIL][20] ([fdo#108145] / [i915#265])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8416/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17564/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_primary_mmap_gtt:
>     - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109441]) +1 similar issue
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8416/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17564/shard-iclb5/igt@kms_psr@psr2_primary_mmap_gtt.html
> 
>   * igt@kms_vblank@pipe-b-ts-continuation-suspend:
>     - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +1 similar issue
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8416/shard-kbl3/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17564/shard-kbl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
> 
>   * igt@kms_vblank@pipe-c-ts-continuation-suspend:
>     - shard-kbl:          [PASS][25] -> [INCOMPLETE][26] ([i915#155] / [i915#794])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8416/shard-kbl7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17564/shard-kbl1/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-apl:          [DMESG-WARN][27] ([i915#716]) -> [PASS][28]
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8416/shard-apl8/igt@gen9_exec_parse@allowed-all.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17564/shard-apl6/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-skl:          [FAIL][29] ([i915#54]) -> [PASS][30]
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8416/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17564/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled:
>     - shard-skl:          [FAIL][31] ([i915#177] / [i915#52] / [i915#54]) -> [PASS][32]
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8416/shard-skl6/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17564/shard-skl5/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html
> 
>   * {igt@kms_flip@flip-vs-suspend-interruptible@a-edp1}:
>     - shard-skl:          [INCOMPLETE][33] ([i915#198]) -> [PASS][34]
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8416/shard-skl5/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17564/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
> 
>   * {igt@kms_flip@flip-vs-suspend@c-dp1}:
>     - shard-kbl:          [DMESG-WARN][35] ([i915#180]) -> [PASS][36] +6 similar issues
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8416/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17564/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html
>     - shard-apl:          [DMESG-WARN][37] ([i915#180]) -> [PASS][38] +1 similar issue
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8416/shard-apl8/igt@kms_flip@flip-vs-suspend@c-dp1.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17564/shard-apl8/igt@kms_flip@flip-vs-suspend@c-dp1.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [FAIL][39] ([fdo#108145] / [i915#265]) -> [PASS][40] +1 similar issue
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8416/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17564/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_cpu:
>     - shard-iclb:         [SKIP][41] ([fdo#109441]) -> [PASS][42] +2 similar issues
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8416/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17564/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
> 
>   * {igt@perf@blocking-parameterized}:
>     - shard-kbl:          [FAIL][43] ([i915#1542]) -> [PASS][44]
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8416/shard-kbl1/igt@perf@blocking-parameterized.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17564/shard-kbl6/igt@perf@blocking-parameterized.html
> 
>   * {igt@perf@polling-parameterized}:
>     - shard-hsw:          [FAIL][45] ([i915#1542]) -> [PASS][46]
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8416/shard-hsw6/igt@perf@polling-parameterized.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17564/shard-hsw1/igt@perf@polling-parameterized.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-tglb:         [FAIL][47] ([i915#454]) -> [SKIP][48] ([i915#468])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8416/shard-tglb7/igt@i915_pm_dc@dc6-dpms.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17564/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
>   [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
>   [i915#177]: https://gitlab.freedesktop.org/drm/intel/issues/177
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
>   [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
>   [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
>   [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
>   [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
>   [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
>   [i915#70]: https://gitlab.freedesktop.org/drm/intel/issues/70
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794
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
>   * Linux: CI_DRM_8416 -> Patchwork_17564
> 
>   CI-20190529: 20190529
>   CI_DRM_8416: 4aa25ab0331c40f5d475c651f5f4e3801b07f28d @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5628: 652a3fd8966345fa5498904ce80a2027a6782783 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_17564: 5045514aff30e83e5999dbc98725e7e17e80f46f @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17564/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
