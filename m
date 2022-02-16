Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D894B92A7
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 21:56:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 122B610E524;
	Wed, 16 Feb 2022 20:56:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 271EE10E524
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Feb 2022 20:56:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645044981; x=1676580981;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=5uVkB0P/PYVHGcS01vTpBDVOwTGdHZZz5+xKNctLHDY=;
 b=Fp49plWyPBHXBMRIEh2sPL2Q6UrIUelNoBLDSkjOp+3sM1jnEYp7cysH
 +58fEIEG3NXGCVt58WD67S/1Ao2m34g/mLJqrIytj5SOI4mA8TYK0B3Gf
 VNXBeKn0iB4Wh5Cy8WlBXvIbnZHTSZf01ECY/j28WgBX7XuD1DeD37Pzs
 suT/sBGIojJZbiIgrfbDP3tYs8uAMKTCFWKpHezcjwcJSQip8adalRooB
 JSSH0a1DYdeZC64AyillFIfa+EkC5+SVhunpRzmhcqQwxQqez7ub1bPOr
 VKktEIVS+8UtySiSoKQMIIEHOODO3pHLl8uOa4A1lvbQsolg8EOTkyy9e Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="250920678"
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="250920678"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 12:56:14 -0800
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="636703500"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 12:56:14 -0800
Date: Wed, 16 Feb 2022 12:56:12 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <Yg1k7DyLvCreq/02@mdroper-desk1.amr.corp.intel.com>
References: <20220215061342.2055952-1-matthew.d.roper@intel.com>
 <164501056507.16091.16258972176508611692@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <164501056507.16091.16258972176508611692@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/2=5D_drm/i915=3A_Define_MCH_registe?=
 =?utf-8?q?rs_relative_to_MCHBAR=5FMIRROR=5FBASE?=
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

