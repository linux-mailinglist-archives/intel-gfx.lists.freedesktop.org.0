Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 236B452B0C5
	for <lists+intel-gfx@lfdr.de>; Wed, 18 May 2022 05:24:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A96210F94A;
	Wed, 18 May 2022 03:24:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9355F10F059
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 May 2022 03:24:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652844256; x=1684380256;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=BWkC56VjTOHE1vbQcTRAv12C6ZeCRUO7hlADzQYFFKM=;
 b=PNi3a+S8QEoCT5REngXpeR2/zysQHgb2ZBZfzVCuVA/sGxiAqrDeEd5t
 zfMnuwlkIbvNGN7ay+SKKWwe042XU4cKQXQAp1Q2ZXkstVM9cRj4l+lmR
 5sVAXewHpX02WcG4M7cx0KVvsfEwdB0Hpp5OjYhj/Di2Q09cPbhwYxArK
 CZG1MTDyMMl1ZtPIKfo7pdJ+ATeB9XUjnbbKKs10B9+NYKl2TKq1GhN80
 onyWdqnbSxN42vN/PexYrWFTfW5uiPoV7QY38S0+d6Rls1vWahbC6Z/bE
 gVUEtEKHyEL/jTVxmbDYt6zWy3U4neND0796y80iYBmsGIpjkMXEhyo4r Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10350"; a="271578606"
X-IronPort-AV: E=Sophos;i="5.91,234,1647327600"; d="scan'208";a="271578606"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2022 20:24:14 -0700
X-IronPort-AV: E=Sophos;i="5.91,234,1647327600"; d="scan'208";a="523290241"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2022 20:24:14 -0700
Date: Tue, 17 May 2022 20:24:12 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YoRm3G4dSAAe5Y9q@mdroper-desk1.amr.corp.intel.com>
References: <20220517032005.2694737-1-matthew.d.roper@intel.com>
 <165283405198.21387.2797846770688523837@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <165283405198.21387.2797846770688523837@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgaTkx?=
 =?utf-8?q?5=3A_SSEU_handling_updates_=28rev4=29?=
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

