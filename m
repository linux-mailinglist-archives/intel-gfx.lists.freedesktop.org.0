Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B7A550DF95
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Apr 2022 13:59:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC44310E16B;
	Mon, 25 Apr 2022 11:59:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D978910E182
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Apr 2022 11:59:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650887957; x=1682423957;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=BAFsCieWtXL6yqr4+WWwBOB8nC4WMCfWRteWukYc4aM=;
 b=oDnYidFWDAo4Ixit4zcrNwXk9xmusH4BGvPJHTzNPTaSXDqmfFlrAiqP
 Xqw3C2Rc3Vn3Z3aZRaSIpirFH5v75rPEhQ4xsYLUmONjsQraU1tqakLnx
 x6qaQsMEtPhvnv3oUA9TCnbdlL209xtjDxyoYiMkGb43RME5KgmXE0EKp
 nU8QvKt6yrC5l/9gSgSLvf7FxM5ZYIaMPYBwje1+bBDuteOZjNpdaawjk
 dp+nc0Z1fnv8hESs8DSfDwW/hmmRf4mWHkjq9br53eQKTowTE7pmJU1Hy
 VYv4JQ6ASpQ7tXL/0IieZn0SYp5Z5cW6A8obflcm5DWiUynkIS2smwVdf Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10327"; a="264077437"
X-IronPort-AV: E=Sophos;i="5.90,288,1643702400"; d="scan'208";a="264077437"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2022 04:59:17 -0700
X-IronPort-AV: E=Sophos;i="5.90,288,1643702400"; d="scan'208";a="512608682"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2022 04:59:14 -0700
Date: Mon, 25 Apr 2022 14:59:11 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org, Jose Souza <jose.souza@intel.com>,
 Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>,
 Tejasree Illipilli <tejasreex.illipilli@intel.com>
Message-ID: <YmaNDweqAFwmlXmU@ideak-desk.fi.intel.com>
References: <20220421162221.2261895-1-imre.deak@intel.com>
 <165065333039.14006.15040033334188005783@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <165065333039.14006.15040033334188005783@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_SEL=5FFETCH=5FPLANE=5F*=28PIPE=5FB+=29_register_ad?=
 =?utf-8?q?dresses?=
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
Reply-To: imre.deak@intel.com
Cc: Tomi P Sarvela <tomi.p.sarvela@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 22, 2022 at 06:48:50PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Fix SEL_FETCH_PLANE_*(PIPE_B+) register addresses
> URL   : https://patchwork.freedesktop.org/series/102941/
> State : failure

