Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A00D53CBAA
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jun 2022 16:40:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 451AE10EE00;
	Fri,  3 Jun 2022 14:40:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4B1E10EDBC
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jun 2022 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654267233; x=1685803233;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=QHKy/B4aBQyd824/SMzRtsNXQLY9pRBPFySOGw/xHrc=;
 b=NqL9ta1S2nPrHCibgzKa5TKWKD3L+iAWSLS5wWAqH5zeSBGV0AAHiI7R
 J0TJRM+AIr+65F2XtpofMsMHTjyNENZ6wKPmPALsj+4MMdu31uT/JwC2o
 CNzzSwfJmSaq3VF9unaYA4ybNmnMIwkee6CdHUjzLPSAUD0qWwcIvxik9
 f6FGL3GKcXYzFzLl4JBf5zxbRPOZ8D4pZs2CrdrKtU1U6tsREKmO0K3Q3
 LDHfcm47UsKIM1332x1UNMZRPZgcK8gvMpZM5CGE9KqpxAycPwwyLg/Um
 JbIU1Z6+R+5UtDtQLFdECmCLEHmxjV4L5lf/APTvfZ54bg5ZVVVMYuqk7 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10366"; a="362632663"
X-IronPort-AV: E=Sophos;i="5.91,274,1647327600"; d="scan'208";a="362632663"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2022 07:40:33 -0700
X-IronPort-AV: E=Sophos;i="5.91,274,1647327600"; d="scan'208";a="531039126"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2022 07:40:33 -0700
Date: Fri, 3 Jun 2022 07:40:31 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YpodX0hD9NOYqbWR@mdroper-desk1.amr.corp.intel.com>
References: <20220603005335.1733129-1-matthew.d.roper@intel.com>
 <165422823899.17720.2586905034784409381@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <165422823899.17720.2586905034784409381@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/pvc=3A_Add_register_steering?=
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

