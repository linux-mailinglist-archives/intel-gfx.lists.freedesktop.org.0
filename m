Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10AC35B8308
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Sep 2022 10:36:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D8D810E8B7;
	Wed, 14 Sep 2022 08:36:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB7C810E8B7
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Sep 2022 08:35:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663144556; x=1694680556;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=1uRIsxYRP3jyHcXW6qJkRY8llqSHS6DgTat/5deXy88=;
 b=Hsj+W4T3WJ64u56P6IehAZFGfoHIVjVmSZN0OpKKKPp/5zQyyk+5kvI8
 VNCteHZAduFNLnvM7AezzmqpJ0CSuc08uVJ/WeDfzitaI5t4ydjGX3XWH
 09l7bL2qEoW3boU+CYgHN9JM+qjCx+4IPuRG0nkwVQqQXKTNxd5u/3X1h
 432yPe7w45NIgJCLzmIC+HXD5EuV24RMomBIkQs0s5VSzzDmqqA2WR3oW
 SOVqpJDbm6U5n+kPgaZ5qryksYzBdBNYGqzNBvKK9Oj4kvwDZqRIvOn9d
 r496yLC1i5mKelGpAE3+LiZZ4+nr/5XOPxFDwCSyj2Ogmh069Ij6b03LK A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10469"; a="362335784"
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="362335784"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 01:35:55 -0700
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="678952926"
Received: from pvasili-mobl3.ger.corp.intel.com (HELO intel.com)
 ([10.252.57.74])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 01:35:54 -0700
Date: Wed, 14 Sep 2022 10:35:52 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YyGSaPoeSJeRyP2s@alfio.lan>
References: <20220913100328.579271-1-karolina.drobnik@intel.com>
 <166313998635.30164.793426975814670356@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <166313998635.30164.793426975814670356@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Check_for_incomplete_LRI_from_the_context_im?=
 =?utf-8?q?age?=
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

Hi,

> Summary
> 
>    FAILURE
> 
>    Serious unknown changes coming with Patchwork_108487v1_full absolutely
>    need to be
>    verified manually.
> 
>    If you think the reported changes have nothing to do with the changes
>    introduced in Patchwork_108487v1_full, please notify your bug team to
>    allow them
>    to document this new failure mode, which will reduce false positives in
>    CI.
> 
> Participating hosts (10 -> 11)
> 
>    Additional (1): shard-rkl
> 
> Possible new issues
> 
>    Here are the unknown changes that may have been introduced in
>    Patchwork_108487v1_full:
> 
>   IGT changes
> 
>     Possible regressions
> 
>      * igt@i915_module_load@reload-with-fault-injection:
>           + shard-tglb: [3]PASS -> [4]INCOMPLETE
>      * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cp
>        u:
>           + shard-apl: [5]PASS -> [6]FAIL
>      * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc
>        :
>           + shard-iclb: [7]PASS -> [8]DMESG-WARN

These look unrelated failures.

Andi

