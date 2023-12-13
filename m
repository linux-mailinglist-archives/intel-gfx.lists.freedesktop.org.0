Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94CB1810B98
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 08:35:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBB5A10E717;
	Wed, 13 Dec 2023 07:35:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CDF110E710;
 Wed, 13 Dec 2023 07:35:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702452952; x=1733988952;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=FoCJ6hkO/6Wi+dpuPxL+SmzFPFp9xPX1SNzvTKyx2Ck=;
 b=msIAH31YDfbFDCooJTf49UDZ1eaXPdENZiyxwZI/OZSK1ciJIPCyeZCJ
 xCPnrSbAEPXtuy//xPEwXseviOc1ayL7Nt9bDImBb9kT0oBvqw4D3OFw1
 IfZQwuHLzdeHd/9YO5bZMaauewzrwlvFz60qykkTXKq8nrM/lxjPDxEqv
 lZ6nva7yxj+IIG3Ry3zDGpnetmMV1N8MZdmi4RRzoSaPCvqA9fH46AJGV
 k4rMRbmjdaW++2u/NDNucTl4Sc6J7GUy67LwDB4b1kyBDkXb/iDfMvZbk
 ZLeeXrDbhvwlyja/PU0rX7et+ytmy4UzYGcWJNqzJinMmwLsI/NnT4Hu1 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="392100639"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="392100639"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 23:35:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="802789172"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="802789172"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 23:35:49 -0800
Date: Wed, 13 Dec 2023 09:35:54 +0200
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org, I915-ci-infra@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLklHVA==?= =?utf-8?Q?=3A?= failure for
 drm/i915/dmc: DMC event stuff
Message-ID: <ZXle2h3XQ8l2JQ4c@ideak-desk.fi.intel.com>
References: <20231211213750.27109-1-ville.syrjala@linux.intel.com>
 <170233960823.31293.13792537746677423820@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <170233960823.31293.13792537746677423820@emeril.freedesktop.org>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Dec 12, 2023 at 12:06:48AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dmc: DMC event stuff
> URL   : https://patchwork.freedesktop.org/series/127648/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_14008_full -> Patchwork_127648v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_127648v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_127648v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/index.html
> 
> Participating hosts (7 -> 9)
> ------------------------------
> 
>   Additional (2): shard-snb-0 shard-glk-0 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_127648v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_exec_balancer@bonded-sync:
>     - shard-rkl:          NOTRUN -> [ABORT][1] +1 other test abort
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-rkl-3/igt@gem_exec_balancer@bonded-sync.html
> 
>   * igt@gem_exec_balancer@invalid-bonds:
>     - shard-rkl:          [PASS][2] -> [ABORT][3]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-rkl-2/igt@gem_exec_balancer@invalid-bonds.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-rkl-3/igt@gem_exec_balancer@invalid-bonds.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-dg2:          NOTRUN -> [ABORT][4]
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-dg2-3/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@i915_pm_rc6_residency@rc6-fence@gt0:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][5]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-glk5/igt@i915_pm_rc6_residency@rc6-fence@gt0.html
> 
>   * igt@perf_pmu@busy-check-all@rcs0:
>     - shard-tglu:         NOTRUN -> [INCOMPLETE][6]
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-tglu-4/igt@perf_pmu@busy-check-all@rcs0.html
> 
>   * igt@perf_pmu@busy-idle-check-all:
>     - shard-snb:          NOTRUN -> [INCOMPLETE][7] +2 other tests incomplete
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-snb2/igt@perf_pmu@busy-idle-check-all.html

