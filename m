Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF3B249871D
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jan 2022 18:40:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0315410E198;
	Mon, 24 Jan 2022 17:40:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36FC910E198
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jan 2022 17:40:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643046055; x=1674582055;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=551wMwSIVv4F1wAlx2sGPwu6xHxoc2NXe6uEpGAPcWA=;
 b=TujsKCpBZJAU4t/qs81WQLIt+vabNL+7kSwRF8ueMcXPNt3+UMSU1Xou
 gnRSuyuCiqvCczdwLbFn6X/VoKoM5kn5fB9ue6Awdj4MD6XoJ3r98Tb2D
 d03ak0o4gbMiXVINqrbeDVSt2J/fCHDq+SOEMCcr+aphXpls6/DAasSrU
 mvbGkZp3FDaAk6gdlcl8SCfIghnJR0NJH69Z5KpdjDi6NRs78cpTLNLQf
 9HfPnxEtz1in1+YvBbQxDWsOVJqcbDFRJGozATi4tQSR58APCOyW1JtY/
 EfxLr/p6m2aURimxPwySTN3sCrulnERNozMBV4yjbfxyrSXv+HSQqoMqw g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10236"; a="270540485"
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="270540485"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 09:40:54 -0800
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="617325860"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 09:40:54 -0800
Date: Mon, 24 Jan 2022 09:40:53 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <Ye7kpc3T5CM+R+0A@mdroper-desk1.amr.corp.intel.com>
References: <20220120234147.1200574-1-matthew.d.roper@intel.com>
 <164298083590.8373.3499487814476013450@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <164298083590.8373.3499487814476013450@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogIGZhaWx1cmUgZm9yIGRy?=
 =?utf-8?q?m/i915/dg2=3A_Add_Wa=5F18018781329_=28rev7=29?=
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

