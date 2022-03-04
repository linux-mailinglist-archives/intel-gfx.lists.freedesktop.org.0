Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3165D4CD8DB
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Mar 2022 17:16:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54DF7112424;
	Fri,  4 Mar 2022 16:15:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B04C71123FE
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Mar 2022 16:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646410558; x=1677946558;
 h=date:from:to:subject:message-id:references:mime-version:
 in-reply-to; bh=3n7LHJx98u/SjO3hhPhKdILPykAeRd4e0M6NsrPvmkU=;
 b=ge9HtWT2HnrPhKc6GYRWRmcu0BtdMPUNeY1oUMOv35Y/ji7gtjjHCd1b
 7lIZlEtd4GFAqLqgy5XoS4JTWHfMKBJ8wS0EUkTnSa/8zBNypN7nQTV9n
 dBzd0Yn/jWptx2YPDQ1pQmo9iPFxy4SMZy/sTHf9mmCHJ8MpmmbZvTyNl
 Vo0sAB4PpB9G1cowRkvJJ2NDdUe0CHwN79PmnkFyU3DRaGixnSHAdAWlc
 842o69ESq52s9JaMGTSTUga1ygXC1EvnQeGpeRJ5ejD8PD5AwHDF+IgUT
 wsIkmBcBwbP65EZaFzRQ1JwV+XGJaPpTgaQThA3kcsgoXlcivbiTG07s0 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10276"; a="234613384"
X-IronPort-AV: E=Sophos;i="5.90,155,1643702400"; d="scan'208";a="234613384"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 08:15:58 -0800
X-IronPort-AV: E=Sophos;i="5.90,155,1643702400"; d="scan'208";a="576919577"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 08:15:57 -0800
Date: Fri, 4 Mar 2022 08:15:56 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YiI7PPH2mAisx+3h@mdroper-desk1.amr.corp.intel.com>
References: <20220303223435.2793124-1-matthew.d.roper@intel.com>
 <164640153145.21338.16097696270871343543@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <164640153145.21338.16097696270871343543@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/xehp=3A_Support_platforms_?=
 =?utf-8?q?with_CCS_engines_but_no_RCS?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 04, 2022 at 01:45:31PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [1/2] drm/i915/xehp: Support platforms with CCS engines but no RCS
> URL   : https://patchwork.freedesktop.org/series/101019/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11321_full -> Patchwork_22481_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Patches applied to drm-intel-gt-next; thanks for the reviews.


Matt