On Fri, Jun 03, 2022 at 03:50:38AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/pvc: Add register steering
> URL   : https://patchwork.freedesktop.org/series/104691/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11724 -> Patchwork_104691v1
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_104691v1 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_104691v1, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v1/index.html
> 
> Participating hosts (42 -> 39)
> ------------------------------
> 
>   Additional (1): bat-adlm-1 
>   Missing    (4): bat-dg2-8 fi-bdw-5557u bat-atsm-1 bat-dg2-9 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_104691v1:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_softpin@safe-alignment:
>     - fi-bsw-n3050:       [PASS][1] -> [DMESG-WARN][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11724/fi-bsw-n3050/igt@gem_softpin@safe-alignment.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v1/fi-bsw-n3050/igt@gem_softpin@safe-alignment.html

Seems to be a GPF while releasing an object.  Would not be caused by this patch.

<4> [118.052900] general protection fault, probably for non-canonical address 0x6b6b6b6b6b6b7c63: 0000 [#1] PREEMPT SMP PTI
<4> [118.052935] CPU: 1 PID: 5108 Comm: gem_softpin Not tainted 5.18.0-Patchwork_104691v1-gd85a4921e88b+ #1
<4> [118.052957] Hardware name:  /NUC5CPYB, BIOS PYBSWCEL.86A.0079.2020.0420.1316 04/20/2020
<4> [118.052973] RIP: 0010:__lock_acquire+0x612/0x2940
<4> [118.052993] Code: 88 09 00 00 83 f8 2f 0f 87 9c 00 00 00 3b 05 dd 55 0a 02 41 bf 01 00 00 00 0f 86 cd 00 00 00 89 05 cb 55 0a 02 e9 c2 00 00 00 <48> 81 3f 80 45 dc 82 41 bc 00 00 00 00 45 0f 45 e0 83 fe 01 0f 87
<4> [118.053026] RSP: 0018:ffffc9000054bc88 EFLAGS: 00010002
<4> [118.053041] RAX: 0000000000000000 RBX: 0000000000000001 RCX: 0000000000000000
<4> [118.053055] RDX: 0000000000000000 RSI: 0000000000000000 RDI: 6b6b6b6b6b6b7c63
<4> [118.053070] RBP: ffff88811ba48040 R08: 0000000000000001 R09: 0000000000000001
<4> [118.053084] R10: 0000000000000001 R11: 00000000ffa4eeb2 R12: 0000000000000001
<4> [118.053098] R13: 0000000000000000 R14: 0000000000000000 R15: 6b6b6b6b6b6b7c63
<4> [118.053113] FS:  00007ff69c8d94c0(0000) GS:ffff88817b900000(0000) knlGS:0000000000000000
<4> [118.053130] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
<4> [118.053143] CR2: 00007fffb2dc6fe8 CR3: 00000001074a4000 CR4: 00000000001006e0
<4> [118.053157] Call Trace:
<4> [118.053165]  <TASK>
<4> [118.053178]  lock_acquire+0xd3/0x310
<4> [118.053192]  ? release_references+0xb4/0x170 [i915]
<4> [118.053571]  ? _raw_spin_lock_irq+0x41/0x50
<4> [118.053588]  _raw_spin_lock_irq+0x32/0x50
<4> [118.053601]  ? release_references+0xb4/0x170 [i915]
<4> [118.053928]  release_references+0xb4/0x170 [i915]
<4> [118.054257]  __i915_gem_object_pages_fini+0x5c/0x200 [i915]
<4> [118.054575]  __i915_gem_free_objects+0x9a/0x150 [i915]
<4> [118.054894]  drm_file_free.part.14+0x1f5/0x240
<4> [118.054912]  drm_release_noglobal+0x16/0x60
<4> [118.054926]  __fput+0x96/0x250
<4> [118.054940]  task_work_run+0x6e/0xb0
<4> [118.054955]  exit_to_user_mode_prepare+0x19c/0x1b0
<4> [118.054970]  syscall_exit_to_user_mode+0x19/0x50
<4> [118.054986]  do_syscall_64+0x46/0x80
<4> [118.054998]  entry_SYSCALL_64_after_hwframe+0x44/0xae
<4> [118.055013] RIP: 0033:0x7ff69f0883d7


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_104691v1 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@i915_selftest@live@gem:
>     - fi-pnv-d510:        NOTRUN -> [DMESG-FAIL][3] ([i915#4528])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v1/fi-pnv-d510/igt@i915_selftest@live@gem.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - bat-dg1-6:          NOTRUN -> [DMESG-FAIL][4] ([i915#4494] / [i915#4957])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v1/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@i915_suspend@basic-s2idle-without-i915:
>     - bat-dg1-6:          NOTRUN -> [INCOMPLETE][5] ([i915#6011])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v1/bat-dg1-6/igt@i915_suspend@basic-s2idle-without-i915.html
> 
>   * igt@kms_chamelium@common-hpd-after-suspend:
>     - fi-hsw-4770:        NOTRUN -> [SKIP][6] ([fdo#109271] / [fdo#111827])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v1/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html
>     - fi-blb-e6850:       NOTRUN -> [SKIP][7] ([fdo#109271])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v1/fi-blb-e6850/igt@kms_chamelium@common-hpd-after-suspend.html
> 
>   * igt@runner@aborted:
>     - fi-bsw-n3050:       NOTRUN -> [FAIL][8] ([i915#3690] / [i915#4312])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v1/fi-bsw-n3050/igt@runner@aborted.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@i915_selftest@live@gem:
>     - fi-blb-e6850:       [DMESG-FAIL][9] ([i915#4528]) -> [PASS][10]
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11724/fi-blb-e6850/igt@i915_selftest@live@gem.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v1/fi-blb-e6850/igt@i915_selftest@live@gem.html
> 
>   * igt@i915_selftest@live@gt_engines:
>     - bat-dg1-6:          [INCOMPLETE][11] ([i915#4418]) -> [PASS][12]
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11724/bat-dg1-6/igt@i915_selftest@live@gt_engines.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v1/bat-dg1-6/igt@i915_selftest@live@gt_engines.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - fi-hsw-4770:        [INCOMPLETE][13] ([i915#4785]) -> [PASS][14]
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11724/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v1/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@i915_selftest@live@requests:
>     - fi-pnv-d510:        [DMESG-FAIL][15] ([i915#4528]) -> [PASS][16]
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11724/fi-pnv-d510/igt@i915_selftest@live@requests.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v1/fi-pnv-d510/igt@i915_selftest@live@requests.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
>   [i915#4418]: https://gitlab.freedesktop.org/drm/intel/issues/4418
>   [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
>   [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
>   [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
>   [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
>   [i915#5122]: https://gitlab.freedesktop.org/drm/intel/issues/5122
>   [i915#6011]: https://gitlab.freedesktop.org/drm/intel/issues/6011
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11724 -> Patchwork_104691v1
> 
>   CI-20190529: 20190529
>   CI_DRM_11724: d85a4921e88b2c0c5c61ab452aa302a969e108e3 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6505: edb1a467fb622b23b927e28ff603fa43851fea97 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_104691v1: d85a4921e88b2c0c5c61ab452aa302a969e108e3 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> ### Linux commits
> 
> fcf82c531943 drm/i915/pvc: Add register steering
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104691v1/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
