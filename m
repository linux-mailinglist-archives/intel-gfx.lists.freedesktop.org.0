Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 458904EFA24
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Apr 2022 20:49:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87BFE10E361;
	Fri,  1 Apr 2022 18:49:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD20D10E361
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Apr 2022 18:49:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648838952; x=1680374952;
 h=date:from:to:subject:message-id:references:mime-version:
 in-reply-to; bh=SDPLUWzaDok3wkirfc3FEC7Mb4FbAj3yo1eE6qygnjA=;
 b=I/zyTdammm8DAepkUDL8woUn8W5rMM3OXIkhenJ4Px/8jguWnzED4xGr
 0hqvVMYNVRr0veRzGkiyTfRg1mHFEe12mD7vDOT+ubcSoZgWJoNbNUQZW
 8CSWNmkBRr71SNWsb0N3T6gyH8BBDE/jwsA5u1v2s2FeII3YoK9y35VRj
 3rtPfOMoSabw6HjAp/iLh2OLC/qabG7hD3uQUe+JtvNtAwRPZnpS4eHKa
 aVSlNkKsOtIV2HAMbK2XJlI3Vy45YTFmsuhgKE3IWG9jQYat6NHq/+Yfm
 7cINvu7Pt6EeswL6vpTXDJxwbNkfo1dwxD6CERz+L3ze7Jl9x9m/V+7M6 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10304"; a="260388483"
X-IronPort-AV: E=Sophos;i="5.90,228,1643702400"; d="scan'208";a="260388483"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2022 11:49:12 -0700
X-IronPort-AV: E=Sophos;i="5.90,228,1643702400"; d="scan'208";a="504262582"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.203.144.108])
 by orsmga003-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Apr 2022 11:49:10 -0700
Date: Sat, 2 Apr 2022 00:19:52 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20220401184951.GA23498@intel.com>
References: <20220401123751.27771-1-ramalingam.c@intel.com>
 <164882874177.22006.5849822893128289883@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <164882874177.22006.5849822893128289883@emeril.freedesktop.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/ttm=3A_Evict_and_restore_of_compressed_object_=28rev7=29?=
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

On 2022-04-01 at 15:59:01 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/ttm: Evict and restore of compressed object (rev7)
> URL   : https://patchwork.freedesktop.org/series/101106/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11438_full -> Patchwork_22758_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_22758_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_22758_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (11 -> 11)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_22758_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * {igt@gem_lmem_swapping@parallel-random-verify-ccs} (NEW):
>     - shard-tglb:         NOTRUN -> [SKIP][1] +3 similar issues
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-tglb7/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
> 
>   * igt@gem_lmem_swapping@verify-random-ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][2] +3 similar issues
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-iclb6/igt@gem_lmem_swapping@verify-random-ccs.html
> 
on TGL and ICL CCS tests are supposed to skip.
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_11438_full and Patchwork_22758_full:
> 
> ### New IGT tests (2) ###
> 
>   * igt@gem_lmem_swapping@heavy-verify-random-ccs:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_lmem_swapping@parallel-random-verify-ccs:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.0] s
> 
Except on DG2 on other platforms CCS tests will skip.

Changes looking good to merge. Thanks