On Sun, Jan 23, 2022 at 11:33:55PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dg2: Add Wa_18018781329 (rev7)
> URL   : https://patchwork.freedesktop.org/series/99128/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11120_full -> Patchwork_22072_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_22072_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_22072_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (10 -> 11)
> ------------------------------
> 
>   Additional (1): shard-tglu 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_22072_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-skl:          NOTRUN -> [FAIL][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-skl6/igt@i915_pm_sseu@full-enable.html

https://gitlab.freedesktop.org/drm/intel/-/issues/3524 is back.

Patch applied to drm-intel-gt-next.  Thanks Swathi for the review.


Matt

> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@gem_ctx_persistence@smoketest:
>     - {shard-tglu}:       NOTRUN -> [INCOMPLETE][2]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-tglu-7/igt@gem_ctx_persistence@smoketest.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_22072_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Issues hit ####
> 
>   * boot:
>     - shard-apl:          ([PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27]) -> ([PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [FAIL][51], [PASS][52]) ([i915#4386])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl1/boot.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl1/boot.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl1/boot.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl1/boot.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl2/boot.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl2/boot.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl2/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl2/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl3/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl3/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl3/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl4/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl4/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl4/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl6/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl6/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl6/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl6/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl7/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl7/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl7/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl7/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl8/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl8/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl8/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-apl2/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-apl8/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-apl8/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-apl8/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-apl7/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-apl7/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-apl7/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-apl7/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-apl6/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-apl6/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-apl6/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-apl4/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-apl2/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-apl4/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-apl4/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-apl4/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-apl3/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-apl3/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-apl3/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-apl2/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-apl1/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-apl1/boot.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-apl1/boot.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-apl1/boot.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-apl1/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_balancer@parallel-keep-submit-fence:
>     - shard-iclb:         [PASS][53] -> [SKIP][54] ([i915#4525]) +1 similar issue
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-iclb1/igt@gem_exec_balancer@parallel-keep-submit-fence.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-iclb5/igt@gem_exec_balancer@parallel-keep-submit-fence.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-kbl:          NOTRUN -> [FAIL][55] ([i915#2846])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-kbl3/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-glk:          [PASS][56] -> [FAIL][57] ([i915#2842]) +1 similar issue
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-glk8/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-glk2/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-kbl:          NOTRUN -> [FAIL][58] ([i915#2842])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-kbl4/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vecs0:
>     - shard-apl:          [PASS][59] -> [FAIL][60] ([i915#2842])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl6/igt@gem_exec_fair@basic-none@vecs0.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-apl1/igt@gem_exec_fair@basic-none@vecs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglb:         [PASS][61] -> [FAIL][62] ([i915#2842])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-kbl:          [PASS][63] -> [FAIL][64] ([i915#2842]) +3 similar issues
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs0:
>     - shard-iclb:         [PASS][65] -> [FAIL][66] ([i915#2842])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs0.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-iclb5/igt@gem_exec_fair@basic-pace@vcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [PASS][67] -> [FAIL][68] ([i915#2849])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [PASS][69] -> [SKIP][70] ([i915#2190])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-tglb1/igt@gem_huc_copy@huc-copy.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-tglb6/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi:
>     - shard-skl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#4613])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-skl8/igt@gem_lmem_swapping@heavy-verify-multi.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify:
>     - shard-kbl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-kbl3/igt@gem_lmem_swapping@parallel-random-verify.html
> 
>   * igt@gem_render_copy@linear-to-vebox-y-tiled:
>     - shard-apl:          NOTRUN -> [SKIP][73] ([fdo#109271]) +31 similar issues
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-apl8/igt@gem_render_copy@linear-to-vebox-y-tiled.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-cycles:
>     - shard-tglb:         NOTRUN -> [SKIP][74] ([i915#3297])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-tglb6/igt@gem_userptr_blits@unsync-unmap-cycles.html
>     - shard-iclb:         NOTRUN -> [SKIP][75] ([i915#3297])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-iclb5/igt@gem_userptr_blits@unsync-unmap-cycles.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-skl:          [PASS][76] -> [DMESG-WARN][77] ([i915#1436] / [i915#716])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-skl1/igt@gen9_exec_parse@allowed-single.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-skl9/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-skl:          [PASS][78] -> [FAIL][79] ([i915#454])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-skl1/igt@i915_pm_dc@dc6-dpms.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-skl2/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_suspend@fence-restore-untiled:
>     - shard-apl:          [PASS][80] -> [DMESG-WARN][81] ([i915#180])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl4/igt@i915_suspend@fence-restore-untiled.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-apl2/igt@i915_suspend@fence-restore-untiled.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>     - shard-skl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#3777])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-skl10/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-kbl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#3777]) +1 similar issue
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-kbl4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
>     - shard-kbl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#3886]) +4 similar issues
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-kbl4/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#3886])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-skl8/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_chamelium@hdmi-aspect-ratio:
>     - shard-skl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [fdo#111827]) +9 similar issues
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-skl8/igt@kms_chamelium@hdmi-aspect-ratio.html
> 
>   * igt@kms_chamelium@hdmi-hpd-storm-disable:
>     - shard-kbl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [fdo#111827]) +12 similar issues
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-kbl4/igt@kms_chamelium@hdmi-hpd-storm-disable.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-red-to-blue:
>     - shard-iclb:         NOTRUN -> [SKIP][88] ([fdo#109284] / [fdo#111827])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-iclb5/igt@kms_color_chamelium@pipe-a-ctm-red-to-blue.html
>     - shard-tglb:         NOTRUN -> [SKIP][89] ([fdo#109284] / [fdo#111827])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-tglb6/igt@kms_color_chamelium@pipe-a-ctm-red-to-blue.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-0-25:
>     - shard-apl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-apl2/igt@kms_color_chamelium@pipe-d-ctm-0-25.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-kbl:          NOTRUN -> [FAIL][91] ([i915#2105])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-kbl3/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-32x32-offscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][92] ([i915#3319]) +1 similar issue
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-tglb6/igt@kms_cursor_crc@pipe-c-cursor-32x32-offscreen.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-512x512-rapid-movement:
>     - shard-tglb:         NOTRUN -> [SKIP][93] ([fdo#109279] / [i915#3359])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-tglb6/igt@kms_cursor_crc@pipe-c-cursor-512x512-rapid-movement.html
>     - shard-iclb:         NOTRUN -> [SKIP][94] ([fdo#109278] / [fdo#109279])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-iclb5/igt@kms_cursor_crc@pipe-c-cursor-512x512-rapid-movement.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-suspend:
>     - shard-kbl:          [PASS][95] -> [DMESG-WARN][96] ([i915#180]) +5 similar issues
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-128x128-random:
>     - shard-iclb:         NOTRUN -> [SKIP][97] ([fdo#109278]) +4 similar issues
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-iclb5/igt@kms_cursor_crc@pipe-d-cursor-128x128-random.html
> 
>   * igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge:
>     - shard-kbl:          NOTRUN -> [SKIP][98] ([fdo#109271]) +146 similar issues
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-kbl3/igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-skl:          [PASS][99] -> [FAIL][100] ([i915#2346] / [i915#533])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2:
>     - shard-glk:          [PASS][101] -> [FAIL][102] ([i915#2122])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-glk6/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-glk9/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@b-edp1:
>     - shard-skl:          [PASS][103] -> [FAIL][104] ([i915#2122]) +1 similar issue
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-skl3/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
>     - shard-iclb:         [PASS][105] -> [SKIP][106] ([i915#3701])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-iclb5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:
>     - shard-skl:          NOTRUN -> [SKIP][107] ([fdo#109271]) +120 similar issues
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-skl7/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-wc:
>     - shard-tglb:         NOTRUN -> [SKIP][108] ([fdo#109280] / [fdo#111825]) +1 similar issue
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-iclb:         NOTRUN -> [SKIP][109] ([fdo#109280]) +1 similar issue
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-iclb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-skl:          [PASS][110] -> [FAIL][111] ([i915#1188])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_hdr@static-toggle-dpms:
>     - shard-tglb:         NOTRUN -> [SKIP][112] ([i915#1187])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-tglb6/igt@kms_hdr@static-toggle-dpms.html
>     - shard-iclb:         NOTRUN -> [SKIP][113] ([i915#1187])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-iclb5/igt@kms_hdr@static-toggle-dpms.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
>     - shard-kbl:          NOTRUN -> [SKIP][114] ([fdo#109271] / [i915#533]) +2 similar issues
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
>     - shard-kbl:          NOTRUN -> [FAIL][115] ([fdo#108145] / [i915#265]) +2 similar issues
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-kbl3/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
>     - shard-skl:          NOTRUN -> [FAIL][116] ([fdo#108145] / [i915#265]) +1 similar issue
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
>     - shard-kbl:          NOTRUN -> [FAIL][117] ([i915#265])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-kbl4/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-iclb:         [PASS][118] -> [SKIP][119] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-iclb3/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-apl:          NOTRUN -> [SKIP][120] ([fdo#109271] / [i915#658]) +1 similar issue
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-apl2/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-kbl:          NOTRUN -> [SKIP][121] ([fdo#109271] / [i915#658]) +1 similar issue
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-kbl6/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-skl:          NOTRUN -> [SKIP][122] ([fdo#109271] / [i915#658]) +1 similar issue
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-skl7/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_setmode@basic:
>     - shard-apl:          [PASS][123] -> [FAIL][124] ([i915#31])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl4/igt@kms_setmode@basic.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-apl2/igt@kms_setmode@basic.html
>     - shard-glk:          [PASS][125] -> [FAIL][126] ([i915#31])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-glk6/igt@kms_setmode@basic.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-glk9/igt@kms_setmode@basic.html
> 
>   * igt@kms_vblank@pipe-b-ts-continuation-suspend:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][127] ([i915#180])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-kbl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-kbl:          NOTRUN -> [SKIP][128] ([fdo#109271] / [i915#2437])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-kbl4/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-iclb:         [PASS][129] -> [FAIL][130] ([i915#1542])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-iclb7/igt@perf@polling-parameterized.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-iclb8/igt@perf@polling-parameterized.html
> 
>   * igt@sysfs_clients@pidname:
>     - shard-skl:          NOTRUN -> [SKIP][131] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-skl6/igt@sysfs_clients@pidname.html
> 
>   * igt@sysfs_clients@split-50:
>     - shard-kbl:          NOTRUN -> [SKIP][132] ([fdo#109271] / [i915#2994]) +2 similar issues
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-kbl3/igt@sysfs_clients@split-50.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_isolation@preservation-s3@bcs0:
>     - shard-apl:          [DMESG-WARN][133] ([i915#180]) -> [PASS][134] +1 similar issue
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl3/igt@gem_ctx_isolation@preservation-s3@bcs0.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-apl8/igt@gem_ctx_isolation@preservation-s3@bcs0.html
> 
>   * igt@gem_ctx_persistence@many-contexts:
>     - shard-tglb:         [FAIL][135] ([i915#2410]) -> [PASS][136]
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-tglb2/igt@gem_ctx_persistence@many-contexts.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-tglb3/igt@gem_ctx_persistence@many-contexts.html
> 
>   * igt@gem_eio@in-flight-contexts-10ms:
>     - shard-iclb:         [TIMEOUT][137] ([i915#3070]) -> [PASS][138]
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-iclb1/igt@gem_eio@in-flight-contexts-10ms.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-iclb5/igt@gem_eio@in-flight-contexts-10ms.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-iclb:         [TIMEOUT][139] ([i915#2481] / [i915#3070]) -> [PASS][140]
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-iclb2/igt@gem_eio@unwedge-stress.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-iclb3/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@parallel-contexts:
>     - shard-iclb:         [SKIP][141] ([i915#4525]) -> [PASS][142]
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-iclb6/igt@gem_exec_balancer@parallel-contexts.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-iclb1/igt@gem_exec_balancer@parallel-contexts.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [FAIL][143] ([i915#2842]) -> [PASS][144]
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html
>     - shard-apl:          [FAIL][145] ([i915#2842]) -> [PASS][146]
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl8/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-apl4/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-kbl:          [FAIL][147] ([i915#2842]) -> [PASS][148] +2 similar issues
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_whisper@basic-fds:
>     - shard-glk:          [DMESG-WARN][149] ([i915#118]) -> [PASS][150] +1 similar issue
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-glk4/igt@gem_exec_whisper@basic-fds.html
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-glk8/igt@gem_exec_whisper@basic-fds.html
> 
>   * igt@gem_softpin@allocator-evict-all-engines:
>     - shard-glk:          [FAIL][151] ([i915#4171]) -> [PASS][152]
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-glk3/igt@gem_softpin@allocator-evict-all-engines.html
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-glk4/igt@gem_softpin@allocator-evict-all-engines.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-iclb:         [FAIL][153] ([i915#2346]) -> [PASS][154]
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-iclb8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-kbl:          [INCOMPLETE][155] ([i915#180] / [i915#636]) -> [PASS][156]
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>     - shard-kbl:          [DMESG-WARN][157] ([i915#180]) -> [PASS][158] +6 similar issues
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-dp1:
>     - shard-apl:          [FAIL][159] ([i915#2122]) -> [PASS][160]
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-apl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-dp1.html
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-apl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-dp1.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-skl:          [FAIL][161] ([i915#1188]) -> [PASS][162]
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-skl5/igt@kms_hdr@bpc-switch.html
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-skl10/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>     - shard-skl:          [FAIL][163] ([fdo#108145] / [i915#265]) -> [PASS][164] +1 similar issue
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_primary_mmap_cpu:
>     - shard-iclb:         [SKIP][165] ([fdo#109441]) -> [PASS][166] +1 similar issue
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-suspend:
>     - shard-kbl:          [DMESG-WARN][167] ([i915#180] / [i915#295]) -> [PASS][168]
>    [167]: ht
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22072/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
