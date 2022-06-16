Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CB7854D966
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 06:33:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41054113DA3;
	Thu, 16 Jun 2022 04:33:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B23A113D60
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jun 2022 04:33:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655354015; x=1686890015;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=LYaxPvX8NKycO0ZHkGUbf/d6pbtDoG42AhTPe+8w5sM=;
 b=AmF789Yu+E6XQiQ8VGecuIGO2X5/FxLHG6UgidIscOyrgSNGfAZU0IXH
 Lu2bhXxIoqANi6ctC7FcgBtwYrK2sWvF5RNxif+C95CsK5Sv7QdOCnurC
 3CoJFdkkSzHOx6lEObeohMn6D7SpVB2xzn/lTJKivCigPP+Lw+8UsMiEX
 C4fUH7t3HqjrjIx+RVEbPyMNgC28ncX5/k2QFkcHCsa8FzKBtpjeNO9w2
 n6ba78Q6d8Xm9isUsBWA41JfF0sbN3CUoovCQRxfex14s0+NafEdGoTdH
 LOMrcsFrpVJSNaQjUPRCvHjoUdzKj66WF3xSVJs+WB0B7I3BDeyVV3sah Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10379"; a="365516987"
X-IronPort-AV: E=Sophos;i="5.91,304,1647327600"; d="scan'208";a="365516987"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 21:33:34 -0700
X-IronPort-AV: E=Sophos;i="5.91,304,1647327600"; d="scan'208";a="727725945"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 21:33:34 -0700
Date: Wed, 15 Jun 2022 21:33:33 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YqqynTeRE9KLzo84@mdroper-desk1.amr.corp.intel.com>
References: <20220615001019.1821989-1-matthew.d.roper@intel.com>
 <165534910002.17459.10024007158791969880@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <165534910002.17459.10024007158791969880@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgaTkx?=
 =?utf-8?q?5=3A_Extract=2C_polish=2C_and_document_multicast_handling?=
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
Cc: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 16, 2022 at 03:11:40AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: i915: Extract, polish, and document multicast handling
> URL   : https://patchwork.freedesktop.org/series/105134/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11758_full -> Patchwork_105134v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_105134v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_105134v1_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (13 -> 12)
> ------------------------------
> 
>   Missing    (1): shard-dg1 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_105134v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_cursor_legacy@pipe-c-torture-bo:
>     - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-skl2/igt@kms_cursor_legacy@pipe-c-torture-bo.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-skl4/igt@kms_cursor_legacy@pipe-c-torture-bo.html

Appears to be a deadlock:

  <3> [923.922958] INFO: task kms_cursor_lega:1361 blocked for more than 61 seconds.
  <3> [923.923073]       Tainted: G     U  W 5.19.0-rc2-Patchwork_105134v1-ga2644b16f1f0+ #1
  <3> [923.923104] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.

This display test wouldn't be affected by the changes to multicast
registers in this series, so it seems unrelated.

