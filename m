Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00E0947991D
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Dec 2021 07:11:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B911010E396;
	Sat, 18 Dec 2021 06:11:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3128710E396
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Dec 2021 06:11:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639807884; x=1671343884;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ERf6tAv9BjkjSnd5B74Xr0Z5YxobpotlTaXO5gU9XUs=;
 b=G3+6+zaSDddgi3+/fli1+HL62VApnTTXWHGJ8aR7PX3K1pAWHwvImuuv
 kW6qtJPU4AwnJYuEVFWgWHcvsA5qLPHJESHUFj3mK8VgqC441wB6iNSKR
 JkUdXOY8QSFC2I24cAFvFs43FI0ufPcflJI8vnN3GImS1xjkLWb2O68aS
 +i8aIIKm0M1JBnA8WXeRhaxQe9ua/6qNQkZdddqlRrsl8MEvx1WpAV4ax
 UH6UcYwoCP37Xmi+GpyGN/HnCgRyqqubJ3BH0t9xhWFDMF9J1+uF/aM94
 aVd2B2972e0Ds3RXVL2as/3PaS9ezRuuorT6POr6su/rypjEYvH5V1MHC g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10201"; a="303267840"
X-IronPort-AV: E=Sophos;i="5.88,215,1635231600"; d="scan'208";a="303267840"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2021 22:11:23 -0800
X-IronPort-AV: E=Sophos;i="5.88,215,1635231600"; d="scan'208";a="615803776"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2021 22:11:23 -0800
Date: Fri, 17 Dec 2021 22:11:21 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <Yb17iflI3R8xFtMW@mdroper-desk1.amr.corp.intel.com>
References: <20211214193346.21231-1-andi.shyti@linux.intel.com>
 <163955311757.18076.13164245627457032795@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <163955311757.18076.13164245627457032795@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogIGZhaWx1cmUgZm9yIE1v?=
 =?utf-8?q?re_preparation_for_multi_gt_patches?=
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

On Wed, Dec 15, 2021 at 07:25:17AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: More preparation for multi gt patches
> URL   : https://patchwork.freedesktop.org/series/98032/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11002_full -> Patchwork_21849_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_21849_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_21849_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (10 -> 10)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_21849_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-iclb4/igt@gem_exec_fair@basic-none@vcs1.html

https://gitlab.freedesktop.org/drm/intel/-/issues/2842

> 
>   * igt@i915_suspend@sysfs-reader:
>     - shard-skl:          [PASS][2] -> [INCOMPLETE][3]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-skl8/igt@i915_suspend@sysfs-reader.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-skl10/igt@i915_suspend@sysfs-reader.html

Looks similar to this ADL-P issue that was seen only once:
https://gitlab.freedesktop.org/drm/intel/-/issues/4092


The first 10 patches have gone through several clean CI cycles now, so
I've pushed those to drm-intel-gt-next.  There are just a couple minor
comments on the ggtt patches, so we can push the rest of those once the
comments are addressed.

