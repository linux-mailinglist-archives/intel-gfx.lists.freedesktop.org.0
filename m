Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC5645432A7
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jun 2022 16:35:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29BEF10F0B0;
	Wed,  8 Jun 2022 14:35:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F23EB10F0B0
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jun 2022 14:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654698909; x=1686234909;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=uUjYZtSUt0AykHvMkQod/uqb14qgXTkAUR84SeI+SS8=;
 b=ey0XjbVFIT122rXzqzbcyS5q8skHhZTEwv1CgsdRcxlqGbM+Svz7J/Xp
 KduOqKHcS+ly8HszWRDaodkMUq1u+89QqpfcbTv6pkIjHYO9BtHYDKIoU
 8Ot6FUFub1q9H/sIXHgK47Q+pNT+WvjWzDviAhZrS3LNbNTLD/moZhGRi
 /1axUBhSAnE2zP966L6V7hlLkyecULSoatgPSF9fLyil/c6dhCEvCfm+L
 fG8DxAeOuFfoTzfuKqOhv2OdR1IG7qRaAxJ09b1ki+nSPcDVdGi+tOAxX
 k1Fnl18FDb/SNy0mz1uv+nVpc3YXOefWYBctmayBo7fM/LFRHcAuBpoCg Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10371"; a="257346658"
X-IronPort-AV: E=Sophos;i="5.91,286,1647327600"; d="scan'208";a="257346658"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2022 07:34:53 -0700
X-IronPort-AV: E=Sophos;i="5.91,286,1647327600"; d="scan'208";a="636858894"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2022 07:34:42 -0700
Date: Wed, 8 Jun 2022 07:34:41 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YqCzgTyKKP8rVmNz@mdroper-desk1.amr.corp.intel.com>
References: <20220607175716.3338661-1-matthew.d.roper@intel.com>
 <165467661498.15586.9476209676928796038@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <165467661498.15586.9476209676928796038@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/xehp=3A_Correct_steering_initialization?=
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