Ram.
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_22758_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Possible fixes ####
> 
>   * boot:
>     - shard-skl:          ([PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [FAIL][18], [FAIL][19], [FAIL][20], [FAIL][21], [FAIL][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27]) ([i915#5032]) -> ([PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11438/shard-skl9/boot.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11438/shard-skl9/boot.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11438/shard-skl9/boot.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11438/shard-skl9/boot.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11438/shard-skl8/boot.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11438/shard-skl8/boot.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11438/shard-skl7/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11438/shard-skl7/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11438/shard-skl7/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11438/shard-skl6/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11438/shard-skl6/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11438/shard-skl6/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11438/shard-skl4/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11438/shard-skl4/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11438/shard-skl4/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11438/shard-skl3/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11438/shard-skl3/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11438/shard-skl3/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11438/shard-skl3/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11438/shard-skl3/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11438/shard-skl1/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11438/shard-skl1/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11438/shard-skl1/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11438/shard-skl10/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11438/shard-skl10/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-skl9/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-skl9/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-skl9/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-skl8/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-skl8/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-skl8/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-skl8/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-skl7/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-skl7/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-skl7/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-skl6/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-skl6/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-skl4/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-skl4/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-skl4/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-skl3/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-skl3/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-skl1/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-skl1/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-skl1/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-skl10/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-skl10/boot.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-skl10/boot.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-skl10/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@feature_discovery@display-3x:
>     - shard-tglb:         NOTRUN -> [SKIP][52] ([i915#1839])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-tglb7/igt@feature_discovery@display-3x.html
> 
>   * igt@gem_ccs@block-copy-uncompressed:
>     - shard-iclb:         NOTRUN -> [SKIP][53] ([i915#5327]) +1 similar issue
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-iclb5/igt@gem_ccs@block-copy-uncompressed.html
> 
>   * igt@gem_ctx_param@set-priority-not-supported:
>     - shard-iclb:         NOTRUN -> [SKIP][54] ([fdo#109314])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-iclb5/igt@gem_ctx_param@set-priority-not-supported.html
> 
>   * igt@gem_ctx_persistence@legacy-engines-hostile-preempt:
>     - shard-snb:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#1099]) +1 similar issue
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-snb2/igt@gem_ctx_persistence@legacy-engines-hostile-preempt.html
> 
>   * igt@gem_ctx_shared@q-in-order:
>     - shard-snb:          NOTRUN -> [SKIP][56] ([fdo#109271]) +128 similar issues
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-snb2/igt@gem_ctx_shared@q-in-order.html
> 
>   * igt@gem_ctx_sseu@mmap-args:
>     - shard-tglb:         NOTRUN -> [SKIP][57] ([i915#280])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-tglb1/igt@gem_ctx_sseu@mmap-args.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-skl:          NOTRUN -> [TIMEOUT][58] ([i915#3063])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-skl9/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@parallel-bb-first:
>     - shard-iclb:         NOTRUN -> [DMESG-WARN][59] ([i915#5076])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-iclb1/igt@gem_exec_balancer@parallel-bb-first.html
> 
>   * igt@gem_exec_balancer@parallel-contexts:
>     - shard-tglb:         NOTRUN -> [DMESG-WARN][60] ([i915#5076]) +1 similar issue
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-tglb1/igt@gem_exec_balancer@parallel-contexts.html
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][61] ([i915#5076])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-kbl4/igt@gem_exec_balancer@parallel-contexts.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-skl:          NOTRUN -> [SKIP][62] ([fdo#109271]) +320 similar issues
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-skl10/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-iclb:         NOTRUN -> [FAIL][63] ([i915#2842]) +1 similar issue
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-iclb7/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>     - shard-glk:          NOTRUN -> [FAIL][64] ([i915#2842])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-glk9/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>     - shard-tglb:         NOTRUN -> [FAIL][65] ([i915#2842]) +1 similar issue
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-tglb6/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-glk:          [PASS][66] -> [FAIL][67] ([i915#2842])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11438/shard-glk6/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-glk2/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-kbl:          [PASS][68] -> [FAIL][69] ([i915#2842])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11438/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-kbl3/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         NOTRUN -> [FAIL][70] ([i915#2849])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
>     - shard-iclb:         NOTRUN -> [SKIP][71] ([fdo#109313])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-iclb8/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][72] ([i915#4613]) +3 similar issues
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-iclb6/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html
>     - shard-skl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-skl7/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html
>     - shard-glk:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#4613])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-glk5/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html
>     - shard-apl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#4613])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-apl1/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify:
>     - shard-kbl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#4613]) +3 similar issues
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-kbl3/igt@gem_lmem_swapping@parallel-random-verify.html
> 
>   * igt@gem_lmem_swapping@random-engines:
>     - shard-tglb:         NOTRUN -> [SKIP][77] ([i915#4613]) +3 similar issues
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-tglb3/igt@gem_lmem_swapping@random-engines.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-tglb:         NOTRUN -> [WARN][78] ([i915#2658])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-tglb7/igt@gem_pread@exhaustion.html
>     - shard-glk:          NOTRUN -> [WARN][79] ([i915#2658])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-glk7/igt@gem_pread@exhaustion.html
>     - shard-apl:          NOTRUN -> [WARN][80] ([i915#2658])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-apl3/igt@gem_pread@exhaustion.html
>     - shard-iclb:         NOTRUN -> [WARN][81] ([i915#2658])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-iclb7/igt@gem_pread@exhaustion.html
>     - shard-snb:          NOTRUN -> [WARN][82] ([i915#2658])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-snb5/igt@gem_pread@exhaustion.html
>     - shard-kbl:          NOTRUN -> [WARN][83] ([i915#2658])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-kbl4/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-skl:          NOTRUN -> [WARN][84] ([i915#2658]) +1 similar issue
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-skl7/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pxp@create-protected-buffer:
>     - shard-iclb:         NOTRUN -> [SKIP][85] ([i915#4270]) +2 similar issues
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-iclb3/igt@gem_pxp@create-protected-buffer.html
> 
>   * igt@gem_pxp@create-regular-buffer:
>     - shard-tglb:         NOTRUN -> [SKIP][86] ([i915#4270]) +2 similar issues
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-tglb2/igt@gem_pxp@create-regular-buffer.html
> 
>   * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][87] ([i915#768]) +2 similar issues
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-iclb5/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled.html
> 
>   * igt@gem_softpin@allocator-evict-all-engines:
>     - shard-glk:          [PASS][88] -> [FAIL][89] ([i915#4171])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11438/shard-glk1/igt@gem_softpin@allocator-evict-all-engines.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-glk7/igt@gem_softpin@allocator-evict-all-engines.html
> 
>   * igt@gem_softpin@noreloc-s3:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][90] ([i915#1373] / [i915#4939] / [i915#5230])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-skl4/igt@gem_softpin@noreloc-s3.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-after-close:
>     - shard-iclb:         NOTRUN -> [SKIP][91] ([i915#3297])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-iclb7/igt@gem_userptr_blits@unsync-unmap-after-close.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-cycles:
>     - shard-tglb:         NOTRUN -> [SKIP][92] ([i915#3297]) +1 similar issue
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-tglb6/igt@gem_userptr_blits@unsync-unmap-cycles.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-kbl:          NOTRUN -> [FAIL][93] ([i915#3318])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-kbl7/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gen7_exec_parse@basic-rejected:
>     - shard-tglb:         NOTRUN -> [SKIP][94] ([fdo#109289]) +3 similar issues
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-tglb6/igt@gen7_exec_parse@basic-rejected.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-skl:          NOTRUN -> [DMESG-WARN][95] ([i915#1436] / [i915#716])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-skl9/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-skl:          NOTRUN -> [DMESG-WARN][96] ([i915#1436] / [i915#1982] / [i915#716])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-skl1/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@bb-start-param:
>     - shard-tglb:         NOTRUN -> [SKIP][97] ([i915#2527] / [i915#2856]) +1 similar issue
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-tglb1/igt@gen9_exec_parse@bb-start-param.html
> 
>   * igt@gen9_exec_parse@valid-registers:
>     - shard-iclb:         NOTRUN -> [SKIP][98] ([i915#2856]) +2 similar issues
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-iclb8/igt@gen9_exec_parse@valid-registers.html
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-skl:          NOTRUN -> [SKIP][99] ([fdo#109271] / [i915#658]) +1 similar issue
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-skl4/igt@i915_pm_dc@dc3co-vpb-simulation.html
>     - shard-tglb:         NOTRUN -> [SKIP][100] ([i915#1904])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-tglb1/igt@i915_pm_dc@dc3co-vpb-simulation.html
>     - shard-iclb:         NOTRUN -> [SKIP][101] ([i915#588])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-tglb:         NOTRUN -> [FAIL][102] ([i915#454])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - shard-iclb:         [PASS][103] -> [SKIP][104] ([i915#4281])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11438/shard-iclb4/igt@i915_pm_dc@dc9-dpms.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
>     - shard-kbl:          NOTRUN -> [SKIP][105] ([fdo#109271] / [i915#1937])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-kbl4/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html
>     - shard-apl:          NOTRUN -> [SKIP][106] ([fdo#109271] / [i915#1937])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-apl3/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html
> 
>   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:
>     - shard-glk:          NOTRUN -> [SKIP][107] ([fdo#109271] / [i915#1937])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-glk7/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
> 
>   * igt@i915_pm_rpm@pc8-residency:
>     - shard-iclb:         NOTRUN -> [SKIP][108] ([fdo#109293] / [fdo#109506])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-iclb6/igt@i915_pm_rpm@pc8-residency.html
>     - shard-tglb:         NOTRUN -> [SKIP][109] ([fdo#109506] / [i915#2411])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-tglb1/igt@i915_pm_rpm@pc8-residency.html
> 
>   * igt@i915_selftest@live@gt_pm:
>     - shard-skl:          NOTRUN -> [DMESG-FAIL][110] ([i915#1886])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-skl10/igt@i915_selftest@live@gt_pm.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-snb:          [PASS][111] -> [INCOMPLETE][112] ([i915#3921])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11438/shard-snb7/igt@i915_selftest@live@hangcheck.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-snb2/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-kbl:          [PASS][113] -> [DMESG-WARN][114] ([i915#180]) +1 similar issue
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11438/shard-kbl1/igt@i915_suspend@forcewake.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-kbl7/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_atomic@atomic_plane_damage:
>     - shard-iclb:         NOTRUN -> [SKIP][115] ([i915#4765])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-iclb8/igt@kms_atomic@atomic_plane_damage.html
> 
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>     - shard-tglb:         NOTRUN -> [SKIP][116] ([i915#404])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-tglb6/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
>     - shard-tglb:         NOTRUN -> [SKIP][117] ([i915#1769])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-tglb6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
>     - shard-kbl:          NOTRUN -> [SKIP][118] ([fdo#109271]) +234 similar issues
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-kbl4/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:
>     - shard-tglb:         NOTRUN -> [SKIP][119] ([i915#5286]) +3 similar issues
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-tglb7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-iclb:         NOTRUN -> [SKIP][120] ([i915#5286]) +3 similar issues
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-iclb3/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-90:
>     - shard-iclb:         NOTRUN -> [SKIP][121] ([fdo#110725] / [fdo#111614])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-iclb6/igt@kms_big_fb@linear-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@x-tiled-8bpp-rotate-90:
>     - shard-tglb:         NOTRUN -> [SKIP][122] ([fdo#111614]) +3 similar issues
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-tglb7/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][123] ([i915#3743])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - shard-kbl:          NOTRUN -> [SKIP][124] ([fdo#109271] / [i915#3777]) +2 similar issues
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-kbl7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-skl:          NOTRUN -> [SKIP][125] ([fdo#109271] / [i915#3777]) +2 similar issues
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-skl1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
>     - shard-apl:          NOTRUN -> [SKIP][126] ([fdo#109271] / [i915#3777])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-apl3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][127] ([i915#3763])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-0:
>     - shard-glk:          [PASS][128] -> [DMESG-WARN][129] ([i915#118])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11438/shard-glk6/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-glk6/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-iclb:         NOTRUN -> [SKIP][130] ([fdo#110723])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-iclb2/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_joiner@invalid-modeset:
>     - shard-iclb:         NOTRUN -> [SKIP][131] ([i915#2705])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-iclb5/igt@kms_big_joiner@invalid-modeset.html
>     - shard-tglb:         NOTRUN -> [SKIP][132] ([i915#2705])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-tglb1/igt@kms_big_joiner@invalid-modeset.html
> 
>   * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
>     - shard-iclb:         NOTRUN -> [SKIP][133] ([fdo#109278] / [i915#3886]) +6 similar issues
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-iclb2/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
>     - shard-kbl:          NOTRUN -> [SKIP][134] ([fdo#109271] / [i915#3886]) +12 similar issues
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-kbl3/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][135] ([i915#3689]) +8 similar issues
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-tglb7/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][136] ([i915#3689] / [i915#3886]) +3 similar issues
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-tglb5/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][137] ([fdo#109271] / [i915#3886]) +16 similar issues
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-skl9/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html
>     - shard-glk:          NOTRUN -> [SKIP][138] ([fdo#109271] / [i915#3886]) +3 similar issues
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-glk8/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html
>     - shard-apl:          NOTRUN -> [SKIP][139] ([fdo#109271] / [i915#3886]) +5 similar issues
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-apl6/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-d-missing-ccs-buffer-yf_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][140] ([fdo#111615] / [i915#3689]) +8 similar issues
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-tglb7/igt@kms_ccs@pipe-d-missing-ccs-buffer-yf_tiled_ccs.html
> 
>   * igt@kms_chamelium@hdmi-hpd-fast:
>     - shard-snb:          NOTRUN -> [SKIP][141] ([fdo#109271] / [fdo#111827]) +4 similar issues
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-snb7/igt@kms_chamelium@hdmi-hpd-fast.html
> 
>   * igt@kms_chamelium@hdmi-hpd-storm:
>     - shard-kbl:          NOTRUN -> [SKIP][142] ([fdo#109271] / [fdo#111827]) +16 similar issues
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-kbl1/igt@kms_chamelium@hdmi-hpd-storm.html
> 
>   * igt@kms_color@pipe-d-ctm-0-25:
>     - shard-iclb:         NOTRUN -> [SKIP][143] ([fdo#109278] / [i915#1149]) +1 similar issue
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-iclb6/igt@kms_color@pipe-d-ctm-0-25.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-0-5:
>     - shard-tglb:         NOTRUN -> [SKIP][144] ([fdo#109284] / [fdo#111827]) +14 similar issues
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-tglb1/igt@kms_color_chamelium@pipe-b-ctm-0-5.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-max:
>     - shard-skl:          NOTRUN -> [SKIP][145] ([fdo#109271] / [fdo#111827]) +18 similar issues
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-skl10/igt@kms_color_chamelium@pipe-b-ctm-max.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-red-to-blue:
>     - shard-iclb:         NOTRUN -> [SKIP][146] ([fdo#109284] / [fdo#111827]) +11 similar issues
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-iclb5/igt@kms_color_chamelium@pipe-b-ctm-red-to-blue.html
>     - shard-apl:          NOTRUN -> [SKIP][147] ([fdo#109271] / [fdo#111827]) +6 similar issues
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-apl4/igt@kms_color_chamelium@pipe-b-ctm-red-to-blue.html
>     - shard-glk:          NOTRUN -> [SKIP][148] ([fdo#109271] / [fdo#111827]) +4 similar issues
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-glk2/igt@kms_color_chamelium@pipe-b-ctm-red-to-blue.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-0-5:
>     - shard-iclb:         NOTRUN -> [SKIP][149] ([fdo#109278] / [fdo#109284] / [fdo#111827])
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-iclb5/igt@kms_color_chamelium@pipe-d-ctm-0-5.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-iclb:         NOTRUN -> [SKIP][150] ([fdo#109300] / [fdo#111066]) +1 similar issue
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-iclb5/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0:
>     - shard-tglb:         NOTRUN -> [SKIP][151] ([i915#3116] / [i915#3299]) +1 similar issue
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-tglb5/igt@kms_content_protection@dp-mst-lic-type-0.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-glk:          NOTRUN -> [SKIP][152] ([fdo#109271]) +69 similar issues
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/shard-glk2/igt@kms_content_protection@srm.html
>     - shard-tglb:         NOTRUN -> [SKIP][153] ([i915#1063])
>    [153]: https://intel-gfx-ci.01.org/tr
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22758/index.html
