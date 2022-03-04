Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 22BFC4CCCA8
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Mar 2022 05:48:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1494710E44A;
	Fri,  4 Mar 2022 04:48:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E08F910E44A
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Mar 2022 04:48:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646369293; x=1677905293;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=NCUSKhSY/rd7MhF+07hwzkdBoFWTbs87JiVv1qRS6f4=;
 b=nsmWvBeeLbphJ+VDhiVZlAN6IdrzPQ3SNAG7ow/9H+pc7ZyAE7/ITRfa
 m9KJbaMsEQ+iJV5qDpJX2ReWMdF6SPqwP++HYcAjWqlZmns9NcoUU+izL
 vNdTjxx+PWOADG5xcqMFq5x3VMdF1OKgbUtrziuKut/yKYn/jpm3CWFzy
 T/rG0UMobyzbHxtTraOrqvH+P6LVAoXQZ7rnIPaOoWpiwf5hMv09RWoij
 hgV8EX35IyTH/+XhtwGmYqj4trWI1hp2iv/GEJ4MWJtfUcFfkbVmVG/IY
 T5arPMpmtBjpJReQRoZxARMiCM92mrS3bdtNl1UIk1uC9k0TNai1ak1LH g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10275"; a="253624643"
X-IronPort-AV: E=Sophos;i="5.90,154,1643702400"; d="scan'208";a="253624643"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 20:48:13 -0800
X-IronPort-AV: E=Sophos;i="5.90,154,1643702400"; d="scan'208";a="631052197"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 20:48:13 -0800
Date: Thu, 3 Mar 2022 20:48:11 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YiGaC3sXks0w4/WQ@mdroper-desk1.amr.corp.intel.com>
References: <20220303113252.212873-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <164634042897.19817.3007209316854962277@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <164634042897.19817.3007209316854962277@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogIHN1Y2Nlc3MgZm9yIGRy?=
 =?utf-8?q?m/i915/adl-n=3A_Add_stepping_info?=
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
Cc: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 03, 2022 at 08:47:08PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/adl-n: Add stepping info
> URL   : https://patchwork.freedesktop.org/series/100995/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11318_full -> Patchwork_22472_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.
> 

