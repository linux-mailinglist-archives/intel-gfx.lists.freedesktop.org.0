Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B09B4CA89A
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Mar 2022 15:54:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 921FF896C4;
	Wed,  2 Mar 2022 14:54:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C01A18912F
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Mar 2022 14:54:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646232888; x=1677768888;
 h=date:from:to:subject:message-id:references:mime-version:
 in-reply-to; bh=AE7k/Jx5isH0zjXLhYJXg20j1zEbgdYm91obWgBh0/I=;
 b=BgSLwC9RISXswUxvLZ55RCd2I57V6Cbpi6Xfq2/D/d2iLuWD/aJlcfy0
 tx87LgJQcw18p91pFDfLW5vSNQgZRk72rXBg5xoZO3tt1jn/D3+Upr/Jj
 KDjhbt6mePPpsH+f3uVUoe1M1JDwsBOy8iedchdrc5gNYFTYlrq9w4zL9
 s1fZ/g9b08vhEDFIzoHkDIOjzVnywjok90/sJx+93IneR0yCav2bXN1QD
 7FOCmkoXlmYcut9NnfKtQKtWHvVUE5gQae6AkTkVI9m7fVMpsXSjYFaH8
 iO0e0KO8c8vQFpDelySJP9HaKRf5SDI//DlqSAx9L2+xqqz56mmuT9Y9i Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10274"; a="253146671"
X-IronPort-AV: E=Sophos;i="5.90,149,1643702400"; d="scan'208";a="253146671"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 06:54:48 -0800
X-IronPort-AV: E=Sophos;i="5.90,149,1643702400"; d="scan'208";a="686152215"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 06:54:47 -0800
Date: Wed, 2 Mar 2022 06:54:46 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <Yh+FNpD8uzDRGgos@mdroper-desk1.amr.corp.intel.com>
References: <20220301231549.1817978-1-matthew.d.roper@intel.com>
 <164622742952.11321.1994842613429497086@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <164622742952.11321.1994842613429497086@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgaTkx?=
 =?utf-8?q?5=3A_Prepare_for_Xe=5FHP_compute_engines_=28rev4=29?=
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

On Wed, Mar 02, 2022 at 01:23:49PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: i915: Prepare for Xe_HP compute engines (rev4)
> URL   : https://patchwork.freedesktop.org/series/100833/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11308_full -> Patchwork_22459_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.
> 

Series applied to drm-intel-gt-next.  Thanks for the reviews.