> Known issues
> 
>    Here are the changes found in Patchwork_108487v1_full that come from
>    known issues:
> 
>   IGT changes
> 
>     Issues hit
> 
>      * igt@gem_ctx_exec@basic-nohangcheck:
>           + shard-tglb: [9]PASS -> [10]FAIL ([11]i915#6268)
>      * igt@gem_eio@in-flight-1us:
>           + shard-tglb: [12]PASS -> [13]TIMEOUT ([14]i915#3063)
>      * igt@gem_exec_balancer@parallel-balancer:
>           + shard-iclb: [15]PASS -> [16]SKIP ([17]i915#4525)
>      * igt@gem_exec_fair@basic-pace-solo@rcs0:
>           + shard-glk: NOTRUN -> [18]FAIL ([19]i915#2842)
>      * igt@gem_exec_fair@basic-throttle@rcs0:
>           + shard-glk: [20]PASS -> [21]FAIL ([22]i915#2842) +1 similar
>             issue
>           + shard-iclb: [23]PASS -> [24]FAIL ([25]i915#2842)
>      * igt@gem_exec_reloc@basic-cpu-noreloc:
>           + shard-apl: [26]PASS -> [27]DMESG-WARN ([28]i915#165 /
>             [29]i915#62) +1 similar issue
>      * igt@gem_huc_copy@huc-copy:
>           + shard-tglb: [30]PASS -> [31]SKIP ([32]i915#2190)
>      * igt@gem_lmem_swapping@verify-ccs:
>           + shard-glk: NOTRUN -> [33]SKIP ([34]fdo#109271 / [35]i915#4613)
>      * igt@i915_pm_dc@dc9-dpms:
>           + shard-iclb: [36]PASS -> [37]SKIP ([38]i915#4281)
>      * igt@i915_pm_rps@engine-order:
>           + shard-apl: [39]PASS -> [40]FAIL ([41]i915#6537)
>      * igt@i915_suspend@debugfs-reader:
>           + shard-apl: [42]PASS -> [43]DMESG-WARN ([44]i915#180)
>      * igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
>           + shard-glk: NOTRUN -> [45]SKIP ([46]fdo#109271 / [47]i915#3886)
>             +3 similar issues
>      * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
>           + shard-glk: [48]PASS -> [49]FAIL ([50]i915#2346)
>      * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:
>           + shard-glk: [51]PASS -> [52]FAIL ([53]i915#79)
>      * igt@kms_flip@flip-vs-fences@b-dp1:
>           + shard-apl: [54]PASS -> [55]DMESG-WARN ([56]i915#62) +37
>             similar issues
>      * igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a1:
>           + shard-glk: [57]PASS -> [58]FAIL ([59]i915#2122)
>      * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling
>        @pipe-a-valid-mode:
>           + shard-iclb: NOTRUN -> [60]SKIP ([61]i915#2587 / [62]i915#2672)
>             +2 similar issues
>      * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscali
>        ng@pipe-a-default-mode:
>           + shard-iclb: [63]PASS -> [64]SKIP ([65]i915#3555)
>      * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling
>        @pipe-a-default-mode:
>           + shard-iclb: NOTRUN -> [66]SKIP ([67]i915#2672) +5 similar
>             issues
>      * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downsc
>        aling@pipe-a-default-mode:
>           + shard-iclb: NOTRUN -> [68]SKIP ([69]i915#2672 / [70]i915#3555)
>      * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cp
>        u:
>           + shard-glk: NOTRUN -> [71]SKIP ([72]fdo#109271) +24 similar
>             issues
>      * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
>           + shard-glk: NOTRUN -> [73]FAIL ([74]fdo#108145 / [75]i915#265)
>             +1 similar issue
>      * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@
>        pipe-b-edp-1:
>           + shard-iclb: [76]PASS -> [77]SKIP ([78]i915#5176) +2 similar
>             issues
>      * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0
>        -5@pipe-a-edp-1:
>           + shard-iclb: [79]PASS -> [80]SKIP ([81]i915#5235) +5 similar
>             issues
>      * igt@kms_properties@connector-properties-legacy:
>           + shard-apl: [82]PASS -> [83]DMESG-WARN ([84]i915#165 /
>             [85]i915#180 / [86]i915#62) +36 similar issues
>      * igt@kms_psr2_sf@plane-move-sf-dmg-area:
>           + shard-glk: NOTRUN -> [87]SKIP ([88]fdo#109271 / [89]i915#658)
>      * igt@kms_psr@psr2_cursor_blt:
>           + shard-iclb: [90]PASS -> [91]SKIP ([92]fdo#109441)
> 
>     Possible fixes
> 
>      * igt@gem_exec_balancer@parallel-out-fence:
>           + shard-iclb: [93]SKIP ([94]i915#4525) -> [95]PASS +1 similar
>             issue
>      * igt@gem_exec_fair@basic-none@vcs0:
>           + shard-glk: [96]FAIL ([97]i915#2842) -> [98]PASS
>      * igt@i915_selftest@live@gt_lrc:
>           + shard-tglb: [99]DMESG-FAIL ([100]i915#2373) -> [101]PASS
>      * igt@i915_selftest@live@gt_pm:
>           + {shard-tglu}: [102]DMESG-FAIL ([103]i915#3987) -> [104]PASS
>      * igt@i915_selftest@live@hangcheck:
>           + shard-tglb: [105]DMESG-WARN ([106]i915#5591) -> [107]PASS
>      * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling
>        @pipe-a-default-mode:
>           + shard-iclb: [108]SKIP ([109]i915#3555) -> [110]PASS
>      * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-for
>        mats@pipe-b-edp-1:
>           + shard-iclb: [111]SKIP ([112]i915#5176) -> [113]PASS +1 similar
>             issue
>      * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pip
>        e-c-edp-1:
>           + shard-iclb: [114]SKIP ([115]i915#5235) -> [116]PASS +2 similar
>             issues
>      * igt@kms_psr@psr2_sprite_blt:
>           + shard-iclb: [117]SKIP ([118]fdo#109441) -> [119]PASS +2
>             similar issues
>      * igt@perf@stress-open-close:
>           + shard-glk: [120]INCOMPLETE ([121]i915#5213) -> [122]PASS
>      * igt@perf_pmu@enable-race@vecs0:
>           + shard-glk: [123]DMESG-WARN ([124]i915#118) -> [125]PASS
> 
>     Warnings
> 
>      * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
>           + shard-iclb: [126]WARN ([127]i915#2684) -> [128]FAIL
>             ([129]i915#2684)
>      * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
>           + shard-apl: [130]FAIL ([131]i915#265) -> [132]DMESG-FAIL
>             ([133]i915#62)
>      * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
>           + shard-iclb: [134]SKIP ([135]i915#2920) -> [136]SKIP
>             ([137]i915#658)
>      * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
>           + shard-iclb: [138]SKIP ([139]i915#658) -> [140]SKIP
>             ([141]i915#2920) +1 similar issue
>      * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
>           + shard-iclb: [142]SKIP ([143]i915#2920) -> [144]SKIP
>             ([145]fdo#111068 / [146]i915#658)
>      * igt@kms_psr2_su@page_flip-nv12:
>           + shard-iclb: [147]FAIL ([148]i915#5939) -> [149]SKIP
>             ([150]fdo#109642 / [151]fdo#111068 / [152]i915#658)
>      * igt@runner@aborted:
>           + shard-apl: ([153]FAIL, [154]FAIL) ([155]i915#3002 /
>             [156]i915#4312 / [157]i915#5257 / [158]i915#6599) ->
>             ([159]FAIL, [160]FAIL) ([161]i915#180 / [162]i915#3002 /
>             [163]i915#4312 / [164]i915#5257 / [165]i915#6599)
> 
>    {name}: This element is suppressed. This means it is ignored when
>    computing
>    the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> Build changes
> 
>      * Linux: CI_DRM_12130 -> Patchwork_108487v1
> 
>    CI-20190529: 20190529
>    CI_DRM_12130: 07430fbb3615228b9df8c56a92a00d7b18f54a70 @
>    git://anongit.freedesktop.org/gfx-ci/linux
>    IGT_6653: 4f927248ebbf11f03f4c1ea2254f011e7575322f @
>    https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>    Patchwork_108487v1: 07430fbb3615228b9df8c56a92a00d7b18f54a70 @
>    git://anongit.freedesktop.org/gfx-ci/linux
>    piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
>    git://anongit.freedesktop.org/piglit
> 
> References
> 
>    1. https://patchwork.freedesktop.org/series/108487/
>    2. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/index.html
>    3. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12130/shard-tglb5/igt@i915_module_load@reload-with-fault-injection.html
>    4. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-tglb5/igt@i915_module_load@reload-with-fault-injection.html
>    5. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12130/shard-apl8/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html
>    6. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-apl3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html
>    7. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12130/shard-iclb4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html
>    8. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html
>    9. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12130/shard-tglb1/igt@gem_ctx_exec@basic-nohangcheck.html
>   10. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-tglb3/igt@gem_ctx_exec@basic-nohangcheck.html
>   11. https://gitlab.freedesktop.org/drm/intel/issues/6268
>   12. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12130/shard-tglb2/igt@gem_eio@in-flight-1us.html
>   13. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-tglb2/igt@gem_eio@in-flight-1us.html
>   14. https://gitlab.freedesktop.org/drm/intel/issues/3063
>   15. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12130/shard-iclb2/igt@gem_exec_balancer@parallel-balancer.html
>   16. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-iclb5/igt@gem_exec_balancer@parallel-balancer.html
>   17. https://gitlab.freedesktop.org/drm/intel/issues/4525
>   18. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-glk5/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>   19. https://gitlab.freedesktop.org/drm/intel/issues/2842
>   20. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12130/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html
>   21. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html
>   22. https://gitlab.freedesktop.org/drm/intel/issues/2842
>   23. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12130/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html
>   24. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html
>   25. https://gitlab.freedesktop.org/drm/intel/issues/2842
>   26. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12130/shard-apl4/igt@gem_exec_reloc@basic-cpu-noreloc.html
>   27. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-apl3/igt@gem_exec_reloc@basic-cpu-noreloc.html
>   28. https://gitlab.freedesktop.org/drm/intel/issues/165
>   29. https://gitlab.freedesktop.org/drm/intel/issues/62
>   30. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12130/shard-tglb2/igt@gem_huc_copy@huc-copy.html
>   31. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-tglb6/igt@gem_huc_copy@huc-copy.html
>   32. https://gitlab.freedesktop.org/drm/intel/issues/2190
>   33. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-glk5/igt@gem_lmem_swapping@verify-ccs.html
>   34. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   35. https://gitlab.freedesktop.org/drm/intel/issues/4613
>   36. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12130/shard-iclb2/igt@i915_pm_dc@dc9-dpms.html
>   37. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
>   38. https://gitlab.freedesktop.org/drm/intel/issues/4281
>   39. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12130/shard-apl3/igt@i915_pm_rps@engine-order.html
>   40. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-apl2/igt@i915_pm_rps@engine-order.html
>   41. https://gitlab.freedesktop.org/drm/intel/issues/6537
>   42. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12130/shard-apl7/igt@i915_suspend@debugfs-reader.html
>   43. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-apl8/igt@i915_suspend@debugfs-reader.html
>   44. https://gitlab.freedesktop.org/drm/intel/issues/180
>   45. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-glk5/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html
>   46. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   47. https://gitlab.freedesktop.org/drm/intel/issues/3886
>   48. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12130/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
>   49. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
>   50. https://gitlab.freedesktop.org/drm/intel/issues/2346
>   51. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12130/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html
>   52. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html
>   53. https://gitlab.freedesktop.org/drm/intel/issues/79
>   54. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12130/shard-apl8/igt@kms_flip@flip-vs-fences@b-dp1.html
>   55. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-apl3/igt@kms_flip@flip-vs-fences@b-dp1.html
>   56. https://gitlab.freedesktop.org/drm/intel/issues/62
>   57. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12130/shard-glk6/igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a1.html
>   58. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-glk1/igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a1.html
>   59. https://gitlab.freedesktop.org/drm/intel/issues/2122
>   60. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-iclb5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html
>   61. https://gitlab.freedesktop.org/drm/intel/issues/2587
>   62. https://gitlab.freedesktop.org/drm/intel/issues/2672
>   63. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12130/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode.html
>   64. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode.html
>   65. https://gitlab.freedesktop.org/drm/intel/issues/3555
>   66. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode.html
>   67. https://gitlab.freedesktop.org/drm/intel/issues/2672
>   68. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-default-mode.html
>   69. https://gitlab.freedesktop.org/drm/intel/issues/2672
>   70. https://gitlab.freedesktop.org/drm/intel/issues/3555
>   71. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-glk5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu.html
>   72. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   73. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-glk5/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html
>   74. https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   75. https://gitlab.freedesktop.org/drm/intel/issues/265
>   76. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12130/shard-iclb6/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html
>   77. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-iclb2/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html
>   78. https://gitlab.freedesktop.org/drm/intel/issues/5176
>   79. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12130/shard-iclb3/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1.html
>   80. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1.html
>   81. https://gitlab.freedesktop.org/drm/intel/issues/5235
>   82. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12130/shard-apl4/igt@kms_properties@connector-properties-legacy.html
>   83. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-apl3/igt@kms_properties@connector-properties-legacy.html
>   84. https://gitlab.freedesktop.org/drm/intel/issues/165
>   85. https://gitlab.freedesktop.org/drm/intel/issues/180
>   86. https://gitlab.freedesktop.org/drm/intel/issues/62
>   87. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-glk5/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
>   88. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   89. https://gitlab.freedesktop.org/drm/intel/issues/658
>   90. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12130/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
>   91. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-iclb3/igt@kms_psr@psr2_cursor_blt.html
>   92. https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   93. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12130/shard-iclb3/igt@gem_exec_balancer@parallel-out-fence.html
>   94. https://gitlab.freedesktop.org/drm/intel/issues/4525
>   95. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-iclb1/igt@gem_exec_balancer@parallel-out-fence.html
>   96. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12130/shard-glk1/igt@gem_exec_fair@basic-none@vcs0.html
>   97. https://gitlab.freedesktop.org/drm/intel/issues/2842
>   98. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-glk1/igt@gem_exec_fair@basic-none@vcs0.html
>   99. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12130/shard-tglb1/igt@i915_selftest@live@gt_lrc.html
>  100. https://gitlab.freedesktop.org/drm/intel/issues/2373
>  101. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-tglb7/igt@i915_selftest@live@gt_lrc.html
>  102. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12130/shard-tglu-1/igt@i915_selftest@live@gt_pm.html
>  103. https://gitlab.freedesktop.org/drm/intel/issues/3987
>  104. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-tglu-2/igt@i915_selftest@live@gt_pm.html
>  105. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12130/shard-tglb1/igt@i915_selftest@live@hangcheck.html
>  106. https://gitlab.freedesktop.org/drm/intel/issues/5591
>  107. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-tglb7/igt@i915_selftest@live@hangcheck.html
>  108. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12130/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode.html
>  109. https://gitlab.freedesktop.org/drm/intel/issues/3555
>  110. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode.html
>  111. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12130/shard-iclb3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html
>  112. https://gitlab.freedesktop.org/drm/intel/issues/5176
>  113. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-iclb4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html
>  114. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12130/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html
>  115. https://gitlab.freedesktop.org/drm/intel/issues/5235
>  116. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-iclb4/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html
>  117. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12130/shard-iclb4/igt@kms_psr@psr2_sprite_blt.html
>  118. https://bugs.freedesktop.org/show_bug.cgi?id=109441
>  119. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
>  120. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12130/shard-glk1/igt@perf@stress-open-close.html
>  121. https://gitlab.freedesktop.org/drm/intel/issues/5213
>  122. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-glk5/igt@perf@stress-open-close.html
>  123. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12130/shard-glk3/igt@perf_pmu@enable-race@vecs0.html
>  124. https://gitlab.freedesktop.org/drm/intel/issues/118
>  125. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-glk5/igt@perf_pmu@enable-race@vecs0.html
>  126. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12130/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
>  127. https://gitlab.freedesktop.org/drm/intel/issues/2684
>  128. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
>  129. https://gitlab.freedesktop.org/drm/intel/issues/2684
>  130. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12130/shard-apl8/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
>  131. https://gitlab.freedesktop.org/drm/intel/issues/265
>  132. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-apl3/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
>  133. https://gitlab.freedesktop.org/drm/intel/issues/62
>  134. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12130/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html
>  135. https://gitlab.freedesktop.org/drm/intel/issues/2920
>  136. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-iclb3/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html
>  137. https://gitlab.freedesktop.org/drm/intel/issues/658
>  138. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12130/shard-iclb3/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
>  139. https://gitlab.freedesktop.org/drm/intel/issues/658
>  140. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
>  141. https://gitlab.freedesktop.org/drm/intel/issues/2920
>  142. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12130/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
>  143. https://gitlab.freedesktop.org/drm/intel/issues/2920
>  144. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-iclb5/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
>  145. https://bugs.freedesktop.org/show_bug.cgi?id=111068
>  146. https://gitlab.freedesktop.org/drm/intel/issues/658
>  147. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12130/shard-iclb2/igt@kms_psr2_su@page_flip-nv12.html
>  148. https://gitlab.freedesktop.org/drm/intel/issues/5939
>  149. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-iclb4/igt@kms_psr2_su@page_flip-nv12.html
>  150. https://bugs.freedesktop.org/show_bug.cgi?id=109642
>  151. https://bugs.freedesktop.org/show_bug.cgi?id=111068
>  152. https://gitlab.freedesktop.org/drm/intel/issues/658
>  153. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12130/shard-apl7/igt@runner@aborted.html
>  154. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12130/shard-apl3/igt@runner@aborted.html
>  155. https://gitlab.freedesktop.org/drm/intel/issues/3002
>  156. https://gitlab.freedesktop.org/drm/intel/issues/4312
>  157. https://gitlab.freedesktop.org/drm/intel/issues/5257
>  158. https://gitlab.freedesktop.org/drm/intel/issues/6599
>  159. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-apl2/igt@runner@aborted.html
>  160. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108487v1/shard-apl8/igt@runner@aborted.html
>  161. https://gitlab.freedesktop.org/drm/intel/issues/180
>  162. https://gitlab.freedesktop.org/drm/intel/issues/3002
>  163. https://gitlab.freedesktop.org/drm/intel/issues/4312
>  164. https://gitlab.freedesktop.org/drm/intel/issues/5257
>  165. https://gitlab.freedesktop.org/drm/intel/issues/6599
