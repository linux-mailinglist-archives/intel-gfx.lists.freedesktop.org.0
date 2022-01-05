Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE1F4858E4
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jan 2022 20:08:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAB8F10E53A;
	Wed,  5 Jan 2022 19:08:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4701C10E135
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jan 2022 19:08:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641409691; x=1672945691;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=jmQ+5AYhaAo0QGu3WslFRIQarB+zxDeJ43eWlN4aBoY=;
 b=QmoiOobAcuEswzWed9g2q+73c3aACGjmHMlZuddKB8lbx7SrF7mMmLBB
 vi9vEafD8J3nML4I0Eh/gHjQLakKl+EgY9iAhqCyce9/UZZlP8BT3+mNh
 rnTuI62ZyvNzIDJm+/iIRgsjQSSND5zeUTI+W92IznYoFPbs57DFaIgYF
 6+Ak4M254A8SVkXLRzTQ8FuOPItdycp+nLR/ANuZQzix1HL36Gji1rXFY
 Uqb4T8g5dqqPmG1bggpuE8nqrDtnyy3FTPAMoODmmxmY+edTHWX4YIrp2
 doCTACz6KV4UWSRKvuaGyk0cop45bo5dt+vh8YeV8/agxTrslqNADuMec A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="229332529"
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; d="scan'208";a="229332529"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 11:08:10 -0800
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; d="scan'208";a="574488767"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 11:08:09 -0800
Date: Wed, 5 Jan 2022 11:08:08 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YdXsmPbxoZ5ygySY@mdroper-desk1.amr.corp.intel.com>
References: <20211219212500.61432-1-andi.shyti@linux.intel.com>
 <164136695171.25402.13838167692358518273@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <164136695171.25402.13838167692358518273@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogIGZhaWx1cmUgZm9yIE1v?=
 =?utf-8?q?re_preparation_for_multi_gt_patches_=28rev4=29?=
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