Patch is pushed, thanks for the review. The failures are unrelated, see
below.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11537_full -> Patchwork_102941v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_102941v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_102941v1_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
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
>   Here are the unknown changes that may have been introduced in Patchwork_102941v1_full:
> 
> ### CI changes ###
> 
> #### Possible regressions ####
> 
>   * boot:
>     - shard-iclb:         ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) -> ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [FAIL][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-iclb8/boot.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-iclb8/boot.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-iclb7/boot.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-iclb7/boot.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-iclb7/boot.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-iclb6/boot.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-iclb6/boot.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-iclb6/boot.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-iclb5/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-iclb5/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-iclb5/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-iclb4/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-iclb4/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-iclb4/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-iclb3/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-iclb3/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-iclb3/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-iclb3/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-iclb2/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-iclb2/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-iclb2/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-iclb2/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-iclb1/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-iclb1/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-iclb1/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb6/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb6/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb5/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb5/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb5/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb4/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb4/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb4/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb4/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb3/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb3/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb3/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb3/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb2/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb2/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb2/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb2/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb1/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb1/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb8/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb8/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb7/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb7/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb7/boot.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb6/boot.html

Only iclb1 [43] is shown above having some boot-up problem, but I
couldn't see anything in the logs for it.

ICL is unrelated to the change (both for all the above issues and the
two others below), since it doesn't support PSR2 SEL_FETCH.

> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_pm_rpm@sysfs-read:
>     - shard-iclb:         [PASS][51] -> [INCOMPLETE][52]
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-iclb4/igt@i915_pm_rpm@sysfs-read.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb4/igt@i915_pm_rpm@sysfs-read.html

This is
<6>[  217.580420] ata3: hard resetting link
<6>[  217.892733] ata3: SATA link down (SStatus 0 SControl 300)
<6>[  223.212435] ata3: hard resetting link
<6>[  223.525460] ata3: SATA link down (SStatus 0 SControl 300)
<4>[  223.525520] ata3.00: disable device
<3>[  223.529455] sd 2:0:0:0: rejecting I/O to offline device
<3>[  223.530438] I/O error, dev sda, sector 232253024 op 0x1:(WRITE) flags 0x800 phys_seg 6 prio class 0
<3>[  223.530991] I/O error, dev sda, sector 303040520 op 0x1:(WRITE) flags 0x103000 phys_seg 1 prio class 0
<3>[  223.531190] Buffer I/O error on dev sda2, logical block 37748737, lost async page write

with lots of previous cases like the above on the same machine. Based on
the available logs shard-iclb4 and shard-iclb7 have the same issue,
while I can't see it happening on the other 7 shard-iclb machines. So
maybe something with those 2 hosts or the storage devices on them.

>   * igt@perf_pmu@module-unload:
>     - shard-iclb:         NOTRUN -> [DMESG-WARN][53]
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb5/igt@perf_pmu@module-unload.html

This is 
https://gitlab.freedesktop.org/drm/intel/-/issues/2867

unrelated to the change, and I'll follow up with a fix for it.

> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@fbdev@nullptr:
>     - {shard-rkl}:        [SKIP][54] ([i915#2582]) -> [INCOMPLETE][55]
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-rkl-4/igt@fbdev@nullptr.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-rkl-5/igt@fbdev@nullptr.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_102941v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [PASS][56] -> [FAIL][57] ([i915#232])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-tglb7/igt@gem_eio@unwedge-stress.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-tglb1/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-kbl:          NOTRUN -> [DMESG-FAIL][58] ([i915#5076] / [i915#5614])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-kbl4/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-iclb:         [PASS][59] -> [FAIL][60] ([i915#2842])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-apl:          [PASS][61] -> [FAIL][62] ([i915#2842])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-apl8/igt@gem_exec_fair@basic-none@vcs0.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-apl8/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][63] ([i915#2842])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb4/igt@gem_exec_fair@basic-none@vcs1.html
> 
>   * igt@gem_exec_fair@basic-none@vecs0:
>     - shard-kbl:          [PASS][64] -> [FAIL][65] ([i915#2842])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-kbl4/igt@gem_exec_fair@basic-none@vecs0.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-kbl4/igt@gem_exec_fair@basic-none@vecs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglb:         [PASS][66] -> [FAIL][67] ([i915#2842]) +1 similar issue
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs0:
>     - shard-kbl:          [PASS][68] -> [SKIP][69] ([fdo#109271])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs0.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs0.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-uc:
>     - shard-snb:          [PASS][70] -> [SKIP][71] ([fdo#109271]) +3 similar issues
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-snb7/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-snb6/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
> 
>   * igt@gem_exec_params@no-vebox:
>     - shard-iclb:         NOTRUN -> [SKIP][72] ([fdo#109283])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb7/igt@gem_exec_params@no-vebox.html
>     - shard-tglb:         NOTRUN -> [SKIP][73] ([fdo#109283] / [i915#4877])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-tglb1/igt@gem_exec_params@no-vebox.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify-ccs:
>     - shard-skl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#4613]) +2 similar issues
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-skl7/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
> 
>   * igt@gem_lmem_swapping@smem-oom:
>     - shard-iclb:         NOTRUN -> [SKIP][75] ([i915#4613])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb7/igt@gem_lmem_swapping@smem-oom.html
> 
>   * igt@gem_lmem_swapping@verify-random-ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#4613])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-kbl4/igt@gem_lmem_swapping@verify-random-ccs.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-skl:          NOTRUN -> [WARN][77] ([i915#2658])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-skl7/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_render_copy@x-tiled-to-vebox-y-tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][78] ([i915#768])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb7/igt@gem_render_copy@x-tiled-to-vebox-y-tiled.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-snb:          NOTRUN -> [FAIL][79] ([i915#2724])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-snb2/igt@gem_userptr_blits@vma-merge.html
>     - shard-apl:          NOTRUN -> [FAIL][80] ([i915#3318])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-apl1/igt@gem_userptr_blits@vma-merge.html
>     - shard-glk:          NOTRUN -> [FAIL][81] ([i915#3318])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-glk2/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-skl:          [PASS][82] -> [DMESG-WARN][83] ([i915#5566] / [i915#716])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-skl7/igt@gen9_exec_parse@allowed-single.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-skl6/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-skl:          NOTRUN -> [FAIL][84] ([i915#454])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-skl6/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-270:
>     - shard-iclb:         NOTRUN -> [SKIP][85] ([i915#5286])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb5/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-270:
>     - shard-iclb:         NOTRUN -> [SKIP][86] ([fdo#110725] / [fdo#111614])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb7/igt@kms_big_fb@linear-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-kbl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#3777])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-kbl4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-skl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#3777]) +3 similar issues
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-skl4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-apl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#3777])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-apl8/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][90] ([i915#3763])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][91] ([i915#3743]) +1 similar issue
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-skl7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
>     - shard-kbl:          NOTRUN -> [SKIP][92] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-kbl4/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
>     - shard-iclb:         NOTRUN -> [SKIP][93] ([fdo#109278] / [i915#3886]) +1 similar issue
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb7/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
>     - shard-glk:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#3886])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-glk4/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][95] ([fdo#109271] / [i915#3886]) +2 similar issues
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-apl8/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-bad-pixel-format-yf_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][96] ([fdo#111615] / [i915#3689])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-tglb1/igt@kms_ccs@pipe-c-bad-pixel-format-yf_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
>     - shard-skl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#3886]) +9 similar issues
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-skl8/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_chamelium@hdmi-audio:
>     - shard-iclb:         NOTRUN -> [SKIP][98] ([fdo#109284] / [fdo#111827]) +1 similar issue
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb5/igt@kms_chamelium@hdmi-audio.html
> 
>   * igt@kms_chamelium@hdmi-edid-change-during-suspend:
>     - shard-apl:          NOTRUN -> [SKIP][99] ([fdo#109271] / [fdo#111827]) +8 similar issues
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-apl2/igt@kms_chamelium@hdmi-edid-change-during-suspend.html
> 
>   * igt@kms_chamelium@hdmi-hpd-for-each-pipe:
>     - shard-glk:          NOTRUN -> [SKIP][100] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-glk2/igt@kms_chamelium@hdmi-hpd-for-each-pipe.html
>     - shard-snb:          NOTRUN -> [SKIP][101] ([fdo#109271] / [fdo#111827])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-snb2/igt@kms_chamelium@hdmi-hpd-for-each-pipe.html
> 
>   * igt@kms_chamelium@hdmi-hpd-storm:
>     - shard-tglb:         NOTRUN -> [SKIP][102] ([fdo#109284] / [fdo#111827])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-tglb1/igt@kms_chamelium@hdmi-hpd-storm.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-max:
>     - shard-skl:          NOTRUN -> [SKIP][103] ([fdo#109271] / [fdo#111827]) +15 similar issues
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-skl7/igt@kms_color_chamelium@pipe-b-ctm-max.html
> 
>   * igt@kms_color_chamelium@pipe-b-gamma:
>     - shard-kbl:          NOTRUN -> [SKIP][104] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-kbl4/igt@kms_color_chamelium@pipe-b-gamma.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-green-to-red:
>     - shard-iclb:         NOTRUN -> [SKIP][105] ([fdo#109278] / [fdo#109284] / [fdo#111827])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb7/igt@kms_color_chamelium@pipe-d-ctm-green-to-red.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-apl:          NOTRUN -> [TIMEOUT][106] ([i915#1319])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-apl2/igt@kms_content_protection@srm.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-kbl:          [PASS][107] -> [DMESG-WARN][108] ([i915#180])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-max-size-random:
>     - shard-iclb:         NOTRUN -> [SKIP][109] ([fdo#109278]) +4 similar issues
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb7/igt@kms_cursor_crc@pipe-c-cursor-max-size-random.html
>     - shard-tglb:         NOTRUN -> [SKIP][110] ([i915#3359])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-tglb1/igt@kms_cursor_crc@pipe-c-cursor-max-size-random.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:
>     - shard-tglb:         NOTRUN -> [SKIP][111] ([fdo#109274] / [fdo#111825])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-tglb1/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html
>     - shard-iclb:         NOTRUN -> [SKIP][112] ([fdo#109274] / [fdo#109278])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb7/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
>     - shard-skl:          [PASS][113] -> [FAIL][114] ([i915#79]) +1 similar issue
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
>     - shard-apl:          [PASS][115] -> [DMESG-WARN][116] ([i915#180]) +1 similar issue
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:
>     - shard-iclb:         [PASS][117] -> [SKIP][118] ([i915#3701])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:
>     - shard-iclb:         NOTRUN -> [SKIP][119] ([fdo#109280]) +2 similar issues
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-onoff:
>     - shard-tglb:         NOTRUN -> [SKIP][120] ([fdo#109280] / [fdo#111825])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-onoff.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc:
>     - shard-kbl:          NOTRUN -> [SKIP][121] ([fdo#109271]) +43 similar issues
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-kbl4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-msflip-blt:
>     - shard-glk:          NOTRUN -> [SKIP][122] ([fdo#109271]) +19 similar issues
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-glk2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-msflip-blt.html
> 
>   * igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a:
>     - shard-skl:          NOTRUN -> [FAIL][123] ([i915#1188])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-skl4/igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
>     - shard-apl:          NOTRUN -> [FAIL][124] ([fdo#108145] / [i915#265])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
>     - shard-skl:          NOTRUN -> [FAIL][125] ([fdo#108145] / [i915#265]) +1 similar issue
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html
> 
>   * igt@kms_plane_scaling@invalid-num-scalers@pipe-a-edp-1-invalid-num-scalers:
>     - shard-skl:          NOTRUN -> [SKIP][126] ([fdo#109271] / [i915#5776]) +2 similar issues
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-skl7/igt@kms_plane_scaling@invalid-num-scalers@pipe-a-edp-1-invalid-num-scalers.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-edp-1-planes-upscale-downscale:
>     - shard-skl:          NOTRUN -> [SKIP][127] ([fdo#109271]) +241 similar issues
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-skl10/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-edp-1-planes-upscale-downscale.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
>     - shard-skl:          NOTRUN -> [SKIP][128] ([fdo#109271] / [i915#658]) +1 similar issue
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-skl7/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
>     - shard-kbl:          NOTRUN -> [SKIP][129] ([fdo#109271] / [i915#658])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-kbl4/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr@psr2_primary_page_flip:
>     - shard-iclb:         [PASS][130] -> [SKIP][131] ([fdo#109441])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb3/igt@kms_psr@psr2_primary_page_flip.html
> 
>   * igt@kms_psr@suspend:
>     - shard-snb:          NOTRUN -> [SKIP][132] ([fdo#109271]) +24 similar issues
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-snb2/igt@kms_psr@suspend.html
> 
>   * igt@kms_vblank@pipe-d-wait-forked-hang:
>     - shard-apl:          NOTRUN -> [SKIP][133] ([fdo#109271]) +98 similar issues
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-apl2/igt@kms_vblank@pipe-d-wait-forked-hang.html
> 
>   * igt@kms_vblank@pipe-d-wait-idle:
>     - shard-skl:          NOTRUN -> [SKIP][134] ([fdo#109271] / [i915#533]) +1 similar issue
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-skl4/igt@kms_vblank@pipe-d-wait-idle.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-apl:          NOTRUN -> [SKIP][135] ([fdo#109271] / [i915#2437])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-apl8/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@nouveau_crc@pipe-d-source-outp-inactive:
>     - shard-tglb:         NOTRUN -> [SKIP][136] ([i915#2530])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-tglb1/igt@nouveau_crc@pipe-d-source-outp-inactive.html
>     - shard-iclb:         NOTRUN -> [SKIP][137] ([fdo#109278] / [i915#2530])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb7/igt@nouveau_crc@pipe-d-source-outp-inactive.html
> 
>   * igt@perf@polling:
>     - shard-skl:          NOTRUN -> [FAIL][138] ([i915#1542])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-skl4/igt@perf@polling.html
> 
>   * igt@perf@polling-small-buf:
>     - shard-skl:          NOTRUN -> [FAIL][139] ([i915#1722])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-skl10/igt@perf@polling-small-buf.html
> 
>   * igt@prime_nv_api@i915_nv_double_import:
>     - shard-tglb:         NOTRUN -> [SKIP][140] ([fdo#109291])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-tglb1/igt@prime_nv_api@i915_nv_double_import.html
>     - shard-iclb:         NOTRUN -> [SKIP][141] ([fdo#109291])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb7/igt@prime_nv_api@i915_nv_double_import.html
> 
>   * igt@syncobj_timeline@invalid-transfer-non-existent-point:
>     - shard-glk:          NOTRUN -> [DMESG-WARN][142] ([i915#5098])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-glk4/igt@syncobj_timeline@invalid-transfer-non-existent-point.html
> 
>   * igt@sysfs_clients@fair-0:
>     - shard-skl:          NOTRUN -> [SKIP][143] ([fdo#109271] / [i915#2994]) +5 similar issues
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-skl8/igt@sysfs_clients@fair-0.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - {shard-tglu}:       [FAIL][144] ([i915#2842]) -> [PASS][145]
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-tglu-2/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-tglu-4/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-glk:          [FAIL][146] ([i915#2842]) -> [PASS][147]
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-glk1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-glk2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>     - shard-kbl:          [FAIL][148] ([i915#2842]) -> [PASS][149] +2 similar issues
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-kbl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-tglb:         [FAIL][150] ([i915#2842]) -> [PASS][151]
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-tglb5/igt@gem_exec_fair@basic-pace@vecs0.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-tglb8/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_flush@basic-uc-rw-default:
>     - shard-snb:          [SKIP][152] ([fdo#109271]) -> [PASS][153] +1 similar issue
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-snb6/igt@gem_exec_flush@basic-uc-rw-default.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-snb7/igt@gem_exec_flush@basic-uc-rw-default.html
> 
>   * igt@gem_exec_whisper@basic-fds-priority:
>     - shard-glk:          [DMESG-WARN][154] ([i915#118]) -> [PASS][155]
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-glk2/igt@gem_exec_whisper@basic-fds-priority.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-glk4/igt@gem_exec_whisper@basic-fds-priority.html
> 
>   * igt@gem_softpin@noreloc-s3:
>     - shard-kbl:          [DMESG-WARN][156] ([i915#180]) -> [PASS][157] +1 similar issue
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-kbl4/igt@gem_softpin@noreloc-s3.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-kbl1/igt@gem_softpin@noreloc-s3.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-apl:          [DMESG-WARN][158] ([i915#5566] / [i915#716]) -> [PASS][159]
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-apl3/igt@gen9_exec_parse@allowed-all.html
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-apl1/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-glk:          [DMESG-WARN][160] ([i915#5566] / [i915#716]) -> [PASS][161] +1 similar issue
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-glk2/igt@gen9_exec_parse@allowed-single.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-glk4/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_rpm@fences:
>     - {shard-rkl}:        [SKIP][162] ([i915#1849]) -> [PASS][163]
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-rkl-1/igt@i915_pm_rpm@fences.html
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-rkl-6/igt@i915_pm_rpm@fences.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-snb:          [INCOMPLETE][164] ([i915#3921]) -> [PASS][165]
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-snb5/igt@i915_selftest@live@hangcheck.html
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-snb2/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
>     - {shard-rkl}:        [SKIP][166] ([i915#1845] / [i915#4098]) -> [PASS][167] +3 similar issues
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-rkl-2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_color@pipe-b-ctm-max:
>     - {shard-rkl}:        ([SKIP][168], [SKIP][169]) ([i915#1149] / [i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][170]
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-rkl-4/igt@kms_color@pipe-b-ctm-max.html
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-rkl-2/igt@kms_color@pipe-b-ctm-max.html
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-rkl-6/igt@kms_color@pipe-b-ctm-max.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen:
>     - {shard-rkl}:        [SKIP][171] ([fdo#112022] / [i915#4070]) -> [PASS][172]
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-rkl-5/igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen.html
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-glk:          [FAIL][173] ([i915#2346] / [i915#533]) -> [PASS][174]
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
>     - shard-iclb:         [FAIL][175] -> [PASS][176]
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb6/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
> 
>   * igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled:
>     - {shard-rkl}:        [SKIP][177] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][178]
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-rkl-2/igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled.html
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-rkl-6/igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-apl:          [INCOMPLETE][179] ([i915#180]) -> [PASS][180]
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-apl2/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
>     - shard-skl:          [FAIL][181] ([i915#79]) -> [PASS][182]
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@a-dp1:
>     - shard-apl:          [DMESG-WARN][183] ([i915#180]) -> [PASS][184]
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-apl6/igt@kms_flip@flip-vs-suspend@a-dp1.html
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-apl8/igt@kms_flip@flip-vs-suspend@a-dp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:
>     - {shard-rkl}:        ([INCOMPLETE][185], [INCOMPLETE][186]) ([i915#3701]) -> [PASS][187]
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-onoff:
>     - {shard-rkl}:        [SKIP][188] ([i915#1849] / [i915#4098]) -> [PASS][189] +2 similar issues
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-onoff.html
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-onoff.html
> 
>   * igt@kms_plane@plane-position-covered@pipe-b-planes:
>     - {shard-rkl}:        [SKIP][190] ([i915#1849] / [i915#3558]) -> [PASS][191] +1 similar issue
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-rkl-5/igt@kms_plane@plane-position-covered@pipe-b-planes.html
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-rkl-6/igt@kms_plane@plane-position-covered@pipe-b-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [FAIL][192] ([fdo#108145] / [i915#265]) -> [PASS][193]
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_cursor_plane_onoff:
>     - shard-iclb:         [SKIP][194] ([fdo#109441]) -> [PASS][195] +1 similar issue
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-iclb3/igt@kms_psr@psr2_cursor_plane_onoff.html
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_balancer@parallel-keep-in-fence:
>     - shard-iclb:         [SKIP][196] ([i915#4525]) -> [DMESG-WARN][197] ([i915#5614])
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-iclb3/igt@gem_exec_balancer@parallel-keep-in-fence.html
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence.html
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-iclb:         [DMESG-FAIL][198] ([i915#5614]) -> [SKIP][199] ([i915#4525])
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb5/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
>     - shard-iclb:         [SKIP][200] ([i915#2920]) -> [SKIP][201] ([i915#658])
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb3/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-iclb:         [SKIP][202] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [FAIL][203] ([i915#4148])
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-iclb7/igt@kms_psr2_su@page_flip-p010.html
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-iclb:         [FAIL][204] ([i915#4148]) -> [SKIP][205] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-iclb2/igt@kms_psr2_su@page_flip-xrgb8888.html
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-iclb3/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][206], [FAIL][207], [FAIL][208], [FAIL][209], [FAIL][210], [FAIL][211], [FAIL][212], [FAIL][213], [FAIL][214], [FAIL][215], [FAIL][216], [FAIL][217]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][218], [FAIL][219], [FAIL][220], [FAIL][221], [FAIL][222], [FAIL][223], [FAIL][224], [FAIL][225], [FAIL][226], [FAIL][227], [FAIL][228], [FAIL][229]) ([i915#3002] / [i915#4312] / [i915#5257])
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-kbl7/igt@runner@aborted.html
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-kbl6/igt@runner@aborted.html
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-kbl7/igt@runner@aborted.html
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-kbl4/igt@runner@aborted.html
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-kbl3/igt@runner@aborted.html
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-kbl3/igt@runner@aborted.html
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-kbl7/igt@runner@aborted.html
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-kbl1/igt@runner@aborted.html
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-kbl4/igt@runner@aborted.html
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-kbl4/igt@runner@aborted.html
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-kbl6/igt@runner@aborted.html
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11537/shard-kbl7/igt@runner@aborted.html
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-kbl1/igt@runner@aborted.html
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-kbl4/igt@runner@aborted.html
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-kbl3/igt@runner@aborted.html
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-kbl1/igt@runner@aborted.html
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-kbl1/igt@runner@aborted.html
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-kbl4/igt@runner@aborted.html
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-kbl4/igt@runner@aborted.html
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-kbl3/igt@runner@aborted.html
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-kbl7/igt@runner@aborted.html
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-kbl7/igt@runner@aborted.html
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-kbl6/igt@runner@aborted.html
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/shard-kbl6/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
>   [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
>   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
>   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
>   [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112022]: https://bugs.freedesktop.org/show_bug.cgi?id=112022
>   [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
>   [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
>   [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
>   [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
>   [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
>   [i915#1911]: https://gitlab.freedesktop.org/drm/intel/issues/1911
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
>   [i915#2435]: https://gitlab.freedesktop.org/drm/intel/issues/2435
>   [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#2724]: https://gitlab.freedesktop.org/drm/intel/issues/2724
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3319]: https://gitlab.freedesktop.org/drm/intel/issues/3319
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
>   [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3736]: https://gitlab.freedesktop.org/drm/intel/issues/3736
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3763]: https://gitlab.freedesktop.org/drm/intel/issues/3763
>   [i915#3777]: https://gitlab.freedesktop.org/drm/intel/issues/3777
>   [i915#3810]: https://gitlab.freedesktop.org/drm/intel/issues/3810
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
>   [i915#3936]: https://gitlab.freedesktop.org/drm/intel/issues/3936
>   [i915#3938]: https://gitlab.freedesktop.org/drm/intel/issues/3938
>   [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#3966]: https://gitlab.freedesktop.org/drm/intel/issues/3966
>   [i915#4032]: https://gitlab.freedesktop.org/drm/intel/issues/4032
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4148]: https://gitlab.freedesktop.org/drm/intel/issues/4148
>   [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
>   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4807]: https://gitlab.freedesktop.org/drm/intel/issues/4807
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4842]: https://gitlab.freedesktop.org/drm/intel/issues/4842
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
>   [i915#4855]: https://gitlab.freedesktop.org/drm/intel/issues/4855
>   [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
>   [i915#4874]: https://gitlab.freedesktop.org/drm/intel/issues/4874
>   [i915#4877]: https://gitlab.freedesktop.org/drm/intel/issues/4877
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
>   [i915#4884]: https://gitlab.freedesktop.org/drm/intel/issues/4884
>   [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
>   [i915#4941]: https://gitlab.freedesktop.org/drm/intel/issues/4941
>   [i915#5076]: https://gitlab.freedesktop.org/drm/intel/issues/5076
>   [i915#5080]: https://gitlab.freedesktop.org/drm/intel/issues/5080
>   [i915#5098]: https://gitlab.freedesktop.org/drm/intel/issues/5098
>   [i915#5115]: https://gitlab.freedesktop.org/drm/intel/issues/5115
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5266]: https://gitlab.freedesktop.org/drm/intel/issues/5266
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5341]: https://gitlab.freedesktop.org/drm/intel/issues/5341
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5614]: https://gitlab.freedesktop.org/drm/intel/issues/5614
>   [i915#5776]: https://gitlab.freedesktop.org/drm/intel/issues/5776
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11537 -> Patchwork_102941v1
> 
>   CI-20190529: 20190529
>   CI_DRM_11537: d3f1b43f64dc51bfbb59fab5c6b950159c77207e @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6444: df584c804e3a44431b0e5ae21c190b6e9acb35ab @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_102941v1: d3f1b43f64dc51bfbb59fab5c6b950159c77207e @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102941v1/index.html
