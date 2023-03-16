Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F9C66BD2D2
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 15:58:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23E3210ED07;
	Thu, 16 Mar 2023 14:58:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C78F710ED07
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 14:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678978713; x=1710514713;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=tYqZ7rEfupBqLiVQ99f1Rd5e4MMWFkN2Ad+C3EJhilY=;
 b=kymKkoJnJaJsLHaqqeSUVRGxThgItTSnoNrywzThQyajdGg/4y6i8sO/
 hRBjbJfkMLiiwckboQLO/XTfRpidQNm7x82tcCYP4/fc5QFfJl1qHr08T
 tHyBqhaKqL/OHNtOwKLY+YGtNc/rthXVb2dGmHIxJoOmGYSY47nc9mkx5
 S5S6P4B//jGKAbjk3OXe8b5tfbs1M/G+rFMsvU9GAQb9/17nh0suGWKtY
 4CnjA9GbJUpn0qa7xtcn9eO8vrIH+O+dNS8wN0Mdu8c6yViCUoujrtOuM
 JpOBhoePQoQA3EkCgCl9lR/IQmTMd4G043a9K6Lyjm3egLth0SGehwiiV g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="321867840"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="321867840"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 07:58:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="712399286"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="712399286"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 07:58:31 -0700
Date: Thu, 16 Mar 2023 16:58:28 +0200
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <ZBMulI+iyHkEXArn@ideak-desk.fi.intel.com>
References: <20230215083832.287519-1-vinod.govindapillai@intel.com>
 <167650187427.30603.7188345243445951251@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <167650187427.30603.7188345243445951251@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgUHJv?=
 =?utf-8?q?vision_to_ignore_long_HPDs_in_CI_systems_=28rev5=29?=
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

On Wed, Feb 15, 2023 at 10:57:54PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: Provision to ignore long HPDs in CI systems (rev5)
> URL   : https://patchwork.freedesktop.org/series/109475/
> State : success