BTW, there's one i915->gt reference in the display code that has moved
from display/intel_display.c to display/skl_universal_plane.c on
drm-intel-next, but that movement hasn't made its way to
drm-intel-gt-next yet.  This led to a merge conflict while rebuilding
drm-tip.  I had to use a 'dim cat-to-fixup' to apply the following diff
to the drm-intel-gt-next merge commit:

        diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
        index 158d89b8d490..b3162f49f341 100644
        --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
        +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
        @@ -1737,7 +1737,7 @@ static bool bo_has_valid_encryption(struct drm_i915_gem_object *obj)
        {
                struct drm_i915_private *i915 = to_i915(obj->base.dev);

        -       return intel_pxp_key_check(&i915->gt.pxp, obj, false) == 0;
        +       return intel_pxp_key_check(&to_gt(i915)->pxp, obj, false) == 0;
        }

        static bool pxp_is_borked(struct drm_i915_gem_object *obj)


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_21849_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Issues hit ####
> 
>   * boot:
>     - shard-snb:          ([PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28]) -> ([PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [FAIL][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53]) ([i915#4338])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb7/boot.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb7/boot.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb7/boot.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb7/boot.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb7/boot.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb7/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb6/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb6/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb6/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb6/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb5/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb5/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb5/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb5/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb4/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb4/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb4/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb4/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb4/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb2/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb2/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb2/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb2/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb2/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-snb2/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb7/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb7/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb7/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb7/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb7/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb7/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb6/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb6/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb6/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb6/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb6/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb5/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb5/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb5/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb5/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb5/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb5/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb4/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb4/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb4/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb4/boot.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb2/boot.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb2/boot.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb2/boot.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-snb2/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@feature_discovery@psr2:
>     - shard-iclb:         [PASS][54] -> [SKIP][55] ([i915#658])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-iclb2/igt@feature_discovery@psr2.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-iclb8/igt@feature_discovery@psr2.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@vcs0:
>     - shard-kbl:          [PASS][56] -> [DMESG-WARN][57] ([i915#180]) +4 similar issues
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-kbl3/igt@gem_ctx_isolation@preservation-s3@vcs0.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html
> 
>   * igt@gem_exec_capture@pi@rcs0:
>     - shard-skl:          [PASS][58] -> [INCOMPLETE][59] ([i915#4547])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-skl4/igt@gem_exec_capture@pi@rcs0.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-skl8/igt@gem_exec_capture@pi@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-glk:          [PASS][60] -> [FAIL][61] ([i915#2842]) +1 similar issue
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-glk2/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-apl:          [PASS][62] -> [FAIL][63] ([i915#2842])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-apl7/igt@gem_exec_fair@basic-none@vcs0.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-apl3/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@bcs0:
>     - shard-tglb:         [PASS][64] -> [FAIL][65] ([i915#2842])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-tglb8/igt@gem_exec_fair@basic-pace@bcs0.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-tglb3/igt@gem_exec_fair@basic-pace@bcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-kbl:          [PASS][66] -> [FAIL][67] ([i915#2842])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [PASS][68] -> [SKIP][69] ([i915#2190])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-tglb1/igt@gem_huc_copy@huc-copy.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-tglb7/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@parallel-multi:
>     - shard-apl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-apl2/igt@gem_lmem_swapping@parallel-multi.html
>     - shard-skl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#4613])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-skl10/igt@gem_lmem_swapping@parallel-multi.html
>     - shard-tglb:         NOTRUN -> [SKIP][72] ([i915#4613]) +1 similar issue
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-tglb6/igt@gem_lmem_swapping@parallel-multi.html
> 
>   * igt@gem_lmem_swapping@random-engines:
>     - shard-kbl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#4613])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-kbl2/igt@gem_lmem_swapping@random-engines.html
> 
>   * igt@gem_lmem_swapping@smem-oom:
>     - shard-iclb:         NOTRUN -> [SKIP][74] ([i915#4613])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-iclb7/igt@gem_lmem_swapping@smem-oom.html
> 
>   * igt@gem_pxp@fail-invalid-protected-context:
>     - shard-iclb:         NOTRUN -> [SKIP][75] ([i915#4270])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-iclb7/igt@gem_pxp@fail-invalid-protected-context.html
> 
>   * igt@gem_pxp@regular-baseline-src-copy-readible:
>     - shard-kbl:          NOTRUN -> [SKIP][76] ([fdo#109271]) +59 similar issues
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-kbl3/igt@gem_pxp@regular-baseline-src-copy-readible.html
> 
>   * igt@gen9_exec_parse@batch-without-end:
>     - shard-tglb:         NOTRUN -> [SKIP][77] ([i915#2856])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-tglb7/igt@gen9_exec_parse@batch-without-end.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-kbl:          NOTRUN -> [FAIL][78] ([i915#454])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-kbl2/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [PASS][79] -> [FAIL][80] ([i915#454])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-iclb7/igt@i915_pm_dc@dc6-psr.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-iclb7/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - shard-tglb:         NOTRUN -> [SKIP][81] ([i915#4281])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-tglb7/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
>     - shard-glk:          [PASS][82] -> [DMESG-WARN][83] ([i915#118])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-glk8/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-glk4/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
>     - shard-tglb:         NOTRUN -> [SKIP][84] ([fdo#111614]) +1 similar issue
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-tglb7/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
>     - shard-iclb:         NOTRUN -> [SKIP][85] ([fdo#110725] / [fdo#111614])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-iclb7/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
>     - shard-tglb:         NOTRUN -> [SKIP][86] ([fdo#111615])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-tglb7/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html
> 
>   * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#3886]) +3 similar issues
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-apl6/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-ccs-on-another-bo-yf_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][88] ([fdo#111615] / [i915#3689])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-tglb7/igt@kms_ccs@pipe-a-ccs-on-another-bo-yf_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#3886]) +2 similar issues
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-kbl2/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][90] ([i915#3689])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-tglb7/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][91] ([i915#3689] / [i915#3886])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-tglb7/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][92] ([fdo#109271] / [i915#3886])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-skl4/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_chamelium@dp-edid-change-during-suspend:
>     - shard-apl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [fdo#111827]) +7 similar issues
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-apl2/igt@kms_chamelium@dp-edid-change-during-suspend.html
> 
>   * igt@kms_color@pipe-b-ctm-0-25:
>     - shard-skl:          [PASS][94] -> [DMESG-WARN][95] ([i915#1982])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-skl8/igt@kms_color@pipe-b-ctm-0-25.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-skl6/igt@kms_color@pipe-b-ctm-0-25.html
> 
>   * igt@kms_color@pipe-d-ctm-green-to-red:
>     - shard-iclb:         NOTRUN -> [SKIP][96] ([fdo#109278] / [i915#1149])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-iclb7/igt@kms_color@pipe-d-ctm-green-to-red.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-green-to-red:
>     - shard-iclb:         NOTRUN -> [SKIP][97] ([fdo#109284] / [fdo#111827]) +1 similar issue
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-iclb7/igt@kms_color_chamelium@pipe-a-ctm-green-to-red.html
> 
>   * igt@kms_color_chamelium@pipe-a-degamma:
>     - shard-kbl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [fdo#111827]) +5 similar issues
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-kbl3/igt@kms_color_chamelium@pipe-a-degamma.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-0-75:
>     - shard-tglb:         NOTRUN -> [SKIP][99] ([fdo#109284] / [fdo#111827]) +3 similar issues
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-tglb6/igt@kms_color_chamelium@pipe-b-ctm-0-75.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-kbl:          NOTRUN -> [TIMEOUT][100] ([i915#1319])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-kbl3/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-apl:          NOTRUN -> [TIMEOUT][101] ([i915#1319])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-apl2/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-apl:          NOTRUN -> [FAIL][102] ([i915#2105])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-apl6/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][103] ([i915#3319])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-tglb7/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-512x170-rapid-movement:
>     - shard-glk:          NOTRUN -> [SKIP][104] ([fdo#109271]) +1 similar issue
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-glk2/igt@kms_cursor_crc@pipe-b-cursor-512x170-rapid-movement.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-max-size-rapid-movement:
>     - shard-tglb:         NOTRUN -> [SKIP][105] ([i915#3359])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-tglb7/igt@kms_cursor_crc@pipe-c-cursor-max-size-rapid-movement.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-32x32-onscreen:
>     - shard-iclb:         NOTRUN -> [SKIP][106] ([fdo#109278]) +6 similar issues
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-iclb5/igt@kms_cursor_crc@pipe-d-cursor-32x32-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-512x512-rapid-movement:
>     - shard-tglb:         NOTRUN -> [SKIP][107] ([fdo#109279] / [i915#3359])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-tglb7/igt@kms_cursor_crc@pipe-d-cursor-512x512-rapid-movement.html
> 
>   * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
>     - shard-glk:          [PASS][108] -> [FAIL][109] ([i915#72])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
>     - shard-iclb:         NOTRUN -> [SKIP][110] ([fdo#109274] / [fdo#109278]) +1 similar issue
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-iclb5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
>     - shard-tglb:         NOTRUN -> [SKIP][111] ([fdo#111825]) +11 similar issues
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-tglb6/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
>     - shard-apl:          [PASS][112] -> [FAIL][113] ([i915#2346])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
>     - shard-iclb:         [PASS][114] -> [FAIL][115] ([i915#2346])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-iclb5/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@pipe-d-forked-move:
>     - shard-skl:          NOTRUN -> [SKIP][116] ([fdo#109271]) +14 similar issues
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-skl10/igt@kms_cursor_legacy@pipe-d-forked-move.html
> 
>   * igt@kms_dsc@basic-dsc-enable:
>     - shard-iclb:         NOTRUN -> [SKIP][117] ([i915#3840])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-iclb7/igt@kms_dsc@basic-dsc-enable.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-apl:          [PASS][118] -> [INCOMPLETE][119] ([i915#180] / [i915#1982])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html
>     - shard-kbl:          [PASS][120] -> [INCOMPLETE][121] ([i915#180] / [i915#636])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-kbl2/igt@kms_fbcon_fbt@fbc-suspend.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@2x-blocking-wf_vblank:
>     - shard-iclb:         NOTRUN -> [SKIP][122] ([fdo#109274]) +2 similar issues
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-iclb7/igt@kms_flip@2x-blocking-wf_vblank.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
>     - shard-skl:          [PASS][123] -> [FAIL][124] ([i915#2122]) +2 similar issues
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1:
>     - shard-glk:          [PASS][125] -> [FAIL][126] ([i915#2122])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-suspend@c-dp1:
>     - shard-apl:          [PASS][127] -> [DMESG-WARN][128] ([i915#180]) +3 similar issues
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-apl4/igt@kms_flip@flip-vs-suspend@c-dp1.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-apl8/igt@kms_flip@flip-vs-suspend@c-dp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
>     - shard-kbl:          NOTRUN -> [SKIP][129] ([fdo#109271] / [i915#2672])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-kbl3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:
>     - shard-iclb:         [PASS][130] -> [SKIP][131] ([i915#3701])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-iclb4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
>     - shard-skl:          NOTRUN -> [SKIP][132] ([fdo#109271] / [i915#2672])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-skl4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-pwrite:
>     - shard-iclb:         NOTRUN -> [SKIP][133] ([fdo#109280]) +2 similar issues
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-iclb7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-skl:          [PASS][134] -> [FAIL][135] ([i915#1188])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_hdr@static-swap:
>     - shard-tglb:         NOTRUN -> [SKIP][136] ([i915#1187])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-tglb7/igt@kms_hdr@static-swap.html
> 
>   * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
>     - shard-skl:          NOTRUN -> [SKIP][137] ([fdo#109271] / [i915#533])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-skl7/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][138] ([i915#180])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
>     - shard-kbl:          NOTRUN -> [FAIL][139] ([fdo#108145] / [i915#265])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-kbl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
>     - shard-apl:          NOTRUN -> [FAIL][140] ([fdo#108145] / [i915#265]) +1 similar issue
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-apl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
>     - shard-skl:          NOTRUN -> [FAIL][141] ([fdo#108145] / [i915#265]) +1 similar issue
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html
> 
>   * igt@kms_plane_lowres@pipe-b-tiling-yf:
>     - shard-iclb:         NOTRUN -> [SKIP][142] ([i915#3536])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-iclb5/igt@kms_plane_lowres@pipe-b-tiling-yf.html
> 
>   * igt@kms_plane_lowres@pipe-c-tiling-y:
>     - shard-tglb:         NOTRUN -> [SKIP][143] ([i915#3536])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-tglb7/igt@kms_plane_lowres@pipe-c-tiling-y.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
>     - shard-tglb:         NOTRUN -> [SKIP][144] ([i915#2920])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-tglb7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr@psr2_basic:
>     - shard-tglb:         NOTRUN -> [FAIL][145] ([i915#132] / [i915#3467])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-tglb7/igt@kms_psr@psr2_basic.html
> 
>   * igt@kms_psr@psr2_cursor_plane_move:
>     - shard-iclb:         [PASS][146] -> [SKIP][147] ([fdo#109441]) +2 similar issues
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-iclb8/igt@kms_psr@psr2_cursor_plane_move.html
> 
>   * igt@kms_psr@psr2_primary_mmap_cpu:
>     - shard-iclb:         NOTRUN -> [SKIP][148] ([fdo#109441]) +1 similar issue
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-iclb5/igt@kms_psr@psr2_primary_mmap_cpu.html
> 
>   * igt@kms_setmode@basic:
>     - shard-glk:          [PASS][149] -> [FAIL][150] ([i915#31])
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-glk6/igt@kms_setmode@basic.html
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-glk1/igt@kms_setmode@basic.html
> 
>   * igt@kms_tv_load_detect@load-detect:
>     - shard-tglb:         NOTRUN -> [SKIP][151] ([fdo#109309])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-tglb7/igt@kms_tv_load_detect@load-detect.html
> 
>   * igt@kms_vblank@pipe-d-ts-continuation-idle:
>     - shard-apl:          NOTRUN -> [SKIP][152] ([fdo#109271]) +77 similar issues
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-apl2/igt@kms_vblank@pipe-d-ts-continuation-idle.html
> 
>   * igt@nouveau_crc@pipe-b-ctx-flip-detection:
>     - shard-tglb:         NOTRUN -> [SKIP][153] ([i915#2530]) +1 similar issue
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-tglb7/igt@nouveau_crc@pipe-b-ctx-flip-detection.html
> 
>   * igt@perf@blocking:
>     - shard-skl:          NOTRUN -> [FAIL][154] ([i915#1542])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-skl4/igt@perf@blocking.html
> 
>   * igt@perf@enable-disable:
>     - shard-skl:          [PASS][155] -> [FAIL][156] ([i915#1352])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-skl7/igt@perf@enable-disable.html
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-skl1/igt@perf@enable-disable.html
> 
>   * igt@sysfs_clients@fair-0:
>     - shard-tglb:         NOTRUN -> [SKIP][157] ([i915#2994]) +1 similar issue
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-tglb6/igt@sysfs_clients@fair-0.html
>     - shard-apl:          NOTRUN -> [SKIP][158] ([fdo#109271] / [i915#2994]) +2 similar issues
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-apl2/igt@sysfs_clients@fair-0.html
> 
>   * igt@sysfs_clients@fair-1:
>     - shard-skl:          NOTRUN -> [SKIP][159] ([fdo#109271] / [i915#2994])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-skl4/igt@sysfs_clients@fair-1.html
> 
>   * igt@sysfs_clients@fair-7:
>     - shard-iclb:         NOTRUN -> [SKIP][160] ([i915#2994])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-iclb5/igt@sysfs_clients@fair-7.html
> 
>   * igt@sysfs_clients@sema-50:
>     - shard-kbl:          NOTRUN -> [SKIP][161] ([fdo#109271] / [i915#2994])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-kbl2/igt@sysfs_clients@sema-50.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_eio@unwedge-stress:
>     - {shard-rkl}:        ([PASS][162], [TIMEOUT][163]) ([i915#3063]) -> [PASS][164] +1 similar issue
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-rkl-1/igt@gem_eio@unwedge-stress.html
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11002/shard-rkl-4/igt@gem_eio@unwedge-stress.html
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/shard-rkl-6/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_ex
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21849/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