All the above look to be unrelated, for the same root cause (except for
SNB which doesn't have logs, but not a DMC platform):

<4>[   67.140485] WARNING: CPU: 1 PID: 1010 at kernel/events/core.c:1950 __do_sys_perf_event_open+0xef0/0x1060
<4>[   67.140498] Modules linked in: vgem drm_shmem_helper fuse snd_hda_codec_hdmi snd_hda_codec_realtek snd_hda_codec_generic ledtrig_audio i915 x86_pkg_temp_thermal coretemp mei_pxp mei_hdcp wmi_bmof kvm_intel btusb btrtl btintel btbcm kvm bluetooth irqbypass crct10dif_pclmul ecdh_generic crc32_pclmul ghash_clmulni_intel ecc r8169 realtek snd_hda_intel snd_intel_dspcfg snd_hda_codec snd_hwdep prime_numbers i2c_algo_bit ttm snd_hda_core video drm_display_helper pinctrl_geminilake mei_me snd_pcm drm_buddy i2c_i801 mei wmi i2c_smbus
<4>[   67.140631] CPU: 1 PID: 1010 Comm: i915_pm_rc6_res Not tainted 6.7.0-rc5-Patchwork_127648v1-gd630426f84b0+ #1
<4>[   67.140637] Hardware name: Intel Corporation NUC7CJYH/NUC7JYB, BIOS JYGLKCPX.86A.0057.2020.1020.1637 10/20/2020
<4>[   67.140642] RIP: 0010:__do_sys_perf_event_open+0xef0/0x1060
<4>[   67.140649] Code: 00 48 8b 85 28 02 00 00 83 ce ff 48 8d b8 a8 00 00 00 e8 d3 46 ab 00 4c 8b 4c 24 18 4c 8b 44 24 28 83 e8 01 0f 84 09 f9 ff ff <0f> 0b e9 02 f9 ff ff 49 8b 44 24 10 48 8d 68 f0 49 39 ec 74 3d 4c
<4>[   67.140654] RSP: 0018:ffffc900012fbe38 EFLAGS: 00010297
<4>[   67.140661] RAX: 00000000ffffffff RBX: 0000000000000000 RCX: 0000000000000000
<4>[   67.140665] RDX: 0000000080000000 RSI: ffffffff823fd5bc RDI: ffffffff8241d135
<4>[   67.140669] RBP: ffff888100c00b98 R08: ffff888277c38a60 R09: ffff888277c38aa0
<4>[   67.140673] R10: 0000000000000001 R11: 0000000000000001 R12: 0000000000000000
<4>[   67.140677] R13: 0000000000000001 R14: 0000000000000002 R15: ffff888100c00b98
<4>[   67.140681] FS:  00007f5e05d02c40(0000) GS:ffff888277c80000(0000) knlGS:0000000000000000
<4>[   67.140685] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
<4>[   67.140689] CR2: 000055c1b87cf548 CR3: 0000000114384000 CR4: 0000000000350ef0
<4>[   67.140693] Call Trace:
<4>[   67.140696]  <TASK>
<4>[   67.140701]  ? __warn+0x7f/0x170
<4>[   67.140709]  ? __do_sys_perf_event_open+0xef0/0x1060
<4>[   67.140717]  ? report_bug+0x1f8/0x200
<4>[   67.140729]  ? handle_bug+0x3c/0x70
<4>[   67.140737]  ? exc_invalid_op+0x18/0x70
<4>[   67.140744]  ? asm_exc_invalid_op+0x1a/0x20
<4>[   67.140759]  ? __do_sys_perf_event_open+0xef0/0x1060
<4>[   67.140767]  ? __do_sys_perf_event_open+0xedd/0x1060
<4>[   67.140790]  do_syscall_64+0x42/0xf0
<4>[   67.140797]  entry_SYSCALL_64_after_hwframe+0x6e/0x76
<4>[   67.140802] RIP: 0033:0x7f5e0853473d

> #### Warnings ####
> 
>   * igt@gem_exec_balancer@bonded-sync:
>     - shard-dg2:          [SKIP][8] ([i915#4771]) -> [ABORT][9]
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-dg2-5/igt@gem_exec_balancer@bonded-sync.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-dg2-3/igt@gem_exec_balancer@bonded-sync.html
>     - shard-dg1:          [SKIP][10] ([i915#4771]) -> [ABORT][11]
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-dg1-19/igt@gem_exec_balancer@bonded-sync.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-dg1-13/igt@gem_exec_balancer@bonded-sync.html
> 
>   * igt@gem_exec_balancer@full:
>     - shard-rkl:          [ABORT][12] -> [INCOMPLETE][13] +2 other tests incomplete
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-rkl-5/igt@gem_exec_balancer@full.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-rkl-7/igt@gem_exec_balancer@full.html
> 
>   * igt@gem_exec_balancer@full-late:
>     - shard-rkl:          [INCOMPLETE][14] -> [ABORT][15] +2 other tests abort
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-rkl-1/igt@gem_exec_balancer@full-late.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-rkl-3/igt@gem_exec_balancer@full-late.html
> 
>   * igt@perf_pmu@all-busy-idle-check-all:
>     - shard-glk:          [ABORT][16] ([i915#9847]) -> [INCOMPLETE][17]
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk1/igt@perf_pmu@all-busy-idle-check-all.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-glk2/igt@perf_pmu@all-busy-idle-check-all.html
> 
>   * igt@perf_pmu@busy-accuracy-2@rcs0:
>     - shard-dg2:          [INCOMPLETE][18] -> [ABORT][19]
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-dg2-1/igt@perf_pmu@busy-accuracy-2@rcs0.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-dg2-7/igt@perf_pmu@busy-accuracy-2@rcs0.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_127648v1_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Issues hit ####
> 
>   * boot:
>     - shard-glk:          ([PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44]) -> ([PASS][45], [PASS][46], [FAIL][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69]) ([i915#8293])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk1/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk2/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk2/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk2/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk3/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk3/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk3/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk3/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk4/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk4/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk4/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk4/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk5/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk5/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk7/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk7/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk8/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk8/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk8/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk8/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk8/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk9/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk9/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk9/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk9/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-glk7/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-glk6/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-glk6/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-glk5/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-glk5/boot.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-glk5/boot.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-glk5/boot.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-glk4/boot.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-glk4/boot.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-glk4/boot.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-glk3/boot.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-glk3/boot.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-glk2/boot.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-glk2/boot.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-glk2/boot.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-glk1/boot.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-glk9/boot.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-glk9/boot.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-glk9/boot.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-glk8/boot.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-glk8/boot.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-glk8/boot.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-glk7/boot.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-glk7/boot.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-glk7/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@fbdev@pan:
>     - shard-snb:          [PASS][70] -> [FAIL][71] ([i915#4435])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-snb5/igt@fbdev@pan.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-snb7/igt@fbdev@pan.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-rkl:          [PASS][72] -> [FAIL][73] ([i915#2842])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-rkl-4/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-rkl-5/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_suspend@basic-s4-devices@lmem0:
>     - shard-dg2:          [PASS][74] -> [ABORT][75] ([i915#7975] / [i915#8213])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-dg2-11/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-dg2-1/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
> 
>   * igt@gem_softpin@evict-snoop:
>     - shard-dg2:          NOTRUN -> [SKIP][76] ([i915#4885])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-dg2-3/igt@gem_softpin@evict-snoop.html
> 
>   * igt@gen7_exec_parse@basic-allowed:
>     - shard-dg2:          NOTRUN -> [SKIP][77] ([fdo#109289])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-dg2-3/igt@gen7_exec_parse@basic-allowed.html
> 
>   * igt@gen9_exec_parse@bb-start-cmd:
>     - shard-dg2:          NOTRUN -> [SKIP][78] ([i915#2856])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-dg2-3/igt@gen9_exec_parse@bb-start-cmd.html
> 
>   * igt@kms_ccs@pipe-c-bad-aux-stride-4-tiled-mtl-mc-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#5354])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-dg2-3/igt@kms_ccs@pipe-c-bad-aux-stride-4-tiled-mtl-mc-ccs.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:
>     - shard-snb:          [PASS][80] -> [SKIP][81] ([fdo#109271]) +3 other tests skip
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#8708])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary:
>     - shard-dg2:          NOTRUN -> [SKIP][83] ([i915#3458]) +1 other test skip
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][84] ([i915#9423]) +1 other test skip
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-rkl-3/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-2.html
> 
>   * igt@perf@gen12-invalid-class-instance:
>     - shard-glk:          NOTRUN -> [ABORT][85] ([i915#9847])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-glk1/igt@perf@gen12-invalid-class-instance.html
> 
>   * igt@perf@non-sampling-read-error:
>     - shard-rkl:          NOTRUN -> [ABORT][86] ([i915#9847])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-rkl-3/igt@perf@non-sampling-read-error.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_suspend@basic-s0@smem:
>     - shard-dg2:          [INCOMPLETE][87] ([i915#9275]) -> [PASS][88]
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-dg2-2/igt@gem_exec_suspend@basic-s0@smem.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-dg2-3/igt@gem_exec_suspend@basic-s0@smem.html
> 
>   * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
>     - shard-snb:          [SKIP][89] ([fdo#109271] / [fdo#111767]) -> [PASS][90]
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-snb1/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-snb7/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:
>     - shard-snb:          [SKIP][91] ([fdo#109271]) -> [PASS][92] +3 other tests pass
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-snb5/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-snb7/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-snb:          [INCOMPLETE][93] -> [SKIP][94] ([fdo#109271])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-snb7/igt@kms_content_protection@atomic-dpms.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-snb4/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@perf_pmu@all-busy-idle-check-all:
>     - shard-dg1:          [INCOMPLETE][95] -> [ABORT][96] ([i915#9847])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-dg1-16/igt@perf_pmu@all-busy-idle-check-all.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/shard-dg1-13/igt@perf_pmu@all-busy-idle-check-all.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#4435]: https://gitlab.freedesktop.org/drm/intel/issues/4435
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
>   [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
>   [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
>   [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
>   [i915#9275]: https://gitlab.freedesktop.org/drm/intel/issues/9275
>   [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
>   [i915#9673]: https://gitlab.freedesktop.org/drm/intel/issues/9673
>   [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
>   [i915#9847]: https://gitlab.freedesktop.org/drm/intel/issues/9847
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_14008 -> Patchwork_127648v1
>   * Piglit: piglit_4509 -> None
> 
>   CI-20190529: 20190529
>   CI_DRM_14008: d630426f84b0724b04e5c41e59594a41460b3c3c @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7635: 0b796be8ce05cb2070ce5136d248f438c962d11e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_127648v1: d630426f84b0724b04e5c41e59594a41460b3c3c @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127648v1/index.html