Thanks for the patchset, pushed it to din.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12741_full -> Patchwork_109475v5_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109475v5/index.html
> 
> Participating hosts (10 -> 10)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_109475v5_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-glk:          [PASS][1] -> [FAIL][2] ([i915#2842]) +1 similar issue
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109475v5/shard-glk1/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt:
>     - shard-glk:          NOTRUN -> [SKIP][3] ([fdo#109271]) +4 similar issues
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109475v5/shard-glk1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area:
>     - shard-glk:          NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#658])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109475v5/shard-glk6/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@drm_fdinfo@most-busy-check-all@rcs0:
>     - {shard-rkl}:        [FAIL][5] ([i915#7742]) -> [PASS][6]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-rkl-1/igt@drm_fdinfo@most-busy-check-all@rcs0.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109475v5/shard-rkl-1/igt@drm_fdinfo@most-busy-check-all@rcs0.html
> 
>   * igt@fbdev@pan:
>     - {shard-rkl}:        [SKIP][7] ([i915#2582]) -> [PASS][8]
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-rkl-2/igt@fbdev@pan.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109475v5/shard-rkl-6/igt@fbdev@pan.html
> 
>   * igt@feature_discovery@psr2:
>     - {shard-rkl}:        [SKIP][9] ([i915#658]) -> [PASS][10]
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-rkl-2/igt@feature_discovery@psr2.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109475v5/shard-rkl-6/igt@feature_discovery@psr2.html
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - {shard-tglu}:       [FAIL][11] ([i915#6268]) -> [PASS][12]
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-tglu-1/igt@gem_ctx_exec@basic-nohangcheck.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109475v5/shard-tglu-6/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - {shard-rkl}:        [FAIL][13] ([i915#2842]) -> [PASS][14]
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-rkl-5/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109475v5/shard-rkl-5/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-apl:          [FAIL][15] ([i915#2842]) -> [PASS][16]
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-apl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109475v5/shard-apl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_reloc@basic-write-read-noreloc:
>     - {shard-rkl}:        [SKIP][17] ([i915#3281]) -> [PASS][18] +5 similar issues
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-rkl-2/igt@gem_exec_reloc@basic-write-read-noreloc.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109475v5/shard-rkl-5/igt@gem_exec_reloc@basic-write-read-noreloc.html
> 
>   * igt@gem_exec_suspend@basic-s3@smem:
>     - {shard-rkl}:        [ABORT][19] ([i915#5122]) -> [PASS][20]
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-rkl-4/igt@gem_exec_suspend@basic-s3@smem.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109475v5/shard-rkl-2/igt@gem_exec_suspend@basic-s3@smem.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
>     - {shard-rkl}:        [SKIP][21] ([i915#3282]) -> [PASS][22] +2 similar issues
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109475v5/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
> 
>   * igt@gen9_exec_parse@bb-start-param:
>     - {shard-rkl}:        [SKIP][23] ([i915#2527]) -> [PASS][24] +1 similar issue
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-rkl-2/igt@gen9_exec_parse@bb-start-param.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109475v5/shard-rkl-5/igt@gen9_exec_parse@bb-start-param.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
>     - {shard-dg1}:        [FAIL][25] ([i915#3591]) -> [PASS][26] +1 similar issue
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109475v5/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
> 
>   * igt@i915_pm_rpm@drm-resources-equal:
>     - {shard-rkl}:        [SKIP][27] ([fdo#109308]) -> [PASS][28]
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-rkl-2/igt@i915_pm_rpm@drm-resources-equal.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109475v5/shard-rkl-6/igt@i915_pm_rpm@drm-resources-equal.html
> 
>   * igt@i915_pm_rpm@modeset-lpsp-stress:
>     - {shard-rkl}:        [SKIP][29] ([i915#1397]) -> [PASS][30]
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-rkl-2/igt@i915_pm_rpm@modeset-lpsp-stress.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109475v5/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
>     - shard-apl:          [FAIL][31] ([i915#2346]) -> [PASS][32]
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109475v5/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
>     - shard-glk:          [FAIL][33] ([i915#2346]) -> [PASS][34] +1 similar issue
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109475v5/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite:
>     - {shard-rkl}:        [SKIP][35] ([i915#1849] / [i915#4098]) -> [PASS][36] +11 similar issues
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109475v5/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_plane@plane-position-hole@pipe-b-planes:
>     - {shard-rkl}:        [SKIP][37] ([i915#1849]) -> [PASS][38] +2 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-rkl-2/igt@kms_plane@plane-position-hole@pipe-b-planes.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109475v5/shard-rkl-6/igt@kms_plane@plane-position-hole@pipe-b-planes.html
> 
>   * igt@kms_psr@cursor_plane_onoff:
>     - {shard-rkl}:        [SKIP][39] ([i915#1072]) -> [PASS][40] +2 similar issues
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-rkl-2/igt@kms_psr@cursor_plane_onoff.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109475v5/shard-rkl-6/igt@kms_psr@cursor_plane_onoff.html
> 
>   * igt@kms_rotation_crc@primary-rotation-90:
>     - {shard-rkl}:        [SKIP][41] ([i915#1845] / [i915#4098]) -> [PASS][42] +13 similar issues
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-rkl-2/igt@kms_rotation_crc@primary-rotation-90.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109475v5/shard-rkl-6/igt@kms_rotation_crc@primary-rotation-90.html
> 
>   * igt@perf@mi-rpc:
>     - {shard-rkl}:        [SKIP][43] ([i915#2434]) -> [PASS][44]
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-rkl-6/igt@perf@mi-rpc.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109475v5/shard-rkl-5/igt@perf@mi-rpc.html
> 
>   * igt@perf@stress-open-close:
>     - shard-glk:          [ABORT][45] ([i915#5213]) -> [PASS][46]
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-glk1/igt@perf@stress-open-close.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109475v5/shard-glk6/igt@perf@stress-open-close.html
> 
>   * igt@prime_vgem@basic-read:
>     - {shard-rkl}:        [SKIP][47] ([fdo#109295] / [i915#3291] / [i915#3708]) -> [PASS][48]
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12741/shard-rkl-2/igt@prime_vgem@basic-read.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109475v5/shard-rkl-5/igt@prime_vgem@basic-read.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
>   [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
>   [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3547]: https://gitlab.freedesktop.org/drm/intel/issues/3547
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3825]: https://gitlab.freedesktop.org/drm/intel/issues/3825
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3936]: https://gitlab.freedesktop.org/drm/intel/issues/3936
>   [i915#3938]: https://gitlab.freedesktop.org/drm/intel/issues/3938
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4854]: https://gitlab.freedesktop.org/drm/intel/issues/4854
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4879]: https://gitlab.freedesktop.org/drm/intel/issues/4879
>   [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
>   [i915#5030]: https://gitlab.freedesktop.org/drm/intel/issues/5030
>   [i915#5122]: https://gitlab.freedesktop.org/drm/intel/issues/5122
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5213]: https://gitlab.freedesktop.org/drm/intel/issues/5213
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
>   [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
>   [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
>   [i915#6344]: https://gitlab.freedesktop.org/drm/intel/issues/6344
>   [i915#6412]: https://gitlab.freedesktop.org/drm/intel/issues/6412
>   [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
>   [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>   [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
>   [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
>   [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
>   [i915#7037]: https://gitlab.freedesktop.org/drm/intel/issues/7037
>   [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7128]: https://gitlab.freedesktop.org/drm/intel/issues/7128
>   [i915#7276]: https://gitlab.freedesktop.org/drm/intel/issues/7276
>   [i915#7294]: https://gitlab.freedesktop.org/drm/intel/issues/7294
>   [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
>   [i915#7651]: https://gitlab.freedesktop.org/drm/intel/issues/7651
>   [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
>   [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
>   [i915#7707]: https://gitlab.freedesktop.org/drm/intel/issues/7707
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#7957]: https://gitlab.freedesktop.org/drm/intel/issues/7957
>   [i915#8152]: https://gitlab.freedesktop.org/drm/intel/issues/8152
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12741 -> Patchwork_109475v5
> 
>   CI-20190529: 20190529
>   CI_DRM_12741: 67545af096c3c8dee1d48662a3f4830cd84b1105 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7160: 45da871dd2684227e93a2fc002b87dfc58bd5fd9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_109475v5: 67545af096c3c8dee1d48662a3f4830cd84b1105 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109475v5/index.html