> 
>   
> 
> Participating hosts (13 -> 13)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_22481_full:
> 
> ### IGT changes ###
> 
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@api_intel_allocator@fork-simple-stress-signal:
>     - {shard-dg1}:        [PASS][1] -> [TIMEOUT][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-dg1-12/igt@api_intel_allocator@fork-simple-stress-signal.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-dg1-17/igt@api_intel_allocator@fork-simple-stress-signal.html
> 
>   * igt@gem_ctx_sseu@mmap-args:
>     - {shard-dg1}:        [SKIP][3] ([i915#280]) -> [SKIP][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-dg1-16/igt@gem_ctx_sseu@mmap-args.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-dg1-13/igt@gem_ctx_sseu@mmap-args.html
> 
>   * igt@gem_exec_fence@nb-await:
>     - {shard-dg1}:        NOTRUN -> [FAIL][5]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-dg1-13/igt@gem_exec_fence@nb-await.html
> 
>   * igt@gem_exec_reloc@basic-write-cpu-active:
>     - {shard-dg1}:        [SKIP][6] ([i915#3281]) -> [SKIP][7]
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-dg1-16/igt@gem_exec_reloc@basic-write-cpu-active.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-dg1-13/igt@gem_exec_reloc@basic-write-cpu-active.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - {shard-dg1}:        [SKIP][8] ([i915#2527]) -> [SKIP][9]
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-dg1-16/igt@gen9_exec_parse@allowed-single.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-dg1-13/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@kms_3d:
>     - {shard-dg1}:        [PASS][10] -> [SKIP][11] +26 similar issues
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-dg1-16/igt@kms_3d.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-dg1-13/igt@kms_3d.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0:
>     - {shard-dg1}:        [PASS][12] -> [FAIL][13] +2 similar issues
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-dg1-16/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-dg1-13/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen:
>     - {shard-dg1}:        [SKIP][14] ([i915#3359]) -> [SKIP][15]
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-dg1-16/igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-dg1-13/igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen.html
> 
>   * {igt@kms_plane_scaling@downscale-with-rotation-factor-0-5@pipe-c-hdmi-a-1-downscale-with-rotation}:
>     - {shard-dg1}:        [SKIP][16] ([i915#5176]) -> [SKIP][17] +3 similar issues
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-dg1-16/igt@kms_plane_scaling@downscale-with-rotation-factor-0-5@pipe-c-hdmi-a-1-downscale-with-rotation.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-dg1-13/igt@kms_plane_scaling@downscale-with-rotation-factor-0-5@pipe-c-hdmi-a-1-downscale-with-rotation.html
> 
>   * {igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale}:
>     - {shard-rkl}:        NOTRUN -> [SKIP][18]
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html
> 
>   * igt@perf_pmu@busy-double-start:
>     - {shard-dg1}:        NOTRUN -> [SKIP][19] +1 similar issue
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-dg1-13/igt@perf_pmu@busy-double-start.html
> 
>   * igt@prime_vgem@basic-read:
>     - {shard-dg1}:        [SKIP][20] ([i915#3708]) -> [SKIP][21]
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-dg1-16/igt@prime_vgem@basic-read.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-dg1-13/igt@prime_vgem@basic-read.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_22481_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_sseu@engines:
>     - shard-snb:          NOTRUN -> [SKIP][22] ([fdo#109271]) +5 similar issues
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-snb7/igt@gem_ctx_sseu@engines.html
> 
>   * igt@gem_eio@in-flight-contexts-10ms:
>     - shard-tglb:         [PASS][23] -> [TIMEOUT][24] ([i915#3063])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-tglb3/igt@gem_eio@in-flight-contexts-10ms.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-tglb3/igt@gem_eio@in-flight-contexts-10ms.html
> 
>   * igt@gem_exec_balancer@parallel:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][25] ([i915#5076])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-kbl1/igt@gem_exec_balancer@parallel.html
>     - shard-tglb:         NOTRUN -> [DMESG-WARN][26] ([i915#5076])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-tglb7/igt@gem_exec_balancer@parallel.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-iclb:         [PASS][27] -> [SKIP][28] ([i915#4525])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-iclb1/igt@gem_exec_balancer@parallel-balancer.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-iclb7/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs0:
>     - shard-iclb:         [PASS][29] -> [FAIL][30] ([i915#2842])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs0.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-iclb7/igt@gem_exec_fair@basic-pace@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-kbl:          [PASS][31] -> [FAIL][32] ([i915#2842]) +1 similar issue
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_ppgtt@flink-and-close-vma-leak:
>     - shard-apl:          [PASS][33] -> [FAIL][34] ([i915#644])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-apl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-apl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [PASS][35] -> [FAIL][36] ([i915#454])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-iclb5/igt@i915_pm_dc@dc6-psr.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - shard-iclb:         [PASS][37] -> [SKIP][38] ([i915#4281])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-iclb5/igt@i915_pm_dc@dc9-dpms.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-apl:          [PASS][39] -> [DMESG-WARN][40] ([i915#180]) +3 similar issues
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-apl8/igt@i915_suspend@fence-restore-tiled2untiled.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-apl3/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-270:
>     - shard-tglb:         NOTRUN -> [SKIP][41] ([fdo#111614])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-tglb7/igt@kms_big_fb@linear-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-kbl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#3777])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-kbl1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@y-tiled-16bpp-rotate-0:
>     - shard-glk:          [PASS][43] -> [DMESG-WARN][44] ([i915#118]) +2 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-glk4/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-glk9/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html
> 
>   * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-apl7/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][46] ([i915#3689]) +1 similar issue
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-tglb1/igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][47] ([fdo#109271]) +23 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-kbl1/igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_ccs.html
> 
>   * igt@kms_chamelium@dp-crc-fast:
>     - shard-kbl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-kbl1/igt@kms_chamelium@dp-crc-fast.html
>     - shard-tglb:         NOTRUN -> [SKIP][49] ([fdo#109284] / [fdo#111827])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-tglb7/igt@kms_chamelium@dp-crc-fast.html
> 
>   * igt@kms_chamelium@dp-hpd-storm:
>     - shard-apl:          NOTRUN -> [SKIP][50] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-apl2/igt@kms_chamelium@dp-hpd-storm.html
> 
>   * igt@kms_content_protection@lic:
>     - shard-apl:          NOTRUN -> [TIMEOUT][51] ([i915#1319])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-apl6/igt@kms_content_protection@lic.html
>     - shard-kbl:          NOTRUN -> [TIMEOUT][52] ([i915#1319])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-kbl6/igt@kms_content_protection@lic.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-64x21-sliding:
>     - shard-iclb:         NOTRUN -> [SKIP][53] ([fdo#109278]) +1 similar issue
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-iclb7/igt@kms_cursor_crc@pipe-d-cursor-64x21-sliding.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-iclb:         [PASS][54] -> [FAIL][55] ([i915#2346])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-iclb1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
>     - shard-glk:          [PASS][56] -> [FAIL][57] ([i915#4911])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-glk4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move:
>     - shard-glk:          [PASS][58] -> [FAIL][59] ([i915#2546])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-glk4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-glk9/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt:
>     - shard-apl:          NOTRUN -> [SKIP][60] ([fdo#109271]) +48 similar issues
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-apl6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-move:
>     - shard-tglb:         NOTRUN -> [SKIP][61] ([fdo#109280] / [fdo#111825]) +1 similar issue
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-tglb1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-move.html
>     - shard-iclb:         NOTRUN -> [SKIP][62] ([fdo#109280])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-iclb1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-move.html
> 
>   * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
>     - shard-tglb:         NOTRUN -> [SKIP][63] ([fdo#109289])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-tglb3/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html
> 
>   * igt@kms_psr@psr2_sprite_mmap_cpu:
>     - shard-iclb:         NOTRUN -> [SKIP][64] ([fdo#109441])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-iclb7/igt@kms_psr@psr2_sprite_mmap_cpu.html
> 
>   * igt@kms_psr@psr2_sprite_mmap_gtt:
>     - shard-iclb:         [PASS][65] -> [SKIP][66] ([fdo#109441])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-iclb1/igt@kms_psr@psr2_sprite_mmap_gtt.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-kbl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#2437])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-kbl6/igt@kms_writeback@writeback-invalid-parameters.html
>     - shard-apl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#2437])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-apl6/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@nouveau_crc@pipe-c-source-outp-complete:
>     - shard-tglb:         NOTRUN -> [SKIP][69] ([i915#2530])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-tglb3/igt@nouveau_crc@pipe-c-source-outp-complete.html
> 
>   * igt@sysfs_clients@sema-50:
>     - shard-apl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#2994])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-apl7/igt@sysfs_clients@sema-50.html
> 
>   * igt@sysfs_heartbeat_interval@mixed@vcs0:
>     - shard-glk:          [PASS][71] -> [WARN][72] ([i915#4055])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-glk4/igt@sysfs_heartbeat_interval@mixed@vcs0.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-glk8/igt@sysfs_heartbeat_interval@mixed@vcs0.html
> 
>   * igt@sysfs_heartbeat_interval@mixed@vecs0:
>     - shard-glk:          [PASS][73] -> [FAIL][74] ([i915#1731])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-glk4/igt@sysfs_heartbeat_interval@mixed@vecs0.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-glk8/igt@sysfs_heartbeat_interval@mixed@vecs0.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_eio@in-flight-contexts-immediate:
>     - {shard-rkl}:        ([TIMEOUT][75], [PASS][76]) ([i915#3063]) -> [PASS][77]
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-4/igt@gem_eio@in-flight-contexts-immediate.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-1/igt@gem_eio@in-flight-contexts-immediate.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-4/igt@gem_eio@in-flight-contexts-immediate.html
> 
>   * igt@gem_eio@suspend:
>     - {shard-rkl}:        [FAIL][78] ([i915#5115]) -> [PASS][79]
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-4/igt@gem_eio@suspend.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-6/igt@gem_eio@suspend.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [TIMEOUT][80] ([i915#3063] / [i915#3648]) -> [PASS][81]
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-tglb7/igt@gem_eio@unwedge-stress.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-tglb6/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs0:
>     - shard-kbl:          [FAIL][82] ([i915#2842]) -> [PASS][83]
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-tglb:         [FAIL][84] ([i915#2842]) -> [PASS][85]
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-tglb6/igt@gem_exec_fair@basic-pace@vecs0.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-tglb7/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [FAIL][86] ([i915#2849]) -> [PASS][87]
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [SKIP][88] ([i915#2190]) -> [PASS][89]
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-tglb6/igt@gem_huc_copy@huc-copy.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-tglb1/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@i915_pm_rps@reset:
>     - {shard-dg1}:        [FAIL][90] ([i915#3719]) -> [PASS][91]
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-dg1-15/igt@i915_pm_rps@reset.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-dg1-12/igt@i915_pm_rps@reset.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-snb:          [INCOMPLETE][92] ([i915#3921]) -> [PASS][93]
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-snb7/igt@i915_selftest@live@hangcheck.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-snb7/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-180:
>     - shard-glk:          [DMESG-WARN][94] ([i915#118]) -> [PASS][95] +1 similar issue
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-glk6/igt@kms_big_fb@linear-32bpp-rotate-180.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-glk7/igt@kms_big_fb@linear-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
>     - {shard-tglu}:       [DMESG-WARN][96] ([i915#402]) -> [PASS][97]
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-tglu-1/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-tglu-3/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
> 
>   * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
>     - {shard-rkl}:        [SKIP][98] ([i915#1845] / [i915#4098]) -> [PASS][99] +3 similar issues
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-1/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-6/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
>     - {shard-rkl}:        ([SKIP][100], [SKIP][101]) ([i915#1845]) -> [PASS][102] +2 similar issues
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-1/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-4/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-6/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_color@pipe-a-gamma:
>     - {shard-rkl}:        [SKIP][103] ([i915#1149] / [i915#1849] / [i915#4070]) -> [PASS][104]
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-2/igt@kms_color@pipe-a-gamma.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-6/igt@kms_color@pipe-a-gamma.html
> 
>   * igt@kms_color@pipe-a-legacy-gamma-reset:
>     - {shard-rkl}:        [SKIP][105] ([i915#1849] / [i915#4070]) -> [PASS][106]
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-2/igt@kms_color@pipe-a-legacy-gamma-reset.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-6/igt@kms_color@pipe-a-legacy-gamma-reset.html
> 
>   * igt@kms_concurrent@pipe-a:
>     - {shard-rkl}:        [SKIP][107] ([i915#1845] / [i915#4070]) -> [PASS][108] +1 similar issue
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-1/igt@kms_concurrent@pipe-a.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-6/igt@kms_concurrent@pipe-a.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-256x256-rapid-movement:
>     - {shard-rkl}:        [SKIP][109] ([fdo#112022] / [i915#4070]) -> [PASS][110] +2 similar issues
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-256x256-rapid-movement.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-256x256-rapid-movement.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent:
>     - {shard-rkl}:        ([SKIP][111], [SKIP][112]) ([fdo#112022] / [i915#4070]) -> [PASS][113]
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-4/igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent.html
> 
>   * igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge:
>     - {shard-rkl}:        [SKIP][114] ([i915#4098]) -> [PASS][115] +1 similar issue
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-4/igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge.html
> 
>   * igt@kms_cursor_legacy@pipe-c-single-bo:
>     - {shard-rkl}:        [SKIP][116] ([i915#4070]) -> [PASS][117] +1 similar issue
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-2/igt@kms_cursor_legacy@pipe-c-single-bo.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-5/igt@kms_cursor_legacy@pipe-c-single-bo.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled:
>     - {shard-rkl}:        [SKIP][118] ([fdo#111314]) -> [PASS][119]
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate@ac-hdmi-a1-hdmi-a2:
>     - shard-glk:          [FAIL][120] ([i915#2122]) -> [PASS][121]
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-glk2/igt@kms_flip@2x-plain-flip-fb-recreate@ac-hdmi-a1-hdmi-a2.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-glk1/igt@kms_flip@2x-plain-flip-fb-recreate@ac-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>     - shard-apl:          [DMESG-WARN][122] ([i915#180]) -> [PASS][123] +3 similar issues
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
>     - shard-kbl:          [INCOMPLETE][124] ([i915#636]) -> [PASS][125]
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
>     - shard-glk:          [FAIL][126] ([i915#4911]) -> [PASS][127]
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-glk3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:
>     - shard-iclb:         [SKIP][128] ([i915#3701]) -> [PASS][129]
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-iclb6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:
>     - {shard-rkl}:        [SKIP][130] ([i915#1849]) -> [PASS][131] +13 similar issues
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
>     - {shard-rkl}:        ([SKIP][132], [SKIP][133]) ([i915#1849] / [i915#4098]) -> [PASS][134] +2 similar issues
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
> 
>   * igt@kms_plane@pixel-format@pipe-a-planes:
>     - {shard-rkl}:        [SKIP][135] ([i915#3558]) -> [PASS][136] +1 similar issue
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-1/igt@kms_plane@pixel-format@pipe-a-planes.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-6/igt@kms_plane@pixel-format@pipe-a-planes.html
> 
>   * {igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-c-edp-1-downscale-with-pixel-format}:
>     - shard-iclb:         [SKIP][137] ([i915#5176]) -> [PASS][138] +2 similar issues
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-iclb2/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-c-edp-1-downscale-with-pixel-format.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-iclb5/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-c-edp-1-downscale-with-pixel-format.html
> 
>   * {igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale}:
>     - shard-iclb:         [SKIP][139] -> [PASS][140] +2 similar issues
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-iclb5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-iclb:         [SKIP][141] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [PASS][142]
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-iclb4/igt@kms_psr2_su@frontbuffer-xrgb8888.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr@cursor_mmap_gtt:
>     - {shard-rkl}:        ([SKIP][143], [SKIP][144]) ([i915#1072]) -> [PASS][145]
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-1/igt@kms_psr@cursor_mmap_gtt.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-4/igt@kms_psr@cursor_mmap_gtt.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-6/igt@kms_psr@cursor_mmap_gtt.html
> 
>   * igt@kms_psr@psr2_suspend:
>     - shard-iclb:         [SKIP][146] ([fdo#109441]) -> [PASS][147] +1 similar issue
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-iclb8/igt@kms_psr@psr2_suspend.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-iclb2/igt@kms_psr@psr2_suspend.html
> 
>   * igt@kms_psr@sprite_mmap_cpu:
>     - {shard-rkl}:        [SKIP][148] ([i915#1072]) -> [PASS][149]
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-1/igt@kms_psr@sprite_mmap_cpu.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-6/igt@kms_psr@sprite_mmap_cpu.html
> 
>   * igt@kms_vblank@pipe-b-query-forked-hang:
>     - {shard-rkl}:        [SKIP][150] ([i915#1845]) -> [PASS][151] +18 similar issues
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
