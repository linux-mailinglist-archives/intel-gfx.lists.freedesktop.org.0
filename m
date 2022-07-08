Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD6FA56BD0B
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jul 2022 17:49:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B953A10E770;
	Fri,  8 Jul 2022 15:49:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C280410E770
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jul 2022 15:49:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657295375; x=1688831375;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=mPIY8Vv85PyzGBu/5cIAxCj6EAleen1TeIZ+qYS4Daw=;
 b=GVpCekcVJQAQun3xequM4UTNkqXwHT7oPqblKkKvCMUVlqWG+xvwitII
 wPVs8fC+Gy17gEJWan0FBfmQnJLqpLuWPYiuh+NOm4Fw6Yf7iJVZK4Khi
 AFnymxHeX67xhaXlp49P6zbenL9NmJ0fOVmVh6zi1O7DUpI7G9G62a2i7
 Kl/OnlcIJNd1AAAw1Q8htek7XBvUh5AgGxLStVfuPFi0cmRTECDfG4JS7
 6SzcCG8fHp+QrqZ2WWjRzpxH2aaVRvGntEyfD3G0VuDLpFJbL1sANaKEI
 XQVi/JYyt+3Val3yK7qi6m6qcI1pNWx3AEXUzdxePKFhbXYZrQSZduyaH A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10401"; a="264721873"
X-IronPort-AV: E=Sophos;i="5.92,256,1650956400"; d="scan'208";a="264721873"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2022 08:49:35 -0700
X-IronPort-AV: E=Sophos;i="5.92,256,1650956400"; d="scan'208";a="568981012"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2022 08:49:34 -0700
Date: Fri, 8 Jul 2022 08:49:33 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YshSDaC2HFdFz9Hq@mdroper-desk1.amr.corp.intel.com>
References: <20220707193002.2859653-1-umesh.nerlige.ramappa@intel.com>
 <165728784098.4505.10608543927823141096@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <165728784098.4505.10608543927823141096@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_i915/perf=3A_Replace_DRM=5FDEBUG_wi?=
 =?utf-8?q?th_driver_specific_drm=5Fdbg_call?=
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

