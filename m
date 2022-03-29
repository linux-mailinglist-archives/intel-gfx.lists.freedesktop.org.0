Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B52E4EB4BD
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 22:35:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD63810E186;
	Tue, 29 Mar 2022 20:35:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C43710E186
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 20:35:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648586152; x=1680122152;
 h=date:from:to:subject:message-id:references:mime-version:
 in-reply-to; bh=96cFSJW7RvfaDfEDwUTOufarW9DNzeCSmEriP3MWbqk=;
 b=bSWHT5C3lCKfo92AeF+a3bGHWS9pzqTZxGdgj08YTRqfBYj2w4aXRZ4v
 VJ/ijyOC9i/mdxuhujR4Y/j7p+rAAdniBn/Q6cyOgI777sOVGFHgiTz6x
 +G96IBynfkLXcH3WeQZ+x3ESzCtC8uGTkNQX5lL2YVAMUom5qjkZSJNdV
 Q2TBvKO4hk7piij5VUyofNyweNkpvk/Yf6J1ltAZuTRO7eUMn9R80wle9
 r6F0Iptvb3jJSR++VLBO4zh7TKWc/F/0z0ITv5TmSwc27vsXEnI2QTrEe
 LAxjlTfxs2w2uX9Fbeyb1D9F2p+jHp17TO7xX0QuCt5D3vDvGYXELgN4U w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="320066124"
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="320066124"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 13:35:51 -0700
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="719692413"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 13:35:50 -0700
Date: Tue, 29 Mar 2022 13:35:48 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YkNtpPiYpTYiQI9J@mdroper-desk1.amr.corp.intel.com>
References: <20220329000822.1323195-1-matthew.d.roper@intel.com>
 <164853463100.5798.17066541603872119122@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <164853463100.5798.17066541603872119122@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/ats-m=3A_add_ATS-M_platfor?=
 =?utf-8?q?m_info?=
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

On Tue, Mar 29, 2022 at 06:17:11AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [1/2] drm/i915/ats-m: add ATS-M platform info
> URL   : https://patchwork.freedesktop.org/series/101907/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11415_full -> Patchwork_22711_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Patch #1 applied to drm-intel-next and #2 applied to topic/core-for-CI.
Thanks for the reviews.


Matt