On Wed, Feb 16, 2022 at 11:22:45AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [v2,1/2] drm/i915: Define MCH registers relative to MCHBAR_MIRROR_BASE
> URL   : https://patchwork.freedesktop.org/series/100153/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11230_full -> Patchwork_22278_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_22278_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_22278_full, please notify your bug team to allow them
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
>   Here are the unknown changes that may have been introduced in Patchwork_22278_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled:
>     - shard-glk:          [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-glk3/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-glk6/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html

Seems to be https://gitlab.freedesktop.org/drm/intel/-/issues/3451 still
happening; not caused by the register definitions in this series.

Patches applied to drm-intel-next.  Thanks Ville for the review.


Matt

> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@drm_import_export@import-close-race-prime:
>     - {shard-rkl}:        [PASS][3] -> [INCOMPLETE][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-2/igt@drm_import_export@import-close-race-prime.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-rkl-5/igt@drm_import_export@import-close-race-prime.html
> 
>   * igt@gem_caching@read-writes:
>     - {shard-rkl}:        NOTRUN -> [FAIL][5]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-rkl-5/igt@gem_caching@read-writes.html
> 
>   * igt@gem_mmap_offset@open-flood:
>     - {shard-rkl}:        NOTRUN -> [INCOMPLETE][6] +2 similar issues
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-rkl-5/igt@gem_mmap_offset@open-flood.html
> 
>   * igt@i915_selftest@live@gt_timelines:
>     - {shard-rkl}:        [PASS][7] -> ([PASS][8], [INCOMPLETE][9])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-1/igt@i915_selftest@live@gt_timelines.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-rkl-4/igt@i915_selftest@live@gt_timelines.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-rkl-5/igt@i915_selftest@live@gt_timelines.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_22278_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Possible fixes ####
> 
>   * boot:
>     - {shard-rkl}:        ([PASS][10], [PASS][11], [PASS][12], [FAIL][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) -> ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-6/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-6/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-6/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-5/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-5/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-5/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-5/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-5/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-4/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-4/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-2/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-2/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-1/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-1/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-1/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-1/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-rkl-1/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-rkl-6/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-rkl-6/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-rkl-5/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-rkl-5/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-rkl-5/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-rkl-5/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-rkl-5/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-rkl-5/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-rkl-5/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-rkl-4/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-rkl-4/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-rkl-2/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-rkl-2/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-rkl-2/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-rkl-1/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-rkl-1/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-rkl-1/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-rkl-1/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-rkl-1/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_persistence@legacy-engines-hostile@vebox:
>     - shard-kbl:          [PASS][46] -> [FAIL][47] ([i915#2410])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-kbl4/igt@gem_ctx_persistence@legacy-engines-hostile@vebox.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-kbl1/igt@gem_ctx_persistence@legacy-engines-hostile@vebox.html
> 
>   * igt@gem_eio@kms:
>     - shard-tglb:         [PASS][48] -> [FAIL][49] ([i915#232])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-tglb6/igt@gem_eio@kms.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-tglb1/igt@gem_eio@kms.html
> 
>   * igt@gem_exec_capture@pi@rcs0:
>     - shard-skl:          [PASS][50] -> [INCOMPLETE][51] ([i915#4547])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-skl1/igt@gem_exec_capture@pi@rcs0.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-skl8/igt@gem_exec_capture@pi@rcs0.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglb:         [PASS][52] -> [FAIL][53] ([i915#2842]) +1 similar issue
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-glk:          [PASS][54] -> [FAIL][55] ([i915#2842])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-glk7/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-glk9/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-tglb:         NOTRUN -> [FAIL][56] ([i915#2842])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-tglb1/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-kbl:          [PASS][57] -> [FAIL][58] ([i915#2842]) +1 similar issue
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-kbl3/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [PASS][59] -> [FAIL][60] ([i915#2849])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_schedule@u-submit-golden-slice@vcs0:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][61] ([i915#3797])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-skl2/igt@gem_exec_schedule@u-submit-golden-slice@vcs0.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-skl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#2190])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-skl6/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@heavy-random:
>     - shard-kbl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#4613])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-kbl4/igt@gem_lmem_swapping@heavy-random.html
> 
>   * igt@gem_softpin@allocator-evict-all-engines:
>     - shard-glk:          [PASS][64] -> [FAIL][65] ([i915#4171])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-glk1/igt@gem_softpin@allocator-evict-all-engines.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-glk3/igt@gem_softpin@allocator-evict-all-engines.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-cycles:
>     - shard-iclb:         NOTRUN -> [SKIP][66] ([i915#3297])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-iclb3/igt@gem_userptr_blits@unsync-unmap-cycles.html
> 
>   * igt@gen3_mixed_blits:
>     - shard-tglb:         NOTRUN -> [SKIP][67] ([fdo#109289])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-tglb1/igt@gen3_mixed_blits.html
> 
>   * igt@gen7_exec_parse@oacontrol-tracking:
>     - shard-iclb:         NOTRUN -> [SKIP][68] ([fdo#109289]) +2 similar issues
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-iclb3/igt@gen7_exec_parse@oacontrol-tracking.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-kbl:          NOTRUN -> [FAIL][69] ([i915#454])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-kbl4/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - shard-iclb:         NOTRUN -> [SKIP][70] ([i915#4281])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-snb:          [PASS][71] -> [INCOMPLETE][72] ([i915#3921])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-snb4/igt@i915_selftest@live@hangcheck.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-snb5/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-apl:          [PASS][73] -> [DMESG-WARN][74] ([i915#180]) +5 similar issues
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-apl8/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
>     - shard-apl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#3777]) +3 similar issues
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-apl7/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][76] ([i915#3763])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-skl10/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-skl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#3777]) +4 similar issues
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-skl10/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
>     - shard-kbl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#3886]) +4 similar issues
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-kbl4/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
>     - shard-iclb:         NOTRUN -> [SKIP][79] ([fdo#109278] / [i915#3886]) +2 similar issues
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-iclb3/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
>     - shard-skl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#3886]) +3 similar issues
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-skl2/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#3886]) +2 similar issues
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-apl1/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-d-ccs-on-another-bo-yf_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][82] ([fdo#111615] / [i915#3689])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-tglb1/igt@kms_ccs@pipe-d-ccs-on-another-bo-yf_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][83] ([fdo#109278]) +4 similar issues
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-iclb3/igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_ccs.html
> 
>   * igt@kms_chamelium@dp-hpd-for-each-pipe:
>     - shard-kbl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [fdo#111827]) +11 similar issues
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-kbl3/igt@kms_chamelium@dp-hpd-for-each-pipe.html
> 
>   * igt@kms_chamelium@hdmi-cmp-planar-formats:
>     - shard-iclb:         NOTRUN -> [SKIP][85] ([fdo#109284] / [fdo#111827]) +1 similar issue
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-iclb3/igt@kms_chamelium@hdmi-cmp-planar-formats.html
> 
>   * igt@kms_chamelium@vga-hpd:
>     - shard-apl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-apl7/igt@kms_chamelium@vga-hpd.html
> 
>   * igt@kms_color@pipe-b-ctm-negative:
>     - shard-skl:          [PASS][87] -> [DMESG-WARN][88] ([i915#1982]) +1 similar issue
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-skl4/igt@kms_color@pipe-b-ctm-negative.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-skl10/igt@kms_color@pipe-b-ctm-negative.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:
>     - shard-skl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [fdo#111827]) +8 similar issues
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-skl6/igt@kms_color_chamelium@pipe-d-ctm-blue-to-red.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-kbl:          NOTRUN -> [TIMEOUT][90] ([i915#1319])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-kbl4/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@lic:
>     - shard-apl:          NOTRUN -> [TIMEOUT][91] ([i915#1319])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-apl1/igt@kms_content_protection@lic.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
>     - shard-glk:          [PASS][92] -> [FAIL][93] ([i915#3444])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-glk3/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-glk6/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
> 
>   * igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:
>     - shard-iclb:         NOTRUN -> [SKIP][94] ([fdo#109274] / [fdo#109278])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-iclb3/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-skl:          [PASS][95] -> [FAIL][96] ([i915#2346] / [i915#533])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@pipe-d-torture-bo:
>     - shard-apl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#533])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-apl7/igt@kms_cursor_legacy@pipe-d-torture-bo.html
> 
>   * igt@kms_flip@2x-dpms-vs-vblank-race-interruptible:
>     - shard-tglb:         NOTRUN -> [SKIP][98] ([fdo#109274] / [fdo#111825]) +1 similar issue
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-tglb1/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1:
>     - shard-glk:          [PASS][99] -> [FAIL][100] ([i915#79])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
>     - shard-skl:          [PASS][101] -> [FAIL][102] ([i915#79])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>     - shard-kbl:          [PASS][103] -> [DMESG-WARN][104] ([i915#180]) +4 similar issues
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@b-edp1:
>     - shard-skl:          [PASS][105] -> [INCOMPLETE][106] ([i915#4839])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-skl8/igt@kms_flip@flip-vs-suspend@b-edp1.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-skl7/igt@kms_flip@flip-vs-suspend@b-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@c-edp1:
>     - shard-tglb:         [PASS][107] -> [DMESG-WARN][108] ([i915#2411] / [i915#2867])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-tglb2/igt@kms_flip@flip-vs-suspend@c-edp1.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-tglb8/igt@kms_flip@flip-vs-suspend@c-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
>     - shard-glk:          [PASS][109] -> [FAIL][110] ([i915#4911])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-glk9/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render:
>     - shard-skl:          NOTRUN -> [SKIP][111] ([fdo#109271] / [i915#1888])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-skl6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-cpu:
>     - shard-glk:          [PASS][112] -> [FAIL][113] ([i915#2546]) +1 similar issue
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-glk3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-cpu.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-glk6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:
>     - shard-kbl:          NOTRUN -> [SKIP][114] ([fdo#109271]) +111 similar issues
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:
>     - shard-skl:          NOTRUN -> [SKIP][115] ([fdo#109271]) +77 similar issues
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-skl6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc:
>     - shard-iclb:         NOTRUN -> [SKIP][116] ([fdo#109280]) +2 similar issues
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-iclb3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt:
>     - shard-tglb:         NOTRUN -> [SKIP][117] ([fdo#109280] / [fdo#111825]) +1 similar issue
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-tglb1/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt.html
> 
>   * igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c:
>     - shard-apl:          NOTRUN -> [SKIP][118] ([fdo#109271]) +52 similar issues
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-apl7/igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
>     - shard-kbl:          NOTRUN -> [SKIP][119] ([fdo#109271] / [i915#533])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-kbl3/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
>     - shard-skl:          NOTRUN -> [SKIP][120] ([fdo#109271] / [i915#533]) +1 similar issue
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-skl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
>     - shard-apl:          NOTRUN -> [FAIL][121] ([fdo#108145] / [i915#265])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
>     - shard-skl:          NOTRUN -> [FAIL][122] ([fdo#108145] / [i915#265])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
>     - shard-apl:          NOTRUN -> [FAIL][123] ([i915#265])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-apl1/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
>     - shard-kbl:          NOTRUN -> [FAIL][124] ([fdo#108145] / [i915#265]) +1 similar issue
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-kbl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
>     - shard-kbl:          NOTRUN -> [FAIL][125] ([i915#265])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-kbl4/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [PASS][126] -> [FAIL][127] ([fdo#108145] / [i915#265]) +1 similar issue
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_plane_lowres@pipe-b-tiling-y:
>     - shard-tglb:         NOTRUN -> [SKIP][128] ([i915#3536])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-tglb1/igt@kms_plane_lowres@pipe-b-tiling-y.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
>     - shard-kbl:          NOTRUN -> [SKIP][129] ([fdo#109271] / [i915#658])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-kbl3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
>     - shard-skl:          NOTRUN -> [SKIP][130] ([fdo#109271] / [i915#658]) +1 similar issue
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-skl2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr@psr2_no_drrs:
>     - shard-tglb:         NOTRUN -> [FAIL][131] ([i915#132] / [i915#3467])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-tglb1/igt@kms_psr@psr2_no_drrs.html
> 
>   * igt@kms_psr@psr2_sprite_mmap_cpu:
>     - shard-iclb:         [PASS][132] -> [SKIP][133] ([fdo#109441])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-iclb3/igt@kms_psr@psr2_sprite_mmap_cpu.html
> 
>   * igt@kms_setmode@basic:
>     - shard-glk:          [PASS][134] -> [FAIL][135] ([i915#31])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-glk7/igt@kms_setmode@basic.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-glk9/igt@kms_setmode@basic.html
> 
>   * igt@nouveau_crc@pipe-a-source-outp-inactive:
>     - shard-iclb:         NOTRUN -> [SKIP][136] ([i915#2530])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-iclb3/igt@nouveau_crc@pipe-a-source-outp-inactive.html
> 
>   * igt@nouveau_crc@pipe-c-source-outp-inactive:
>     - shard-tglb:         NOTRUN -> [SKIP][137] ([i915#2530])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-tglb1/igt@nouveau_crc@pipe-c-source-outp-inactive.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-glk:          [PASS][138] -> [FAIL][139] ([i915#1542])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-glk5/igt@perf@polling-parameterized.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-glk6/igt@perf@polling-parameterized.html
>     - shard-skl:          [PASS][140] -> [FAIL][141] ([i915#1542])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-skl9/igt@perf@polling-parameterized.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-skl2/igt@perf@polling-parameterized.html
> 
>   * igt@sysfs_clients@split-10:
>     - shard-apl:          NOTRUN -> [SKIP][142] ([fdo#109271] / [i915#2994])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-apl1/igt@sysfs_clients@split-10.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@api_intel_allocator@two-level-inception-interruptible:
>     - {shard-rkl}:        [INCOMPLETE][143] -> ([PASS][144], [PASS][145])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-5/igt@api_intel_allocator@two-level-inception-interruptible.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-rkl-4/igt@api_intel_allocator@two-level-inception-interruptible.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-rkl-1/igt@api_intel_allocator@two-level-inception-interruptible.html
> 
>   * igt@feature_discovery@psr1:
>     - {shard-rkl}:        [SKIP][146] ([i915#658]) -> [PASS][147]
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-5/igt@feature_discovery@psr1.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-rkl-6/igt@feature_discovery@psr1.html
> 
>   * igt@gem_ctx_isolation@dirty-switch@vecs0:
>     - {shard-rkl}:        [DMESG-WARN][148] -> [PASS][149] +1 similar issue
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-5/igt@gem_ctx_isolation@dirty-switch@vecs0.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-rkl-5/igt@gem_ctx_isolation@dirty-switch@vecs0.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-iclb:         [SKIP][150] ([i915#4525]) -> [PASS][151]
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-iclb7/igt@gem_exec_balancer@parallel-balancer.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-iclb1/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_capture@pi@rcs0:
>     - {shard-rkl}:        [INCOMPLETE][152] ([i915#3371]) -> [PASS][153]
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-4/igt@gem_exec_capture@pi@rcs0.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/shard-rkl-4/igt@gem_exec_capture@pi@rcs0.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-glk:          [FAIL][154] ([i915#2846]) -> [PASS][155]
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-glk6/igt@gem_exec_fair@basic-deadline.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22278/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
