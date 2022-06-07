Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 398AC5418A4
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jun 2022 23:14:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F99310F015;
	Tue,  7 Jun 2022 21:13:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7766E10EEE2
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jun 2022 21:13:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654636437; x=1686172437;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=M317wqXNTDorS9+bNLqKIdi+kAAfv7ENh9ib91tJORA=;
 b=e67hFgMAq63XXnx8KrEJqPfN+meNoXf/l6dIMC8EkMv7cO/H9L5rc6lh
 rEZtfo6Du7137N2jYrQnXbhM/iIeXsC9/4owhTWBZP3j7K62C0F9E/RbA
 X6S7jGMiFAccPkniZP4uMwqGkYeHbtTC+v1FxpaJl8kGETENeS2hdPCe8
 J6bmVveRiLZ5Mc3YX3fmV3pT+NJAx6hw01sYiaZ1p20BuRV0u8xaC5G+3
 A6q+21auzikuWfhlJRZyg/qTr7V8bFvKp/lZeLRXIjhmi2TYM4Kw9rXUh
 SCMyzcLuYTpLenIrVZpG2iDzDGWZKItjBFo9m3cyxjDIcjxdjw5XguYj0 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10371"; a="338370381"
X-IronPort-AV: E=Sophos;i="5.91,284,1647327600"; d="scan'208";a="338370381"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2022 13:58:48 -0700
X-IronPort-AV: E=Sophos;i="5.91,284,1647327600"; d="scan'208";a="636335302"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2022 13:58:48 -0700
Date: Tue, 7 Jun 2022 13:58:47 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <Yp+8B9MszbW+kSsv@mdroper-desk1.amr.corp.intel.com>
References: <=20220606060324.1618-1-anshuman.gupta@intel.com>
 <165462398545.8647.11250898383039901042@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <165462398545.8647.11250898383039901042@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogIGZhaWx1cmUgZm9yIGRy?=
 =?utf-8?q?m/i915/dg2=3A_Add_Wa=5F14015795083_=28rev2=29?=
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

On Tue, Jun 07, 2022 at 05:46:25PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dg2: Add Wa_14015795083 (rev2)
> URL   : https://patchwork.freedesktop.org/series/104760/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11730_full -> Patchwork_104760v2_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_104760v2_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_104760v2_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (10 -> 12)
> ------------------------------
> 
>   Additional (2): shard-dg1 shard-tglu 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_104760v2_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl3/igt@i915_pm_dc@dc3co-vpb-simulation.html

Unexpected machine/network death?  Dmesg just cuts off with no
indication of a problem.  The DG2 workaround in this patch would not
impact SKL behavior, so the failure is unrelated.

> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-kbl:          [PASS][2] -> [INCOMPLETE][3]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html

System never came back from suspend.  Not caused by this patch.

> 
>   * igt@kms_flip@modeset-vs-vblank-race-interruptible@a-edp1:
>     - shard-skl:          NOTRUN -> [FAIL][4]
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl3/igt@kms_flip@modeset-vs-vblank-race-interruptible@a-edp1.html
> 

https://gitlab.freedesktop.org/drm/intel/-/issues/407


None of the failures here are related to this patch.  Applied to
drm-intel-gt-next.  Thanks for the patch.


Matt