On Fri, Jul 08, 2022 at 01:44:00PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [1/2] i915/perf: Replace DRM_DEBUG with driver specific drm_dbg call
> URL   : https://patchwork.freedesktop.org/series/106062/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11857_full -> Patchwork_106062v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_106062v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_106062v1_full, please notify your bug team to allow them
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
>   Here are the unknown changes that may have been introduced in Patchwork_106062v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
>     - shard-apl:          [PASS][1] -> [WARN][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-apl2/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-apl2/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

Seems to be the same warning seen in

https://gitlab.freedesktop.org/drm/intel/-/issues/2684
https://gitlab.freedesktop.org/drm/intel/-/issues/2681
https://gitlab.freedesktop.org/drm/intel/-/issues/1804

but on a different platform.  Not caused by these patches.

> 
>   * igt@i915_selftest@live@slpc:
>     - shard-skl:          [PASS][3] -> [INCOMPLETE][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-skl7/igt@i915_selftest@live@slpc.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-skl6/igt@i915_selftest@live@slpc.html

Log cuts off in middle.  Likely a sporadic system/network crash; not
caused by the changes here.

> 
>   * igt@kms_async_flips@test-time-stamp@pipe-a-edp-1:
>     - shard-tglb:         [PASS][5] -> [INCOMPLETE][6]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-tglb1/igt@kms_async_flips@test-time-stamp@pipe-a-edp-1.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-tglb8/igt@kms_async_flips@test-time-stamp@pipe-a-edp-1.html

Another unexpected incomplete.  Not caused by these patches.


Series applied to drm-intel-gt-next (with a minor tweak to the author
line to make the formatting match the s-o-b line).  Thanks for the
patches and reviews.


Matt

> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@gem_busy@close-race:
>     - {shard-tglu}:       [PASS][7] -> [INCOMPLETE][8]
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-tglu-2/igt@gem_busy@close-race.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-tglu-4/igt@gem_busy@close-race.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_106062v1_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Possible fixes ####
> 
>   * boot:
>     - shard-snb:          ([PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [FAIL][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33]) ([i915#4338]) -> ([PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb7/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb7/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb7/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb7/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb6/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb6/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb6/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb6/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb6/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb5/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb5/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb5/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb5/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb5/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb5/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb4/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb4/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb4/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb4/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb4/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb2/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb2/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb2/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb2/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb2/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-snb7/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-snb7/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-snb7/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-snb7/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-snb7/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-snb7/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-snb6/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-snb6/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-snb6/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-snb6/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-snb5/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-snb5/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-snb5/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-snb5/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-snb5/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-snb4/boot.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-snb4/boot.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-snb4/boot.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-snb4/boot.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-snb4/boot.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-snb2/boot.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-snb2/boot.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-snb2/boot.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-snb2/boot.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-snb2/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_persistence@hostile:
>     - shard-tglb:         [PASS][59] -> [FAIL][60] ([i915#2410])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-tglb3/igt@gem_ctx_persistence@hostile.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-tglb5/igt@gem_ctx_persistence@hostile.html
> 
>   * igt@gem_ctx_persistence@legacy-engines-queued:
>     - shard-snb:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#1099])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-snb2/igt@gem_ctx_persistence@legacy-engines-queued.html
> 
>   * igt@gem_exec_balancer@parallel-bb-first:
>     - shard-iclb:         [PASS][62] -> [SKIP][63] ([i915#4525]) +1 similar issue
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-iclb2/igt@gem_exec_balancer@parallel-bb-first.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-iclb5/igt@gem_exec_balancer@parallel-bb-first.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-skl:          NOTRUN -> [FAIL][64] ([i915#6141])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-skl1/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-kbl:          [PASS][65] -> [FAIL][66] ([i915#2842])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-kbl1/igt@gem_exec_fair@basic-none@vcs1.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-kbl6/igt@gem_exec_fair@basic-none@vcs1.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-apl:          [PASS][67] -> [FAIL][68] ([i915#2842])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-apl7/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-apl1/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@bcs0:
>     - shard-iclb:         [PASS][69] -> [FAIL][70] ([i915#2842])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-iclb2/igt@gem_exec_fair@basic-pace@bcs0.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-iclb5/igt@gem_exec_fair@basic-pace@bcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-glk:          [PASS][71] -> [FAIL][72] ([i915#2842])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-glk7/igt@gem_exec_fair@basic-pace@vecs0.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-glk3/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [PASS][73] -> [SKIP][74] ([i915#2190])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-tglb1/igt@gem_huc_copy@huc-copy.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-tglb7/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@heavy-random:
>     - shard-kbl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#4613])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-kbl1/igt@gem_lmem_swapping@heavy-random.html
> 
>   * igt@gem_lmem_swapping@smem-oom:
>     - shard-apl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-apl4/igt@gem_lmem_swapping@smem-oom.html
> 
>   * igt@gem_lmem_swapping@verify:
>     - shard-skl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-skl1/igt@gem_lmem_swapping@verify.html
> 
>   * igt@gem_lmem_swapping@verify-random:
>     - shard-glk:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#4613])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-glk1/igt@gem_lmem_swapping@verify-random.html
> 
>   * igt@gem_softpin@noreloc-s3:
>     - shard-apl:          [PASS][79] -> [DMESG-WARN][80] ([i915#180])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-apl7/igt@gem_softpin@noreloc-s3.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-apl8/igt@gem_softpin@noreloc-s3.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-skl:          [PASS][81] -> [DMESG-WARN][82] ([i915#5566] / [i915#716])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-skl10/igt@gen9_exec_parse@allowed-single.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-skl3/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-iclb:         [PASS][83] -> [FAIL][84] ([i915#454])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-iclb2/igt@i915_pm_dc@dc6-dpms.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_suspend@sysfs-reader:
>     - shard-kbl:          [PASS][85] -> [DMESG-WARN][86] ([i915#180])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-kbl1/igt@i915_suspend@sysfs-reader.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-kbl6/igt@i915_suspend@sysfs-reader.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-apl:          NOTRUN -> [SKIP][87] ([fdo#109271]) +72 similar issues
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-apl4/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-kbl1/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs:
>     - shard-skl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#3886]) +3 similar issues
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-skl1/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [i915#3886]) +4 similar issues
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-apl4/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-d-bad-pixel-format-4_tiled_dg2_mc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][91] ([fdo#109271]) +42 similar issues
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-kbl1/igt@kms_ccs@pipe-d-bad-pixel-format-4_tiled_dg2_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-d-ccs-on-another-bo-yf_tiled_ccs:
>     - shard-glk:          NOTRUN -> [SKIP][92] ([fdo#109271]) +43 similar issues
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-glk1/igt@kms_ccs@pipe-d-ccs-on-another-bo-yf_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-d-crc-primary-rotation-180-yf_tiled_ccs:
>     - shard-skl:          NOTRUN -> [SKIP][93] ([fdo#109271]) +66 similar issues
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-skl1/igt@kms_ccs@pipe-d-crc-primary-rotation-180-yf_tiled_ccs.html
> 
>   * igt@kms_chamelium@hdmi-audio-edid:
>     - shard-glk:          NOTRUN -> [SKIP][94] ([fdo#109271] / [fdo#111827]) +4 similar issues
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-glk1/igt@kms_chamelium@hdmi-audio-edid.html
> 
>   * igt@kms_chamelium@hdmi-hpd-storm:
>     - shard-kbl:          NOTRUN -> [SKIP][95] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-kbl1/igt@kms_chamelium@hdmi-hpd-storm.html
> 
>   * igt@kms_chamelium@vga-hpd:
>     - shard-apl:          NOTRUN -> [SKIP][96] ([fdo#109271] / [fdo#111827]) +13 similar issues
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-apl4/igt@kms_chamelium@vga-hpd.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-0-5:
>     - shard-skl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [fdo#111827]) +6 similar issues
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-skl1/igt@kms_color_chamelium@pipe-a-ctm-0-5.html
> 
>   * igt@kms_color_chamelium@pipe-a-gamma:
>     - shard-snb:          NOTRUN -> [SKIP][98] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-snb2/igt@kms_color_chamelium@pipe-a-gamma.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-apl:          NOTRUN -> [TIMEOUT][99] ([i915#1319])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-apl4/igt@kms_content_protection@srm.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@b-edp1:
>     - shard-skl:          [PASS][100] -> [FAIL][101] ([i915#2122]) +1 similar issue
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-skl10/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-skl5/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][102] ([i915#2672]) +1 similar issue
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-iclb5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][103] ([i915#2672] / [i915#3555])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-iclb8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_hdr@bpc-switch@pipe-a-dp-1:
>     - shard-kbl:          [PASS][104] -> [FAIL][105] ([i915#1188])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-kbl7/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-kbl6/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
>     - shard-skl:          NOTRUN -> [FAIL][106] ([fdo#108145] / [i915#265]) +2 similar issues
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
>     - shard-glk:          NOTRUN -> [FAIL][107] ([fdo#108145] / [i915#265])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-glk1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html
> 
>   * igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-1:
>     - shard-glk:          [PASS][108] -> [DMESG-FAIL][109] ([i915#118] / [i915#1888])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-glk3/igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-1.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-glk1/igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_lowres@tiling-y@pipe-b-hdmi-a-1:
>     - shard-glk:          [PASS][110] -> [FAIL][111] ([i915#1888])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-glk3/igt@kms_plane_lowres@tiling-y@pipe-b-hdmi-a-1.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-glk1/igt@kms_plane_lowres@tiling-y@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1:
>     - shard-iclb:         [PASS][112] -> [SKIP][113] ([i915#5235]) +2 similar issues
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-iclb1/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
>     - shard-glk:          NOTRUN -> [SKIP][114] ([fdo#109271] / [i915#658])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-glk1/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
>     - shard-skl:          NOTRUN -> [SKIP][115] ([fdo#109271] / [i915#658])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-skl1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr@psr2_primary_page_flip:
>     - shard-iclb:         [PASS][116] -> [SKIP][117] ([fdo#109441]) +1 similar issue
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-iclb5/igt@kms_psr@psr2_primary_page_flip.html
> 
>   * igt@kms_tv_load_detect@load-detect:
>     - shard-snb:          NOTRUN -> [SKIP][118] ([fdo#109271]) +85 similar issues
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-snb2/igt@kms_tv_load_detect@load-detect.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-apl:          [PASS][119] -> [FAIL][120] ([i915#6054])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-apl8/igt@perf_pmu@module-unload.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-apl3/igt@perf_pmu@module-unload.html
> 
>   * igt@sysfs_clients@fair-1:
>     - shard-kbl:          NOTRUN -> [SKIP][121] ([fdo#109271] / [i915#2994])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-kbl1/igt@sysfs_clients@fair-1.html
> 
>   * igt@sysfs_clients@pidname:
>     - shard-skl:          NOTRUN -> [SKIP][122] ([fdo#109271] / [i915#2994])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-skl1/igt@sysfs_clients@pidname.html
> 
>   * igt@sysfs_clients@recycle:
>     - shard-glk:          NOTRUN -> [SKIP][123] ([fdo#109271] / [i915#2994])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-glk1/igt@sysfs_clients@recycle.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-tglb:         [FAIL][124] ([i915#6268]) -> [PASS][125]
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-tglb5/igt@gem_ctx_exec@basic-nohangcheck.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-tglb1/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@bcs0:
>     - shard-apl:          [DMESG-WARN][126] ([i915#180]) -> [PASS][127] +4 similar issues
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-apl1/igt@gem_ctx_isolation@preservation-s3@bcs0.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-apl3/igt@gem_ctx_isolation@preservation-s3@bcs0.html
> 
>   * igt@gem_ctx_persistence@legacy-engines-hostile@vebox:
>     - {shard-dg1}:        [FAIL][128] ([i915#4883]) -> [PASS][129] +2 similar issues
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-dg1-15/igt@gem_ctx_persistence@legacy-engines-hostile@vebox.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-dg1-12/igt@gem_ctx_persistence@legacy-engines-hostile@vebox.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - {shard-rkl}:        [TIMEOUT][130] ([i915#3063]) -> [PASS][131]
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-rkl-1/igt@gem_eio@unwedge-stress.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-rkl-1/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@fairslice:
>     - {shard-rkl}:        [SKIP][132] ([i915#6259]) -> [PASS][133]
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-rkl-5/igt@gem_exec_balancer@fairslice.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-rkl-2/igt@gem_exec_balancer@fairslice.html
> 
>   * igt@gem_exec_balancer@parallel-contexts:
>     - shard-iclb:         [SKIP][134] ([i915#4525]) -> [PASS][135] +1 similar issue
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-iclb6/igt@gem_exec_balancer@parallel-contexts.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-iclb2/igt@gem_exec_balancer@parallel-contexts.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglb:         [FAIL][136] ([i915#2842]) -> [PASS][137] +1 similar issue
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - {shard-tglu}:       [FAIL][138] ([i915#2842]) -> [PASS][139]
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-tglu-5/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-tglu-6/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-kbl:          [FAIL][140] ([i915#2842]) -> [PASS][141] +1 similar issue
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-iclb:         [FAIL][142] ([i915#2842]) -> [PASS][143]
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-iclb2/igt@gem_exec_fair@basic-pace@vecs0.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-iclb5/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [FAIL][144] ([i915#2849]) -> [PASS][145]
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_reloc@basic-gtt-wc:
>     - {shard-rkl}:        [SKIP][146] ([i915#3281]) -> [PASS][147] +6 similar issues
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-wc.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc.html
> 
>   * igt@gem_exec_schedule@semaphore-power:
>     - {shard-rkl}:        [SKIP][148] ([fdo#110254]) -> [PASS][149]
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-rkl-2/igt@gem_exec_schedule@semaphore-power.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-rkl-5/igt@gem_exec_schedule@semaphore-power.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
>     - {shard-rkl}:        [SKIP][150] ([i915#3282]) -> [PASS][151] +3 similar issues
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-rkl-2/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
> 
>   * igt@gem_softpin@evict-single-offset:
>     - {shard-rkl}:        [FAIL][152] ([i915#4171]) -> [PASS][153]
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-rkl-5/igt@gem_softpin@evict-single-offset.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-rkl-2/igt@gem_softpin@evict-single-offset.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - {shard-rkl}:        [SKIP][154] ([i915#2527]) -> [PASS][155] +1 similar issue
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-rkl-2/igt@gen9_exec_parse@allowed-all.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-rkl-5/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@i915_hangman@gt-engine-error@bcs0:
>     - {shard-rkl}:        [SKIP][156] ([i915#6258]) -> [PASS][157]
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-rkl-5/igt@i915_hangman@gt-engine-error@bcs0.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-rkl-2/igt@i915_hangman@gt-engine-error@bcs0.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-tglb:         [TIMEOUT][158] ([i915#3953]) -> [PASS][159]
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-tglb2/igt@i915_module_load@reload-with-fault-injection.html
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-tglb3/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - shard-iclb:         [SKIP][160] ([i915#4281]) -> [PASS][161]
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-iclb8/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
>     - shard-skl:          [WARN][162] -> [PASS][163]
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-skl3/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-skl5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
> 
>   * igt@i915_pm_rpm@debugfs-forcewake-user:
>     - shard-apl:          [DMESG-WARN][164] ([i915#62]) -> [PASS][165] +1 similar issue
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-apl7/igt@i915_pm_rpm@debugfs-forcewake-user.html
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-apl1/igt@i915_pm_rpm@debugfs-forcewake-user.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-skl:          [FAIL][166] ([i915#3048]) -> [PASS][167]
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-skl3/igt@i915_pm_sseu@full-enable.html
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-skl5/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1:
>     - shard-apl:          [FAIL][168] ([i915#62]) -> [PASS][169]
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-apl7/igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1.html
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-apl1/igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1.html
>     - shard-kbl:          [DMESG-WARN][170] ([i915#180]) -> [PASS][171] +2 similar issues
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-kbl1/igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1.html
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-kbl1/igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:
>     - shard-glk:          [FAIL][172] ([i915#79]) -> [PASS][173] +1 similar issue
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
>     - shard-skl:          [FAIL][174] ([i915#79]) -> [PASS][175] +1 similar issue
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
>     - shard-skl:          [FAIL][176] ([i915#2122]) -> [PASS][177]
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
>     - {shard-rkl}:        [SKIP][178] ([i915#1849] / [i915#4098]) -> [PASS][179] +10 similar issues
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
> 
>   * igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-2:
>     - shard-glk:          [DMESG-WARN][180] ([i915#118] / [i915#1888]) -> [PASS][181]
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-glk3/igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-2.html
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-glk1/igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-1:
>     - shard-glk:          [FAIL][182] ([i915#1888]) -> [PASS][183]
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-glk3/igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-1.html
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-glk1/igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_plane_multiple@atomic-pipe-b-tiling-none:
>     - {shard-rkl}:        [SKIP][184] ([i915#1849] / [i915#3558]) -> [PASS][185]
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-rkl-5/igt@kms_plane_multiple@atomic-pipe-b-tiling-none.html
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-b-tiling-none.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1:
>     - shard-iclb:         [SKIP][186] ([i915#5176]) -> [PASS][187] +1 similar issue
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-iclb3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-iclb8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html
> 
>   * igt@kms_psr@cursor_plane_onoff:
>     - {shard-rkl}:        [SKIP][188] ([i915#1072]) -> [PASS][189]
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-rkl-5/igt@kms_psr@cursor_plane_onoff.html
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-rkl-6/igt@kms_psr@cursor_plane_onoff.html
> 
>   * igt@kms_psr@psr2_primary_mmap_gtt:
>     - shard-iclb:         [SKIP][190] ([fdo#109441]) -> [PASS][191] +2 similar issues
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-iclb1/igt@kms_psr@psr2_primary_mmap_gtt.html
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html
> 
>   * igt@kms_rmfb@close-fd:
>     - {shard-rkl}:        [SKIP][192] ([i915#1845] / [i915#4098]) -> [PASS][193] +9 similar issues
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-rkl-5/igt@kms_rmfb@close-fd.html
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-rkl-6/igt@kms_rmfb@close-fd.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-suspend:
>     - shard-skl:          [INCOMPLETE][194] ([i915#4939]) -> [PASS][195]
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-skl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-skl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
> 
>   * igt@perf_pmu@idle@rcs0:
>     - {shard-dg1}:        [FAIL][196] ([i915#4349]) -> [PASS][197]
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-dg1-19/igt@perf_pmu@idle@rcs0.html
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-dg1-15/igt@perf_pmu@idle@rcs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-iclb:         [FAIL][198] ([i915#2842]) -> [FAIL][199] ([i915#2852])
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-iclb8/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-iclb1/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-apl:          [FAIL][200] ([i915#2842]) -> [FAIL][201] ([i915#2851])
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-apl2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-apl2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-kbl:          [SKIP][202] ([fdo#109271]) -> [FAIL][203] ([i915#2842])
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@kms_chamelium@dp-audio-edid:
>     - shard-skl:          [SKIP][204] ([fdo#109271] / [fdo#111827]) -> [SKIP][205] ([fdo#109271] / [fdo#111827] / [i915#1888])
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-skl10/igt@kms_chamelium@dp-audio-edid.html
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-skl5/igt@kms_chamelium@dp-audio-edid.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
>     - shard-skl:          [SKIP][206] ([fdo#109271] / [i915#1888]) -> [SKIP][207] ([fdo#109271])
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-skl7/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-skl10/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
> 
>   * igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:
>     - shard-kbl:          [FAIL][208] ([i915#1188]) -> [DMESG-WARN][209] ([i915#180])
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-kbl7/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-kbl6/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
>     - shard-iclb:         [SKIP][210] ([i915#2920]) -> [SKIP][211] ([i915#658]) +1 similar issue
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-iclb3/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-iclb:         [SKIP][212] ([i915#658]) -> [SKIP][213] ([i915#2920])
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-iclb6/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area:
>     - shard-iclb:         [SKIP][214] ([fdo#111068] / [i915#658]) -> [SKIP][215] ([i915#2920]) +1 similar issue
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-iclb3/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
>     - shard-iclb:         [SKIP][216] ([i915#2920]) -> [SKIP][217] ([fdo#111068] / [i915#658])
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-iclb:         [FAIL][218] ([i915#5939]) -> [SKIP][219] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-iclb5/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][220], [FAIL][221], [FAIL][222]) ([i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][223], [FAIL][224], [FAIL][225], [FAIL][226]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-kbl1/igt@runner@aborted.html
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-kbl1/igt@runner@aborted.html
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-kbl1/igt@runner@aborted.html
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-kbl6/igt@runner@aborted.html
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-kbl6/igt@runner@aborted.html
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-kbl6/igt@runner@aborted.html
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/shard-kbl4/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
>   [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110254]: https://bugs.freedesktop.org/show_bug.cgi?id=110254
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
>   [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1850]: https://gitlab.freedesktop.org/drm/intel/issues/1850
>   [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
>   [i915#1911]: https://gitlab.freedesktop.org/drm/intel/issues/1911
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
>   [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#2532]: https://gitlab.freedesktop.org/drm/intel/issues/2532
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
>   [i915#2851]: https://gitlab.freedesktop.org/drm/intel/issues/2851
>   [i915#2852]: https://gitlab.freedesktop.org/drm/intel/issues/2852
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3048]: https://gitlab.freedesktop.org/drm/intel/issues/3048
>   [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3825]: https://gitlab.freedesktop.org/drm/intel/issues/3825
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3953]: https://gitlab.freedesktop.org/drm/intel/issues/3953
>   [i915#3966]: https://gitlab.freedesktop.org/drm/intel/issues/3966
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4338]: https://gitlab.freedesktop.org/drm/intel/issues/4338
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
>   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>   [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
>   [i915#4462]: https://gitlab.freedesktop.org/drm/intel/issues/4462
>   [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
>   [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#4883]: https://gitlab.freedesktop.org/drm/intel/issues/4883
>   [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
>   [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
>   [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5939]: https://gitlab.freedesktop.org/drm/intel/issues/5939
>   [i915#6011]: https://gitlab.freedesktop.org/drm/intel/issues/6011
>   [i915#6054]: https://gitlab.freedesktop.org/drm/intel/issues/6054
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6141]: https://gitlab.freedesktop.org/drm/intel/issues/6141
>   [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
>   [i915#6245]: https://gitlab.freedesktop.org/drm/intel/issues/6245
>   [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
>   [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
>   [i915#6251]: https://gitlab.freedesktop.org/drm/intel/issues/6251
>   [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
>   [i915#6258]: https://gitlab.freedesktop.org/drm/intel/issues/6258
>   [i915#6259]: https://gitlab.freedesktop.org/drm/intel/issues/6259
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11857 -> Patchwork_106062v1
> 
>   CI-20190529: 20190529
>   CI_DRM_11857: de2555fd1402a79eb3c89db3f62944fec2026c8f @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6561: 4b673211d1645eaafa9da32eece4c274d8cd6c41 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_106062v1: de2555fd1402a79eb3c89db3f62944fec2026c8f @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106062v1/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