I don't see any matching issue signatures in gitlab, although there are
a couple incompletes filed against similar tests due to timeout that might
have a related root cause (e.g., #6216).


Matt

> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * {igt@kms_plane_lowres@tiling-y@pipe-a-edp-1}:
>     - {shard-rkl}:        NOTRUN -> [SKIP][3] +3 similar issues
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-rkl-6/igt@kms_plane_lowres@tiling-y@pipe-a-edp-1.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_105134v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_persistence@smoketest:
>     - shard-apl:          [PASS][4] -> [FAIL][5] ([i915#5099])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-apl7/igt@gem_ctx_persistence@smoketest.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-apl1/igt@gem_ctx_persistence@smoketest.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-iclb:         [PASS][6] -> [TIMEOUT][7] ([i915#3070])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-iclb6/igt@gem_eio@unwedge-stress.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-iclb6/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@parallel-keep-submit-fence:
>     - shard-iclb:         [PASS][8] -> [SKIP][9] ([i915#4525]) +2 similar issues
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-iclb2/igt@gem_exec_balancer@parallel-keep-submit-fence.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-iclb8/igt@gem_exec_balancer@parallel-keep-submit-fence.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-apl:          [PASS][10] -> [FAIL][11] ([i915#2842])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][12] ([i915#2842])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-iclb1/igt@gem_exec_fair@basic-none@vcs1.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-iclb:         [PASS][13] -> [FAIL][14] ([i915#2842])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-iclb8/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-iclb5/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>     - shard-kbl:          [PASS][15] -> [FAIL][16] ([i915#2842])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-kbl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-kbl4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - shard-apl:          NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#4613])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-apl8/igt@gem_lmem_swapping@parallel-random-engines.html
> 
>   * igt@gem_lmem_swapping@random:
>     - shard-glk:          NOTRUN -> [SKIP][18] ([fdo#109271] / [i915#4613])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-glk3/igt@gem_lmem_swapping@random.html
>     - shard-kbl:          NOTRUN -> [SKIP][19] ([fdo#109271] / [i915#4613]) +3 similar issues
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-kbl1/igt@gem_lmem_swapping@random.html
> 
>   * igt@gem_mmap_gtt@fault-concurrent-y:
>     - shard-snb:          [PASS][20] -> [INCOMPLETE][21] ([i915#5161])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-snb2/igt@gem_mmap_gtt@fault-concurrent-y.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-snb6/igt@gem_mmap_gtt@fault-concurrent-y.html
> 
>   * igt@gem_softpin@evict-single-offset:
>     - shard-kbl:          NOTRUN -> [FAIL][22] ([i915#4171])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-kbl7/igt@gem_softpin@evict-single-offset.html
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - shard-iclb:         [PASS][23] -> [SKIP][24] ([i915#4281])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-iclb7/igt@i915_pm_dc@dc9-dpms.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-apl:          NOTRUN -> [SKIP][25] ([fdo#109271]) +53 similar issues
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-apl8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#3886]) +6 similar issues
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-kbl4/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-bad-pixel-format-4_tiled_dg2_rc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][27] ([fdo#109271]) +234 similar issues
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-kbl7/igt@kms_ccs@pipe-b-bad-pixel-format-4_tiled_dg2_rc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#3886])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-apl8/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
>     - shard-glk:          NOTRUN -> [SKIP][29] ([fdo#109271] / [i915#3886]) +2 similar issues
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-glk3/igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-negative:
>     - shard-glk:          NOTRUN -> [SKIP][30] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-glk3/igt@kms_color_chamelium@pipe-a-ctm-negative.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-red-to-blue:
>     - shard-apl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-apl8/igt@kms_color_chamelium@pipe-b-ctm-red-to-blue.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-0-5:
>     - shard-kbl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [fdo#111827]) +18 similar issues
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-kbl7/igt@kms_color_chamelium@pipe-c-ctm-0-5.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-kbl:          NOTRUN -> [TIMEOUT][33] ([i915#1319])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-kbl4/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-8bpc@hdmi-a-1-pipe-a:
>     - shard-glk:          [PASS][34] -> [SKIP][35] ([fdo#109271])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-glk1/igt@kms_dither@fb-8bpc-vs-panel-8bpc@hdmi-a-1-pipe-a.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-glk8/igt@kms_dither@fb-8bpc-vs-panel-8bpc@hdmi-a-1-pipe-a.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-apl:          [PASS][36] -> [FAIL][37] ([i915#4767])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-apl2/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:
>     - shard-skl:          [PASS][38] -> [INCOMPLETE][39] ([i915#4939])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html
> 
>   * igt@kms_flip@plain-flip-ts-check@a-edp1:
>     - shard-skl:          [PASS][40] -> [FAIL][41] ([i915#2122])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-skl7/igt@kms_flip@plain-flip-ts-check@a-edp1.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-skl7/igt@kms_flip@plain-flip-ts-check@a-edp1.html
> 
>   * igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1:
>     - shard-kbl:          [PASS][42] -> [FAIL][43] ([i915#1188])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-kbl1/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-kbl4/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
>     - shard-apl:          [PASS][44] -> [DMESG-WARN][45] ([i915#180]) +2 similar issues
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-apl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-apl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
>     - shard-kbl:          NOTRUN -> [FAIL][46] ([fdo#108145] / [i915#265]) +1 similar issue
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-kbl7/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
>     - shard-kbl:          NOTRUN -> [FAIL][47] ([i915#265])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-kbl4/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html
> 
>   * igt@kms_plane_multiple@atomic-pipe-b-tiling-4:
>     - shard-glk:          NOTRUN -> [SKIP][48] ([fdo#109271]) +45 similar issues
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-glk3/igt@kms_plane_multiple@atomic-pipe-b-tiling-4.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1:
>     - shard-iclb:         [PASS][49] -> [SKIP][50] ([i915#5176]) +1 similar issue
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-iclb7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-iclb3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1:
>     - shard-iclb:         [PASS][51] -> [SKIP][52] ([i915#5235]) +2 similar issues
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-iclb5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
>     - shard-kbl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#658]) +3 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-kbl7/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-glk:          NOTRUN -> [SKIP][54] ([fdo#109271] / [i915#658])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-glk3/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr@psr2_sprite_blt:
>     - shard-iclb:         [PASS][55] -> [SKIP][56] ([fdo#109441]) +2 similar issues
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-iclb8/igt@kms_psr@psr2_sprite_blt.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-kbl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#2437]) +1 similar issue
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-kbl7/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@perf@polling-small-buf:
>     - shard-skl:          [PASS][58] -> [FAIL][59] ([i915#1722])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-skl4/igt@perf@polling-small-buf.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-skl6/igt@perf@polling-small-buf.html
> 
>   * igt@sysfs_clients@fair-7:
>     - shard-apl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#2994])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-apl8/igt@sysfs_clients@fair-7.html
> 
>   * igt@sysfs_clients@sema-25:
>     - shard-kbl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#2994]) +2 similar issues
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-kbl7/igt@sysfs_clients@sema-25.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_isolation@preservation-s3@vcs0:
>     - shard-kbl:          [DMESG-WARN][62] ([i915#180]) -> [PASS][63] +10 similar issues
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html
> 
>   * igt@gem_eio@in-flight-contexts-1us:
>     - shard-iclb:         [TIMEOUT][64] ([i915#3070]) -> [PASS][65]
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-iclb3/igt@gem_eio@in-flight-contexts-1us.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-iclb5/igt@gem_eio@in-flight-contexts-1us.html
> 
>   * igt@gem_eio@in-flight-contexts-immediate:
>     - {shard-tglu}:       [TIMEOUT][66] ([i915#3063]) -> [PASS][67]
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-tglu-1/igt@gem_eio@in-flight-contexts-immediate.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-tglu-1/igt@gem_eio@in-flight-contexts-immediate.html
> 
>   * igt@gem_eio@in-flight-immediate:
>     - shard-tglb:         [TIMEOUT][68] ([i915#3063]) -> [PASS][69]
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-tglb1/igt@gem_eio@in-flight-immediate.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-tglb1/igt@gem_eio@in-flight-immediate.html
> 
>   * igt@gem_exec_endless@dispatch@vecs0:
>     - shard-tglb:         [INCOMPLETE][70] ([i915#3778]) -> [PASS][71]
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-tglb8/igt@gem_exec_endless@dispatch@vecs0.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-tglb6/igt@gem_exec_endless@dispatch@vecs0.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - {shard-tglu}:       [FAIL][72] ([i915#2842]) -> [PASS][73]
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-tglu-5/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-tglu-5/igt@gem_exec_fair@basic-none-share@rcs0.html
>     - shard-iclb:         [FAIL][74] ([i915#2842]) -> [PASS][75]
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-kbl:          [FAIL][76] ([i915#2842]) -> [PASS][77]
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_mmap_wc@set-cache-level:
>     - {shard-rkl}:        [SKIP][78] ([i915#1850]) -> [PASS][79]
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-rkl-2/igt@gem_mmap_wc@set-cache-level.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-rkl-6/igt@gem_mmap_wc@set-cache-level.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-kbl:          [DMESG-WARN][80] ([i915#5566] / [i915#716]) -> [PASS][81]
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-kbl1/igt@gen9_exec_parse@allowed-single.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-kbl7/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_backlight@fade:
>     - {shard-rkl}:        [SKIP][82] ([i915#3012]) -> [PASS][83]
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-rkl-1/igt@i915_pm_backlight@fade.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-rkl-6/igt@i915_pm_backlight@fade.html
> 
>   * igt@i915_pm_rpm@i2c:
>     - {shard-rkl}:        [SKIP][84] ([fdo#109308]) -> [PASS][85] +1 similar issue
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-rkl-1/igt@i915_pm_rpm@i2c.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-rkl-6/igt@i915_pm_rpm@i2c.html
> 
>   * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
>     - {shard-rkl}:        [SKIP][86] ([i915#1397]) -> [PASS][87] +1 similar issue
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-rkl-2/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-tglb:         [DMESG-WARN][88] ([i915#5591]) -> [PASS][89]
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-tglb8/igt@i915_selftest@live@hangcheck.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-tglb6/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@kms_color@pipe-a-ctm-green-to-red:
>     - {shard-rkl}:        [SKIP][90] ([i915#1149] / [i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][91] +1 similar issue
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-rkl-1/igt@kms_color@pipe-a-ctm-green-to-red.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-rkl-6/igt@kms_color@pipe-a-ctm-green-to-red.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-128x42-onscreen:
>     - {shard-rkl}:        [SKIP][92] ([fdo#112022] / [i915#4070]) -> [PASS][93] +8 similar issues
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-rkl-2/igt@kms_cursor_crc@pipe-b-cursor-128x42-onscreen.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-128x42-onscreen.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipa-atomic:
>     - {shard-rkl}:        [SKIP][94] ([fdo#111825] / [i915#4070]) -> [PASS][95] +1 similar issue
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-rkl-1/igt@kms_cursor_legacy@cursora-vs-flipa-atomic.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-rkl-6/igt@kms_cursor_legacy@cursora-vs-flipa-atomic.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-untiled:
>     - {shard-rkl}:        [SKIP][96] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][97] +2 similar issues
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-untiled.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-untiled.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - {shard-rkl}:        [SKIP][98] ([fdo#110189] / [i915#3955]) -> [PASS][99]
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_flip@flip-vs-suspend@a-dp1:
>     - shard-apl:          [DMESG-WARN][100] ([i915#180]) -> [PASS][101] +2 similar issues
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-apl1/igt@kms_flip@flip-vs-suspend@a-dp1.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-apl2/igt@kms_flip@flip-vs-suspend@a-dp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-badstride:
>     - {shard-rkl}:        [SKIP][102] ([i915#1849] / [i915#4098]) -> [PASS][103] +31 similar issues
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-badstride.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-badstride.html
> 
>   * igt@kms_plane@plane-panning-bottom-right@pipe-b-planes:
>     - {shard-rkl}:        [SKIP][104] ([i915#1849] / [i915#3558]) -> [PASS][105] +1 similar issue
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-rkl-2/igt@kms_plane@plane-panning-bottom-right@pipe-b-planes.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-rkl-6/igt@kms_plane@plane-panning-bottom-right@pipe-b-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
>     - {shard-rkl}:        [SKIP][106] ([i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][107] +2 similar issues
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-rkl-1/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
> 
>   * igt@kms_plane_multiple@atomic-pipe-a-tiling-none:
>     - {shard-rkl}:        [SKIP][108] ([i915#3558] / [i915#4070]) -> [PASS][109]
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-rkl-1/igt@kms_plane_multiple@atomic-pipe-a-tiling-none.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-a-tiling-none.html
> 
>   * igt@kms_plane_multiple@atomic-pipe-a-tiling-x:
>     - {shard-rkl}:        [SKIP][110] ([i915#1849] / [i915#3558] / [i915#4070]) -> [PASS][111]
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-rkl-2/igt@kms_plane_multiple@atomic-pipe-a-tiling-x.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-a-tiling-x.html
> 
>   * igt@kms_properties@crtc-properties-atomic:
>     - {shard-rkl}:        [SKIP][112] ([i915#1849]) -> [PASS][113]
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-rkl-1/igt@kms_properties@crtc-properties-atomic.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-rkl-6/igt@kms_properties@crtc-properties-atomic.html
> 
>   * igt@kms_psr@primary_render:
>     - {shard-rkl}:        [SKIP][114] ([i915#1072]) -> [PASS][115] +3 similar issues
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-rkl-1/igt@kms_psr@primary_render.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-rkl-6/igt@kms_psr@primary_render.html
> 
>   * igt@kms_psr@psr2_sprite_plane_move:
>     - shard-iclb:         [SKIP][116] ([fdo#109441]) -> [PASS][117] +3 similar issues
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
> 
>   * igt@kms_universal_plane@universal-plane-gen9-features-pipe-a:
>     - {shard-rkl}:        [SKIP][118] ([i915#1845] / [i915#4070] / [i915#4098]) -> [PASS][119] +1 similar issue
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-rkl-1/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-rkl-6/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html
> 
>   * igt@kms_vblank@pipe-b-query-forked:
>     - {shard-rkl}:        [SKIP][120] ([i915#1845] / [i915#4098]) -> [PASS][121] +33 similar issues
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-rkl-1/igt@kms_vblank@pipe-b-query-forked.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-rkl-6/igt@kms_vblank@pipe-b-query-forked.html
> 
>   * igt@perf@polling-small-buf:
>     - {shard-rkl}:        [FAIL][122] ([i915#1722]) -> [PASS][123]
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-rkl-1/igt@perf@polling-small-buf.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-rkl-6/igt@perf@polling-small-buf.html
> 
>   * igt@perf@short-reads:
>     - shard-skl:          [FAIL][124] ([i915#51]) -> [PASS][125]
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-skl4/igt@perf@short-reads.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-skl10/igt@perf@short-reads.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
>     - shard-iclb:         [SKIP][126] ([i915#2920]) -> [SKIP][127] ([i915#658])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-iclb8/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
>     - shard-iclb:         [SKIP][128] ([i915#2920]) -> [SKIP][129] ([fdo#111068] / [i915#658])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-iclb8/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
>     - shard-iclb:         [SKIP][130] ([fdo#111068] / [i915#658]) -> [SKIP][131] ([i915#2920])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-iclb5/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-iclb:         [FAIL][132] ([i915#5939]) -> [SKIP][133] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-iclb2/igt@kms_psr2_su@page_flip-nv12.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-iclb4/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-iclb:         [SKIP][134] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [FAIL][135] ([i915#5939])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-iclb4/igt@kms_psr2_su@page_flip-p010.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145], [FAIL][146]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#716]) -> ([FAIL][147], [FAIL][148]) ([i915#3002] / [i915#4312] / [i915#5257])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-kbl1/igt@runner@aborted.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-kbl1/igt@runner@aborted.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-kbl7/igt@runner@aborted.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-kbl3/igt@runner@aborted.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-kbl1/igt@runner@aborted.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-kbl4/igt@runner@aborted.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-kbl4/igt@runner@aborted.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-kbl1/igt@runner@aborted.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-kbl7/igt@runner@aborted.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-kbl4/igt@runner@aborted.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/shard-kbl7/igt@runner@aborted.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-kbl4/igt@runner@aborted.html
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/shard-kbl3/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
>   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
>   [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112022]: https://bugs.freedesktop.org/show_bug.cgi?id=112022
>   [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1850]: https://gitlab.freedesktop.org/drm/intel/issues/1850
>   [i915#1911]: https://gitlab.freedesktop.org/drm/intel/issues/1911
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2232]: https://gitlab.freedesktop.org/drm/intel/issues/2232
>   [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
>   [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
>   [i915#3070]: https://gitlab.freedesktop.org/drm/intel/issues/3070
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3319]: https://gitlab.freedesktop.org/drm/intel/issues/3319
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
>   [i915#3828]: https://gitlab.freedesktop.org/drm/intel/issues/3828
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
>   [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
>   [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
>   [i915#5099]: https://gitlab.freedesktop.org/drm/intel/issues/5099
>   [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
>   [i915#5161]: https://gitlab.freedesktop.org/drm/intel/issues/5161
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
>   [i915#5939]: https://gitlab.freedesktop.org/drm/intel/issues/5939
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11758 -> Patchwork_105134v1
> 
>   CI-20190529: 20190529
>   CI_DRM_11758: a2644b16f1f05a1a6eff99d7076bfa0e770bdeb6 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6526: 02888400228efbb29437726aa04114575ea939c3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_105134v1: a2644b16f1f05a1a6eff99d7076bfa0e770bdeb6 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
