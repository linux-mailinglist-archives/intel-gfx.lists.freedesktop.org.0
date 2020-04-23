Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 012E81B5A9E
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2020 13:39:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BCD789F5F;
	Thu, 23 Apr 2020 11:39:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B6D189F5F
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Apr 2020 11:39:22 +0000 (UTC)
IronPort-SDR: NlBw2rdkDIk3BvCevKSz3VZIy+fDGEoaE4d7NpHJK0apr4radT9vZoKPDo83FC6OAITNucLfvP
 YqFQCaTTHTgA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2020 04:39:21 -0700
IronPort-SDR: 6BH3KMz3fdQvVct0yxacJZ8EncOalauh5aK2T+MHpW/kGYyJUAwIcBrUVgUYfbIxl+VFH299FH
 8ZzfFjsF84+Q==
X-IronPort-AV: E=Sophos;i="5.73,307,1583222400"; d="scan'208";a="430291099"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2020 04:39:20 -0700
Date: Thu, 23 Apr 2020 14:38:54 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org, Jose Souza <jose.souza@intel.com>
Message-ID: <20200423113854.GD9592@ideak-desk.fi.intel.com>
References: <20200422123440.19522-1-imre.deak@intel.com>
 <158757815835.5178.727919127877648658@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158757815835.5178.727919127877648658@emeril.freedesktop.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/icl=3A_Fix_timeout_handling_during_TypeC_AUX_power_well_e?=
 =?utf-8?q?nabling?=
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

On Wed, Apr 22, 2020 at 05:55:58PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/icl: Fix timeout handling during TypeC AUX power well enabling
> URL   : https://patchwork.freedesktop.org/series/76336/
> State : success

Pushed, thanks for the review.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_8348_full -> Patchwork_17421_full
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
>   Here are the changes found in Patchwork_17421_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_suspend@basic-s3:
>     - shard-apl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180] / [i915#95])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-apl4/igt@gem_exec_suspend@basic-s3.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17421/shard-apl4/igt@gem_exec_suspend@basic-s3.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-64x21-random:
>     - shard-skl:          [PASS][3] -> [FAIL][4] ([i915#54])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17421/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen:
>     - shard-kbl:          [PASS][5] -> [FAIL][6] ([i915#54] / [i915#93] / [i915#95])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17421/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-suspend:
>     - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180]) +1 similar issue
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-apl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17421/shard-apl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
> 
>   * igt@kms_cursor_legacy@pipe-b-torture-move:
>     - shard-tglb:         [PASS][9] -> [DMESG-WARN][10] ([i915#128])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-tglb5/igt@kms_cursor_legacy@pipe-b-torture-move.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17421/shard-tglb3/igt@kms_cursor_legacy@pipe-b-torture-move.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-wc:
>     - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#49])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-wc.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17421/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#1188])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17421/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
>     - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +3 similar issues
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17421/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
>     - shard-skl:          [PASS][17] -> [FAIL][18] ([fdo#108145] / [i915#265]) +1 similar issue
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17421/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
> 
>   * igt@kms_psr@no_drrs:
>     - shard-iclb:         [PASS][19] -> [FAIL][20] ([i915#173])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-iclb8/igt@kms_psr@no_drrs.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17421/shard-iclb1/igt@kms_psr@no_drrs.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_balancer@bonded-slice:
>     - shard-kbl:          [FAIL][21] ([i915#1292] / [i915#93] / [i915#95]) -> [PASS][22]
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-kbl4/igt@gem_exec_balancer@bonded-slice.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17421/shard-kbl3/igt@gem_exec_balancer@bonded-slice.html
> 
>   * igt@gem_exec_params@invalid-bsd-ring:
>     - shard-iclb:         [SKIP][23] ([fdo#109276]) -> [PASS][24]
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-iclb3/igt@gem_exec_params@invalid-bsd-ring.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17421/shard-iclb1/igt@gem_exec_params@invalid-bsd-ring.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-iclb:         [INCOMPLETE][25] ([i915#1580]) -> [PASS][26]
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-iclb5/igt@i915_selftest@live@hangcheck.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17421/shard-iclb7/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@kms_big_fb@x-tiled-16bpp-rotate-0:
>     - shard-glk:          [FAIL][27] ([i915#1119]) -> [PASS][28]
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-glk5/igt@kms_big_fb@x-tiled-16bpp-rotate-0.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17421/shard-glk8/igt@kms_big_fb@x-tiled-16bpp-rotate-0.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-ytiled:
>     - shard-skl:          [FAIL][29] ([i915#52] / [i915#54]) -> [PASS][30]
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-skl3/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-ytiled.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17421/shard-skl8/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-ytiled.html
> 
>   * {igt@kms_flip@flip-vs-expired-vblank@c-edp1}:
>     - shard-skl:          [FAIL][31] ([i915#79]) -> [PASS][32]
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17421/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
> 
>   * {igt@kms_flip@flip-vs-suspend-interruptible@a-dp1}:
>     - shard-apl:          [DMESG-WARN][33] ([i915#180]) -> [PASS][34]
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17421/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> 
>   * {igt@kms_flip@flip-vs-suspend@c-dp1}:
>     - shard-kbl:          [DMESG-WARN][35] ([i915#180]) -> [PASS][36] +5 similar issues
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17421/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-skl:          [FAIL][37] ([i915#1188]) -> [PASS][38] +1 similar issue
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17421/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>     - shard-skl:          [FAIL][39] ([fdo#108145] / [i915#265]) -> [PASS][40]
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17421/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_sprite_plane_move:
>     - shard-iclb:         [SKIP][41] ([fdo#109441]) -> [PASS][42] +1 similar issue
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17421/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
> 
>   * {igt@perf@blocking-parameterized}:
>     - shard-hsw:          [FAIL][43] ([i915#1542]) -> [PASS][44]
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-hsw6/igt@perf@blocking-parameterized.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17421/shard-hsw7/igt@perf@blocking-parameterized.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-tglb:         [FAIL][45] ([i915#454]) -> [SKIP][46] ([i915#468])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-tglb1/igt@i915_pm_dc@dc6-dpms.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17421/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_pm_rpm@cursor-dpms:
>     - shard-snb:          [INCOMPLETE][47] ([i915#82]) -> [SKIP][48] ([fdo#109271])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-snb6/igt@i915_pm_rpm@cursor-dpms.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17421/shard-snb4/igt@i915_pm_rpm@cursor-dpms.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-suspend:
>     - shard-kbl:          [DMESG-WARN][49] ([i915#180]) -> [INCOMPLETE][50] ([i915#155])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17421/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
> 
>   * igt@kms_setmode@basic:
>     - shard-apl:          [FAIL][51] ([i915#31] / [i915#95]) -> [FAIL][52] ([i915#31])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/shard-apl4/igt@kms_setmode@basic.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17421/shard-apl8/igt@kms_setmode@basic.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
>   [i915#1292]: https://gitlab.freedesktop.org/drm/intel/issues/1292
>   [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
>   [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
>   [i915#1580]: https://gitlab.freedesktop.org/drm/intel/issues/1580
>   [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
>   [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
>   [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
>   [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
>   [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
>   [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
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
>   * Linux: CI_DRM_8348 -> Patchwork_17421
> 
>   CI-20190529: 20190529
>   CI_DRM_8348: 71482e0c1b4ce12ad43e790a0c03d671caf1eb54 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5604: 18cc19ece602ba552a8386222b49e7e82820f9aa @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_17421: 12da9986f4100ffd21295150ec554834be924ad2 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17421/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