On Wed, May 18, 2022 at 12:34:11AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: i915: SSEU handling updates (rev4)
> URL   : https://patchwork.freedesktop.org/series/103244/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11666_full -> Patchwork_103244v4_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_103244v4_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_103244v4_full, please notify your bug team to allow them
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
>   Here are the unknown changes that may have been introduced in Patchwork_103244v4_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_flip@flip-vs-panning-interruptible@c-edp1:
>     - shard-iclb:         [PASS][1] -> [DMESG-WARN][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-iclb3/igt@kms_flip@flip-vs-panning-interruptible@c-edp1.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-iclb8/igt@kms_flip@flip-vs-panning-interruptible@c-edp1.html

<3> [607.307030] rcu: INFO: rcu_preempt detected stalls on CPUs/tasks:
<3> [607.307121] rcu: 	3-...!: (159 GPs behind) idle=834/0/0x0 softirq=27765/27765 fqs=1  (false positive?)
<3> [607.307825] rcu: 	7-...!: (172 GPs behind) idle=abc/0/0x0 softirq=23642/23643 fqs=1  (false positive?)
<4> [607.307934] 	(detected by 0, t=65002 jiffies, g=64137, q=5840)
<6> [607.307942] Sending NMI from CPU 0 to CPUs 3:
<4> [607.308032] NMI backtrace for cpu 3 skipped: idling at intel_idle+0x67/0xc0
<6> [607.308950] Sending NMI from CPU 0 to CPUs 7:
<4> [607.309045] NMI backtrace for cpu 7 skipped: idling at intel_idle+0x67/0xc0
<3> [607.309957] rcu: rcu_preempt kthread timer wakeup didn't happen for 64995 jiffies! g64137 f0x0 RCU_GP_WAIT_FQS(5) ->state=0x402
<3> [607.310053] rcu: 	Possible timer handling issue on cpu=3 timer-softirq=16787
<3> [607.310110] rcu: rcu_preempt kthread starved for 64998 jiffies! g64137 f0x0 RCU_GP_WAIT_FQS(5) ->state=0x402 ->cpu=3
<3> [607.310195] rcu: 	Unless rcu_preempt kthread gets sufficient CPU time, OOM is now expected behavior.
<3> [607.310267] rcu: RCU grace-period kthread stack dump:
<6> [607.310310] task:rcu_preempt     state:I stack:14472 pid:   13 ppid:     2 flags:0x00004000
<6> [607.310326] Call Trace:
<6> [607.310330]  <TASK>
<6> [607.310339]  __schedule+0x483/0xb50
<6> [607.310353]  ? schedule_timeout+0x1b9/0x2e0
<6> [607.310367]  schedule+0x3f/0xa0
<6> [607.310376]  schedule_timeout+0x1be/0x2e0
<6> [607.310386]  ? del_timer_sync+0xb0/0xb0
<6> [607.310398]  ? 0xffffffff81000000
<6> [607.310408]  ? rcu_gp_cleanup+0x440/0x440
<6> [607.310413]  rcu_gp_fqs_loop+0x273/0x3b0
<6> [607.310427]  rcu_gp_kthread+0xb8/0x120
<6> [607.310436]  kthread+0xed/0x120
<6> [607.310443]  ? kthread_complete_and_exit+0x20/0x20
<6> [607.310452]  ret_from_fork+0x1f/0x30
<6> [607.310478]  </TASK>
<3> [607.310481] rcu: Stack dump where RCU GP kthread last ran:
<6> [607.310527] Sending NMI from CPU 0 to CPUs 3:
<4> [607.310602] NMI backtrace for cpu 3 skipped: idling at intel_idle+0x67/0xc0

It's not clear what this is from (no indication it's even related to the
graphics driver).  Definitely not the kind of thing that the SSEU rework
in this series could cause to happen during a display test.


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_103244v4_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Possible fixes ####
> 
>   * boot:
>     - shard-skl:          ([PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [FAIL][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26]) ([i915#5032]) -> ([PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-skl9/boot.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-skl9/boot.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-skl9/boot.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-skl8/boot.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-skl8/boot.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-skl8/boot.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-skl7/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-skl7/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-skl7/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-skl6/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-skl6/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-skl6/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-skl4/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-skl4/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-skl4/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-skl4/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-skl3/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-skl3/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-skl1/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-skl1/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-skl1/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-skl10/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-skl10/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-skl10/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-skl1/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-skl1/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-skl1/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-skl3/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-skl3/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-skl4/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-skl4/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-skl6/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-skl6/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-skl6/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-skl7/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-skl7/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-skl7/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-skl8/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-skl8/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-skl9/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-skl9/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-skl9/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-skl9/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-skl10/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-skl10/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-skl10/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-skl10/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@drm_buddy@all@buddy_alloc_smoke:
>     - shard-skl:          [PASS][50] -> [INCOMPLETE][51] ([i915#5800])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-skl6/igt@drm_buddy@all@buddy_alloc_smoke.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-skl1/igt@drm_buddy@all@buddy_alloc_smoke.html
> 
>   * igt@gem_create@create-massive:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][52] ([i915#4991])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-kbl6/igt@gem_create@create-massive.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-iclb:         [PASS][53] -> [SKIP][54] ([i915#4525])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-iclb4/igt@gem_exec_balancer@parallel-balancer.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-iclb5/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_balancer@parallel-keep-in-fence:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][55] ([i915#5076] / [i915#5614])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-kbl7/igt@gem_exec_balancer@parallel-keep-in-fence.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-tglb:         [PASS][56] -> [FAIL][57] ([i915#2842])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-tglb3/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-tglb8/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-kbl:          [PASS][58] -> [FAIL][59] ([i915#2842]) +2 similar issues
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [PASS][60] -> [FAIL][61] ([i915#2842]) +1 similar issue
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][62] ([i915#2842]) +2 similar issues
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         NOTRUN -> [FAIL][63] ([i915#2849])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_params@secure-non-root:
>     - shard-iclb:         NOTRUN -> [SKIP][64] ([fdo#112283])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-iclb6/igt@gem_exec_params@secure-non-root.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [PASS][65] -> [SKIP][66] ([i915#2190])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-tglb5/igt@gem_huc_copy@huc-copy.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-tglb6/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@basic:
>     - shard-iclb:         NOTRUN -> [SKIP][67] ([i915#4613]) +2 similar issues
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-iclb7/igt@gem_lmem_swapping@basic.html
>     - shard-apl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-apl6/igt@gem_lmem_swapping@basic.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify-ccs:
>     - shard-skl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-skl6/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
> 
>   * igt@gem_lmem_swapping@verify-random:
>     - shard-kbl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#4613])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-kbl6/igt@gem_lmem_swapping@verify-random.html
> 
>   * igt@gem_render_copy@y-tiled-to-vebox-linear:
>     - shard-iclb:         NOTRUN -> [SKIP][71] ([i915#768]) +1 similar issue
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-iclb6/igt@gem_render_copy@y-tiled-to-vebox-linear.html
> 
>   * igt@gem_softpin@evict-single-offset:
>     - shard-kbl:          NOTRUN -> [FAIL][72] ([i915#4171])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-kbl6/igt@gem_softpin@evict-single-offset.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-apl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#3323])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-apl7/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-skl:          NOTRUN -> [FAIL][74] ([i915#3318])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-skl6/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gen9_exec_parse@bb-chained:
>     - shard-iclb:         NOTRUN -> [SKIP][75] ([i915#2856]) +1 similar issue
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-iclb3/igt@gen9_exec_parse@bb-chained.html
> 
>   * igt@i915_pm_rpm@modeset-non-lpsp:
>     - shard-iclb:         NOTRUN -> [SKIP][76] ([fdo#110892])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-iclb7/igt@i915_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-iclb:         NOTRUN -> [SKIP][77] ([i915#4387])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-iclb7/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_selftest@mock@requests:
>     - shard-skl:          [PASS][78] -> [INCOMPLETE][79] ([i915#5183])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-skl8/igt@i915_selftest@mock@requests.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-skl8/igt@i915_selftest@mock@requests.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-apl:          [PASS][80] -> [DMESG-WARN][81] ([i915#180])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-apl6/igt@i915_suspend@forcewake.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-apl4/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
>     - shard-iclb:         NOTRUN -> [SKIP][82] ([i915#3826])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-iclb6/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
> 
>   * igt@kms_async_flips@crc:
>     - shard-skl:          NOTRUN -> [FAIL][83] ([i915#4272])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-skl10/igt@kms_async_flips@crc.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-iclb:         NOTRUN -> [SKIP][84] ([i915#5286]) +1 similar issue
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-iclb3/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@x-tiled-16bpp-rotate-270:
>     - shard-iclb:         NOTRUN -> [SKIP][85] ([fdo#110725] / [fdo#111614]) +2 similar issues
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-iclb6/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
>     - shard-iclb:         NOTRUN -> [SKIP][86] ([fdo#110723])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-iclb7/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#3886]) +5 similar issues
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-apl6/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:
>     - shard-skl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-skl10/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
>     - shard-kbl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#3886])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-kbl6/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][90] ([fdo#109278]) +26 similar issues
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-iclb7/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
>     - shard-iclb:         NOTRUN -> [SKIP][91] ([fdo#109278] / [i915#3886]) +2 similar issues
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-iclb7/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_chamelium@dp-crc-multiple:
>     - shard-skl:          NOTRUN -> [SKIP][92] ([fdo#109271] / [fdo#111827]) +12 similar issues
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-skl9/igt@kms_chamelium@dp-crc-multiple.html
> 
>   * igt@kms_chamelium@dp-hpd-for-each-pipe:
>     - shard-apl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [fdo#111827]) +4 similar issues
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-apl3/igt@kms_chamelium@dp-hpd-for-each-pipe.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-red-to-blue:
>     - shard-iclb:         NOTRUN -> [SKIP][94] ([fdo#109284] / [fdo#111827]) +9 similar issues
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-iclb6/igt@kms_color_chamelium@pipe-a-ctm-red-to-blue.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-limited-range:
>     - shard-kbl:          NOTRUN -> [SKIP][95] ([fdo#109271] / [fdo#111827])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-kbl6/igt@kms_color_chamelium@pipe-c-ctm-limited-range.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-0-25:
>     - shard-iclb:         NOTRUN -> [SKIP][96] ([fdo#109278] / [fdo#109284] / [fdo#111827])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-iclb6/igt@kms_color_chamelium@pipe-d-ctm-0-25.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-apl:          NOTRUN -> [TIMEOUT][97] ([i915#1319])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-apl3/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@dp-mst-type-0:
>     - shard-iclb:         NOTRUN -> [SKIP][98] ([i915#3116])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-iclb3/igt@kms_content_protection@dp-mst-type-0.html
> 
>   * igt@kms_content_protection@lic:
>     - shard-iclb:         NOTRUN -> [SKIP][99] ([fdo#109300] / [fdo#111066])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-iclb6/igt@kms_content_protection@lic.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding:
>     - shard-iclb:         NOTRUN -> [SKIP][100] ([fdo#109278] / [fdo#109279]) +3 similar issues
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-iclb6/igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:
>     - shard-skl:          NOTRUN -> [SKIP][101] ([fdo#109271]) +151 similar issues
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen:
>     - shard-kbl:          NOTRUN -> [SKIP][102] ([fdo#109271]) +55 similar issues
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-kbl1/igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:
>     - shard-iclb:         NOTRUN -> [SKIP][103] ([fdo#109274] / [fdo#109278]) +2 similar issues
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-iclb3/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html
> 
>   * igt@kms_dp_tiled_display@basic-test-pattern:
>     - shard-iclb:         NOTRUN -> [SKIP][104] ([i915#426])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-iclb3/igt@kms_dp_tiled_display@basic-test-pattern.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms:
>     - shard-iclb:         NOTRUN -> [SKIP][105] ([fdo#109274]) +5 similar issues
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-iclb3/igt@kms_flip@2x-flip-vs-dpms.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
>     - shard-skl:          [PASS][106] -> [FAIL][107] ([i915#2122]) +1 similar issue
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
>     - shard-glk:          [PASS][108] -> [FAIL][109] ([i915#4911])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-glk5/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:
>     - shard-iclb:         [PASS][110] -> [SKIP][111] ([i915#3701])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-iclb8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
>     - shard-iclb:         NOTRUN -> [SKIP][112] ([fdo#109280]) +22 similar issues
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-iclb3/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-iclb:         NOTRUN -> [SKIP][113] ([i915#1839])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-iclb6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
>     - shard-kbl:          NOTRUN -> [FAIL][114] ([i915#265])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-kbl6/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
>     - shard-apl:          NOTRUN -> [FAIL][115] ([fdo#108145] / [i915#265])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-apl6/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
>     - shard-skl:          NOTRUN -> [FAIL][116] ([fdo#108145] / [i915#265]) +1 similar issue
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [PASS][117] -> [FAIL][118] ([fdo#108145] / [i915#265]) +1 similar issue
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_plane_lowres@pipe-a-tiling-x:
>     - shard-iclb:         NOTRUN -> [SKIP][119] ([i915#3536]) +1 similar issue
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-iclb6/igt@kms_plane_lowres@pipe-a-tiling-x.html
> 
>   * igt@kms_plane_scaling@downscale-with-modifier-factor-0-25@pipe-a-edp-1-downscale-with-modifier:
>     - shard-skl:          NOTRUN -> [SKIP][120] ([fdo#109271] / [i915#5176]) +2 similar issues
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-skl10/igt@kms_plane_scaling@downscale-with-modifier-factor-0-25@pipe-a-edp-1-downscale-with-modifier.html
> 
>   * igt@kms_plane_scaling@invalid-num-scalers@pipe-a-edp-1-invalid-num-scalers:
>     - shard-skl:          NOTRUN -> [SKIP][121] ([fdo#109271] / [i915#5776]) +2 similar issues
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-skl6/igt@kms_plane_scaling@invalid-num-scalers@pipe-a-edp-1-invalid-num-scalers.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1-planes-downscale:
>     - shard-iclb:         [PASS][122] -> [SKIP][123] ([i915#5235]) +2 similar issues
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-iclb8/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1-planes-downscale.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-iclb2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1-planes-downscale.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
>     - shard-apl:          NOTRUN -> [SKIP][124] ([fdo#109271] / [i915#658]) +1 similar issue
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-apl7/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
>     - shard-iclb:         NOTRUN -> [SKIP][125] ([fdo#111068] / [i915#658])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-iclb3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-iclb:         NOTRUN -> [SKIP][126] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-iclb6/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-kbl:          NOTRUN -> [SKIP][127] ([fdo#109271] / [i915#658]) +1 similar issue
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-kbl7/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-skl:          NOTRUN -> [SKIP][128] ([fdo#109271] / [i915#658]) +1 similar issue
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-skl10/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@psr2_sprite_plane_move:
>     - shard-iclb:         NOTRUN -> [SKIP][129] ([fdo#109441]) +2 similar issues
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html
> 
>   * igt@kms_psr@psr2_suspend:
>     - shard-iclb:         [PASS][130] -> [SKIP][131] ([fdo#109441]) +1 similar issue
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-iclb2/igt@kms_psr@psr2_suspend.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-iclb3/igt@kms_psr@psr2_suspend.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-skl:          [PASS][132] -> [DMESG-WARN][133] ([i915#1982])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-skl4/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-skl10/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
>     - shard-iclb:         [PASS][134] -> [SKIP][135] ([i915#5519])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-iclb1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-iclb1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
>     - shard-apl:          NOTRUN -> [SKIP][136] ([fdo#109271]) +118 similar issues
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-apl7/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html
> 
>   * igt@kms_sysfs_edid_timing:
>     - shard-apl:          NOTRUN -> [FAIL][137] ([IGT#2])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-apl6/igt@kms_sysfs_edid_timing.html
> 
>   * igt@kms_vblank@pipe-d-wait-idle:
>     - shard-apl:          NOTRUN -> [SKIP][138] ([fdo#109271] / [i915#533]) +3 similar issues
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-apl7/igt@kms_vblank@pipe-d-wait-idle.html
> 
>   * igt@kms_vrr@flip-basic:
>     - shard-iclb:         NOTRUN -> [SKIP][139] ([i915#3555]) +1 similar issue
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-iclb6/igt@kms_vrr@flip-basic.html
> 
>   * igt@nouveau_crc@pipe-a-source-rg:
>     - shard-iclb:         NOTRUN -> [SKIP][140] ([i915#2530]) +1 similar issue
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-iclb3/igt@nouveau_crc@pipe-a-source-rg.html
> 
>   * igt@perf@polling:
>     - shard-skl:          [PASS][141] -> [FAIL][142] ([i915#1542])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-skl9/igt@perf@polling.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-skl3/igt@perf@polling.html
> 
>   * igt@prime_nv_pcopy@test3_3:
>     - shard-iclb:         NOTRUN -> [SKIP][143] ([fdo#109291]) +3 similar issues
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-iclb3/igt@prime_nv_pcopy@test3_3.html
> 
>   * igt@sysfs_clients@fair-0:
>     - shard-skl:          NOTRUN -> [SKIP][144] ([fdo#109271] / [i915#2994]) +3 similar issues
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-skl9/igt@sysfs_clients@fair-0.html
> 
>   * igt@sysfs_clients@fair-3:
>     - shard-apl:          NOTRUN -> [SKIP][145] ([fdo#109271] / [i915#2994])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-apl3/igt@sysfs_clients@fair-3.html
> 
>   * igt@sysfs_clients@split-10:
>     - shard-iclb:         NOTRUN -> [SKIP][146] ([i915#2994]) +2 similar issues
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-iclb3/igt@sysfs_clients@split-10.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_eio@in-flight-10ms:
>     - shard-tglb:         [TIMEOUT][147] ([i915#3063]) -> [PASS][148]
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-tglb2/igt@gem_eio@in-flight-10ms.html
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-tglb1/igt@gem_eio@in-flight-10ms.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - {shard-tglu}:       [FAIL][149] ([i915#2842]) -> [PASS][150]
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-tglu-6/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-tglu-2/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-apl:          [FAIL][151] ([i915#2842]) -> [PASS][152]
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-apl4/igt@gem_exec_fair@basic-none@vcs0.html
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-apl8/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vecs0:
>     - shard-kbl:          [FAIL][153] ([i915#2842]) -> [PASS][154]
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-kbl3/igt@gem_exec_fair@basic-none@vecs0.html
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-kbl7/igt@gem_exec_fair@basic-none@vecs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-iclb:         [FAIL][155] ([i915#2842]) -> [PASS][156]
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-iclb8/igt@gem_exec_fair@basic-pace@rcs0.html
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-iclb2/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs0:
>     - shard-kbl:          [SKIP][157] ([fdo#109271]) -> [PASS][158]
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html
> 
>   * igt@gem_workarounds@suspend-resume-context:
>     - shard-apl:          [DMESG-WARN][159] ([i915#180]) -> [PASS][160] +2 similar issues
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-apl7/igt@gem_workarounds@suspend-resume-context.html
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-apl7/igt@gem_workarounds@suspend-resume-context.html
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - {shard-tglu}:       [SKIP][161] ([i915#4281]) -> [PASS][162]
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-tglu-6/igt@i915_pm_dc@dc9-dpms.html
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-tglu-2/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@i915_selftest@live@gt_heartbeat:
>     - shard-kbl:          [DMESG-FAIL][163] ([i915#5334]) -> [PASS][164]
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-kbl1/igt@i915_selftest@live@gt_heartbeat.html
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-kbl7/igt@i915_selftest@live@gt_heartbeat.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-tglb:         [DMESG-WARN][165] ([i915#5591]) -> [PASS][166]
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-tglb5/igt@i915_selftest@live@hangcheck.html
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-tglb6/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-glk:          [FAIL][167] ([i915#2346] / [i915#533]) -> [PASS][168]
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:
>     - shard-glk:          [FAIL][169] ([i915#2122]) -> [PASS][170]
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1:
>     - shard-apl:          [FAIL][171] ([i915#79]) -> [PASS][172]
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-apl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-apl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
>     - shard-skl:          [FAIL][173] ([i915#2122]) -> [PASS][174]
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>     - shard-kbl:          [DMESG-WARN][175] ([i915#180]) -> [PASS][176] +5 similar issues
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
>     - shard-skl:          [INCOMPLETE][177] ([i915#4444] / [i915#4939]) -> [PASS][178]
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-skl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-skl9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
> 
>   * igt@kms_psr@psr2_sprite_mmap_cpu:
>     - shard-iclb:         [SKIP][179] ([fdo#109441]) -> [PASS][180] +1 similar issue
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-iclb8/igt@kms_psr@psr2_sprite_mmap_cpu.html
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html
> 
>   * igt@sysfs_heartbeat_interval@mixed@bcs0:
>     - shard-skl:          [WARN][181] ([i915#4055]) -> [PASS][182]
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-skl8/igt@sysfs_heartbeat_interval@mixed@bcs0.html
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-skl8/igt@sysfs_heartbeat_interval@mixed@bcs0.html
> 
>   * igt@sysfs_heartbeat_interval@mixed@vcs0:
>     - shard-skl:          [FAIL][183] ([i915#1731]) -> [PASS][184]
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-skl8/igt@sysfs_heartbeat_interval@mixed@vcs0.html
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-skl8/igt@sysfs_heartbeat_interval@mixed@vcs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_balancer@parallel-contexts:
>     - shard-iclb:         [DMESG-WARN][185] ([i915#5614]) -> [SKIP][186] ([i915#4525]) +1 similar issue
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-iclb1/igt@gem_exec_balancer@parallel-contexts.html
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-iclb6/igt@gem_exec_balancer@parallel-contexts.html
> 
>   * igt@gem_exec_balancer@parallel-keep-submit-fence:
>     - shard-iclb:         [SKIP][187] ([i915#4525]) -> [DMESG-WARN][188] ([i915#5614])
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-iclb8/igt@gem_exec_balancer@parallel-keep-submit-fence.html
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-iclb4/igt@gem_exec_balancer@parallel-keep-submit-fence.html
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-iclb:         [DMESG-FAIL][189] ([i915#5614]) -> [SKIP][190] ([i915#4525])
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-iclb3/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-iclb:         [SKIP][191] ([i915#658]) -> [SKIP][192] ([i915#588])
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
>     - shard-iclb:         [SKIP][193] ([i915#2920]) -> [SKIP][194] ([fdo#111068] / [i915#658]) +1 similar issue
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][195], [FAIL][196], [FAIL][197], [FAIL][198], [FAIL][199], [FAIL][200], [FAIL][201], [FAIL][202], [FAIL][203], [FAIL][204], [FAIL][205], [FAIL][206]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][207], [FAIL][208], [FAIL][209], [FAIL][210], [FAIL][211], [FAIL][212], [FAIL][213], [FAIL][214], [FAIL][215], [FAIL][216]) ([i915#3002] / [i915#4312] / [i915#5257])
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-kbl6/igt@runner@aborted.html
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-kbl4/igt@runner@aborted.html
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-kbl7/igt@runner@aborted.html
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-kbl1/igt@runner@aborted.html
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-kbl4/igt@runner@aborted.html
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-kbl7/igt@runner@aborted.html
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-kbl7/igt@runner@aborted.html
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-kbl1/igt@runner@aborted.html
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-kbl7/igt@runner@aborted.html
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-kbl7/igt@runner@aborted.html
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-kbl1/igt@runner@aborted.html
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-kbl3/igt@runner@aborted.html
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-kbl6/igt@runner@aborted.html
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-kbl6/igt@runner@aborted.html
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-kbl7/igt@runner@aborted.html
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-kbl4/igt@runner@aborted.html
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-kbl7/igt@runner@aborted.html
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-kbl1/igt@runner@aborted.html
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-kbl3/igt@runner@aborted.html
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-kbl1/igt@runner@aborted.html
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-kbl1/igt@runner@aborted.html
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-kbl3/igt@runner@aborted.html
>     - shard-apl:          ([FAIL][217], [FAIL][218], [FAIL][219], [FAIL][220], [FAIL][221], [FAIL][222], [FAIL][223], [FAIL][224]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][225], [FAIL][226], [FAIL][227], [FAIL][228], [FAIL][229]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-apl4/igt@runner@aborted.html
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-apl8/igt@runner@aborted.html
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-apl4/igt@runner@aborted.html
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-apl7/igt@runner@aborted.html
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-apl2/igt@runner@aborted.html
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-apl6/igt@runner@aborted.html
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-apl6/igt@runner@aborted.html
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11666/shard-apl3/igt@runner@aborted.html
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-apl2/igt@runner@aborted.html
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-apl4/igt@runner@aborted.html
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-apl8/igt@runner@aborted.html
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-apl4/igt@runner@aborted.html
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/shard-apl7/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
>   [fdo#110892]: https://bugs.freedesktop.org/show_bug.cgi?id=110892
>   [fdo#111066]: https://bugs.freedesktop.org/show_bug.cgi?id=111066
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
>   [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
>   [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
>   [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
>   [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#4055]: https://gitlab.freedesktop.org/drm/intel/issues/4055
>   [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
>   [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
>   [i915#4272]: https://gitlab.freedesktop.org/drm/intel/issues/4272
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>   [i915#4444]: https://gitlab.freedesktop.org/drm/intel/issues/4444
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4911]: https://gitlab.freedesktop.org/drm/intel/issues/4911
>   [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
>   [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
>   [i915#5032]: https://gitlab.freedesktop.org/drm/intel/issues/5032
>   [i915#5076]: https://gitlab.freedesktop.org/drm/intel/issues/5076
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5183]: https://gitlab.freedesktop.org/drm/intel/issues/5183
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
>   [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
>   [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
>   [i915#5614]: https://gitlab.freedesktop.org/drm/intel/issues/5614
>   [i915#5776]: https://gitlab.freedesktop.org/drm/intel/issues/5776
>   [i915#5800]: https://gitlab.freedesktop.org/drm/intel/issues/5800
>   [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11666 -> Patchwork_103244v4
> 
>   CI-20190529: 20190529
>   CI_DRM_11666: 73bb9fa49db3df15c6024a743a48139b1fcdcf7e @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6476: 08aa9296163b94cf4c529fc890ae3e90e21c3cdb @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_103244v4: 73bb9fa49db3df15c6024a743a48139b1fcdcf7e @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103244v4/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
