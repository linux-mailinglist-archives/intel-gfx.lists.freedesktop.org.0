Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB6D052F603
	for <lists+intel-gfx@lfdr.de>; Sat, 21 May 2022 01:11:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A42B810ED32;
	Fri, 20 May 2022 23:11:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA38E10ED16
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 May 2022 23:11:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653088265; x=1684624265;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=tyjEZ9SmqqXlCLB5su3aoOIgYK1EpMnnZKt239kZsBE=;
 b=TJkBnhF27HM8gz0KFRNCNucPjLBWbiJm4l0ri2c7o3HEUMZYtavmWHR9
 n8IpR4u2eeCWeTn4SDX+LaJnq5sZjCoIXhzXriXyiQzAmmYWKX+URhEhh
 rQhM6a/bhxABsmTE5eYRGHkS0XSqcnCnuaDu7xQ787gX7+RKyenC3ur0F
 gS1LHhdNb2Wk2bnAMlu5Ie/fYWAF8wkD1U8xbcd0rVQV1cXjczfuAFnNg
 k3YKt20pxyClHFGJXsJJaNhpWqGiT377KE8JdVC/W+gBXF3jqcOuBobN0
 BTP9OqYEXLXmAHY7hEWTAvoYrXzm/i9svdiiJy/m9DRsmetWoFq1aKuuq g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10353"; a="272473337"
X-IronPort-AV: E=Sophos;i="5.91,240,1647327600"; d="scan'208";a="272473337"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2022 16:11:04 -0700
X-IronPort-AV: E=Sophos;i="5.91,240,1647327600"; d="scan'208";a="743714384"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2022 16:11:04 -0700
Date: Fri, 20 May 2022 16:11:03 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YoggB+ZBQiU9CJif@mdroper-desk1.amr.corp.intel.com>
References: <20220520161244.2571563-1-anusha.srivatsa@intel.com>
 <165306668214.19818.3860359035324518944@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <165306668214.19818.3860359035324518944@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogIGZhaWx1cmUgZm9yIGRy?=
 =?utf-8?q?m/i915/dg2=3A_Enable_DC5?=
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