>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@kms_sequence@queue-busy@hdmi-a-1-pipe-a:
>     - {shard-dg1}:        NOTRUN -> [FAIL][5] +8 similar issues
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-dg1-12/igt@kms_sequence@queue-busy@hdmi-a-1-pipe-a.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_104760v2_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Possible fixes ####
> 
>   * boot:
>     - shard-skl:          ([PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [FAIL][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27]) ([i915#5032]) -> ([PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-skl9/boot.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-skl9/boot.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-skl9/boot.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-skl10/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-skl9/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-skl10/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-skl10/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-skl10/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-skl7/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-skl1/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-skl7/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-skl7/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-skl7/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-skl4/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-skl1/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-skl2/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-skl2/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-skl3/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-skl4/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-skl4/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-skl3/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-skl4/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl10/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl10/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl10/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl1/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl1/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl1/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl1/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl2/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl2/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl3/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl3/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl3/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl4/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl4/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl4/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl7/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl7/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl7/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl9/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl9/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl9/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_balancer@parallel-bb-first:
>     - shard-iclb:         [PASS][49] -> [SKIP][50] ([i915#4525]) +1 similar issue
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-iclb4/igt@gem_exec_balancer@parallel-bb-first.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-iclb6/igt@gem_exec_balancer@parallel-bb-first.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-iclb:         [PASS][51] -> [FAIL][52] ([i915#2842])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-vip@rcs0:
>     - shard-tglb:         [PASS][53] -> [FAIL][54] ([i915#2842]) +1 similar issue
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-tglb6/igt@gem_exec_fair@basic-none-vip@rcs0.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-tglb6/igt@gem_exec_fair@basic-none-vip@rcs0.html
>     - shard-glk:          [PASS][55] -> [FAIL][56] ([i915#2842])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-glk5/igt@gem_exec_fair@basic-none-vip@rcs0.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-glk7/igt@gem_exec_fair@basic-none-vip@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-kbl:          [PASS][57] -> [FAIL][58] ([i915#2842])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][59] ([i915#2842])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1.html
> 
>   * igt@gem_exec_params@secure-non-root:
>     - shard-iclb:         NOTRUN -> [SKIP][60] ([fdo#112283])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-iclb5/igt@gem_exec_params@secure-non-root.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random-ccs:
>     - shard-skl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#4613])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl4/igt@gem_lmem_swapping@heavy-verify-random-ccs.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-skl:          NOTRUN -> [WARN][62] ([i915#2658])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl7/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pxp@verify-pxp-stale-buf-execution:
>     - shard-iclb:         NOTRUN -> [SKIP][63] ([i915#4270])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-iclb5/igt@gem_pxp@verify-pxp-stale-buf-execution.html
> 
>   * igt@gem_render_copy@yf-tiled-to-vebox-y-tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][64] ([i915#768])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-iclb5/igt@gem_render_copy@yf-tiled-to-vebox-y-tiled.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-skl:          NOTRUN -> [FAIL][65] ([i915#3318])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl4/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-glk:          [PASS][66] -> [DMESG-WARN][67] ([i915#5566] / [i915#716])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-glk7/igt@gen9_exec_parse@allowed-all.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-glk6/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-kbl:          [PASS][68] -> [DMESG-WARN][69] ([i915#180]) +9 similar issues
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-kbl4/igt@i915_suspend@debugfs-reader.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-kbl1/igt@i915_suspend@debugfs-reader.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-skl:          [PASS][70] -> [INCOMPLETE][71] ([i915#4817] / [i915#4939])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-skl10/igt@i915_suspend@fence-restore-tiled2untiled.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl1/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-iclb:         NOTRUN -> [SKIP][72] ([i915#5286])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-iclb5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][73] ([i915#3743])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][74] ([i915#3763])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-iclb:         NOTRUN -> [SKIP][75] ([fdo#110723])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-iclb5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs:
>     - shard-skl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#3886]) +4 similar issues
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl4/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-d-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
>     - shard-iclb:         NOTRUN -> [SKIP][77] ([fdo#109278]) +1 similar issue
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-iclb5/igt@kms_ccs@pipe-d-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_chamelium@dp-hpd-enable-disable-mode:
>     - shard-apl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [fdo#111827])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-apl7/igt@kms_chamelium@dp-hpd-enable-disable-mode.html
> 
>   * igt@kms_chamelium@vga-hpd-without-ddc:
>     - shard-kbl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-kbl3/igt@kms_chamelium@vga-hpd-without-ddc.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-green-to-red:
>     - shard-skl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [fdo#111827]) +11 similar issues
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl3/igt@kms_color_chamelium@pipe-d-ctm-green-to-red.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-128x128-random:
>     - shard-skl:          NOTRUN -> [SKIP][81] ([fdo#109271]) +174 similar issues
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl7/igt@kms_cursor_crc@pipe-d-cursor-128x128-random.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-128x42-rapid-movement:
>     - shard-apl:          NOTRUN -> [SKIP][82] ([fdo#109271]) +13 similar issues
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-apl7/igt@kms_cursor_crc@pipe-d-cursor-128x42-rapid-movement.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-glk:          [PASS][83] -> [FAIL][84] ([i915#2346])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@pipe-d-torture-bo:
>     - shard-apl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#533])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-apl7/igt@kms_cursor_legacy@pipe-d-torture-bo.html
> 
>   * igt@kms_flip@2x-dpms-vs-vblank-race-interruptible:
>     - shard-iclb:         NOTRUN -> [SKIP][86] ([fdo#109274])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-iclb5/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:
>     - shard-glk:          [PASS][87] -> [FAIL][88] ([i915#79])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1:
>     - shard-skl:          [PASS][89] -> [FAIL][90] ([i915#2122]) +1 similar issue
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-skl9/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl3/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@b-edp1:
>     - shard-skl:          [PASS][91] -> [INCOMPLETE][92] ([i915#4939])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-skl2/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl10/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@c-dp1:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][93] ([i915#180])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:
>     - shard-skl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#3701])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-kbl:          NOTRUN -> [SKIP][95] ([fdo#109271]) +13 similar issues
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-kbl3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-pgflip-blt:
>     - shard-iclb:         NOTRUN -> [SKIP][96] ([fdo#109280]) +3 similar issues
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-iclb5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-pgflip-blt.html
> 
>   * igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:
>     - shard-apl:          [PASS][97] -> [DMESG-WARN][98] ([i915#180]) +2 similar issues
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-apl8/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-apl2/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
>     - shard-kbl:          NOTRUN -> [FAIL][99] ([fdo#108145] / [i915#265])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-kbl3/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
>     - shard-skl:          [PASS][100] -> [FAIL][101] ([fdo#108145] / [i915#265])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
> 
>   * igt@kms_plane_scaling@invalid-num-scalers@pipe-a-edp-1-invalid-num-scalers:
>     - shard-skl:          NOTRUN -> [SKIP][102] ([fdo#109271] / [i915#5776]) +2 similar issues
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl4/igt@kms_plane_scaling@invalid-num-scalers@pipe-a-edp-1-invalid-num-scalers.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-skl:          NOTRUN -> [SKIP][103] ([fdo#109271] / [i915#658]) +1 similar issue
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl4/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr@psr2_sprite_plane_move:
>     - shard-iclb:         NOTRUN -> [SKIP][104] ([fdo#109441])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html
> 
>   * igt@kms_psr@psr2_sprite_plane_onoff:
>     - shard-iclb:         [PASS][105] -> [SKIP][106] ([fdo#109441]) +1 similar issue
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-iclb4/igt@kms_psr@psr2_sprite_plane_onoff.html
> 
>   * igt@kms_vblank@pipe-d-wait-idle:
>     - shard-kbl:          NOTRUN -> [SKIP][107] ([fdo#109271] / [i915#533])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-kbl3/igt@kms_vblank@pipe-d-wait-idle.html
> 
>   * igt@perf@polling:
>     - shard-skl:          [PASS][108] -> [FAIL][109] ([i915#1542])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-skl7/igt@perf@polling.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl1/igt@perf@polling.html
> 
>   * igt@sw_sync@sync_merge:
>     - shard-skl:          NOTRUN -> [FAIL][110] ([i915#6140])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl4/igt@sw_sync@sync_merge.html
> 
>   * igt@sysfs_clients@fair-0:
>     - shard-iclb:         NOTRUN -> [SKIP][111] ([i915#2994])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-iclb5/igt@sysfs_clients@fair-0.html
> 
>   * igt@sysfs_clients@fair-3:
>     - shard-skl:          NOTRUN -> [SKIP][112] ([fdo#109271] / [i915#2994])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl4/igt@sysfs_clients@fair-3.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_isolation@preservation-s3@bcs0:
>     - shard-kbl:          [DMESG-WARN][113] ([i915#180]) -> [PASS][114] +1 similar issue
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@bcs0.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@bcs0.html
> 
>   * igt@gem_exec_capture@pi@rcs0:
>     - shard-iclb:         [INCOMPLETE][115] ([i915#3371]) -> [PASS][116]
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-iclb6/igt@gem_exec_capture@pi@rcs0.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-iclb5/igt@gem_exec_capture@pi@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-kbl:          [FAIL][117] ([i915#2842]) -> [PASS][118] +1 similar issue
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-kbl4/igt@gem_exec_fair@basic-none@vcs1.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-kbl3/igt@gem_exec_fair@basic-none@vcs1.html
> 
>   * igt@gem_exec_fair@basic-pace@bcs0:
>     - shard-iclb:         [FAIL][119] ([i915#2842]) -> [PASS][120]
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-iclb8/igt@gem_exec_fair@basic-pace@bcs0.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-iclb7/igt@gem_exec_fair@basic-pace@bcs0.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-iclb:         [FAIL][121] ([i915#454]) -> [PASS][122]
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-iclb2/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - shard-iclb:         [SKIP][123] ([i915#4281]) -> [PASS][124]
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-iclb5/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-tglb:         [DMESG-WARN][125] ([i915#5591]) -> [PASS][126]
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-tglb5/igt@i915_selftest@live@hangcheck.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-tglb2/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-suspend:
>     - shard-skl:          [INCOMPLETE][127] ([i915#5713]) -> [PASS][128]
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
> 
>   * igt@kms_flip@flip-vs-suspend@b-dp1:
>     - shard-apl:          [DMESG-WARN][129] ([i915#180]) -> [PASS][130] +2 similar issues
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-apl8/igt@kms_flip@flip-vs-suspend@b-dp1.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-apl8/igt@kms_flip@flip-vs-suspend@b-dp1.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
>     - shard-skl:          [FAIL][131] ([i915#2122]) -> [PASS][132]
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-skl2/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl2/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
>     - shard-iclb:         [SKIP][133] ([i915#3701]) -> [PASS][134] +1 similar issue
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-iclb4/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
> 
>   * igt@kms_psr@psr2_primary_mmap_cpu:
>     - shard-iclb:         [SKIP][135] ([fdo#109441]) -> [PASS][136] +1 similar issue
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-iclb3/igt@kms_psr@psr2_primary_mmap_cpu.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-iclb:         [SKIP][137] ([i915#5519]) -> [PASS][138]
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-iclb4/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-iclb4/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-iclb:         [FAIL][139] ([i915#6117]) -> [SKIP][140] ([i915#4525])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-iclb3/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@kms_ccs@pipe-b-random-ccs-data-4_tiled_dg2_mc_ccs:
>     - shard-skl:          [SKIP][141] ([fdo#109271]) -> [SKIP][142] ([fdo#109271] / [i915#1888])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-skl7/igt@kms_ccs@pipe-b-random-ccs-data-4_tiled_dg2_mc_ccs.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl10/igt@kms_ccs@pipe-b-random-ccs-data-4_tiled_dg2_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          [SKIP][143] ([fdo#109271] / [i915#3886]) -> [SKIP][144] ([fdo#109271] / [i915#1888] / [i915#3886])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-skl10/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl3/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_ccs:
>     - shard-skl:          [SKIP][145] ([fdo#109271] / [i915#1888]) -> [SKIP][146] ([fdo#109271])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-skl10/igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_ccs.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl3/igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_ccs.html
> 
>   * igt@kms_flip@flip-vs-suspend@b-dp1:
>     - shard-kbl:          [INCOMPLETE][147] ([i915#3614]) -> [DMESG-WARN][148] ([i915#180])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-kbl3/igt@kms_flip@flip-vs-suspend@b-dp1.html
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-kbl7/igt@kms_flip@flip-vs-suspend@b-dp1.html
> 
>   * igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:
>     - shard-kbl:          [FAIL][149] ([i915#1188]) -> [DMESG-WARN][150] ([i915#180])
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-kbl3/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-kbl4/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-iclb:         [SKIP][151] ([i915#2920]) -> [SKIP][152] ([i915#658])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-iclb4/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
>     - shard-iclb:         [SKIP][153] ([i915#658]) -> [SKIP][154] ([i915#2920])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-iclb3/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@cursor-plane-update-sf:
>     - shard-iclb:         [SKIP][155] ([i915#2920]) -> [SKIP][156] ([fdo#111068] / [i915#658])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-iclb4/igt@kms_psr2_sf@cursor-plane-update-sf.html
> 
>   * igt@runner@aborted:
>     - shard-skl:          ([FAIL][157], [FAIL][158]) ([i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][159], [FAIL][160], [FAIL][161], [FAIL][162]) ([i915#2029] / [i915#3002] / [i915#4312] / [i915#5257])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-skl4/igt@runner@aborted.html
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11730/shard-skl4/igt@runner@aborted.html
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl3/igt@runner@aborted.html
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl3/igt@runner@aborted.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl7/igt@runner@aborted.html
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/shard-skl7/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
>   [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
>   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
>   [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
>   [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
>   [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
>   [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
>   [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
>   [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
>   [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
>   [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3319]: https://gitlab.freedesktop.org/drm/intel/issues/3319
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
>   [i915#3371]: https://gitlab.freedesktop.org/drm/intel/issues/3371
>   [i915#3376]: https://gitlab.freedesktop.org/drm/intel/issues/3376
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3464]: https://gitlab.freedesktop.org/drm/intel/issues/3464
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3614]: https://gitlab.freedesktop.org/drm/intel/issues/3614
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3763]: https://gitlab.freedesktop.org/drm/intel/issues/3763
>   [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
>   [i915#3825]: https://gitlab.freedesktop.org/drm/intel/issues/3825
>   [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
>   [i915#3828]: https://gitlab.freedesktop.org/drm/intel/issues/3828
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3936]: https://gitlab.freedesktop.org/drm/intel/issues/3936
>   [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
>   [i915#3963]: https://gitlab.freedesktop.org/drm/intel/issues/3963
>   [i915#3966]: https://gitlab.freedesktop.org/drm/intel/issues/3966
>   [i915#4016]: https://gitlab.freedesktop.org/drm/intel/issues/4016
>   [i915#4036]: https://gitlab.freedesktop.org/drm/intel/issues/4036
>   [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
>   [i915#4241]: https://gitlab.freedesktop.org/drm/intel/issues/4241
>   [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>   [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4807]: https://gitlab.freedesktop.org/drm/intel/issues/4807
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4817]: https://gitlab.freedesktop.org/drm/intel/issues/4817
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4842]: https://gitlab.freedesktop.org/drm/intel/issues/4842
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
>   [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4877]: https://gitlab.freedesktop.org/drm/intel/issues/4877
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#4884]: https://gitlab.freedesktop.org/drm/intel/issues/4884
>   [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
>   [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
>   [i915#4904]: https://gitlab.freedesktop.org/drm/intel/issues/4904
>   [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
>   [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
>   [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
>   [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
>   [i915#5032]: https://gitlab.freedesktop.org/drm/intel/issues/5032
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5264]: https://gitlab.freedesktop.org/drm/intel/issues/5264
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
>   [i915#5713]: https://gitlab.freedesktop.org/drm/intel/issues/5713
>   [i915#5721]: https://gitlab.freedesktop.org/drm/intel/issues/5721
>   [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
>   [i915#5776]: https://gitlab.freedesktop.org/drm/intel/issues/5776
>   [i915#5903]: https://gitlab.freedesktop.org/drm/intel/issues/5903
>   [i915#6076]: https://gitlab.freedesktop.org/drm/intel/issues/6076
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
>   [i915#6140]: https://gitlab.freedesktop.org/drm/intel/issues/6140
>   [i915#6141]: https://gitlab.freedesktop.org/drm/intel/issues/6141
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11730 -> Patchwork_104760v2
> 
>   CI-20190529: 20190529
>   CI_DRM_11730: 5e7f37992081d4600d6329a745ab7edb2ee42bcd @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6510: dacfa80158d586cd0fe322f25f5275f224a946dd @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_104760v2: 5e7f37992081d4600d6329a745ab7edb2ee42bcd @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104760v2/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