> 
>   
> 
> Participating hosts (10 -> 10)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_22711_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@blit-noreloc-purge-cache:
>     - shard-glk:          [PASS][1] -> [INCOMPLETE][2] ([i915#5441]) +2 similar issues
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-glk6/igt@api_intel_bb@blit-noreloc-purge-cache.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-glk7/igt@api_intel_bb@blit-noreloc-purge-cache.html
> 
>   * igt@core_hotunplug@unbind-rebind:
>     - shard-tglb:         NOTRUN -> [INCOMPLETE][3] ([i915#1373] / [i915#5441])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-tglb7/igt@core_hotunplug@unbind-rebind.html
>     - shard-iclb:         NOTRUN -> [INCOMPLETE][4] ([i915#1373] / [i915#5441])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-iclb5/igt@core_hotunplug@unbind-rebind.html
> 
>   * igt@feature_discovery@chamelium:
>     - shard-tglb:         NOTRUN -> [SKIP][5] ([fdo#111827])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-tglb6/igt@feature_discovery@chamelium.html
> 
>   * igt@feature_discovery@psr2:
>     - shard-iclb:         NOTRUN -> [SKIP][6] ([i915#658]) +1 similar issue
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-iclb8/igt@feature_discovery@psr2.html
> 
>   * igt@gem_create@create-massive:
>     - shard-iclb:         NOTRUN -> [DMESG-WARN][7] ([i915#4991])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-iclb7/igt@gem_create@create-massive.html
> 
>   * igt@gem_ctx_persistence@legacy-engines-mixed:
>     - shard-snb:          NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#1099])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-snb4/igt@gem_ctx_persistence@legacy-engines-mixed.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         NOTRUN -> [TIMEOUT][9] ([i915#3063] / [i915#3648])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-tglb6/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@parallel:
>     - shard-iclb:         NOTRUN -> [SKIP][10] ([i915#4525]) +1 similar issue
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-iclb6/igt@gem_exec_balancer@parallel.html
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-glk:          NOTRUN -> [FAIL][11] ([i915#2842]) +1 similar issue
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-glk8/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>     - shard-tglb:         NOTRUN -> [FAIL][12] ([i915#2842])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-tglb7/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@gem_exec_params@rsvd2-dirt:
>     - shard-tglb:         NOTRUN -> [SKIP][13] ([fdo#109283])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-tglb7/igt@gem_exec_params@rsvd2-dirt.html
> 
>   * igt@gem_exec_schedule@u-semaphore-user:
>     - shard-snb:          NOTRUN -> [SKIP][14] ([fdo#109271]) +55 similar issues
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-snb4/igt@gem_exec_schedule@u-semaphore-user.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-apl:          NOTRUN -> [SKIP][15] ([fdo#109271] / [i915#2190])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-apl1/igt@gem_huc_copy@huc-copy.html
>     - shard-glk:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#2190])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-glk8/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi:
>     - shard-skl:          NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#4613])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-skl10/igt@gem_lmem_swapping@heavy-verify-multi.html
> 
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - shard-glk:          NOTRUN -> [SKIP][18] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-glk5/igt@gem_lmem_swapping@parallel-random-engines.html
> 
>   * igt@gem_lmem_swapping@smem-oom:
>     - shard-apl:          NOTRUN -> [SKIP][19] ([fdo#109271] / [i915#4613])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-apl7/igt@gem_lmem_swapping@smem-oom.html
> 
>   * igt@gem_lmem_swapping@verify-random:
>     - shard-iclb:         NOTRUN -> [SKIP][20] ([i915#4613])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-iclb8/igt@gem_lmem_swapping@verify-random.html
> 
>   * igt@gem_pipe_control_store_loop@reused-buffer:
>     - shard-snb:          NOTRUN -> [INCOMPLETE][21] ([i915#5441])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-snb4/igt@gem_pipe_control_store_loop@reused-buffer.html
> 
>   * igt@gem_ppgtt@blt-vs-render-ctx0:
>     - shard-snb:          NOTRUN -> [DMESG-FAIL][22] ([i915#5441])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-snb7/igt@gem_ppgtt@blt-vs-render-ctx0.html
>     - shard-kbl:          NOTRUN -> [DMESG-FAIL][23] ([i915#5441])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-kbl7/igt@gem_ppgtt@blt-vs-render-ctx0.html
>     - shard-iclb:         NOTRUN -> [DMESG-FAIL][24] ([i915#5441])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-iclb3/igt@gem_ppgtt@blt-vs-render-ctx0.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-tglb:         NOTRUN -> [WARN][25] ([i915#2658])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-tglb6/igt@gem_pread@exhaustion.html
>     - shard-iclb:         NOTRUN -> [WARN][26] ([i915#2658])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-iclb4/igt@gem_pread@exhaustion.html
>     - shard-skl:          NOTRUN -> [WARN][27] ([i915#2658])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-skl8/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_pxp@create-protected-buffer:
>     - shard-iclb:         NOTRUN -> [SKIP][28] ([i915#4270]) +2 similar issues
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-iclb8/igt@gem_pxp@create-protected-buffer.html
> 
>   * igt@gem_render_copy@y-tiled-to-vebox-linear:
>     - shard-iclb:         NOTRUN -> [SKIP][29] ([i915#768]) +2 similar issues
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-iclb6/igt@gem_render_copy@y-tiled-to-vebox-linear.html
> 
>   * igt@gem_softpin@noreloc-s3:
>     - shard-apl:          [PASS][30] -> [DMESG-WARN][31] ([i915#180]) +1 similar issue
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-apl4/igt@gem_softpin@noreloc-s3.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-apl1/igt@gem_softpin@noreloc-s3.html
> 
>   * igt@gem_tiled_partial_pwrite_pread@reads:
>     - shard-apl:          NOTRUN -> [INCOMPLETE][32] ([i915#5441])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-apl7/igt@gem_tiled_partial_pwrite_pread@reads.html
> 
>   * igt@gem_tiled_partial_pwrite_pread@writes:
>     - shard-tglb:         NOTRUN -> [INCOMPLETE][33] ([i915#5441]) +3 similar issues
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-tglb2/igt@gem_tiled_partial_pwrite_pread@writes.html
> 
>   * igt@gem_userptr_blits@coherency-sync:
>     - shard-iclb:         NOTRUN -> [SKIP][34] ([fdo#109290])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-iclb6/igt@gem_userptr_blits@coherency-sync.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-apl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#3323])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-apl3/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][36] ([i915#4991])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-apl8/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@gem_userptr_blits@readonly-pwrite-unsync:
>     - shard-kbl:          NOTRUN -> [SKIP][37] ([fdo#109271]) +37 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-kbl7/igt@gem_userptr_blits@readonly-pwrite-unsync.html
> 
>   * igt@gem_userptr_blits@unsync-overlap:
>     - shard-tglb:         NOTRUN -> [SKIP][38] ([i915#3297]) +1 similar issue
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-tglb6/igt@gem_userptr_blits@unsync-overlap.html
>     - shard-iclb:         NOTRUN -> [SKIP][39] ([i915#3297])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-iclb4/igt@gem_userptr_blits@unsync-overlap.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-iclb:         NOTRUN -> [FAIL][40] ([i915#3318])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-iclb5/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gem_workarounds@suspend-resume-context:
>     - shard-kbl:          [PASS][41] -> [DMESG-WARN][42] ([i915#180])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-kbl6/igt@gem_workarounds@suspend-resume-context.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-kbl4/igt@gem_workarounds@suspend-resume-context.html
> 
>   * igt@gen9_exec_parse@bb-large:
>     - shard-tglb:         NOTRUN -> [SKIP][43] ([i915#2527] / [i915#2856])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-tglb6/igt@gen9_exec_parse@bb-large.html
> 
>   * igt@gen9_exec_parse@bb-oversize:
>     - shard-iclb:         NOTRUN -> [SKIP][44] ([i915#2856])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-iclb8/igt@gen9_exec_parse@bb-oversize.html
> 
>   * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
>     - shard-iclb:         NOTRUN -> [SKIP][45] ([i915#5286]) +3 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-iclb8/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-tglb:         NOTRUN -> [SKIP][46] ([i915#5286])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-tglb7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@x-tiled-16bpp-rotate-0:
>     - shard-iclb:         NOTRUN -> [INCOMPLETE][47] ([i915#5441]) +5 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-iclb4/igt@kms_big_fb@x-tiled-16bpp-rotate-0.html
> 
>   * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
>     - shard-iclb:         NOTRUN -> [SKIP][48] ([fdo#110725] / [fdo#111614]) +1 similar issue
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-iclb8/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][49] ([i915#5441])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-glk8/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
>     - shard-tglb:         [PASS][50] -> [INCOMPLETE][51] ([i915#2828] / [i915#5441])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-tglb3/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-tglb1/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0:
>     - shard-kbl:          [PASS][52] -> [INCOMPLETE][53] ([i915#5441]) +2 similar issues
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-kbl3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-kbl3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - shard-skl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [i915#3777])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-skl8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-iclb:         [PASS][55] -> [INCOMPLETE][56] ([i915#4185] / [i915#5441])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-iclb1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-iclb3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-kbl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#3777])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-kbl7/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
>     - shard-tglb:         [PASS][58] -> [INCOMPLETE][59] ([i915#5441]) +7 similar issues
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-tglb6/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-tglb7/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
>     - shard-iclb:         [PASS][60] -> [INCOMPLETE][61] ([i915#5441]) +1 similar issue
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-iclb2/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-iclb4/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-kbl:          NOTRUN -> [INCOMPLETE][62] ([i915#5441]) +1 similar issue
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-kbl3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-apl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#3777]) +2 similar issues
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-apl3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
>     - shard-glk:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#3777]) +1 similar issue
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-glk8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
>     - shard-tglb:         NOTRUN -> [SKIP][65] ([fdo#111615])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-tglb7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][66] ([i915#5441]) +2 similar issues
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-skl4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
>     - shard-iclb:         NOTRUN -> [SKIP][67] ([fdo#110723])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-iclb5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][68] ([fdo#109271]) +81 similar issues
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-apl8/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-missing-ccs-buffer-yf_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][69] ([fdo#111615] / [i915#3689])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-tglb7/igt@kms_ccs@pipe-a-missing-ccs-buffer-yf_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#3886]) +3 similar issues
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-apl8/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
>     - shard-kbl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#3886])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-kbl7/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][72] ([i915#3689] / [i915#3886]) +1 similar issue
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-tglb7/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
>     - shard-iclb:         NOTRUN -> [SKIP][73] ([fdo#109278] / [i915#3886]) +5 similar issues
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-iclb4/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html
>     - shard-skl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#3886])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-skl8/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
>     - shard-glk:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#3886]) +2 similar issues
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-glk8/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_chamelium@dp-mode-timings:
>     - shard-apl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [fdo#111827]) +4 similar issues
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-apl3/igt@kms_chamelium@dp-mode-timings.html
>     - shard-glk:          NOTRUN -> [SKIP][77] ([fdo#109271] / [fdo#111827]) +6 similar issues
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-glk8/igt@kms_chamelium@dp-mode-timings.html
> 
>   * igt@kms_chamelium@hdmi-mode-timings:
>     - shard-snb:          NOTRUN -> [SKIP][78] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-snb4/igt@kms_chamelium@hdmi-mode-timings.html
> 
>   * igt@kms_chamelium@vga-hpd-for-each-pipe:
>     - shard-tglb:         NOTRUN -> [SKIP][79] ([fdo#109284] / [fdo#111827]) +4 similar issues
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-tglb6/igt@kms_chamelium@vga-hpd-for-each-pipe.html
> 
>   * igt@kms_color@pipe-d-ctm-negative:
>     - shard-iclb:         NOTRUN -> [SKIP][80] ([fdo#109278] / [i915#1149])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-iclb8/igt@kms_color@pipe-d-ctm-negative.html
> 
>   * igt@kms_color_chamelium@pipe-a-gamma:
>     - shard-iclb:         NOTRUN -> [SKIP][81] ([fdo#109284] / [fdo#111827]) +2 similar issues
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-iclb8/igt@kms_color_chamelium@pipe-a-gamma.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-0-75:
>     - shard-skl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-skl8/igt@kms_color_chamelium@pipe-c-ctm-0-75.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-0-25:
>     - shard-iclb:         NOTRUN -> [SKIP][83] ([fdo#109278] / [fdo#109284] / [fdo#111827])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-iclb6/igt@kms_color_chamelium@pipe-d-ctm-0-25.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-iclb:         NOTRUN -> [SKIP][84] ([fdo#109300] / [fdo#111066])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-iclb5/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-32x32-onscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][85] ([i915#3319])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-tglb7/igt@kms_cursor_crc@pipe-a-cursor-32x32-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen:
>     - shard-iclb:         NOTRUN -> [SKIP][86] ([fdo#109278] / [fdo#109279]) +2 similar issues
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-iclb4/igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-max-size-random:
>     - shard-glk:          NOTRUN -> [SKIP][87] ([fdo#109271]) +71 similar issues
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-glk5/igt@kms_cursor_crc@pipe-b-cursor-max-size-random.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-32x10-offscreen:
>     - shard-iclb:         NOTRUN -> [SKIP][88] ([fdo#109278]) +28 similar issues
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-iclb5/igt@kms_cursor_crc@pipe-c-cursor-32x10-offscreen.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-512x512-sliding:
>     - shard-tglb:         NOTRUN -> [SKIP][89] ([fdo#109279] / [i915#3359]) +1 similar issue
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-tglb7/igt@kms_cursor_crc@pipe-c-cursor-512x512-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-max-size-sliding:
>     - shard-tglb:         NOTRUN -> [SKIP][90] ([i915#3359]) +2 similar issues
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-tglb6/igt@kms_cursor_crc@pipe-c-cursor-max-size-sliding.html
> 
>   * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
>     - shard-iclb:         NOTRUN -> [SKIP][91] ([fdo#109274] / [fdo#109278]) +2 similar issues
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-iclb5/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
> 
>   * igt@kms_cursor_legacy@pipe-d-single-bo:
>     - shard-glk:          NOTRUN -> [SKIP][92] ([fdo#109271] / [i915#533])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-glk8/igt@kms_cursor_legacy@pipe-d-single-bo.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-4tiled:
>     - shard-tglb:         NOTRUN -> [SKIP][93] ([i915#5287])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-tglb7/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-4tiled.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-4tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][94] ([i915#5287]) +1 similar issue
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-iclb8/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-4tiled.html
> 
>   * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
>     - shard-tglb:         NOTRUN -> [SKIP][95] ([fdo#109274] / [fdo#111825]) +6 similar issues
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-tglb6/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank:
>     - shard-iclb:         NOTRUN -> [SKIP][96] ([fdo#109274]) +4 similar issues
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-iclb6/igt@kms_flip@2x-flip-vs-expired-vblank.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1:
>     - shard-glk:          [PASS][97] -> [FAIL][98] ([i915#2122])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-glk5/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-glk1/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1:
>     - shard-skl:          [PASS][99] -> [FAIL][100] ([i915#2122]) +2 similar issues
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-skl8/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-skl2/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@b-edp1:
>     - shard-skl:          [PASS][101] -> [INCOMPLETE][102] ([i915#4839])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:
>     - shard-iclb:         NOTRUN -> [SKIP][103] ([i915#2587])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-iclb4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - shard-iclb:         NOTRUN -> [SKIP][104] ([fdo#109285])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-iclb5/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
>     - shard-iclb:         NOTRUN -> [SKIP][105] ([fdo#109280]) +15 similar issues
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite:
>     - shard-skl:          NOTRUN -> [SKIP][106] ([fdo#109271]) +41 similar issues
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-skl8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-snb:          [PASS][107] -> [SKIP][108] ([fdo#109271])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-snb7/igt@kms_frontbuffer_tracking@fbc-suspend.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-snb5/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-onoff:
>     - shard-tglb:         NOTRUN -> [SKIP][109] ([fdo#109280] / [fdo#111825]) +8 similar issues
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-onoff.html
> 
>   * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
>     - shard-apl:          NOTRUN -> [SKIP][110] ([fdo#109271] / [i915#533]) +1 similar issue
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-apl7/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
>     - shard-apl:          NOTRUN -> [FAIL][111] ([fdo#108145] / [i915#265])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-apl8/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
>     - shard-kbl:          NOTRUN -> [FAIL][112] ([i915#265])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-kbl3/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
>     - shard-skl:          NOTRUN -> [FAIL][113] ([fdo#108145] / [i915#265]) +1 similar issue
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html
> 
>   * igt@kms_plane_lowres@pipe-a-tiling-yf:
>     - shard-iclb:         NOTRUN -> [SKIP][114] ([i915#3536])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-iclb8/igt@kms_plane_lowres@pipe-a-tiling-yf.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1-planes-downscale:
>     - shard-iclb:         [PASS][115] -> [SKIP][116] ([i915#5235]) +5 similar issues
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-iclb6/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1-planes-downscale.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-iclb2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1-planes-downscale.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
>     - shard-iclb:         NOTRUN -> [SKIP][117] ([fdo#111068] / [i915#658])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-iclb8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area:
>     - shard-tglb:         NOTRUN -> [SKIP][118] ([i915#2920]) +1 similar issue
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-tglb7/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-apl:          NOTRUN -> [SKIP][119] ([fdo#109271] / [i915#658]) +1 similar issue
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-apl1/igt@kms_psr2_su@page_flip-xrgb8888.html
>     - shard-glk:          NOTRUN -> [SKIP][120] ([fdo#109271] / [i915#658]) +2 similar issues
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-glk8/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_cpu:
>     - shard-iclb:         NOTRUN -> [SKIP][121] ([fdo#109441]) +2 similar issues
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-iclb8/igt@kms_psr@psr2_cursor_mmap_cpu.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_gtt:
>     - shard-tglb:         NOTRUN -> [FAIL][122] ([i915#132] / [i915#3467]) +2 similar issues
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-tglb6/igt@kms_psr@psr2_cursor_mmap_gtt.html
> 
>   * igt@kms_setmode@invalid-clone-exclusive-crtc:
>     - shard-tglb:         NOTRUN -> [SKIP][123] ([i915#3555]) +1 similar issue
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-tglb6/igt@kms_setmode@invalid-clone-exclusive-crtc.html
>     - shard-iclb:         NOTRUN -> [SKIP][124] ([i915#3555])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-iclb4/igt@kms_setmode@invalid-clone-exclusive-crtc.html
> 
>   * igt@kms_vrr@flip-basic:
>     - shard-tglb:         NOTRUN -> [SKIP][125] ([fdo#109502])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/shard-tglb6/igt@kms_vrr@flip-
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22711/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