Matt

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
>   Here are the unknown changes that may have been introduced in Patchwork_22459_full:
> 
> ### IGT changes ###
> 
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * {igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-25@pipe-a-edp-1-downscale-with-pixel-format}:
>     - shard-iclb:         NOTRUN -> [SKIP][1] +2 similar issues
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-iclb7/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-25@pipe-a-edp-1-downscale-with-pixel-format.html
> 
>   * {igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5}:
>     - {shard-rkl}:        NOTRUN -> [SKIP][2] +1 similar issue
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-rkl-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html
> 
>   * {igt@kms_plane_scaling@upscale-with-rotation-20x20@pipe-c-hdmi-a-3-upscale-with-rotation}:
>     - {shard-dg1}:        NOTRUN -> [SKIP][3] +3 similar issues
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-dg1-18/igt@kms_plane_scaling@upscale-with-rotation-20x20@pipe-c-hdmi-a-3-upscale-with-rotation.html
> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_11308_full and Patchwork_22459_full:
> 
> ### New IGT tests (1) ###
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d-edp-1-planes-upscale-downscale:
>     - Statuses : 1 pass(s)
>     - Exec time: [1.29] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_22459_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Issues hit ####
> 
>   * boot:
>     - shard-glk:          ([PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28]) -> ([PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [FAIL][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52]) ([i915#4392])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk9/boot.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk9/boot.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk9/boot.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk8/boot.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk8/boot.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk8/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk7/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk7/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk7/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk6/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk6/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk5/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk5/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk5/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk4/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk4/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk4/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk3/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk3/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk2/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk2/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk2/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk1/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk1/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk1/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-glk6/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-glk5/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-glk5/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-glk4/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-glk4/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-glk4/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-glk3/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-glk3/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-glk3/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-glk2/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-glk2/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-glk2/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-glk1/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-glk1/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-glk1/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-glk9/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-glk9/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-glk9/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-glk8/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-glk8/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-glk8/boot.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-glk7/boot.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-glk7/boot.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-glk6/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_param@set-priority-not-supported:
>     - shard-iclb:         NOTRUN -> [SKIP][53] ([fdo#109314])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-iclb7/igt@gem_ctx_param@set-priority-not-supported.html
> 
>   * igt@gem_exec_balancer@parallel-bb-first:
>     - shard-tglb:         NOTRUN -> [DMESG-WARN][54] ([i915#5076])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-tglb1/igt@gem_exec_balancer@parallel-bb-first.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-skl:          NOTRUN -> [FAIL][55] ([i915#2846])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-skl1/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-iclb:         [PASS][56] -> [FAIL][57] ([i915#2842])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [PASS][58] -> [FAIL][59] ([i915#2842]) +1 similar issue
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-kbl:          [PASS][60] -> [FAIL][61] ([i915#2842])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-kbl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][62] ([i915#2842]) +4 similar issues
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@gem_exec_suspend@basic-s3@smem:
>     - shard-apl:          [PASS][63] -> [DMESG-WARN][64] ([i915#180])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-apl6/igt@gem_exec_suspend@basic-s3@smem.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-apl7/igt@gem_exec_suspend@basic-s3@smem.html
> 
>   * igt@gem_lmem_swapping@basic:
>     - shard-iclb:         NOTRUN -> [SKIP][65] ([i915#4613]) +1 similar issue
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-iclb7/igt@gem_lmem_swapping@basic.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random:
>     - shard-skl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#4613]) +2 similar issues
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-skl10/igt@gem_lmem_swapping@heavy-verify-random.html
> 
>   * igt@gem_lmem_swapping@smem-oom:
>     - shard-apl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#4613])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-apl8/igt@gem_lmem_swapping@smem-oom.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-skl:          NOTRUN -> [WARN][68] ([i915#2658])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-skl10/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_pxp@create-regular-context-1:
>     - shard-iclb:         NOTRUN -> [SKIP][69] ([i915#4270]) +1 similar issue
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-iclb3/igt@gem_pxp@create-regular-context-1.html
> 
>   * igt@gem_pxp@create-regular-context-2:
>     - shard-tglb:         NOTRUN -> [SKIP][70] ([i915#4270]) +1 similar issue
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-tglb1/igt@gem_pxp@create-regular-context-2.html
> 
>   * igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][71] ([i915#768]) +1 similar issue
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-iclb3/igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-skl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#3323])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-skl1/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][73] ([i915#4991])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-apl8/igt@gem_userptr_blits@input-checking.html
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][74] ([i915#4991])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-kbl3/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-cycles:
>     - shard-iclb:         NOTRUN -> [SKIP][75] ([i915#3297]) +1 similar issue
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-iclb7/igt@gem_userptr_blits@unsync-unmap-cycles.html
> 
>   * igt@gen7_exec_parse@batch-without-end:
>     - shard-iclb:         NOTRUN -> [SKIP][76] ([fdo#109289]) +2 similar issues
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-iclb3/igt@gen7_exec_parse@batch-without-end.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-skl:          [PASS][77] -> [DMESG-WARN][78] ([i915#1436] / [i915#716])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-skl10/igt@gen9_exec_parse@allowed-single.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-skl9/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@batch-zero-length:
>     - shard-iclb:         NOTRUN -> [SKIP][79] ([i915#2856])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-iclb3/igt@gen9_exec_parse@batch-zero-length.html
> 
>   * igt@gen9_exec_parse@shadow-peek:
>     - shard-tglb:         NOTRUN -> [SKIP][80] ([i915#2527] / [i915#2856]) +1 similar issue
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-tglb6/igt@gen9_exec_parse@shadow-peek.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-skl:          NOTRUN -> [FAIL][81] ([i915#454])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-skl6/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
>     - shard-apl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#1937])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-apl7/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html
> 
>   * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
>     - shard-iclb:         NOTRUN -> [SKIP][83] ([fdo#109293] / [fdo#109506])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-iclb7/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-iclb:         NOTRUN -> [SKIP][84] ([i915#4387])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-iclb3/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-snb:          [PASS][85] -> [INCOMPLETE][86] ([i915#3921])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-snb7/igt@i915_selftest@live@hangcheck.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-snb6/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@kms_async_flips@crc:
>     - shard-skl:          NOTRUN -> [FAIL][87] ([i915#4272])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-skl1/igt@kms_async_flips@crc.html
> 
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>     - shard-tglb:         NOTRUN -> [SKIP][88] ([i915#404])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-tglb1/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-270:
>     - shard-iclb:         NOTRUN -> [SKIP][89] ([fdo#110725] / [fdo#111614]) +1 similar issue
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-iclb3/igt@kms_big_fb@linear-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-8bpp-rotate-270:
>     - shard-kbl:          NOTRUN -> [SKIP][90] ([fdo#109271]) +34 similar issues
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-kbl3/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][91] ([i915#3743])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-skl10/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
>     - shard-apl:          NOTRUN -> [SKIP][92] ([fdo#109271] / [i915#3777]) +2 similar issues
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-apl6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-kbl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [i915#3777])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-kbl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
>     - shard-skl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#3777]) +2 similar issues
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-skl10/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
>     - shard-tglb:         NOTRUN -> [SKIP][95] ([fdo#111615])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-tglb1/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:
>     - shard-iclb:         NOTRUN -> [SKIP][96] ([fdo#110723]) +1 similar issue
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-iclb7/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180.html
> 
>   * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#3886]) +6 similar issues
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-apl8/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][98] ([i915#3689])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-tglb1/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
>     - shard-kbl:          NOTRUN -> [SKIP][99] ([fdo#109271] / [i915#3886])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-kbl3/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-rotation-180-yf_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][100] ([fdo#111615] / [i915#3689]) +1 similar issue
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-tglb1/igt@kms_ccs@pipe-b-crc-primary-rotation-180-yf_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
>     - shard-iclb:         NOTRUN -> [SKIP][101] ([fdo#109278] / [i915#3886]) +1 similar issue
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-iclb3/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][102] ([fdo#109271] / [i915#3886]) +3 similar issues
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-skl10/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_cdclk@plane-scaling:
>     - shard-tglb:         NOTRUN -> [SKIP][103] ([i915#3742])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-tglb2/igt@kms_cdclk@plane-scaling.html
> 
>   * igt@kms_chamelium@dp-crc-multiple:
>     - shard-apl:          NOTRUN -> [SKIP][104] ([fdo#109271] / [fdo#111827]) +6 similar issues
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-apl7/igt@kms_chamelium@dp-crc-multiple.html
> 
>   * igt@kms_chamelium@dp-hpd-for-each-pipe:
>     - shard-kbl:          NOTRUN -> [SKIP][105] ([fdo#109271] / [fdo#111827]) +5 similar issues
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-kbl7/igt@kms_chamelium@dp-hpd-for-each-pipe.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
>     - shard-iclb:         NOTRUN -> [SKIP][106] ([fdo#109284] / [fdo#111827]) +7 similar issues
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-iclb3/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-green-to-red:
>     - shard-skl:          NOTRUN -> [SKIP][107] ([fdo#109271] / [fdo#111827]) +13 similar issues
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-skl9/igt@kms_color_chamelium@pipe-d-ctm-green-to-red.html
> 
>   * igt@kms_content_protection@lic:
>     - shard-apl:          NOTRUN -> [TIMEOUT][108] ([i915#1319]) +1 similar issue
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-apl6/igt@kms_content_protection@lic.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-iclb:         NOTRUN -> [SKIP][109] ([fdo#109300] / [fdo#111066])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-iclb3/igt@kms_content_protection@type1.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-512x170-offscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][110] ([fdo#109279] / [i915#3359]) +1 similar issue
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-tglb1/igt@kms_cursor_crc@pipe-a-cursor-512x170-offscreen.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-512x170-sliding:
>     - shard-iclb:         NOTRUN -> [SKIP][111] ([fdo#109278] / [fdo#109279]) +1 similar issue
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-iclb3/igt@kms_cursor_crc@pipe-b-cursor-512x170-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-256x85-rapid-movement:
>     - shard-iclb:         NOTRUN -> [SKIP][112] ([fdo#109278]) +26 similar issues
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-iclb3/igt@kms_cursor_crc@pipe-d-cursor-256x85-rapid-movement.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-atomic:
>     - shard-tglb:         NOTRUN -> [SKIP][113] ([fdo#109274] / [fdo#111825]) +2 similar issues
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-tglb1/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
>     - shard-iclb:         NOTRUN -> [SKIP][114] ([fdo#109274] / [fdo#109278]) +2 similar issues
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-iclb7/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-skl:          [PASS][115] -> [FAIL][116] ([i915#2346] / [i915#533])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@pipe-d-torture-move:
>     - shard-skl:          NOTRUN -> [SKIP][117] ([fdo#109271]) +163 similar issues
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-skl1/igt@kms_cursor_legacy@pipe-d-torture-move.html
> 
>   * igt@kms_flip@2x-flip-vs-panning-vs-hang:
>     - shard-iclb:         NOTRUN -> [SKIP][118] ([fdo#109274]) +4 similar issues
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-iclb7/igt@kms_flip@2x-flip-vs-panning-vs-hang.html
> 
>   * igt@kms_flip@flip-vs-fences-interruptible@b-vga1:
>     - shard-snb:          [PASS][119] -> [INCOMPLETE][120] ([i915#5000] / [i915#5204])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-snb6/igt@kms_flip@flip-vs-fences-interruptible@b-vga1.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-snb4/igt@kms_flip@flip-vs-fences-interruptible@b-vga1.html
> 
>   * igt@kms_flip@flip-vs-suspend@b-dp1:
>     - shard-kbl:          [PASS][121] -> [DMESG-WARN][122] ([i915#180]) +1 similar issue
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-kbl1/igt@kms_flip@flip-vs-suspend@b-dp1.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-kbl7/igt@kms_flip@flip-vs-suspend@b-dp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
>     - shard-skl:          NOTRUN -> [FAIL][123] ([i915#2122])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][124] ([i915#3701])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-skl1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
>     - shard-glk:          [PASS][125] -> [FAIL][126] ([i915#4911])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-glk5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-blt:
>     - shard-tglb:         NOTRUN -> [SKIP][127] ([fdo#109280] / [fdo#111825]) +3 similar issues
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
>     - shard-iclb:         NOTRUN -> [SKIP][128] ([fdo#109280]) +22 similar issues
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-iclb7/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-skl:          [PASS][129] -> [FAIL][130] ([i915#1188])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-skl9/igt@kms_hdr@bpc-switch.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-skl4/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
>     - shard-apl:          NOTRUN -> [SKIP][131] ([fdo#109271] / [i915#533]) +1 similar issue
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-apl1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
>     - shard-apl:          NOTRUN -> [FAIL][132] ([fdo#108145] / [i915#265])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
>     - shard-skl:          NOTRUN -> [FAIL][133] ([fdo#108145] / [i915#265]) +2 similar issues
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [PASS][134] -> [FAIL][135] ([fdo#108145] / [i915#265])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_plane_lowres@pipe-a-tiling-x:
>     - shard-iclb:         NOTRUN -> [SKIP][136] ([i915#3536]) +1 similar issue
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-iclb3/igt@kms_plane_lowres@pipe-a-tiling-x.html
> 
>   * igt@kms_plane_lowres@pipe-b-tiling-yf:
>     - shard-tglb:         NOTRUN -> [SKIP][137] ([fdo#111615] / [fdo#112054])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-tglb1/igt@kms_plane_lowres@pipe-b-tiling-yf.html
> 
>   * igt@kms_plane_lowres@pipe-c-tiling-none:
>     - shard-tglb:         NOTRUN -> [SKIP][138] ([i915#3536]) +1 similar issue
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-tglb1/igt@kms_plane_lowres@pipe-c-tiling-none.html
> 
>   * igt@kms_psr2_sf@cursor-plane-update-sf:
>     - shard-skl:          NOTRUN -> [SKIP][139] ([fdo#109271] / [i915#658]) +1 similar issue
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-skl1/igt@kms_psr2_sf@cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
>     - shard-apl:          NOTRUN -> [SKIP][140] ([fdo#109271] / [i915#658])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-apl1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area:
>     - shard-iclb:         NOTRUN -> [SKIP][141] ([fdo#111068] / [i915#658])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-iclb3/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_gtt:
>     - shard-iclb:         [PASS][142] -> [SKIP][143] ([fdo#109441])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11308/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-iclb1/igt@kms_psr@psr2_cursor_mmap_gtt.html
> 
>   * igt@kms_psr@psr2_no_drrs:
>     - shard-iclb:         NOTRUN -> [SKIP][144] ([fdo#109441]) +3 similar issues
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-iclb3/igt@kms_psr@psr2_no_drrs.html
> 
>   * igt@kms_psr@psr2_sprite_mmap_gtt:
>     - shard-tglb:         NOTRUN -> [FAIL][145] ([i915#132] / [i915#3467])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-tglb1/igt@kms_psr@psr2_sprite_mmap_gtt.html
> 
>   * igt@kms_tv_load_detect@load-detect:
>     - shard-iclb:         NOTRUN -> [SKIP][146] ([fdo#109309])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-iclb3/igt@kms_tv_load_detect@load-detect.html
> 
>   * igt@kms_vblank@pipe-d-ts-continuation-idle:
>     - shard-apl:          NOTRUN -> [SKIP][147] ([fdo#109271]) +95 similar issues
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-apl7/igt@kms_vblank@pipe-d-ts-continuation-idle.html
> 
>   * igt@kms_vrr@flip-suspend:
>     - shard-iclb:         NOTRUN -> [SKIP][148] ([fdo#109502])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-iclb3/igt@kms_vrr@flip-suspend.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-iclb:         NOTRUN -> [SKIP][149] ([i915#2437])
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-iclb3/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-apl:          NOTRUN -> [SKIP][150] ([fdo#109271] / [i915#2437])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/shard-apl6/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@nouveau_c
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22459/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