On Fri, May 20, 2022 at 05:11:22PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dg2: Enable DC5
> URL   : https://patchwork.freedesktop.org/series/104233/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11681 -> Patchwork_104233v1
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_104233v1 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_104233v1, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104233v1/index.html
> 
> Participating hosts (46 -> 44)
> ------------------------------
> 
>   Missing    (2): bat-dg2-8 fi-rkl-11600 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_104233v1:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@fbdev@read:
>     - fi-icl-u2:          [PASS][1] -> [DMESG-WARN][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11681/fi-icl-u2/igt@fbdev@read.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104233v1/fi-icl-u2/igt@fbdev@read.html

It looks like this is an error coming from a bluetooth driver, not
related to graphics:

   <3> [26.916574] Bluetooth: hci0: Reading Intel version command failed (-110)
   <4> [26.916689] general protection fault, probably for non-canonical address 0x6b6b6b6b6b6b6b6b: 0000 [#1] PREEMPT SMP NOPTI
   <4> [26.916726] CPU: 2 PID: 99 Comm: kworker/2:2 Not tainted 5.18.0-rc7-Patchwork_104233v1-gba369855d857+ #1
   <4> [26.916731] Hardware name: Intel Corporation Ice Lake Client Platform/IceLake U DDR4 SODIMM PD RVP TLC, BIOS ICLSFWR1.R00.3183.A00.1905020411 05/02/2019
   <4> [26.916737] Workqueue: events hci_cmd_timeout [bluetooth]
   <4> [26.916755] RIP: 0010:hci_cmd_timeout+0x30/0xa0 [bluetooth]
   <4> [26.916806] Code: ff ff 53 48 8b 87 10 05 00 00 48 89 fb 48 85 c0 74 63 48 8b 80 b8 00 00 00 48 8d b5 a0 00 00 00 48 85 ed 48 c7 c7 c8 6c 38 a0 <0f> b7 10 48 c7 c0 53 38 38 a0 48 0f 44 f0 e8 91 13 06 00 48 8b 83
   <4> [26.916814] RSP: 0018:ffffc90000ae3e50 EFLAGS: 00010286
   <4> [26.916818] RAX: 6b6b6b6b6b6b6b6b RBX: ffff88810ef5aac8 RCX: 0000000000000000
   <4> [26.916821] RDX: 0000000000000001 RSI: ffff88810ef5a0a0 RDI: ffffffffa0386cc8
   <4> [26.916825] RBP: ffff88810ef5a000 R08: ffff88810700ba38 R09: 00000000fffffffe
   <4> [26.916828] R10: 0000000000000001 R11: 00000000dfbbfb17 R12: ffff88849fb3afc0
   <4> [26.916832] R13: ffff88849fb3fc00 R14: 0000000000000000 R15: ffff88849fb3fc05
   <4> [26.916835] FS:  0000000000000000(0000) GS:ffff88849fb00000(0000) knlGS:0000000000000000
   <4> [26.916839] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
   <4> [26.916842] CR2: 00007fcc6837e1a0 CR3: 0000000006612006 CR4: 0000000000770ee0
   <4> [26.916846] PKRU: 55555554
   <4> [26.916848] Call Trace:
   <4> [26.916850]  <TASK>
   <4> [26.916852]  process_one_work+0x272/0x5c0
   <4> [26.916857]  worker_thread+0x37/0x370
   <4> [26.916861]  ? process_one_work+0x5c0/0x5c0
   <4> [26.916864]  kthread+0xed/0x120
   <4> [26.916867]  ? kthread_complete_and_exit+0x20/0x20
   <4> [26.916870]  ret_from_fork+0x1f/0x30
   <4> [26.916875]  </TASK>

Looks like this might be
https://gitlab.freedesktop.org/drm/intel/-/issues/4890 ?

> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@kms_busy@basic@modeset:
>     - {bat-dg2-9}:        [PASS][3] -> [DMESG-WARN][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11681/bat-dg2-9/igt@kms_busy@basic@modeset.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104233v1/bat-dg2-9/igt@kms_busy@basic@modeset.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_104233v1 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@i915_selftest@live@hangcheck:
>     - bat-dg1-5:          [PASS][5] -> [DMESG-FAIL][6] ([i915#4494] / [i915#4957])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11681/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104233v1/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
>     - bat-dg1-6:          [PASS][7] -> [DMESG-FAIL][8] ([i915#4494] / [i915#4957])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11681/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104233v1/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@i915_selftest@live@mman:
>     - fi-bdw-5557u:       [PASS][9] -> [INCOMPLETE][10] ([i915#5704])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11681/fi-bdw-5557u/igt@i915_selftest@live@mman.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104233v1/fi-bdw-5557u/igt@i915_selftest@live@mman.html
> 
>   * igt@i915_selftest@live@requests:
>     - fi-blb-e6850:       [PASS][11] -> [DMESG-FAIL][12] ([i915#4528])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11681/fi-blb-e6850/igt@i915_selftest@live@requests.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104233v1/fi-blb-e6850/igt@i915_selftest@live@requests.html
> 
>   * igt@i915_selftest@live@vma:
>     - fi-bdw-5557u:       [PASS][13] -> [INCOMPLETE][14] ([i915#5681])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11681/fi-bdw-5557u/igt@i915_selftest@live@vma.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104233v1/fi-bdw-5557u/igt@i915_selftest@live@vma.html
> 
>   * igt@kms_flip@basic-flip-vs-modeset@a-edp1:
>     - fi-tgl-u2:          [PASS][15] -> [DMESG-WARN][16] ([i915#402]) +1 similar issue
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11681/fi-tgl-u2/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104233v1/fi-tgl-u2/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html
> 
>   * igt@runner@aborted:
>     - fi-icl-u2:          NOTRUN -> [FAIL][17] ([i915#3690])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104233v1/fi-icl-u2/igt@runner@aborted.html
>     - fi-blb-e6850:       NOTRUN -> [FAIL][18] ([fdo#109271] / [i915#2403] / [i915#4312])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104233v1/fi-blb-e6850/igt@runner@aborted.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_suspend@basic-s0@smem:
>     - {fi-ehl-2}:         [DMESG-WARN][19] ([i915#5122]) -> [PASS][20]
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11681/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104233v1/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html
> 
>   * igt@i915_selftest@live@gt_heartbeat:
>     - fi-tgl-1115g4:      [DMESG-FAIL][21] ([i915#5334]) -> [PASS][22]
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11681/fi-tgl-1115g4/igt@i915_selftest@live@gt_heartbeat.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104233v1/fi-tgl-1115g4/igt@i915_selftest@live@gt_heartbeat.html
> 
>   * igt@kms_busy@basic@modeset:
>     - {bat-adlp-6}:       [DMESG-WARN][23] ([i915#3576]) -> [PASS][24]
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11681/bat-adlp-6/igt@kms_busy@basic@modeset.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104233v1/bat-adlp-6/igt@kms_busy@basic@modeset.html
> 
>   * igt@kms_flip@basic-flip-vs-dpms@a-edp1:
>     - fi-tgl-u2:          [DMESG-WARN][25] ([i915#402]) -> [PASS][26] +1 similar issue
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11681/fi-tgl-u2/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104233v1/fi-tgl-u2/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
>   [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
>   [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
>   [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
>   [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
>   [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
>   [i915#5122]: https://gitlab.freedesktop.org/drm/intel/issues/5122
>   [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
>   [i915#5681]: https://gitlab.freedesktop.org/drm/intel/issues/5681
>   [i915#5704]: https://gitlab.freedesktop.org/drm/intel/issues/5704
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11681 -> Patchwork_104233v1
> 
>   CI-20190529: 20190529
>   CI_DRM_11681: ba369855d857f98fe5a1da1a107006891c7d37e0 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6483: 43e509f408d4a5bcc5070f6b84da42a7c3801e8d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_104233v1: ba369855d857f98fe5a1da1a107006891c7d37e0 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> ### Linux commits
> 
> 66e777973d7a drm/i915/dg2: Enable DC5
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104233v1/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