On Wed, Jan 05, 2022 at 07:15:51AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: More preparation for multi gt patches (rev4)
> URL   : https://patchwork.freedesktop.org/series/98215/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11047_full -> Patchwork_21923_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_21923_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_21923_full, please notify your bug team to allow them
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
>   Here are the unknown changes that may have been introduced in Patchwork_21923_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@perf@region:
>     - shard-snb:          [PASS][1] -> [DMESG-FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/shard-snb5/igt@i915_selftest@perf@region.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-snb5/igt@i915_selftest@perf@region.html

Looks to be the same as
https://gitlab.freedesktop.org/drm/intel/-/issues/4610

> 
>   * igt@kms_plane_alpha_blend@pipe-d-alpha-opaque-fb:
>     - shard-tglb:         [PASS][3] -> [INCOMPLETE][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/shard-tglb7/igt@kms_plane_alpha_blend@pipe-d-alpha-opaque-fb.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-tglb3/igt@kms_plane_alpha_blend@pipe-d-alpha-opaque-fb.html

Random system crash / connection loss?  Incomplete result doesn't appear
to be related to the series here.

Series applied to drm-intel-gt-next.  Thanks for the patches.


Matt


> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@gem_exec_flush@basic-wb-prw-default:
>     - {shard-rkl}:        [PASS][5] -> [INCOMPLETE][6] +1 similar issue
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/shard-rkl-2/igt@gem_exec_flush@basic-wb-prw-default.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-rkl-5/igt@gem_exec_flush@basic-wb-prw-default.html
> 
>   * igt@gem_exec_schedule@u-submit-early-slice@bcs0:
>     - {shard-tglu}:       [PASS][7] -> [INCOMPLETE][8]
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/shard-tglu-8/igt@gem_exec_schedule@u-submit-early-slice@bcs0.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-tglu-7/igt@gem_exec_schedule@u-submit-early-slice@bcs0.html
> 
>   * igt@gem_exec_whisper@basic-contexts-forked-all:
>     - {shard-rkl}:        [PASS][9] -> ([PASS][10], [INCOMPLETE][11])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/shard-rkl-1/igt@gem_exec_whisper@basic-contexts-forked-all.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-rkl-4/igt@gem_exec_whisper@basic-contexts-forked-all.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-rkl-5/igt@gem_exec_whisper@basic-contexts-forked-all.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - {shard-tglu}:       NOTRUN -> [SKIP][12]
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-tglu-3/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@testdisplay:
>     - {shard-tglu}:       [PASS][13] -> [DMESG-WARN][14]
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/shard-tglu-1/igt@testdisplay.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-tglu-5/igt@testdisplay.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_21923_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_create@create-massive:
>     - shard-tglb:         NOTRUN -> [DMESG-WARN][15] ([i915#3002])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-tglb6/igt@gem_create@create-massive.html
>     - shard-skl:          NOTRUN -> [DMESG-WARN][16] ([i915#3002])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-skl1/igt@gem_create@create-massive.html
> 
>   * igt@gem_eio@in-flight-contexts-10ms:
>     - shard-tglb:         [PASS][17] -> [TIMEOUT][18] ([i915#3063])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/shard-tglb7/igt@gem_eio@in-flight-contexts-10ms.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-tglb2/igt@gem_eio@in-flight-contexts-10ms.html
> 
>   * igt@gem_exec_balancer@parallel-contexts:
>     - shard-iclb:         NOTRUN -> [SKIP][19] ([i915#4525])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-iclb7/igt@gem_exec_balancer@parallel-contexts.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-apl:          [PASS][20] -> [FAIL][21] ([i915#2842])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/shard-apl4/igt@gem_exec_fair@basic-none@vcs0.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-apl3/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vecs0:
>     - shard-kbl:          [PASS][22] -> [FAIL][23] ([i915#2842])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/shard-kbl1/igt@gem_exec_fair@basic-none@vecs0.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-kbl7/igt@gem_exec_fair@basic-none@vecs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [PASS][24] -> [FAIL][25] ([i915#2842])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_suspend@basic-s3@smem:
>     - shard-kbl:          [PASS][26] -> [DMESG-WARN][27] ([i915#180]) +2 similar issues
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/shard-kbl3/igt@gem_exec_suspend@basic-s3@smem.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-kbl4/igt@gem_exec_suspend@basic-s3@smem.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-kbl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#2190])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-kbl7/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@parallel-random:
>     - shard-apl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [i915#4613])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-apl2/igt@gem_lmem_swapping@parallel-random.html
>     - shard-kbl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-kbl3/igt@gem_lmem_swapping@parallel-random.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify:
>     - shard-iclb:         NOTRUN -> [SKIP][31] ([i915#4613])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-iclb7/igt@gem_lmem_swapping@parallel-random-verify.html
> 
>   * igt@gem_lmem_swapping@random:
>     - shard-skl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [i915#4613])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-skl10/igt@gem_lmem_swapping@random.html
> 
>   * igt@gem_lmem_swapping@smem-oom:
>     - shard-tglb:         NOTRUN -> [SKIP][33] ([i915#4613])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-tglb6/igt@gem_lmem_swapping@smem-oom.html
> 
>   * igt@gem_softpin@allocator-evict@rcs0:
>     - shard-iclb:         NOTRUN -> [DMESG-WARN][34] ([i915#4391])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-iclb7/igt@gem_softpin@allocator-evict@rcs0.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-skl:          NOTRUN -> [FAIL][35] ([i915#3318])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-skl1/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-kbl:          NOTRUN -> [FAIL][36] ([i915#454])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-kbl3/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_pm_rpm@modeset-pc8-residency-stress:
>     - shard-apl:          NOTRUN -> [SKIP][37] ([fdo#109271]) +102 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-apl8/igt@i915_pm_rpm@modeset-pc8-residency-stress.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][38] ([i915#3743])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-skl4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>     - shard-kbl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [i915#3777]) +1 similar issue
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-kbl7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][40] ([i915#3763])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-skl4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-apl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [i915#3777])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-apl2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>     - shard-skl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#3777])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-skl3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
> 
>   * igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
>     - shard-kbl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [i915#3886]) +8 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-kbl3/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [i915#3886]) +5 similar issues
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-skl3/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [i915#3886]) +4 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-apl1/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][46] ([fdo#109278] / [i915#3886])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-iclb7/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_chamelium@dp-hpd-storm-disable:
>     - shard-apl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [fdo#111827]) +6 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-apl2/igt@kms_chamelium@dp-hpd-storm-disable.html
> 
>   * igt@kms_color@pipe-d-ctm-0-25:
>     - shard-iclb:         NOTRUN -> [SKIP][48] ([fdo#109278] / [i915#1149])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-iclb7/igt@kms_color@pipe-d-ctm-0-25.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
>     - shard-kbl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [fdo#111827]) +12 similar issues
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-kbl3/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-max:
>     - shard-skl:          NOTRUN -> [SKIP][50] ([fdo#109271] / [fdo#111827]) +10 similar issues
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-skl10/igt@kms_color_chamelium@pipe-b-ctm-max.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-apl:          NOTRUN -> [TIMEOUT][51] ([i915#1319])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-apl8/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-512x170-random:
>     - shard-tglb:         NOTRUN -> [SKIP][52] ([fdo#109279] / [i915#3359])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-tglb6/igt@kms_cursor_crc@pipe-d-cursor-512x170-random.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-512x512-sliding:
>     - shard-iclb:         NOTRUN -> [SKIP][53] ([fdo#109278]) +1 similar issue
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-iclb7/igt@kms_cursor_crc@pipe-d-cursor-512x512-sliding.html
> 
>   * igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic:
>     - shard-tglb:         NOTRUN -> [SKIP][54] ([fdo#109274] / [fdo#111825])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-tglb6/igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-skl:          [PASS][55] -> [FAIL][56] ([i915#2346] / [i915#533])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-kbl:          NOTRUN -> [INCOMPLETE][57] ([i915#180] / [i915#636])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
>     - shard-skl:          [PASS][58] -> [FAIL][59] ([i915#79]) +1 similar issue
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>     - shard-apl:          [PASS][60] -> [DMESG-WARN][61] ([i915#180]) +4 similar issues
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:
>     - shard-skl:          [PASS][62] -> [FAIL][63] ([i915#2122]) +1 similar issue
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/shard-skl6/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
>     - shard-glk:          [PASS][64] -> [FAIL][65] ([i915#4911])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/shard-glk3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:
>     - shard-iclb:         [PASS][66] -> [SKIP][67] ([i915#3701]) +1 similar issue
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/shard-iclb8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:
>     - shard-kbl:          NOTRUN -> [SKIP][68] ([fdo#109271]) +163 similar issues
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc:
>     - shard-tglb:         NOTRUN -> [SKIP][69] ([fdo#109280] / [fdo#111825]) +1 similar issue
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt:
>     - shard-skl:          NOTRUN -> [SKIP][70] ([fdo#109271]) +123 similar issues
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-skl4/igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu:
>     - shard-iclb:         NOTRUN -> [SKIP][71] ([fdo#109280]) +3 similar issues
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-iclb7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
>     - shard-apl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#533])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-apl2/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>     - shard-skl:          [PASS][73] -> [FAIL][74] ([fdo#108145] / [i915#265])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>     - shard-skl:          NOTRUN -> [FAIL][75] ([fdo#108145] / [i915#265]) +1 similar issue
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
>     - shard-apl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#658])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-apl1/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
>     - shard-kbl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#658]) +1 similar issue
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-kbl3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr@psr2_sprite_blt:
>     - shard-iclb:         [PASS][78] -> [SKIP][79] ([fdo#109441])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-iclb5/igt@kms_psr@psr2_sprite_blt.html
> 
>   * igt@kms_psr@psr2_sprite_render:
>     - shard-iclb:         NOTRUN -> [SKIP][80] ([fdo#109441])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-iclb7/igt@kms_psr@psr2_sprite_render.html
> 
>   * igt@kms_vblank@pipe-d-wait-idle:
>     - shard-kbl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#533]) +2 similar issues
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-kbl3/igt@kms_vblank@pipe-d-wait-idle.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-kbl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#2437])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-kbl3/igt@kms_writeback@writeback-invalid-parameters.html
>     - shard-apl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#2437])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-apl2/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-skl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#2437])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-skl10/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@nouveau_crc@pipe-a-ctx-flip-skip-current-frame:
>     - shard-iclb:         NOTRUN -> [SKIP][85] ([i915#2530])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-iclb7/igt@nouveau_crc@pipe-a-ctx-flip-skip-current-frame.html
> 
>   * igt@nouveau_crc@pipe-b-ctx-flip-detection:
>     - shard-tglb:         NOTRUN -> [SKIP][86] ([i915#2530])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-tglb6/igt@nouveau_crc@pipe-b-ctx-flip-detection.html
> 
>   * igt@sysfs_clients@create:
>     - shard-skl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#2994])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-skl3/igt@sysfs_clients@create.html
> 
>   * igt@sysfs_clients@split-10:
>     - shard-apl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#2994])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-apl4/igt@sysfs_clients@split-10.html
> 
>   * igt@sysfs_clients@split-50:
>     - shard-kbl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-kbl7/igt@sysfs_clients@split-50.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@feature_discovery@psr2:
>     - shard-iclb:         [SKIP][90] ([i915#658]) -> [PASS][91]
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/shard-iclb4/igt@feature_discovery@psr2.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-iclb2/igt@feature_discovery@psr2.html
> 
>   * igt@gem_eio@in-flight-contexts-10ms:
>     - shard-skl:          [TIMEOUT][92] ([i915#3063]) -> [PASS][93]
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/shard-skl4/igt@gem_eio@in-flight-contexts-10ms.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-skl4/igt@gem_eio@in-flight-contexts-10ms.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-iclb:         [TIMEOUT][94] ([i915#2481] / [i915#3070]) -> [PASS][95]
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/shard-iclb2/igt@gem_eio@unwedge-stress.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-iclb8/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@parallel-out-fence:
>     - shard-iclb:         [SKIP][96] ([i915#4525]) -> [PASS][97] +1 similar issue
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/shard-iclb8/igt@gem_exec_balancer@parallel-out-fence.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-iclb2/igt@gem_exec_balancer@parallel-out-fence.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-iclb:         [FAIL][98] ([i915#2842]) -> [PASS][99] +1 similar issue
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@rcs0:
>     - shard-kbl:          [FAIL][100] ([i915#2842]) -> [PASS][101]
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/shard-kbl1/igt@gem_exec_fair@basic-none@rcs0.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-kbl7/igt@gem_exec_fair@basic-none@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vecs0:
>     - shard-apl:          [FAIL][102] ([i915#2842]) -> [PASS][103]
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/shard-apl4/igt@gem_exec_fair@basic-none@vecs0.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-apl3/igt@gem_exec_fair@basic-none@vecs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglb:         [FAIL][104] ([i915#2842]) -> [PASS][105]
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_parallel@fds@bcs0:
>     - {shard-rkl}:        [INCOMPLETE][106] -> ([PASS][107], [PASS][108])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/shard-rkl-5/igt@gem_exec_parallel@fds@bcs0.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-rkl-4/igt@gem_exec_parallel@fds@bcs0.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-rkl-2/igt@gem_exec_parallel@fds@bcs0.html
> 
>   * igt@gem_exec_suspend@basic@smem:
>     - {shard-rkl}:        [INCOMPLETE][109] -> [PASS][110] +2 similar issues
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/shard-rkl-5/igt@gem_exec_suspend@basic@smem.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-rkl-6/igt@gem_exec_suspend@basic@smem.html
> 
>   * igt@gem_exec_whisper@basic-contexts-priority:
>     - shard-glk:          [DMESG-WARN][111] ([i915#118]) -> [PASS][112] +1 similar issue
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/shard-glk8/igt@gem_exec_whisper@basic-contexts-priority.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-glk4/igt@gem_exec_whisper@basic-contexts-priority.html
> 
>   * igt@gem_ppgtt@blt-vs-render-ctxn:
>     - {shard-tglu}:       [INCOMPLETE][113] ([i915#750]) -> [PASS][114] +1 similar issue
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/shard-tglu-7/igt@gem_ppgtt@blt-vs-render-ctxn.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-tglu-8/igt@gem_ppgtt@blt-vs-render-ctxn.html
> 
>   * igt@gem_workarounds@suspend-resume-context:
>     - shard-apl:          [DMESG-WARN][115] ([i915#180]) -> [PASS][116] +3 similar issues
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/shard-apl3/igt@gem_workarounds@suspend-resume-context.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-apl4/igt@gem_workarounds@suspend-resume-context.html
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - {shard-tglu}:       [WARN][117] ([i915#2681]) -> [PASS][118]
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/shard-tglu-1/igt@i915_pm_rc6_residency@rc6-fence.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-tglu-5/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@i915_pm_rpm@gem-mmap-type@uc:
>     - {shard-rkl}:        [SKIP][119] ([fdo#109308]) -> [PASS][120] +3 similar issues
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/shard-rkl-5/igt@i915_pm_rpm@gem-mmap-type@uc.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-rkl-6/igt@i915_pm_rpm@gem-mmap-type@uc.html
> 
>   * igt@i915_selftest@live@gt_pm:
>     - {shard-tglu}:       [DMESG-FAIL][121] ([i915#3987]) -> [PASS][122]
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/shard-tglu-8/igt@i915_selftest@live@gt_pm.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-tglu-7/igt@i915_selftest@live@gt_pm.html
> 
>   * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs:
>     - {shard-rkl}:        [SKIP][123] ([i915#1845] / [i915#4098]) -> [PASS][124]
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/shard-rkl-5/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-rkl-6/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen:
>     - {shard-rkl}:        ([PASS][125], [SKIP][126]) ([fdo#112022]) -> [PASS][127]
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/shard-rkl-4/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-suspend:
>     - shard-kbl:          [DMESG-WARN][128] ([i915#180]) -> [PASS][129] +3 similar issues
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
>     - shard-iclb:         [FAIL][130] ([i915#2346]) -> [PASS][131] +1 similar issue
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-iclb8/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-ytiled:
>     - {shard-rkl}:        [SKIP][132] ([fdo#111314]) -> [PASS][133]
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/shard-rkl-5/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-ytiled.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-ytiled.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
>     - shard-iclb:         [SKIP][134] ([i915#3701]) -> [PASS][135] +1 similar issue
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-iclb5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc:
>     - {shard-rkl}:        [SKIP][136] ([i915#4098]) -> [PASS][137]
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
>     - {shard-rkl}:        [SKIP][138] ([i915#1849]) -> [PASS][139] +3 similar issues
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11047/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/shard-rkl-6/igt@kms_frontbuff
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21923/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