Pushed to drm-intel-next.  Thanks for the patch.


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
>   Here are the unknown changes that may have been introduced in Patchwork_22472_full:
> 
> ### IGT changes ###
> 
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@gem_exec_balancer@full-pulse:
>     - {shard-dg1}:        [SKIP][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-dg1-15/igt@gem_exec_balancer@full-pulse.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-dg1-12/igt@gem_exec_balancer@full-pulse.html
> 
>   * {igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale}:
>     - {shard-rkl}:        NOTRUN -> [SKIP][3] +1 similar issue
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html
> 
>   * igt@prime_mmap_coherency@ioctl-errors:
>     - {shard-dg1}:        NOTRUN -> [SKIP][4] +2 similar issues
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-dg1-16/igt@prime_mmap_coherency@ioctl-errors.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_22472_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Possible fixes ####
> 
>   * boot:
>     - shard-glk:          ([PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [FAIL][29]) ([i915#4392]) -> ([PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk4/boot.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk9/boot.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk9/boot.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk9/boot.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk8/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk1/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk1/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk2/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk2/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk2/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk3/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk3/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk8/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk8/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk3/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk7/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk7/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk7/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk6/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk6/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk6/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk5/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk5/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk4/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk4/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk1/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk1/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk1/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk2/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk2/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk2/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk3/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk3/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk3/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk4/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk4/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk4/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk5/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk5/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk6/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk6/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk6/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk7/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk7/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk7/boot.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk8/boot.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk8/boot.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk8/boot.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk9/boot.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk9/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_balancer@parallel:
>     - shard-tglb:         NOTRUN -> [DMESG-WARN][55] ([i915#5076])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-tglb7/igt@gem_exec_balancer@parallel.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-iclb:         [PASS][56] -> [SKIP][57] ([i915#4525])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-iclb4/igt@gem_exec_balancer@parallel-balancer.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-iclb7/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-kbl:          [PASS][58] -> [FAIL][59] ([i915#2842]) +2 similar issues
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [PASS][60] -> [SKIP][61] ([i915#2190])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-tglb1/igt@gem_huc_copy@huc-copy.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-tglb6/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@heavy-random:
>     - shard-iclb:         NOTRUN -> [SKIP][62] ([i915#4613])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@gem_lmem_swapping@heavy-random.html
> 
>   * igt@gem_lmem_swapping@random:
>     - shard-glk:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#4613])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk8/igt@gem_lmem_swapping@random.html
> 
>   * igt@gem_ppgtt@flink-and-close-vma-leak:
>     - shard-glk:          [PASS][64] -> [FAIL][65] ([i915#644])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-glk:          NOTRUN -> [WARN][66] ([i915#2658])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk8/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_render_copy@y-tiled-to-vebox-linear:
>     - shard-iclb:         NOTRUN -> [SKIP][67] ([i915#768]) +1 similar issue
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@gem_render_copy@y-tiled-to-vebox-linear.html
> 
>   * igt@gem_softpin@allocator-evict-all-engines:
>     - shard-glk:          [PASS][68] -> [FAIL][69] ([i915#4171])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk1/igt@gem_softpin@allocator-evict-all-engines.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk5/igt@gem_softpin@allocator-evict-all-engines.html
> 
>   * igt@gem_softpin@evict-snoop:
>     - shard-iclb:         NOTRUN -> [SKIP][70] ([fdo#109312])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@gem_softpin@evict-snoop.html
> 
>   * igt@gem_userptr_blits@huge-split:
>     - shard-glk:          NOTRUN -> [FAIL][71] ([i915#3376])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk8/igt@gem_userptr_blits@huge-split.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-glk:          NOTRUN -> [DMESG-WARN][72] ([i915#4991])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk8/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@gen7_exec_parse@basic-allowed:
>     - shard-iclb:         NOTRUN -> [SKIP][73] ([fdo#109289]) +1 similar issue
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@gen7_exec_parse@basic-allowed.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-apl:          [PASS][74] -> [DMESG-WARN][75] ([i915#1436] / [i915#716])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-apl7/igt@gen9_exec_parse@allowed-all.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-apl3/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@gen9_exec_parse@bb-large:
>     - shard-iclb:         NOTRUN -> [SKIP][76] ([i915#2856])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@gen9_exec_parse@bb-large.html
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - shard-iclb:         NOTRUN -> [SKIP][77] ([i915#4281])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@i915_pm_rpm@modeset-non-lpsp:
>     - shard-iclb:         NOTRUN -> [SKIP][78] ([fdo#110892])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@i915_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-skl:          [PASS][79] -> [FAIL][80] ([i915#3048])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-skl1/igt@i915_pm_sseu@full-enable.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-skl1/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-270:
>     - shard-tglb:         NOTRUN -> [SKIP][81] ([fdo#111614])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-tglb7/igt@kms_big_fb@linear-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
>     - shard-iclb:         NOTRUN -> [SKIP][82] ([fdo#110725] / [fdo#111614])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
>     - shard-glk:          [PASS][83] -> [DMESG-WARN][84] ([i915#118])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk3/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk2/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-glk:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#3777])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk8/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][86] ([i915#3763])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
>     - shard-glk:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#3886])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk8/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][88] ([i915#3689]) +1 similar issue
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-tglb5/igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs.html
> 
>   * igt@kms_chamelium@dp-crc-fast:
>     - shard-tglb:         NOTRUN -> [SKIP][89] ([fdo#109284] / [fdo#111827])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-tglb7/igt@kms_chamelium@dp-crc-fast.html
> 
>   * igt@kms_chamelium@dp-edid-change-during-suspend:
>     - shard-apl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [fdo#111827]) +5 similar issues
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-apl2/igt@kms_chamelium@dp-edid-change-during-suspend.html
> 
>   * igt@kms_chamelium@dp-hpd-storm-disable:
>     - shard-glk:          NOTRUN -> [SKIP][91] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk8/igt@kms_chamelium@dp-hpd-storm-disable.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-red-to-blue:
>     - shard-iclb:         NOTRUN -> [SKIP][92] ([fdo#109284] / [fdo#111827]) +3 similar issues
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@kms_color_chamelium@pipe-a-ctm-red-to-blue.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-limited-range:
>     - shard-iclb:         NOTRUN -> [SKIP][93] ([fdo#109278] / [fdo#109284] / [fdo#111827])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@kms_color_chamelium@pipe-d-ctm-limited-range.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:
>     - shard-skl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [fdo#111827])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-skl8/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html
> 
>   * igt@kms_content_protection@lic:
>     - shard-apl:          NOTRUN -> [TIMEOUT][95] ([i915#1319]) +1 similar issue
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-apl3/igt@kms_content_protection@lic.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-kbl:          [PASS][96] -> [DMESG-WARN][97] ([i915#180]) +6 similar issues
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_cursor_edge_walk@pipe-d-256x256-left-edge:
>     - shard-iclb:         NOTRUN -> [SKIP][98] ([fdo#109278]) +13 similar issues
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@kms_cursor_edge_walk@pipe-d-256x256-left-edge.html
> 
>   * igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:
>     - shard-iclb:         NOTRUN -> [SKIP][99] ([fdo#109274] / [fdo#109278])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@pipe-d-single-bo:
>     - shard-apl:          NOTRUN -> [SKIP][100] ([fdo#109271] / [i915#533])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-apl2/igt@kms_cursor_legacy@pipe-d-single-bo.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-kbl:          [PASS][101] -> [INCOMPLETE][102] ([i915#180] / [i915#636])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@2x-busy-flip:
>     - shard-iclb:         NOTRUN -> [SKIP][103] ([fdo#109274])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@kms_flip@2x-busy-flip.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
>     - shard-skl:          [PASS][104] -> [FAIL][105] ([i915#79])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
>     - shard-glk:          [PASS][106] -> [FAIL][107] ([i915#4911])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt:
>     - shard-apl:          NOTRUN -> [SKIP][108] ([fdo#109271]) +66 similar issues
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-apl3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-pgflip-blt:
>     - shard-iclb:         NOTRUN -> [SKIP][109] ([fdo#109280]) +9 similar issues
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move:
>     - shard-skl:          NOTRUN -> [SKIP][110] ([fdo#109271]) +22 similar issues
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-skl8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-move:
>     - shard-tglb:         NOTRUN -> [SKIP][111] ([fdo#109280] / [fdo#111825]) +1 similar issue
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-tglb5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-move.html
> 
>   * igt@kms_getfb@getfb2-accept-ccs:
>     - shard-skl:          [PASS][112] -> [DMESG-WARN][113] ([i915#1982])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-skl9/igt@kms_getfb@getfb2-accept-ccs.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-skl8/igt@kms_getfb@getfb2-accept-ccs.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-skl:          [PASS][114] -> [FAIL][115] ([i915#1188])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
>     - shard-tglb:         NOTRUN -> [SKIP][116] ([fdo#109289])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-tglb8/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
>     - shard-skl:          [PASS][117] -> [INCOMPLETE][118] ([i915#5128])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-skl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-skl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
>     - shard-apl:          [PASS][119] -> [DMESG-WARN][120] ([i915#180]) +5 similar issues
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
> 
>   * igt@kms_plane_lowres@pipe-a-tiling-x:
>     - shard-iclb:         NOTRUN -> [SKIP][121] ([i915#3536])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@kms_plane_lowres@pipe-a-tiling-x.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-glk:          NOTRUN -> [SKIP][122] ([fdo#109271] / [i915#658])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk8/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_cpu:
>     - shard-iclb:         NOTRUN -> [SKIP][123] ([fdo#109441]) +1 similar issue
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@kms_psr@psr2_cursor_mmap_cpu.html
> 
>   * igt@kms_psr@psr2_primary_page_flip:
>     - shard-iclb:         [PASS][124] -> [SKIP][125] ([fdo#109441]) +1 similar issue
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@kms_psr@psr2_primary_page_flip.html
> 
>   * igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-c:
>     - shard-iclb:         NOTRUN -> [SKIP][126] ([i915#5030]) +2 similar issues
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-c.html
> 
>   * igt@kms_vrr@flipline:
>     - shard-glk:          NOTRUN -> [SKIP][127] ([fdo#109271]) +27 similar issues
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk8/igt@kms_vrr@flipline.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-skl:          NOTRUN -> [SKIP][128] ([fdo#109271] / [i915#2437])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-skl8/igt@kms_writeback@writeback-invalid-parameters.html
>     - shard-apl:          NOTRUN -> [SKIP][129] ([fdo#109271] / [i915#2437])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-apl3/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@nouveau_crc@pipe-a-source-outp-inactive:
>     - shard-iclb:         NOTRUN -> [SKIP][130] ([i915#2530])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@nouveau_crc@pipe-a-source-outp-inactive.html
> 
>   * igt@nouveau_crc@pipe-c-source-outp-complete:
>     - shard-tglb:         NOTRUN -> [SKIP][131] ([i915#2530])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-tglb8/igt@nouveau_crc@pipe-c-source-outp-complete.html
> 
>   * igt@nouveau_crc@pipe-d-ctx-flip-detection:
>     - shard-iclb:         NOTRUN -> [SKIP][132] ([fdo#109278] / [i915#2530])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@nouveau_crc@pipe-d-ctx-flip-detection.html
> 
>   * igt@prime_nv_pcopy@test3_2:
>     - shard-iclb:         NOTRUN -> [SKIP][133] ([fdo#109291])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-iclb3/igt@prime_nv_pcopy@test3_2.html
> 
>   * igt@syncobj_timeline@transfer-timeline-point:
>     - shard-apl:          NOTRUN -> [DMESG-FAIL][134] ([i915#5098])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-apl2/igt@syncobj_timeline@transfer-timeline-point.html
> 
>   * igt@sysfs_clients@sema-25:
>     - shard-apl:          NOTRUN -> [SKIP][135] ([fdo#109271] / [i915#2994])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-apl7/igt@sysfs_clients@sema-25.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@drm_read@short-buffer-block:
>     - {shard-rkl}:        [SKIP][136] ([i915#4098]) -> [PASS][137]
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-rkl-5/igt@drm_read@short-buffer-block.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-rkl-6/igt@drm_read@short-buffer-block.html
> 
>   * igt@gem_eio@in-flight-contexts-10ms:
>     - {shard-tglu}:       [TIMEOUT][138] ([i915#3063]) -> [PASS][139]
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-tglu-3/igt@gem_eio@in-flight-contexts-10ms.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-tglu-5/igt@gem_eio@in-flight-contexts-10ms.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-glk:          [FAIL][140] ([i915#2842]) -> [PASS][141]
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk1/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk5/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglb:         [FAIL][142] ([i915#2842]) -> [PASS][143]
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-kbl:          [FAIL][144] ([i915#2842]) -> [PASS][145] +1 similar issue
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [FAIL][146] ([i915#2849]) -> [PASS][147]
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_whisper@basic-contexts-priority:
>     - shard-glk:          [DMESG-WARN][148] ([i915#118]) -> [PASS][149]
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-glk2/igt@gem_exec_whisper@basic-contexts-priority.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-glk1/igt@gem_exec_whisper@basic-contexts-priority.html
> 
>   * igt@i915_pm_backlight@fade_with_dpms:
>     - {shard-rkl}:        [SKIP][150] ([i915#3012]) -> [PASS][151]
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-rkl-5/igt@i915_pm_backlight@fade_with_dpms.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-rkl-6/igt@i915_pm_backlight@fade_with_dpms.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [FAIL][152] ([i915#454]) -> [PASS][153]
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-iclb1/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@kms_3d:
>     - {shard-dg1}:        [SKIP][154] -> [PASS][155] +25 similar issues
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-dg1-15/igt@kms_3d.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-dg1-12/igt@kms_3d.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0:
>     - {shard-dg1}:        [FAIL][156] -> [PASS][157] +2 similar issues
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-dg1-15/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-dg1-12/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0.html
> 
>   * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
>     - {shard-rkl}:        [SKIP][158] ([i915#1845] / [i915#4098]) -> [PASS][159] +2 similar issues
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-rkl-5/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-rkl-6/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_color@pipe-a-degamma:
>     - {shard-rkl}:        [SKIP][160] ([i915#1149] / [i915#1849]) -> [PASS][161]
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-rkl-5/igt@kms_color@pipe-a-degamma.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-rkl-6/igt@kms_color@pipe-a-degamma.html
> 
>   * igt@kms_concurrent@pipe-a:
>     - {shard-rkl}:        [SKIP][162] ([i915#1845]) -> [PASS][163] +18 similar issues
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-rkl-5/igt@kms_concurrent@pipe-a.html
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-rkl-6/igt@kms_concurrent@pipe-a.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-256x256-rapid-movement:
>     - {shard-rkl}:        [SKIP][164] ([fdo#112022]) -> [PASS][165] +6 similar issues
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-rkl-5/igt@kms_cursor_crc@pipe-a-cursor-256x256-rapid-movement.html
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-256x256-rapid-movement.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-suspend:
>     - shard-apl:          [DMESG-WARN][166] ([i915#180]) -> [PASS][167] +1 similar issue
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11318/shard-apl8/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
>    [167]: https://intel-gfx-ci.01.org/tree/drm-
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22472/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