On Wed, Jun 08, 2022 at 08:23:34AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/xehp: Correct steering initialization
> URL   : https://patchwork.freedesktop.org/series/104842/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11732_full -> Patchwork_104842v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_104842v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_104842v1_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (10 -> 13)
> ------------------------------
> 
>   Additional (3): shard-rkl shard-dg1 shard-tglu 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_104842v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-snb:          [PASS][1] -> [DMESG-WARN][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-snb6/igt@i915_module_load@reload-with-fault-injection.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-snb2/igt@i915_module_load@reload-with-fault-injection.html

Filesystem panic; not related to i915.

> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-skl:          NOTRUN -> [FAIL][3]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-skl7/igt@i915_pm_sseu@full-enable.html

This Xe_HP change wouldn't have affected the behavior of SKL.  I don't
see a preexisting bug that matches this though.

> 
>   * igt@kms_flip@flip-vs-panning-vs-hang:
>     - shard-kbl:          NOTRUN -> [INCOMPLETE][4]
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-kbl1/igt@kms_flip@flip-vs-panning-vs-hang.html

  <2>[  427.216493] softdog: Initiating panic
  <0>[  427.216501] Kernel panic - not syncing: Software Watchdog Timer expired

It doesn't seem like anything was actually hung before the watchdog
fired though.  Not sure what the cause is, but not related to this
patch.

Patch applied to drm-intel-gt-next.  Thanks Bala for the review.


Matt
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_104842v1_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Issues hit ####
> 
>   * boot:
>     - shard-glk:          ([PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28]) -> ([PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [FAIL][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53]) ([i915#4392])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-glk7/boot.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-glk7/boot.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-glk6/boot.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-glk6/boot.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-glk5/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-glk5/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-glk4/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-glk4/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-glk4/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-glk4/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-glk3/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-glk3/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-glk8/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-glk3/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-glk2/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-glk2/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-glk2/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-glk8/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-glk9/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-glk1/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-glk9/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-glk1/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-glk9/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-glk1/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-glk9/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-glk9/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-glk8/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-glk8/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-glk7/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-glk7/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-glk6/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-glk6/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-glk6/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-glk5/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-glk5/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-glk5/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-glk4/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-glk4/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-glk4/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-glk4/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-glk3/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-glk3/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-glk3/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-glk2/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-glk2/boot.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-glk2/boot.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-glk1/boot.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-glk1/boot.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-glk1/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@feature_discovery@display-2x:
>     - shard-tglb:         NOTRUN -> [SKIP][54] ([i915#1839])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-tglb2/igt@feature_discovery@display-2x.html
> 
>   * igt@gem_ctx_persistence@many-contexts:
>     - shard-tglb:         [PASS][55] -> [FAIL][56] ([i915#2410])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-tglb6/igt@gem_ctx_persistence@many-contexts.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-tglb6/igt@gem_ctx_persistence@many-contexts.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [PASS][57] -> [TIMEOUT][58] ([i915#3063])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-tglb6/igt@gem_eio@unwedge-stress.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-tglb6/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@parallel-contexts:
>     - shard-iclb:         [PASS][59] -> [SKIP][60] ([i915#4525]) +1 similar issue
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-iclb2/igt@gem_exec_balancer@parallel-contexts.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-iclb3/igt@gem_exec_balancer@parallel-contexts.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglb:         [PASS][61] -> [FAIL][62] ([i915#2842]) +2 similar issues
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-glk:          [PASS][63] -> [FAIL][64] ([i915#2842]) +1 similar issue
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-glk7/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-kbl:          [PASS][65] -> [FAIL][66] ([i915#2842]) +3 similar issues
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html
>     - shard-apl:          [PASS][67] -> [FAIL][68] ([i915#2842])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-apl7/igt@gem_exec_fair@basic-none@vcs0.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-apl4/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][69] ([i915#2842])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [PASS][70] -> [FAIL][71] ([i915#2849])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_whisper@basic-fds-forked-all:
>     - shard-kbl:          [PASS][72] -> [INCOMPLETE][73] ([i915#5843])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-kbl4/igt@gem_exec_whisper@basic-fds-forked-all.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-kbl1/igt@gem_exec_whisper@basic-fds-forked-all.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-skl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#2190])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-skl9/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@basic:
>     - shard-apl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#4613])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-apl8/igt@gem_lmem_swapping@basic.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi:
>     - shard-skl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#4613]) +2 similar issues
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-skl2/igt@gem_lmem_swapping@heavy-verify-multi.html
> 
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - shard-glk:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#4613])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-glk2/igt@gem_lmem_swapping@parallel-random-engines.html
> 
>   * igt@gem_media_vme:
>     - shard-tglb:         NOTRUN -> [SKIP][78] ([i915#284])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-tglb2/igt@gem_media_vme.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-skl:          NOTRUN -> [WARN][79] ([i915#2658])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-skl9/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-on:
>     - shard-tglb:         NOTRUN -> [SKIP][80] ([i915#4270])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-tglb2/igt@gem_pxp@reject-modify-context-protection-on.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-after-close:
>     - shard-tglb:         NOTRUN -> [SKIP][81] ([i915#3297])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-tglb2/igt@gem_userptr_blits@unsync-unmap-after-close.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-skl:          NOTRUN -> [FAIL][82] ([i915#3318])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-skl9/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gem_workarounds@suspend-resume:
>     - shard-skl:          [PASS][83] -> [INCOMPLETE][84] ([i915#4939] / [i915#5129])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-skl1/igt@gem_workarounds@suspend-resume.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-skl4/igt@gem_workarounds@suspend-resume.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-apl:          [PASS][85] -> [DMESG-WARN][86] ([i915#5566] / [i915#716])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-apl2/igt@gen9_exec_parse@allowed-single.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-apl7/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-tglb:         NOTRUN -> [SKIP][87] ([i915#1904])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-tglb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-skl:          NOTRUN -> [FAIL][88] ([i915#454])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-skl7/igt@i915_pm_dc@dc6-dpms.html
>     - shard-iclb:         [PASS][89] -> [FAIL][90] ([i915#454])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-iclb8/igt@i915_pm_dc@dc6-dpms.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_selftest@live@gt_pm:
>     - shard-tglb:         NOTRUN -> [DMESG-FAIL][91] ([i915#1759])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-tglb2/igt@i915_selftest@live@gt_pm.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip:
>     - shard-skl:          [PASS][92] -> [FAIL][93] ([i915#2521])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-skl10/igt@kms_async_flips@alternate-sync-async-flip.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip.html
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-0:
>     - shard-iclb:         [PASS][94] -> [FAIL][95] ([i915#1888])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-iclb1/igt@kms_big_fb@linear-64bpp-rotate-0.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-iclb1/igt@kms_big_fb@linear-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-270:
>     - shard-tglb:         NOTRUN -> [SKIP][96] ([fdo#111614])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-tglb2/igt@kms_big_fb@linear-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][97] ([i915#3743])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-skl9/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:
>     - shard-tglb:         NOTRUN -> [SKIP][98] ([fdo#111615])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-tglb2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][99] ([i915#3689]) +1 similar issue
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-tglb2/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
>     - shard-glk:          NOTRUN -> [SKIP][100] ([fdo#109271] / [i915#3886]) +3 similar issues
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-glk2/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
>     - shard-skl:          NOTRUN -> [SKIP][101] ([fdo#109271] / [i915#3886]) +10 similar issues
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-skl7/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][102] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-apl3/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
>     - shard-kbl:          NOTRUN -> [SKIP][103] ([fdo#109271] / [i915#3886])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-kbl6/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_chamelium@dp-crc-multiple:
>     - shard-tglb:         NOTRUN -> [SKIP][104] ([fdo#109284] / [fdo#111827]) +3 similar issues
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-tglb2/igt@kms_chamelium@dp-crc-multiple.html
> 
>   * igt@kms_chamelium@dp-crc-single:
>     - shard-apl:          NOTRUN -> [SKIP][105] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-apl8/igt@kms_chamelium@dp-crc-single.html
> 
>   * igt@kms_chamelium@hdmi-hpd-storm:
>     - shard-glk:          NOTRUN -> [SKIP][106] ([fdo#109271] / [fdo#111827]) +4 similar issues
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-glk2/igt@kms_chamelium@hdmi-hpd-storm.html
> 
>   * igt@kms_chamelium@hdmi-hpd-with-enabled-mode:
>     - shard-kbl:          NOTRUN -> [SKIP][107] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-kbl3/igt@kms_chamelium@hdmi-hpd-with-enabled-mode.html
> 
>   * igt@kms_color@pipe-b-deep-color:
>     - shard-tglb:         NOTRUN -> [SKIP][108] ([i915#3555])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-tglb2/igt@kms_color@pipe-b-deep-color.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-negative:
>     - shard-skl:          NOTRUN -> [SKIP][109] ([fdo#109271] / [fdo#111827]) +10 similar issues
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-skl7/igt@kms_color_chamelium@pipe-d-ctm-negative.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-apl:          NOTRUN -> [TIMEOUT][110] ([i915#1319])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-apl3/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-32x32-sliding:
>     - shard-tglb:         NOTRUN -> [SKIP][111] ([i915#3319])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-tglb2/igt@kms_cursor_crc@pipe-b-cursor-32x32-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding:
>     - shard-tglb:         NOTRUN -> [SKIP][112] ([fdo#109279] / [i915#3359])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-tglb2/igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-max-size-onscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][113] ([i915#3359])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-tglb2/igt@kms_cursor_crc@pipe-d-cursor-max-size-onscreen.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:
>     - shard-tglb:         NOTRUN -> [SKIP][114] ([fdo#109274] / [fdo#111825])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-tglb2/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-skl:          NOTRUN -> [FAIL][115] ([i915#2346])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@pipe-d-torture-bo:
>     - shard-kbl:          NOTRUN -> [SKIP][116] ([fdo#109271] / [i915#533])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-kbl6/igt@kms_cursor_legacy@pipe-d-torture-bo.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate:
>     - shard-apl:          NOTRUN -> [SKIP][117] ([fdo#109271]) +86 similar issues
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-apl8/igt@kms_flip@2x-plain-flip-fb-recreate.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
>     - shard-kbl:          [PASS][118] -> [DMESG-WARN][119] ([i915#180]) +5 similar issues
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
>     - shard-apl:          [PASS][120] -> [DMESG-WARN][121] ([i915#180]) +1 similar issue
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:
>     - shard-skl:          NOTRUN -> [SKIP][122] ([fdo#109271] / [i915#3701])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-skl2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-plflip-blt:
>     - shard-tglb:         NOTRUN -> [SKIP][123] ([fdo#109280] / [fdo#111825]) +5 similar issues
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-4:
>     - shard-tglb:         NOTRUN -> [SKIP][124] ([i915#5439])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-cpu:
>     - shard-kbl:          NOTRUN -> [SKIP][125] ([fdo#109271]) +34 similar issues
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-kbl3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt:
>     - shard-glk:          NOTRUN -> [SKIP][126] ([fdo#109271]) +39 similar issues
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-glk2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1:
>     - shard-kbl:          [PASS][127] -> [FAIL][128] ([i915#1188])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-kbl1/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-kbl3/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html
> 
>   * igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c:
>     - shard-tglb:         NOTRUN -> [SKIP][129] ([fdo#109289])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-tglb2/igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c.html
> 
>   * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
>     - shard-skl:          NOTRUN -> [SKIP][130] ([fdo#109271] / [i915#533])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-skl2/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
>     - shard-apl:          NOTRUN -> [SKIP][131] ([fdo#109271] / [i915#533])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-apl3/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
>     - shard-kbl:          NOTRUN -> [FAIL][132] ([fdo#108145] / [i915#265])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-kbl6/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
>     - shard-skl:          [PASS][133] -> [FAIL][134] ([fdo#108145] / [i915#265])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
>     - shard-glk:          NOTRUN -> [FAIL][135] ([fdo#108145] / [i915#265])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-glk2/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
>     - shard-skl:          NOTRUN -> [FAIL][136] ([fdo#108145] / [i915#265]) +1 similar issue
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
> 
>   * igt@kms_plane_lowres@pipe-c-tiling-none:
>     - shard-tglb:         NOTRUN -> [SKIP][137] ([i915#3536]) +1 similar issue
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-tglb2/igt@kms_plane_lowres@pipe-c-tiling-none.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
>     - shard-skl:          NOTRUN -> [SKIP][138] ([fdo#109271] / [i915#658]) +2 similar issues
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-skl2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area:
>     - shard-glk:          NOTRUN -> [SKIP][139] ([fdo#109271] / [i915#658])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-glk2/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
>     - shard-apl:          NOTRUN -> [SKIP][140] ([fdo#109271] / [i915#658]) +1 similar issue
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-apl8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-iclb:         [PASS][141] -> [SKIP][142] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-iclb8/igt@kms_psr2_su@frontbuffer-xrgb8888.html
>     - shard-kbl:          NOTRUN -> [SKIP][143] ([fdo#109271] / [i915#658]) +1 similar issue
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-kbl3/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr@psr2_sprite_plane_onoff:
>     - shard-tglb:         NOTRUN -> [FAIL][144] ([i915#132] / [i915#3467])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-tglb2/igt@kms_psr@psr2_sprite_plane_onoff.html
> 
>   * igt@kms_psr@psr2_suspend:
>     - shard-iclb:         [PASS][145] -> [SKIP][146] ([fdo#109441]) +1 similar issue
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-iclb2/igt@kms_psr@psr2_suspend.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-iclb8/igt@kms_psr@psr2_suspend.html
> 
>   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
>     - shard-skl:          NOTRUN -> [SKIP][147] ([fdo#109271]) +177 similar issues
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-skl2/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html
> 
>   * igt@kms_sysfs_edid_timing:
>     - shard-skl:          NOTRUN -> [FAIL][148] ([IGT#2])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-skl7/igt@kms_sysfs_edid_timing.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-glk:          NOTRUN -> [SKIP][149] ([fdo#109271] / [i915#2437])
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-glk2/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-skl:          NOTRUN -> [SKIP][150] ([fdo#109271] / [i915#2437]) +1 similar issue
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-skl9/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@prime_udl:
>     - shard-tglb:         NOTRUN -> [SKIP][151] ([fdo#109291]) +1 similar issue
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-tglb2/igt@prime_udl.html
> 
>   * igt@sw_sync@sync_merge_same:
>     - shard-tglb:         NOTRUN -> [FAIL][152] ([i915#6140])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-tglb2/igt@sw_sync@sync_merge_same.html
> 
>   * igt@sysfs_clients@fair-7:
>     - shard-skl:          NOTRUN -> [SKIP][153] ([fdo#109271] / [i915#2994])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-skl9/igt@sysfs_clients@fair-7.html
> 
>   * igt@sysfs_clients@recycle:
>     - shard-apl:          NOTRUN -> [SKIP][154] ([fdo#109271] / [i915#2994])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-apl8/igt@sysfs_clients@recycle.html
> 
>   * igt@sysfs_clients@split-10:
>     - shard-kbl:          NOTRUN -> [SKIP][155] ([fdo#109271] / [i915#2994])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-kbl6/igt@sysfs_clients@split-10.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_eio@kms:
>     - shard-tglb:         [FAIL][156] ([i915#5784]) -> [PASS][157]
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-tglb3/igt@gem_eio@kms.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-tglb7/igt@gem_eio@kms.html
> 
>   * igt@gem_exec_balancer@parallel-bb-first:
>     - shard-iclb:         [SKIP][158] ([i915#4525]) -> [PASS][159]
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-iclb7/igt@gem_exec_balancer@parallel-bb-first.html
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-iclb2/igt@gem_exec_balancer@parallel-bb-first.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-glk:          [FAIL][160] ([i915#2842]) -> [PASS][161]
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-glk3/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-glk5/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_schedule@wide@rcs0:
>     - shard-glk:          [FAIL][162] ([i915#5965]) -> [PASS][163]
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-glk7/igt@gem_exec_schedule@wide@rcs0.html
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-glk6/igt@gem_exec_schedule@wide@rcs0.html
> 
>   * igt@gem_exec_whisper@basic-queues-forked-all:
>     - shard-glk:          [DMESG-WARN][164] ([i915#118]) -> [PASS][165]
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-glk4/igt@gem_exec_whisper@basic-queues-forked-all.html
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-glk4/igt@gem_exec_whisper@basic-queues-forked-all.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [SKIP][166] ([i915#2190]) -> [PASS][167]
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-tglb7/igt@gem_huc_copy@huc-copy.html
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-tglb5/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@i915_selftest@live@gt_mocs:
>     - shard-tglb:         [INCOMPLETE][168] -> [PASS][169]
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-tglb1/igt@i915_selftest@live@gt_mocs.html
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-tglb2/igt@i915_selftest@live@gt_mocs.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-kbl:          [DMESG-WARN][170] ([i915#180]) -> [PASS][171] +1 similar issue
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-kbl7/igt@i915_suspend@fence-restore-tiled2untiled.html
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-kbl6/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
>     - shard-apl:          [DMESG-WARN][172] ([i915#180]) -> [PASS][173] +2 similar issues
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
>     - shard-skl:          [FAIL][174] ([i915#2122]) -> [PASS][175] +1 similar issue
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1:
>     - shard-iclb:         [SKIP][176] ([i915#5235]) -> [PASS][177] +2 similar issues
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1.html
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-iclb3/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1.html
> 
>   * igt@kms_psr@psr2_sprite_render:
>     - shard-iclb:         [SKIP][178] ([fdo#109441]) -> [PASS][179]
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-iclb5/igt@kms_psr@psr2_sprite_render.html
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-iclb2/igt@kms_psr@psr2_sprite_render.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-iclb:         [SKIP][180] ([i915#4525]) -> [FAIL][181] ([i915#6117])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-iclb5/igt@gem_exec_balancer@parallel-ordering.html
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-kbl:          [FAIL][182] ([i915#4767]) -> [INCOMPLETE][183] ([i915#180])
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
>     - shard-iclb:         [SKIP][184] ([fdo#111068] / [i915#658]) -> [SKIP][185] ([i915#2920])
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-iclb7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-iclb:         [SKIP][186] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [FAIL][187] ([i915#5939])
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-iclb5/igt@kms_psr2_su@page_flip-nv12.html
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-iclb2/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_vblank@pipe-d-query-busy:
>     - shard-skl:          [SKIP][188] ([fdo#109271] / [i915#1888]) -> [SKIP][189] ([fdo#109271])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-skl9/igt@kms_vblank@pipe-d-query-busy.html
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-skl1/igt@kms_vblank@pipe-d-query-busy.html
> 
>   * igt@runner@aborted:
>     - shard-apl:          ([FAIL][190], [FAIL][191], [FAIL][192], [FAIL][193], [FAIL][194]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][195], [FAIL][196], [FAIL][197], [FAIL][198], [FAIL][199]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-apl1/igt@runner@aborted.html
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-apl8/igt@runner@aborted.html
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-apl6/igt@runner@aborted.html
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-apl6/igt@runner@aborted.html
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-apl1/igt@runner@aborted.html
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-apl8/igt@runner@aborted.html
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-apl4/igt@runner@aborted.html
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-apl7/igt@runner@aborted.html
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-apl1/igt@runner@aborted.html
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-apl3/igt@runner@aborted.html
>     - shard-skl:          ([FAIL][200], [FAIL][201]) ([i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][202], [FAIL][203], [FAIL][204], [FAIL][205]) ([i915#2029] / [i915#3002] / [i915#4312] / [i915#5257])
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-skl4/igt@runner@aborted.html
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-skl10/igt@runner@aborted.html
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-skl3/igt@runner@aborted.html
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-skl10/igt@runner@aborted.html
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-skl3/igt@runner@aborted.html
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-skl4/igt@runner@aborted.html
>     - shard-kbl:          ([FAIL][206], [FAIL][207], [FAIL][208], [FAIL][209], [FAIL][210], [FAIL][211], [FAIL][212], [FAIL][213]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][214], [FAIL][215], [FAIL][216], [FAIL][217], [FAIL][218], [FAIL][219], [FAIL][220], [FAIL][221], [FAIL][222], [FAIL][223], [FAIL][224]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#92])
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-kbl3/igt@runner@aborted.html
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-kbl6/igt@runner@aborted.html
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-kbl6/igt@runner@aborted.html
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-kbl6/igt@runner@aborted.html
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-kbl7/igt@runner@aborted.html
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-kbl6/igt@runner@aborted.html
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-kbl6/igt@runner@aborted.html
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11732/shard-kbl1/igt@runner@aborted.html
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-kbl1/igt@runner@aborted.html
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-kbl1/igt@runner@aborted.html
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-kbl1/igt@runner@aborted.html
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-kbl6/igt@runner@aborted.html
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-kbl1/igt@runner@aborted.html
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-kbl6/igt@runner@aborted.html
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-kbl6/igt@runner@aborted.html
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-kbl6/igt@runner@aborted.html
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-kbl1/igt@runner@aborted.html
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-kbl6/igt@runner@aborted.html
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/shard-kbl6/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
>   [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
>   [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
>   [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
>   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
>   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
>   [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
>   [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
>   [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110254]: https://bugs.freedesktop.org/show_bug.cgi?id=110254
>   [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
>   [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
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
>   [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1759]: https://gitlab.freedesktop.org/drm/intel/issues/1759
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1850]: https://gitlab.freedesktop.org/drm/intel/issues/1850
>   [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
>   [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
>   [i915#1904]: https://gitlab.freedesktop.org/drm/intel/issues/1904
>   [i915#1911]: https://gitlab.freedesktop.org/drm/intel/issues/1911
>   [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
>   [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2232]: https://gitlab.freedesktop.org/drm/intel/issues/2232
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
>   [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
>   [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
>   [i915#2435]: https://gitlab.freedesktop.org/drm/intel/issues/2435
>   [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
>   [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3319]: https://gitlab.freedesktop.org/drm/intel/issues/3319
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
>   [i915#3376]: https://gitlab.freedesktop.org/drm/intel/issues/3376
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3464]: https://gitlab.freedesktop.org/drm/intel/issues/3464
>   [i915#3467]: https://gitlab.freedesktop.org/drm/intel/issues/3467
>   [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
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
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3825]: https://gitlab.freedesktop.org/drm/intel/issues/3825
>   [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
>   [i915#3828]: https://gitlab.freedesktop.org/drm/intel/issues/3828
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3936]: https://gitlab.freedesktop.org/drm/intel/issues/3936
>   [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#3966]: https://gitlab.freedesktop.org/drm/intel/issues/3966
>   [i915#3987]: https://gitlab.freedesktop.org/drm/intel/issues/3987
>   [i915#4036]: https://gitlab.freedesktop.org/drm/intel/issues/4036
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
>   [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
>   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>   [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
>   [i915#4392]: https://gitlab.freedesktop.org/drm/intel/issues/4392
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4807]: https://gitlab.freedesktop.org/drm/intel/issues/4807
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4842]: https://gitlab.freedesktop.org/drm/intel/issues/4842
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
>   [i915#4855]: https://gitlab.freedesktop.org/drm/intel/issues/4855
>   [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
>   [i915#4874]: https://gitlab.freedesktop.org/drm/intel/issues/4874
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
>   [i915#4884]: https://gitlab.freedesktop.org/drm/intel/issues/4884
>   [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
>   [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
>   [i915#4904]: https://gitlab.freedesktop.org/drm/intel/issues/4904
>   [i915#4929]: https://gitlab.freedesktop.org/drm/intel/issues/4929
>   [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
>   [i915#4941]: https://gitlab.freedesktop.org/drm/intel/issues/4941
>   [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
>   [i915#5129]: https://gitlab.freedesktop.org/drm/intel/issues/5129
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5182]: https://gitlab.freedesktop.org/drm/intel/issues/5182
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5264]: https://gitlab.freedesktop.org/drm/intel/issues/5264
>   [i915#5266]: https://gitlab.freedesktop.org/drm/intel/issues/5266
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#5843]: https://gitlab.freedesktop.org/drm/intel/issues/5843
>   [i915#5903]: https://gitlab.freedesktop.org/drm/intel/issues/5903
>   [i915#5939]: https://gitlab.freedesktop.org/drm/intel/issues/5939
>   [i915#5965]: https://gitlab.freedesktop.org/drm/intel/issues/5965
>   [i915#6011]: https://gitlab.freedesktop.org/drm/intel/issues/6011
>   [i915#6076]: https://gitlab.freedesktop.org/drm/intel/issues/6076
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
>   [i915#6140]: https://gitlab.freedesktop.org/drm/intel/issues/6140
>   [i915#6141]: https://gitlab.freedesktop.org/drm/intel/issues/6141
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11732 -> Patchwork_104842v1
> 
>   CI-20190529: 20190529
>   CI_DRM_11732: ea6c9f614fb2d6a5da6d417cdce31d925786275c @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6512: 5efc64e9b93a2df85581ea425ee7d0f435855f13 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_104842v1: ea6c9f614fb2d6a5da6d417cdce31d925786275c @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104842v1/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
