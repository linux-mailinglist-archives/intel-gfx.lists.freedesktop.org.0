Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C02AC74D5FF
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jul 2023 14:51:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDB7A10E15D;
	Mon, 10 Jul 2023 12:51:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 604C310E259
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jul 2023 12:51:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688993500; x=1720529500;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to; bh=yZvJ79on8NwplAX6OGBnl6CD7pz5wlmGhiEuZ5GJNVQ=;
 b=gkY8bM73yE88MuEsRrMK3h5nYWCCvf6+SWDnLKtr6BnRlBLGbbdoTZD1
 owTSTmuFGAsLB7uRvZEqmPgTNgj8BLw/55CuZD1fGmpiPHCNHRyAEiUKE
 XHTWHHWehmSDZXveLIwJdCTcB4Oppom2alF7lDBJ3OL55KXSU3BJbu678
 CLEF3bgdxpa6ieBJvCptlZK8lfaqX1a1kL4OancicS+VkbFAhySIn4UfN
 XI1l6mKLgx6y7nVn2rNrJls43pUNIpKZe6MxFFvmJpOCzWB0GJURV0B5B
 FVb5p5Q0K6bxxm+ZFbgql0tDNDWHSGgOdza6nU4f0e6UIqS+ku2CGgrVx w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="363199394"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; 
 d="scan'208,217";a="363199394"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 05:51:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="790791803"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; 
 d="scan'208,217";a="790791803"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.31.43])
 ([10.213.31.43])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 05:51:35 -0700
Content-Type: multipart/alternative;
 boundary="------------j1izYAbvl30oDWjePSt5eXCk"
Message-ID: <9d4e41eb-ba68-6249-a412-e0f9ef4b2f95@intel.com>
Date: Mon, 10 Jul 2023 14:51:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.12.0
To: intel-gfx@lists.freedesktop.org
References: <20230705160848.988464-1-andrzej.hajda@intel.com>
 <168869833181.14756.7953698925751122358@emeril.freedesktop.org>
Content-Language: en-US
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <168869833181.14756.7953698925751122358@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_update_request_engine_before_removing_virtual_GuC_e?=
 =?utf-8?q?ngine_=28rev2=29?=
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

This is a multi-part message in MIME format.
--------------j1izYAbvl30oDWjePSt5eXCk
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 07.07.2023 04:52, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	drm/i915/gt: update request engine before removing virtual 
> GuC engine (rev2)
> *URL:* 	https://patchwork.freedesktop.org/series/120238/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/index.html
>
>
>   CI Bug Log - changes from CI_DRM_13351_full -> Patchwork_120238v2_full
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_120238v2_full absolutely 
> need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_120238v2_full, please notify your bug team to 
> allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
>
>     Participating hosts (9 -> 10)
>
> Additional (1): shard-tglu0
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_120238v2_full:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>  *
>
>     igt@gem_exec_reloc@basic-wc-cpu-active:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-apl1/igt@gem_exec_reloc@basic-wc-cpu-active.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-apl1/igt@gem_exec_reloc@basic-wc-cpu-active.html>
>         +4 similar issues
>

Not related, apl does not use GuC and the change is only for GuC submission.

>  *
>  *
>
>     igt@kms_plane_multiple@tiling-y:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@kms_plane_multiple@tiling-y.html>
>


Not related, this test is always skipped/notrun on dg2:
http://gfx-ci.igk.intel.com/tree/drm-tip/shards-all.html?testfilter=igt@kms_plane_multiple@tiling-y

Regards
Andrzej


>  *
>
>
>     New tests
>
> New tests have been introduced between CI_DRM_13351_full and 
> Patchwork_120238v2_full:
>
>
>       New IGT tests (34)
>
>  *
>
>     igt@gem_exec_basic@basic@bcs0-lmem0:
>
>       o Statuses : 2 pass(s)
>       o Exec time: [0.0] s
>  *
>
>     igt@gem_exec_basic@basic@rcs0-lmem0:
>
>       o Statuses : 2 pass(s)
>       o Exec time: [0.0] s
>  *
>
>     igt@gem_exec_basic@basic@vcs0-lmem0:
>
>       o Statuses : 2 pass(s)
>       o Exec time: [0.0] s
>  *
>
>     igt@gem_exec_basic@basic@vcs1-lmem0:
>
>       o Statuses : 2 pass(s)
>       o Exec time: [0.0] s
>  *
>
>     igt@gem_exec_basic@basic@vecs0-lmem0:
>
>       o Statuses : 2 pass(s)
>       o Exec time: [0.0] s
>  *
>
>     igt@kms_flip@2x-blocking-absolute-wf_vblank@ab-vga1-hdmi-a1:
>
>       o Statuses : 1 pass(s)
>       o Exec time: [0.0] s
>  *
>
>     igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1:
>
>       o Statuses : 1 pass(s)
>       o Exec time: [0.0] s
>  *
>
>     igt@kms_flip@2x-dpms-vs-vblank-race@ab-vga1-hdmi-a1:
>
>       o Statuses : 1 pass(s)
>       o Exec time: [0.0] s
>  *
>
>     igt@kms_flip@2x-flip-vs-panning-interruptible@ab-vga1-hdmi-a1:
>
>       o Statuses : 1 pass(s)
>       o Exec time: [0.0] s
>  *
>
>     igt@kms_flip@2x-modeset-vs-vblank-race@ab-vga1-hdmi-a1:
>
>       o Statuses : 1 pass(s)
>       o Exec time: [0.0] s
>  *
>
>     igt@kms_flip@2x-plain-flip-ts-check@ab-vga1-hdmi-a1:
>
>       o Statuses : 1 pass(s)
>       o Exec time: [0.0] s
>  *
>
>     igt@kms_flip@basic-flip-vs-dpms@d-hdmi-a2:
>
>       o Statuses : 1 pass(s)
>       o Exec time: [0.0] s
>  *
>
>     igt@kms_flip@blocking-absolute-wf_vblank@d-hdmi-a2:
>
>       o Statuses : 1 pass(s)
>       o Exec time: [0.0] s
>  *
>
>     igt@kms_flip@bo-too-big@a-dp2:
>
>       o Statuses : 1 pass(s)
>       o Exec time: [0.0] s
>  *
>
>     igt@kms_flip@bo-too-big@b-dp2:
>
>       o Statuses : 1 pass(s)
>       o Exec time: [0.0] s
>  *
>
>     igt@kms_flip@bo-too-big@c-dp2:
>
>       o Statuses : 1 pass(s)
>       o Exec time: [0.0] s
>  *
>
>     igt@kms_flip@flip-vs-expired-vblank-interruptible@d-hdmi-a2:
>
>       o Statuses : 1 pass(s)
>       o Exec time: [0.0] s
>  *
>
>     igt@kms_flip@flip-vs-panning-vs-hang@d-hdmi-a2:
>
>       o Statuses : 1 pass(s)
>       o Exec time: [0.0] s
>  *
>
>     igt@kms_flip@flip-vs-panning@a-dp2:
>
>       o Statuses : 1 pass(s)
>       o Exec time: [0.0] s
>  *
>
>     igt@kms_flip@flip-vs-panning@b-dp2:
>
>       o Statuses : 1 pass(s)
>       o Exec time: [0.0] s
>  *
>
>     igt@kms_flip@flip-vs-panning@c-dp2:
>
>       o Statuses : 1 pass(s)
>       o Exec time: [0.0] s
>  *
>
>     igt@kms_flip@flip-vs-suspend@a-dp2:
>
>       o Statuses : 1 pass(s)
>       o Exec time: [0.0] s
>  *
>
>     igt@kms_flip@flip-vs-suspend@b-dp2:
>
>       o Statuses : 1 pass(s)
>       o Exec time: [0.0] s
>  *
>
>     igt@kms_flip@flip-vs-suspend@c-dp2:
>
>       o Statuses : 1 pass(s)
>       o Exec time: [0.0] s
>  *
>
>     igt@kms_flip@modeset-vs-vblank-race-interruptible@a-dp2:
>
>       o Statuses : 1 pass(s)
>       o Exec time: [0.0] s
>  *
>
>     igt@kms_flip@modeset-vs-vblank-race-interruptible@b-dp2:
>
>       o Statuses : 1 pass(s)
>       o Exec time: [0.0] s
>  *
>
>     igt@kms_flip@modeset-vs-vblank-race-interruptible@c-dp2:
>
>       o Statuses : 1 pass(s)
>       o Exec time: [0.0] s
>  *
>
>     igt@kms_flip@nonexisting-fb-interruptible@a-dp2:
>
>       o Statuses : 1 pass(s)
>       o Exec time: [0.0] s
>  *
>
>     igt@kms_flip@nonexisting-fb-interruptible@b-dp2:
>
>       o Statuses : 1 pass(s)
>       o Exec time: [0.0] s
>  *
>
>     igt@kms_flip@nonexisting-fb-interruptible@c-dp2:
>
>       o Statuses : 1 pass(s)
>       o Exec time: [0.0] s
>  *
>
>     igt@kms_flip@nonexisting-fb@d-hdmi-a2:
>
>       o Statuses : 1 pass(s)
>       o Exec time: [0.0] s
>  *
>
>     igt@kms_flip@plain-flip-fb-recreate@a-dp2:
>
>       o Statuses : 1 pass(s)
>       o Exec time: [0.0] s
>  *
>
>     igt@kms_flip@plain-flip-fb-recreate@b-dp2:
>
>       o Statuses : 1 pass(s)
>       o Exec time: [0.0] s
>  *
>
>     igt@kms_flip@plain-flip-fb-recreate@c-dp2:
>
>       o Statuses : 1 pass(s)
>       o Exec time: [0.0] s
>
>
>     Known issues
>
> Here are the changes found in Patchwork_120238v2_full that come from 
> known issues:
>
>
>       IGT changes
>
>
>         Issues hit
>
>  *
>
>     igt@drm_fdinfo@busy-hang@bcs0:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@drm_fdinfo@busy-hang@bcs0.html>
>         (i915#8414
>         <https://gitlab.freedesktop.org/drm/intel/issues/8414>) +10
>         similar issues
>  *
>
>     igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
>
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-rkl-6/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-rkl-2/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html>
>         (i915#7742 <https://gitlab.freedesktop.org/drm/intel/issues/7742>)
>  *
>
>     igt@gem_eio@in-flight-contexts-immediate:
>
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-mtlp-7/igt@gem_eio@in-flight-contexts-immediate.html>
>         -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-mtlp-2/igt@gem_eio@in-flight-contexts-immediate.html>
>         (i915#8503 <https://gitlab.freedesktop.org/drm/intel/issues/8503>)
>  *
>
>     igt@gem_exec_balancer@bonded-pair:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@gem_exec_balancer@bonded-pair.html>
>         (i915#4771 <https://gitlab.freedesktop.org/drm/intel/issues/4771>)
>  *
>
>     igt@gem_exec_balancer@full-pulse:
>
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-dg2-5/igt@gem_exec_balancer@full-pulse.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-8/igt@gem_exec_balancer@full-pulse.html>
>         (i915#6032
>         <https://gitlab.freedesktop.org/drm/intel/issues/6032>) +1
>         similar issue
>  *
>
>     igt@gem_exec_balancer@sliced:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@gem_exec_balancer@sliced.html>
>         (i915#4812 <https://gitlab.freedesktop.org/drm/intel/issues/4812>)
>  *
>
>     igt@gem_exec_fair@basic-none-rrul:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@gem_exec_fair@basic-none-rrul.html>
>         (i915#3539
>         <https://gitlab.freedesktop.org/drm/intel/issues/3539> /
>         i915#4852 <https://gitlab.freedesktop.org/drm/intel/issues/4852>)
>  *
>
>     igt@gem_exec_fair@basic-pace-solo@rcs0:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-glk4/igt@gem_exec_fair@basic-pace-solo@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-glk9/igt@gem_exec_fair@basic-pace-solo@rcs0.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>  *
>
>     igt@gem_exec_reloc@basic-wc:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@gem_exec_reloc@basic-wc.html>
>         (i915#3281
>         <https://gitlab.freedesktop.org/drm/intel/issues/3281>) +3
>         similar issues
>  *
>
>     igt@gem_exec_schedule@deep@vcs0:
>
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-mtlp-3/igt@gem_exec_schedule@deep@vcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-mtlp-4/igt@gem_exec_schedule@deep@vcs0.html>
>         (i915#8545 <https://gitlab.freedesktop.org/drm/intel/issues/8545>)
>  *
>
>     igt@gem_exec_schedule@preempt-queue:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@gem_exec_schedule@preempt-queue.html>
>         (i915#4537
>         <https://gitlab.freedesktop.org/drm/intel/issues/4537> /
>         i915#4812 <https://gitlab.freedesktop.org/drm/intel/issues/4812>)
>  *
>
>     igt@gem_fence_thrash@bo-write-verify-y:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@gem_fence_thrash@bo-write-verify-y.html>
>         (i915#4860
>         <https://gitlab.freedesktop.org/drm/intel/issues/4860>) +1
>         similar issue
>  *
>
>     igt@gem_lmem_swapping@parallel-random-verify-ccs:
>
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-glk8/igt@gem_lmem_swapping@parallel-random-verify-ccs.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>)
>  *
>
>     igt@gem_mmap_wc@pf-nonblock:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@gem_mmap_wc@pf-nonblock.html>
>         (i915#4083 <https://gitlab.freedesktop.org/drm/intel/issues/4083>)
>  *
>
>     igt@gem_pwrite@basic-exhaustion:
>
>       o shard-snb: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-snb5/igt@gem_pwrite@basic-exhaustion.html>
>         (i915#2658 <https://gitlab.freedesktop.org/drm/intel/issues/2658>)
>  *
>
>     igt@gem_spin_batch@spin-each:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-apl3/igt@gem_spin_batch@spin-each.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-apl2/igt@gem_spin_batch@spin-each.html>
>         (i915#2898 <https://gitlab.freedesktop.org/drm/intel/issues/2898>)
>  *
>
>     igt@gem_tiled_pread_basic:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@gem_tiled_pread_basic.html>
>         (i915#4079 <https://gitlab.freedesktop.org/drm/intel/issues/4079>)
>  *
>
>     igt@gem_userptr_blits@forbidden-operations:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@gem_userptr_blits@forbidden-operations.html>
>         (i915#3282
>         <https://gitlab.freedesktop.org/drm/intel/issues/3282>) +1
>         similar issue
>  *
>
>     igt@gem_userptr_blits@unsync-unmap-after-close:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@gem_userptr_blits@unsync-unmap-after-close.html>
>         (i915#3297 <https://gitlab.freedesktop.org/drm/intel/issues/3297>)
>  *
>
>     igt@gen9_exec_parse@allowed-all:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-apl7/igt@gen9_exec_parse@allowed-all.html>
>         -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-apl4/igt@gen9_exec_parse@allowed-all.html>
>         (i915#5566 <https://gitlab.freedesktop.org/drm/intel/issues/5566>)
>  *
>
>     igt@gen9_exec_parse@batch-invalid-length:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@gen9_exec_parse@batch-invalid-length.html>
>         (i915#2856 <https://gitlab.freedesktop.org/drm/intel/issues/2856>)
>  *
>
>     igt@gen9_exec_parse@unaligned-jump:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-mtlp-7/igt@gen9_exec_parse@unaligned-jump.html>
>         (i915#2856 <https://gitlab.freedesktop.org/drm/intel/issues/2856>)
>  *
>
>     igt@i915_pm_rpm@modeset-non-lpsp-stress:
>
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-dg2-11/igt@i915_pm_rpm@modeset-non-lpsp-stress.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-12/igt@i915_pm_rpm@modeset-non-lpsp-stress.html>
>         (i915#1397 <https://gitlab.freedesktop.org/drm/intel/issues/1397>)
>  *
>
>     igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
>
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-rkl-4/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-rkl-7/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html>
>         (i915#1397
>         <https://gitlab.freedesktop.org/drm/intel/issues/1397>) +2
>         similar issues
>  *
>
>     igt@i915_pm_sseu@full-enable:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@i915_pm_sseu@full-enable.html>
>         (i915#4387 <https://gitlab.freedesktop.org/drm/intel/issues/4387>)
>  *
>
>     igt@i915_selftest@live@hangcheck:
>
>       o shard-dg2: NOTRUN -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@i915_selftest@live@hangcheck.html>
>         (i915#7913 <https://gitlab.freedesktop.org/drm/intel/issues/7913>)
>  *
>
>     igt@i915_suspend@fence-restore-untiled:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@i915_suspend@fence-restore-untiled.html>
>         (i915#4077
>         <https://gitlab.freedesktop.org/drm/intel/issues/4077>) +7
>         similar issues
>  *
>
>     igt@kms_big_fb@4-tiled-16bpp-rotate-270:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html>
>         (fdo#111614
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111614>) +1
>         similar issue
>  *
>
>     igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-glk9/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +62
>         similar issues
>  *
>
>     igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html>
>         (i915#5138 <https://gitlab.freedesktop.org/drm/intel/issues/5138>)
>  *
>
>     igt@kms_big_fb@yf-tiled-addfb-size-overflow:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html>
>         (i915#5190
>         <https://gitlab.freedesktop.org/drm/intel/issues/5190>) +2
>         similar issues
>  *
>
>     igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html>
>         (i915#4538
>         <https://gitlab.freedesktop.org/drm/intel/issues/4538> /
>         i915#5190
>         <https://gitlab.freedesktop.org/drm/intel/issues/5190>) +1
>         similar issue
>  *
>
>     igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
>
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-glk8/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +1
>         similar issue
>  *
>
>     igt@kms_ccs@pipe-a-crc-primary-rotation-180-4_tiled_dg2_rc_ccs_cc:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-mtlp-7/igt@kms_ccs@pipe-a-crc-primary-rotation-180-4_tiled_dg2_rc_ccs_cc.html>
>         (i915#6095 <https://gitlab.freedesktop.org/drm/intel/issues/6095>)
>  *
>
>     igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_ccs:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_ccs.html>
>         (i915#3689
>         <https://gitlab.freedesktop.org/drm/intel/issues/3689> /
>         i915#5354
>         <https://gitlab.freedesktop.org/drm/intel/issues/5354>) +8
>         similar issues
>  *
>
>     igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html>
>         (i915#3689
>         <https://gitlab.freedesktop.org/drm/intel/issues/3689> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886> /
>         i915#5354
>         <https://gitlab.freedesktop.org/drm/intel/issues/5354>) +5
>         similar issues
>  *
>
>     igt@kms_ccs@pipe-d-ccs-on-another-bo-4_tiled_mtl_rc_ccs:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@kms_ccs@pipe-d-ccs-on-another-bo-4_tiled_mtl_rc_ccs.html>
>         (i915#5354
>         <https://gitlab.freedesktop.org/drm/intel/issues/5354>) +15
>         similar issues
>  *
>
>     igt@kms_cdclk@mode-transition@pipe-d-dp-4:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@kms_cdclk@mode-transition@pipe-d-dp-4.html>
>         (i915#4087
>         <https://gitlab.freedesktop.org/drm/intel/issues/4087>) +3
>         similar issues
>  *
>
>     igt@kms_chamelium_color@ctm-0-75:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@kms_chamelium_color@ctm-0-75.html>
>         (fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
>  *
>
>     igt@kms_chamelium_hpd@vga-hpd-without-ddc:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@kms_chamelium_hpd@vga-hpd-without-ddc.html>
>         (i915#7828
>         <https://gitlab.freedesktop.org/drm/intel/issues/7828>) +1
>         similar issue
>  *
>
>     igt@kms_content_protection@legacy@pipe-a-dp-4:
>
>       o shard-dg2: NOTRUN -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@kms_content_protection@legacy@pipe-a-dp-4.html>
>         (i915#7173 <https://gitlab.freedesktop.org/drm/intel/issues/7173>)
>  *
>
>     igt@kms_content_protection@lic:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-5/igt@kms_content_protection@lic.html>
>         (i915#7118 <https://gitlab.freedesktop.org/drm/intel/issues/7118>)
>  *
>
>     igt@kms_content_protection@uevent@pipe-a-dp-4:
>
>       o shard-dg2: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@kms_content_protection@uevent@pipe-a-dp-4.html>
>         (i915#1339 <https://gitlab.freedesktop.org/drm/intel/issues/1339>)
>  *
>
>     igt@kms_cursor_crc@cursor-rapid-movement-512x170:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html>
>         (i915#3359 <https://gitlab.freedesktop.org/drm/intel/issues/3359>)
>  *
>
>     igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html>
>         (fdo#109274
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109274> /
>         i915#5354
>         <https://gitlab.freedesktop.org/drm/intel/issues/5354>) +1
>         similar issue
>  *
>
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>         (i915#2346 <https://gitlab.freedesktop.org/drm/intel/issues/2346>)
>  *
>
>     igt@kms_flip@2x-busy-flip:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@kms_flip@2x-busy-flip.html>
>         (fdo#109274 <https://bugs.freedesktop.org/show_bug.cgi?id=109274>)
>  *
>
>     igt@kms_flip@2x-flip-vs-dpms:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-mtlp-6/igt@kms_flip@2x-flip-vs-dpms.html>
>         (i915#3637 <https://gitlab.freedesktop.org/drm/intel/issues/3637>)
>  *
>
>     igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html>
>         (i915#79 <https://gitlab.freedesktop.org/drm/intel/issues/79>)
>  *
>
>     igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
>
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-mtlp-4/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-mtlp-8/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html>
>         (i915#79 <https://gitlab.freedesktop.org/drm/intel/issues/79>)
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite:
>
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite.html>
>         (i915#6880
>         <https://gitlab.freedesktop.org/drm/intel/issues/6880>) +1
>         similar issue
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html>
>         (i915#8708
>         <https://gitlab.freedesktop.org/drm/intel/issues/8708>) +10
>         similar issues
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-render:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-render.html>
>         (i915#1825
>         <https://gitlab.freedesktop.org/drm/intel/issues/1825>) +1
>         similar issue
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu.html>
>         (i915#3458
>         <https://gitlab.freedesktop.org/drm/intel/issues/3458>) +4
>         similar issues
>  *
>
>     igt@kms_hdr@bpc-switch:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-rkl-7/igt@kms_hdr@bpc-switch.html>
>         (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>  *
>
>     igt@kms_plane@plane-panning-top-left@pipe-a-planes:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-apl1/igt@kms_plane@plane-panning-top-left@pipe-a-planes.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-apl1/igt@kms_plane@plane-panning-top-left@pipe-a-planes.html>
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180> /
>         i915#8585
>         <https://gitlab.freedesktop.org/drm/intel/issues/8585>) +5
>         similar issues
>  *
>
>     igt@kms_plane_alpha_blend@alpha-basic@pipe-a-hdmi-a-1:
>
>       o shard-glk: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-glk8/igt@kms_plane_alpha_blend@alpha-basic@pipe-a-hdmi-a-1.html>
>         (i915#7862
>         <https://gitlab.freedesktop.org/drm/intel/issues/7862>) +1
>         similar issue
>  *
>
>     igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-a-hdmi-a-2:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-rkl-4/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-a-hdmi-a-2.html>
>         (i915#5176
>         <https://gitlab.freedesktop.org/drm/intel/issues/5176>) +3
>         similar issues
>  *
>
>     igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-a-dp-4:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-a-dp-4.html>
>         (i915#5235
>         <https://gitlab.freedesktop.org/drm/intel/issues/5235>) +7
>         similar issues
>  *
>
>     igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-hdmi-a-1:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-rkl-7/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-hdmi-a-1.html>
>         (i915#5235
>         <https://gitlab.freedesktop.org/drm/intel/issues/5235>) +3
>         similar issues
>  *
>
>     igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-dp-1:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-apl1/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-dp-1.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-apl1/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-dp-1.html>
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180>) +1
>         similar issue
>  *
>
>     igt@kms_prime@basic-crc-hybrid:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@kms_prime@basic-crc-hybrid.html>
>         (i915#6524
>         <https://gitlab.freedesktop.org/drm/intel/issues/6524> /
>         i915#6805 <https://gitlab.freedesktop.org/drm/intel/issues/6805>)
>  *
>
>     igt@kms_psr@psr2_primary_blt:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@kms_psr@psr2_primary_blt.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/intel/issues/1072>) +2
>         similar issues
>  *
>
>     igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
>
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-rkl-4/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html>
>         -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-rkl-4/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html>
>         (i915#7461
>         <https://gitlab.freedesktop.org/drm/intel/issues/7461> /
>         i915#8178 <https://gitlab.freedesktop.org/drm/intel/issues/8178>)
>  *
>
>     igt@kms_setmode@basic@pipe-a-hdmi-a-1:
>
>       o shard-snb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-snb1/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html>
>         (i915#5465
>         <https://gitlab.freedesktop.org/drm/intel/issues/5465>) +1
>         similar issue
>  *
>
>     igt@kms_sysfs_edid_timing:
>
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-dg2-11/igt@kms_sysfs_edid_timing.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-5/igt@kms_sysfs_edid_timing.html>
>         (IGT#2
>         <https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2>)
>  *
>
>     igt@kms_vrr@flip-suspend:
>
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-snb5/igt@kms_vrr@flip-suspend.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +117
>         similar issues
>  *
>
>     igt@perf@global-sseu-config-invalid:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@perf@global-sseu-config-invalid.html>
>         (i915#7387 <https://gitlab.freedesktop.org/drm/intel/issues/7387>)
>  *
>
>     igt@perf@per-context-mode-unprivileged:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@perf@per-context-mode-unprivileged.html>
>         (fdo#109289
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109289>) +1
>         similar issue
>  *
>
>     igt@prime_vgem@coherency-blt:
>
>       o shard-mtlp: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-mtlp-6/igt@prime_vgem@coherency-blt.html>
>         (i915#8445 <https://gitlab.freedesktop.org/drm/intel/issues/8445>)
>  *
>
>     igt@prime_vgem@fence-read-hang:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@prime_vgem@fence-read-hang.html>
>         (i915#3708 <https://gitlab.freedesktop.org/drm/intel/issues/3708>)
>  *
>
>     igt@v3d/v3d_submit_csd@multiple-job-submission:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@v3d/v3d_submit_csd@multiple-job-submission.html>
>         (i915#2575
>         <https://gitlab.freedesktop.org/drm/intel/issues/2575>) +3
>         similar issues
>  *
>
>     igt@vc4/vc4_label_bo@set-kernel-name:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@vc4/vc4_label_bo@set-kernel-name.html>
>         (i915#7711
>         <https://gitlab.freedesktop.org/drm/intel/issues/7711>) +3
>         similar issues
>
>
>         Possible fixes
>
>  *
>
>     igt@gem_create@hog-create@smem0:
>
>       o shard-dg2: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-dg2-5/igt@gem_create@hog-create@smem0.html>
>         (i915#5892
>         <https://gitlab.freedesktop.org/drm/intel/issues/5892> /
>         i915#8758
>         <https://gitlab.freedesktop.org/drm/intel/issues/8758>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-8/igt@gem_create@hog-create@smem0.html>
>  *
>
>     igt@gem_ctx_exec@basic-nohangcheck:
>
>       o shard-tglu: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-tglu-2/igt@gem_ctx_exec@basic-nohangcheck.html>
>         (i915#6268
>         <https://gitlab.freedesktop.org/drm/intel/issues/6268>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-tglu-6/igt@gem_ctx_exec@basic-nohangcheck.html>
>  *
>
>     igt@gem_eio@kms:
>
>       o {shard-dg1}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-dg1-13/igt@gem_eio@kms.html>
>         (i915#5784
>         <https://gitlab.freedesktop.org/drm/intel/issues/5784>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg1-15/igt@gem_eio@kms.html>
>  *
>
>     igt@gem_exec_fair@basic-pace@rcs0:
>
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-glk6/igt@gem_exec_fair@basic-pace@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-glk2/igt@gem_exec_fair@basic-pace@rcs0.html>
>  *
>
>     igt@gem_exec_schedule@pi-distinct-iova@vcs1:
>
>       o shard-dg2: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-dg2-11/igt@gem_exec_schedule@pi-distinct-iova@vcs1.html>
>         (i915#8585
>         <https://gitlab.freedesktop.org/drm/intel/issues/8585>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@gem_exec_schedule@pi-distinct-iova@vcs1.html>
>         +3 similar issues
>  *
>
>     igt@gem_exec_whisper@basic-contexts-all:
>
>       o shard-mtlp: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-mtlp-6/igt@gem_exec_whisper@basic-contexts-all.html>
>         (i915#6363
>         <https://gitlab.freedesktop.org/drm/intel/issues/6363>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-mtlp-6/igt@gem_exec_whisper@basic-contexts-all.html>
>  *
>
>     igt@gem_lmem_swapping@smem-oom@lmem0:
>
>       o {shard-dg1}: TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-dg1-12/igt@gem_lmem_swapping@smem-oom@lmem0.html>
>         (i915#5493
>         <https://gitlab.freedesktop.org/drm/intel/issues/5493>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html>
>  *
>
>     igt@gen9_exec_parse@allowed-all:
>
>       o shard-glk: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-glk7/igt@gen9_exec_parse@allowed-all.html>
>         (i915#5566
>         <https://gitlab.freedesktop.org/drm/intel/issues/5566>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-glk9/igt@gen9_exec_parse@allowed-all.html>
>         +1 similar issue
>  *
>
>     igt@i915_pipe_stress@stress-xrgb8888-untiled:
>
>       o shard-mtlp: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-mtlp-6/igt@i915_pipe_stress@stress-xrgb8888-untiled.html>
>         (i915#8691
>         <https://gitlab.freedesktop.org/drm/intel/issues/8691>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-mtlp-6/igt@i915_pipe_stress@stress-xrgb8888-untiled.html>
>  *
>
>     igt@i915_pm_rc6_residency@rc6-idle@rcs0:
>
>       o {shard-dg1}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html>
>         (i915#3591
>         <https://gitlab.freedesktop.org/drm/intel/issues/3591>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html>
>         +1 similar issue
>  *
>
>     igt@i915_pm_rpm@modeset-lpsp:
>
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-rkl-1/igt@i915_pm_rpm@modeset-lpsp.html>
>         (i915#1397
>         <https://gitlab.freedesktop.org/drm/intel/issues/1397>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-rkl-7/igt@i915_pm_rpm@modeset-lpsp.html>
>  *
>
>     igt@i915_pm_rpm@modeset-non-lpsp:
>
>       o {shard-dg1}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-dg1-19/igt@i915_pm_rpm@modeset-non-lpsp.html>
>         (i915#1397
>         <https://gitlab.freedesktop.org/drm/intel/issues/1397>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg1-16/igt@i915_pm_rpm@modeset-non-lpsp.html>
>  *
>
>     igt@i915_pm_rps@reset:
>
>       o shard-snb: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-snb4/igt@i915_pm_rps@reset.html>
>         (i915#7790
>         <https://gitlab.freedesktop.org/drm/intel/issues/7790>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-snb5/igt@i915_pm_rps@reset.html>
>  *
>
>     igt@i915_suspend@forcewake:
>
>       o shard-dg2: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-dg2-5/igt@i915_suspend@forcewake.html>
>         (fdo#103375
>         <https://bugs.freedesktop.org/show_bug.cgi?id=103375> /
>         i915#6121
>         <https://gitlab.freedesktop.org/drm/intel/issues/6121>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-2/igt@i915_suspend@forcewake.html>
>  *
>
>     igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
>
>       o shard-mtlp: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html>
>         (i915#5138
>         <https://gitlab.freedesktop.org/drm/intel/issues/5138>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html>
>  *
>
>     igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
>
>       o shard-mtlp: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html>
>         (i915#3743
>         <https://gitlab.freedesktop.org/drm/intel/issues/3743>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html>
>         +2 similar issues
>  *
>
>     igt@kms_plane_scaling@plane-scaler-with-pixel-format-unity-scaling@pipe-b-edp-1:
>
>       o shard-mtlp: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-mtlp-5/igt@kms_plane_scaling@plane-scaler-with-pixel-format-unity-scaling@pipe-b-edp-1.html>
>         (i915#1982
>         <https://gitlab.freedesktop.org/drm/intel/issues/1982>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-mtlp-7/igt@kms_plane_scaling@plane-scaler-with-pixel-format-unity-scaling@pipe-b-edp-1.html>
>  *
>
>     igt@perf@non-zero-reason@0-rcs0:
>
>       o shard-dg2: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-dg2-2/igt@perf@non-zero-reason@0-rcs0.html>
>         (i915#7484
>         <https://gitlab.freedesktop.org/drm/intel/issues/7484>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-2/igt@perf@non-zero-reason@0-rcs0.html>
>
>
>         Warnings
>
>  *
>
>     igt@gem_exec_whisper@basic-contexts-forked-all:
>
>       o shard-mtlp: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-mtlp-2/igt@gem_exec_whisper@basic-contexts-forked-all.html>
>         (i915#6363
>         <https://gitlab.freedesktop.org/drm/intel/issues/6363>) ->
>         ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-mtlp-7/igt@gem_exec_whisper@basic-contexts-forked-all.html>
>         (i915#8131 <https://gitlab.freedesktop.org/drm/intel/issues/8131>)
>  *
>
>     igt@kms_async_flips@crc@pipe-a-edp-1:
>
>       o shard-mtlp: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-mtlp-3/igt@kms_async_flips@crc@pipe-a-edp-1.html>
>         (i915#8247
>         <https://gitlab.freedesktop.org/drm/intel/issues/8247>) ->
>         DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-mtlp-8/igt@kms_async_flips@crc@pipe-a-edp-1.html>
>         (i915#1982
>         <https://gitlab.freedesktop.org/drm/intel/issues/1982> /
>         i915#8561 <https://gitlab.freedesktop.org/drm/intel/issues/8561>)
>  *
>
>     igt@kms_async_flips@crc@pipe-d-edp-1:
>
>       o shard-mtlp: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-mtlp-3/igt@kms_async_flips@crc@pipe-d-edp-1.html>
>         (i915#8247
>         <https://gitlab.freedesktop.org/drm/intel/issues/8247>) ->
>         DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-mtlp-8/igt@kms_async_flips@crc@pipe-d-edp-1.html>
>         (i915#8561
>         <https://gitlab.freedesktop.org/drm/intel/issues/8561>) +2
>         similar issues
>  *
>
>     igt@kms_content_protection@type1:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-dg2-11/igt@kms_content_protection@type1.html>
>         (i915#7118
>         <https://gitlab.freedesktop.org/drm/intel/issues/7118> /
>         i915#7162
>         <https://gitlab.freedesktop.org/drm/intel/issues/7162>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-5/igt@kms_content_protection@type1.html>
>         (i915#7118 <https://gitlab.freedesktop.org/drm/intel/issues/7118>)
>  *
>
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>
>       o shard-mtlp: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-mtlp-6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>         (i915#2346
>         <https://gitlab.freedesktop.org/drm/intel/issues/2346>) ->
>         DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-mtlp-6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>         (i915#1982
>         <https://gitlab.freedesktop.org/drm/intel/issues/1982> /
>         i915#2017
>         <https://gitlab.freedesktop.org/drm/intel/issues/2017> /
>         i915#5954 <https://gitlab.freedesktop.org/drm/intel/issues/5954>)
>  *
>
>     igt@kms_fbcon_fbt@psr-suspend:
>
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html>
>         (i915#3955
>         <https://gitlab.freedesktop.org/drm/intel/issues/3955>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html>
>         (fdo#110189
>         <https://bugs.freedesktop.org/show_bug.cgi?id=110189> /
>         i915#3955
>         <https://gitlab.freedesktop.org/drm/intel/issues/3955>) +1
>         similar issue
>  *
>
>     igt@kms_force_connector_basic@force-load-detect:
>
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-rkl-6/igt@kms_force_connector_basic@force-load-detect.html>
>         (fdo#109285
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109285>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-rkl-4/igt@kms_force_connector_basic@force-load-detect.html>
>         (fdo#109285
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109285> /
>         i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>)
>  *
>
>     igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
>
>       o shard-dg2: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-dg2-11/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html>
>         (i915#5493
>         <https://gitlab.freedesktop.org/drm/intel/issues/5493>) ->
>         CRASH
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-5/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html>
>         (i915#7331 <https://gitlab.freedesktop.org/drm/intel/issues/7331>)
>
> {name}: This element is suppressed. This means it is ignored when 
> computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>
>     Build changes
>
>   * Linux: CI_DRM_13351 -> Patchwork_120238v2
>
> CI-20190529: 20190529
> CI_DRM_13351: c5262da740fe00ef30394118a108dcf0723a0318 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7376: 38af51c0ce6d9573793f53fc32782b77061bf169 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_120238v2: c5262da740fe00ef30394118a108dcf0723a0318 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ 
> git://anongit.freedesktop.org/piglit
>

--------------j1izYAbvl30oDWjePSt5eXCk
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 07.07.2023 04:52, Patchwork wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:168869833181.14756.7953698925751122358@emeril.freedesktop.org">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>drm/i915/gt: update request engine before removing
              virtual GuC engine (rev2)</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a
                href="https://patchwork.freedesktop.org/series/120238/"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/120238/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/index.html"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_13351_full -&gt;
        Patchwork_120238v2_full</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_120238v2_full
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_120238v2_full, please notify your bug
        team to allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <h2>Participating hosts (9 -&gt; 10)</h2>
      <p>Additional (1): shard-tglu0 </p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_120238v2_full:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>
          <p>igt@gem_exec_reloc@basic-wc-cpu-active:</p>
          <ul>
            <li>shard-apl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-apl1/igt@gem_exec_reloc@basic-wc-cpu-active.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-apl1/igt@gem_exec_reloc@basic-wc-cpu-active.html"
                moz-do-not-send="true">DMESG-WARN</a> +4 similar issues</li>
          </ul>
        </li>
      </ul>
    </blockquote>
    <br>
    Not related, apl does not use GuC and the change is only for GuC
    submission.<br>
    <br>
    <blockquote type="cite"
      cite="mid:168869833181.14756.7953698925751122358@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_multiple@tiling-y:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@kms_plane_multiple@tiling-y.html"
                moz-do-not-send="true">SKIP</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    <br>
    <br>
    Not related, this test is always skipped/notrun on dg2:<br>
<a class="moz-txt-link-freetext" href="http://gfx-ci.igk.intel.com/tree/drm-tip/shards-all.html?testfilter=igt@kms_plane_multiple@tiling-y">http://gfx-ci.igk.intel.com/tree/drm-tip/shards-all.html?testfilter=igt@kms_plane_multiple@tiling-y</a><br>
    <br>
    Regards<br>
    Andrzej<br>
    <br>
    <br>
    <blockquote type="cite"
      cite="mid:168869833181.14756.7953698925751122358@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
      </ul>
      <h2>New tests</h2>
      <p>New tests have been introduced between CI_DRM_13351_full and
        Patchwork_120238v2_full:</p>
      <h3>New IGT tests (34)</h3>
      <ul>
        <li>
          <p>igt@gem_exec_basic@basic@bcs0-lmem0:</p>
          <ul>
            <li>Statuses : 2 pass(s)</li>
            <li>Exec time: [0.0] s</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_basic@basic@rcs0-lmem0:</p>
          <ul>
            <li>Statuses : 2 pass(s)</li>
            <li>Exec time: [0.0] s</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_basic@basic@vcs0-lmem0:</p>
          <ul>
            <li>Statuses : 2 pass(s)</li>
            <li>Exec time: [0.0] s</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_basic@basic@vcs1-lmem0:</p>
          <ul>
            <li>Statuses : 2 pass(s)</li>
            <li>Exec time: [0.0] s</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_basic@basic@vecs0-lmem0:</p>
          <ul>
            <li>Statuses : 2 pass(s)</li>
            <li>Exec time: [0.0] s</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-blocking-absolute-wf_vblank@ab-vga1-hdmi-a1:</p>
          <ul>
            <li>Statuses : 1 pass(s)</li>
            <li>Exec time: [0.0] s</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1:</p>
          <ul>
            <li>Statuses : 1 pass(s)</li>
            <li>Exec time: [0.0] s</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-dpms-vs-vblank-race@ab-vga1-hdmi-a1:</p>
          <ul>
            <li>Statuses : 1 pass(s)</li>
            <li>Exec time: [0.0] s</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-flip-vs-panning-interruptible@ab-vga1-hdmi-a1:</p>
          <ul>
            <li>Statuses : 1 pass(s)</li>
            <li>Exec time: [0.0] s</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-modeset-vs-vblank-race@ab-vga1-hdmi-a1:</p>
          <ul>
            <li>Statuses : 1 pass(s)</li>
            <li>Exec time: [0.0] s</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-plain-flip-ts-check@ab-vga1-hdmi-a1:</p>
          <ul>
            <li>Statuses : 1 pass(s)</li>
            <li>Exec time: [0.0] s</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@basic-flip-vs-dpms@d-hdmi-a2:</p>
          <ul>
            <li>Statuses : 1 pass(s)</li>
            <li>Exec time: [0.0] s</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@blocking-absolute-wf_vblank@d-hdmi-a2:</p>
          <ul>
            <li>Statuses : 1 pass(s)</li>
            <li>Exec time: [0.0] s</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@bo-too-big@a-dp2:</p>
          <ul>
            <li>Statuses : 1 pass(s)</li>
            <li>Exec time: [0.0] s</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@bo-too-big@b-dp2:</p>
          <ul>
            <li>Statuses : 1 pass(s)</li>
            <li>Exec time: [0.0] s</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@bo-too-big@c-dp2:</p>
          <ul>
            <li>Statuses : 1 pass(s)</li>
            <li>Exec time: [0.0] s</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-expired-vblank-interruptible@d-hdmi-a2:</p>
          <ul>
            <li>Statuses : 1 pass(s)</li>
            <li>Exec time: [0.0] s</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-panning-vs-hang@d-hdmi-a2:</p>
          <ul>
            <li>Statuses : 1 pass(s)</li>
            <li>Exec time: [0.0] s</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-panning@a-dp2:</p>
          <ul>
            <li>Statuses : 1 pass(s)</li>
            <li>Exec time: [0.0] s</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-panning@b-dp2:</p>
          <ul>
            <li>Statuses : 1 pass(s)</li>
            <li>Exec time: [0.0] s</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-panning@c-dp2:</p>
          <ul>
            <li>Statuses : 1 pass(s)</li>
            <li>Exec time: [0.0] s</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-suspend@a-dp2:</p>
          <ul>
            <li>Statuses : 1 pass(s)</li>
            <li>Exec time: [0.0] s</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-suspend@b-dp2:</p>
          <ul>
            <li>Statuses : 1 pass(s)</li>
            <li>Exec time: [0.0] s</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-suspend@c-dp2:</p>
          <ul>
            <li>Statuses : 1 pass(s)</li>
            <li>Exec time: [0.0] s</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@modeset-vs-vblank-race-interruptible@a-dp2:</p>
          <ul>
            <li>Statuses : 1 pass(s)</li>
            <li>Exec time: [0.0] s</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@modeset-vs-vblank-race-interruptible@b-dp2:</p>
          <ul>
            <li>Statuses : 1 pass(s)</li>
            <li>Exec time: [0.0] s</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@modeset-vs-vblank-race-interruptible@c-dp2:</p>
          <ul>
            <li>Statuses : 1 pass(s)</li>
            <li>Exec time: [0.0] s</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@nonexisting-fb-interruptible@a-dp2:</p>
          <ul>
            <li>Statuses : 1 pass(s)</li>
            <li>Exec time: [0.0] s</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@nonexisting-fb-interruptible@b-dp2:</p>
          <ul>
            <li>Statuses : 1 pass(s)</li>
            <li>Exec time: [0.0] s</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@nonexisting-fb-interruptible@c-dp2:</p>
          <ul>
            <li>Statuses : 1 pass(s)</li>
            <li>Exec time: [0.0] s</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@nonexisting-fb@d-hdmi-a2:</p>
          <ul>
            <li>Statuses : 1 pass(s)</li>
            <li>Exec time: [0.0] s</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@plain-flip-fb-recreate@a-dp2:</p>
          <ul>
            <li>Statuses : 1 pass(s)</li>
            <li>Exec time: [0.0] s</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@plain-flip-fb-recreate@b-dp2:</p>
          <ul>
            <li>Statuses : 1 pass(s)</li>
            <li>Exec time: [0.0] s</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@plain-flip-fb-recreate@c-dp2:</p>
          <ul>
            <li>Statuses : 1 pass(s)</li>
            <li>Exec time: [0.0] s</li>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_120238v2_full that come
        from known issues:</p>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@drm_fdinfo@busy-hang@bcs0:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@drm_fdinfo@busy-hang@bcs0.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/8414"
                moz-do-not-send="true">i915#8414</a>) +10 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@drm_fdinfo@most-busy-idle-check-all@rcs0:</p>
          <ul>
            <li>shard-rkl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-rkl-6/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-rkl-2/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/7742"
                moz-do-not-send="true">i915#7742</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_eio@in-flight-contexts-immediate:</p>
          <ul>
            <li>shard-mtlp: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-mtlp-7/igt@gem_eio@in-flight-contexts-immediate.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-mtlp-2/igt@gem_eio@in-flight-contexts-immediate.html"
                moz-do-not-send="true">ABORT</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/8503"
                moz-do-not-send="true">i915#8503</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_balancer@bonded-pair:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@gem_exec_balancer@bonded-pair.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4771"
                moz-do-not-send="true">i915#4771</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_balancer@full-pulse:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-dg2-5/igt@gem_exec_balancer@full-pulse.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-8/igt@gem_exec_balancer@full-pulse.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/6032"
                moz-do-not-send="true">i915#6032</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_balancer@sliced:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@gem_exec_balancer@sliced.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4812"
                moz-do-not-send="true">i915#4812</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-none-rrul:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@gem_exec_fair@basic-none-rrul.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3539"
                moz-do-not-send="true">i915#3539</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4852"
                moz-do-not-send="true">i915#4852</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
          <ul>
            <li>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-glk4/igt@gem_exec_fair@basic-pace-solo@rcs0.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-glk9/igt@gem_exec_fair@basic-pace-solo@rcs0.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2842"
                moz-do-not-send="true">i915#2842</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_reloc@basic-wc:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@gem_exec_reloc@basic-wc.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3281"
                moz-do-not-send="true">i915#3281</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_schedule@deep@vcs0:</p>
          <ul>
            <li>shard-mtlp: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-mtlp-3/igt@gem_exec_schedule@deep@vcs0.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-mtlp-4/igt@gem_exec_schedule@deep@vcs0.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/8545"
                moz-do-not-send="true">i915#8545</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_schedule@preempt-queue:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@gem_exec_schedule@preempt-queue.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4537"
                moz-do-not-send="true">i915#4537</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4812"
                moz-do-not-send="true">i915#4812</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_fence_thrash@bo-write-verify-y:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@gem_fence_thrash@bo-write-verify-y.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4860"
                moz-do-not-send="true">i915#4860</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
          <ul>
            <li>shard-glk: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-glk8/igt@gem_lmem_swapping@parallel-random-verify-ccs.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4613"
                moz-do-not-send="true">i915#4613</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_mmap_wc@pf-nonblock:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@gem_mmap_wc@pf-nonblock.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4083"
                moz-do-not-send="true">i915#4083</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_pwrite@basic-exhaustion:</p>
          <ul>
            <li>shard-snb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-snb5/igt@gem_pwrite@basic-exhaustion.html"
                moz-do-not-send="true">WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2658"
                moz-do-not-send="true">i915#2658</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_spin_batch@spin-each:</p>
          <ul>
            <li>shard-apl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-apl3/igt@gem_spin_batch@spin-each.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-apl2/igt@gem_spin_batch@spin-each.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2898"
                moz-do-not-send="true">i915#2898</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_tiled_pread_basic:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@gem_tiled_pread_basic.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4079"
                moz-do-not-send="true">i915#4079</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_userptr_blits@forbidden-operations:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@gem_userptr_blits@forbidden-operations.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3282"
                moz-do-not-send="true">i915#3282</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@gem_userptr_blits@unsync-unmap-after-close.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3297"
                moz-do-not-send="true">i915#3297</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@allowed-all:</p>
          <ul>
            <li>shard-apl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-apl7/igt@gen9_exec_parse@allowed-all.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-apl4/igt@gen9_exec_parse@allowed-all.html"
                moz-do-not-send="true">ABORT</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5566"
                moz-do-not-send="true">i915#5566</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@batch-invalid-length:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@gen9_exec_parse@batch-invalid-length.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2856"
                moz-do-not-send="true">i915#2856</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@unaligned-jump:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-mtlp-7/igt@gen9_exec_parse@unaligned-jump.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2856"
                moz-do-not-send="true">i915#2856</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@modeset-non-lpsp-stress:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-dg2-11/igt@i915_pm_rpm@modeset-non-lpsp-stress.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-12/igt@i915_pm_rpm@modeset-non-lpsp-stress.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1397"
                moz-do-not-send="true">i915#1397</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
          <ul>
            <li>shard-rkl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-rkl-4/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-rkl-7/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1397"
                moz-do-not-send="true">i915#1397</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_sseu@full-enable:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@i915_pm_sseu@full-enable.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4387"
                moz-do-not-send="true">i915#4387</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@hangcheck:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@i915_selftest@live@hangcheck.html"
                moz-do-not-send="true">ABORT</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/7913"
                moz-do-not-send="true">i915#7913</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_suspend@fence-restore-untiled:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@i915_suspend@fence-restore-untiled.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4077"
                moz-do-not-send="true">i915#4077</a>) +7 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@4-tiled-16bpp-rotate-270:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111614"
                moz-do-not-send="true">fdo#111614</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
          <ul>
            <li>shard-glk: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-glk9/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a>) +62 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
          <ul>
            <li>shard-mtlp: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5138"
                moz-do-not-send="true">i915#5138</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@yf-tiled-addfb-size-overflow:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5190"
                moz-do-not-send="true">i915#5190</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4538"
                moz-do-not-send="true">i915#4538</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5190"
                moz-do-not-send="true">i915#5190</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
          <ul>
            <li>shard-glk: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-glk8/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3886"
                moz-do-not-send="true">i915#3886</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-4_tiled_dg2_rc_ccs_cc:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-mtlp-7/igt@kms_ccs@pipe-a-crc-primary-rotation-180-4_tiled_dg2_rc_ccs_cc.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/6095"
                moz-do-not-send="true">i915#6095</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_ccs:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_ccs.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3689"
                moz-do-not-send="true">i915#3689</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5354"
                moz-do-not-send="true">i915#5354</a>) +8 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3689"
                moz-do-not-send="true">i915#3689</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3886"
                moz-do-not-send="true">i915#3886</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5354"
                moz-do-not-send="true">i915#5354</a>) +5 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-d-ccs-on-another-bo-4_tiled_mtl_rc_ccs:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@kms_ccs@pipe-d-ccs-on-another-bo-4_tiled_mtl_rc_ccs.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5354"
                moz-do-not-send="true">i915#5354</a>) +15 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cdclk@mode-transition@pipe-d-dp-4:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@kms_cdclk@mode-transition@pipe-d-dp-4.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4087"
                moz-do-not-send="true">i915#4087</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium_color@ctm-0-75:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@kms_chamelium_color@ctm-0-75.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111827"
                moz-do-not-send="true">fdo#111827</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium_hpd@vga-hpd-without-ddc:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@kms_chamelium_hpd@vga-hpd-without-ddc.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/7828"
                moz-do-not-send="true">i915#7828</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@legacy@pipe-a-dp-4:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@kms_content_protection@legacy@pipe-a-dp-4.html"
                moz-do-not-send="true">TIMEOUT</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/7173"
                moz-do-not-send="true">i915#7173</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@lic:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-5/igt@kms_content_protection@lic.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/7118"
                moz-do-not-send="true">i915#7118</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@uevent@pipe-a-dp-4:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@kms_content_protection@uevent@pipe-a-dp-4.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1339"
                moz-do-not-send="true">i915#1339</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3359"
                moz-do-not-send="true">i915#3359</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109274"
                moz-do-not-send="true">fdo#109274</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5354"
                moz-do-not-send="true">i915#5354</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
          <ul>
            <li>shard-apl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2346"
                moz-do-not-send="true">i915#2346</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-busy-flip:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@kms_flip@2x-busy-flip.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109274"
                moz-do-not-send="true">fdo#109274</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-flip-vs-dpms:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-mtlp-6/igt@kms_flip@2x-flip-vs-dpms.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3637"
                moz-do-not-send="true">i915#3637</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:</p>
          <ul>
            <li>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/79"
                moz-do-not-send="true">i915#79</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
          <ul>
            <li>shard-mtlp: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-mtlp-4/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-mtlp-8/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/79"
                moz-do-not-send="true">i915#79</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/6880"
                moz-do-not-send="true">i915#6880</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/8708"
                moz-do-not-send="true">i915#8708</a>) +10 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-render:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-render.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1825"
                moz-do-not-send="true">i915#1825</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3458"
                moz-do-not-send="true">i915#3458</a>) +4 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_hdr@bpc-switch:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-rkl-7/igt@kms_hdr@bpc-switch.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3555"
                moz-do-not-send="true">i915#3555</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane@plane-panning-top-left@pipe-a-planes:</p>
          <ul>
            <li>shard-apl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-apl1/igt@kms_plane@plane-panning-top-left@pipe-a-planes.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-apl1/igt@kms_plane@plane-panning-top-left@pipe-a-planes.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/180"
                moz-do-not-send="true">i915#180</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/8585"
                moz-do-not-send="true">i915#8585</a>) +5 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@alpha-basic@pipe-a-hdmi-a-1:</p>
          <ul>
            <li>shard-glk: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-glk8/igt@kms_plane_alpha_blend@alpha-basic@pipe-a-hdmi-a-1.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/7862"
                moz-do-not-send="true">i915#7862</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-a-hdmi-a-2:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-rkl-4/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-a-hdmi-a-2.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5176"
                moz-do-not-send="true">i915#5176</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-a-dp-4:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-a-dp-4.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5235"
                moz-do-not-send="true">i915#5235</a>) +7 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-hdmi-a-1:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-rkl-7/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-hdmi-a-1.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5235"
                moz-do-not-send="true">i915#5235</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-dp-1:</p>
          <ul>
            <li>shard-apl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-apl1/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-dp-1.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-apl1/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-dp-1.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/180"
                moz-do-not-send="true">i915#180</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_prime@basic-crc-hybrid:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@kms_prime@basic-crc-hybrid.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/6524"
                moz-do-not-send="true">i915#6524</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/6805"
                moz-do-not-send="true">i915#6805</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr2_primary_blt:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@kms_psr@psr2_primary_blt.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1072"
                moz-do-not-send="true">i915#1072</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:</p>
          <ul>
            <li>shard-rkl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-rkl-4/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-rkl-4/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html"
                moz-do-not-send="true">ABORT</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/7461"
                moz-do-not-send="true">i915#7461</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/8178"
                moz-do-not-send="true">i915#8178</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_setmode@basic@pipe-a-hdmi-a-1:</p>
          <ul>
            <li>shard-snb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-snb1/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5465"
                moz-do-not-send="true">i915#5465</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_sysfs_edid_timing:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-dg2-11/igt@kms_sysfs_edid_timing.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-5/igt@kms_sysfs_edid_timing.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2"
                moz-do-not-send="true">IGT#2</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_vrr@flip-suspend:</p>
          <ul>
            <li>shard-snb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-snb5/igt@kms_vrr@flip-suspend.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a>) +117 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@perf@global-sseu-config-invalid:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@perf@global-sseu-config-invalid.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/7387"
                moz-do-not-send="true">i915#7387</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@perf@per-context-mode-unprivileged:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@perf@per-context-mode-unprivileged.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109289"
                moz-do-not-send="true">fdo#109289</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@prime_vgem@coherency-blt:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-mtlp-6/igt@prime_vgem@coherency-blt.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/8445"
                moz-do-not-send="true">i915#8445</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@prime_vgem@fence-read-hang:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@prime_vgem@fence-read-hang.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3708"
                moz-do-not-send="true">i915#3708</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@v3d/v3d_submit_csd@multiple-job-submission:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@v3d/v3d_submit_csd@multiple-job-submission.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2575"
                moz-do-not-send="true">i915#2575</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@vc4/vc4_label_bo@set-kernel-name:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@vc4/vc4_label_bo@set-kernel-name.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/7711"
                moz-do-not-send="true">i915#7711</a>) +3 similar issues</li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>
          <p>igt@gem_create@hog-create@smem0:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-dg2-5/igt@gem_create@hog-create@smem0.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5892"
                moz-do-not-send="true">i915#5892</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/8758"
                moz-do-not-send="true">i915#8758</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-8/igt@gem_create@hog-create@smem0.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_ctx_exec@basic-nohangcheck:</p>
          <ul>
            <li>shard-tglu: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-tglu-2/igt@gem_ctx_exec@basic-nohangcheck.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/6268"
                moz-do-not-send="true">i915#6268</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-tglu-6/igt@gem_ctx_exec@basic-nohangcheck.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_eio@kms:</p>
          <ul>
            <li>{shard-dg1}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-dg1-13/igt@gem_eio@kms.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5784"
                moz-do-not-send="true">i915#5784</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg1-15/igt@gem_eio@kms.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace@rcs0:</p>
          <ul>
            <li>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-glk6/igt@gem_exec_fair@basic-pace@rcs0.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2842"
                moz-do-not-send="true">i915#2842</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-glk2/igt@gem_exec_fair@basic-pace@rcs0.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_schedule@pi-distinct-iova@vcs1:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-dg2-11/igt@gem_exec_schedule@pi-distinct-iova@vcs1.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/8585"
                moz-do-not-send="true">i915#8585</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-11/igt@gem_exec_schedule@pi-distinct-iova@vcs1.html"
                moz-do-not-send="true">PASS</a> +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_whisper@basic-contexts-all:</p>
          <ul>
            <li>shard-mtlp: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-mtlp-6/igt@gem_exec_whisper@basic-contexts-all.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/6363"
                moz-do-not-send="true">i915#6363</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-mtlp-6/igt@gem_exec_whisper@basic-contexts-all.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
          <ul>
            <li>{shard-dg1}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-dg1-12/igt@gem_lmem_swapping@smem-oom@lmem0.html"
                moz-do-not-send="true">TIMEOUT</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5493"
                moz-do-not-send="true">i915#5493</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@allowed-all:</p>
          <ul>
            <li>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-glk7/igt@gen9_exec_parse@allowed-all.html"
                moz-do-not-send="true">ABORT</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5566"
                moz-do-not-send="true">i915#5566</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-glk9/igt@gen9_exec_parse@allowed-all.html"
                moz-do-not-send="true">PASS</a> +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pipe_stress@stress-xrgb8888-untiled:</p>
          <ul>
            <li>shard-mtlp: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-mtlp-6/igt@i915_pipe_stress@stress-xrgb8888-untiled.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/8691"
                moz-do-not-send="true">i915#8691</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-mtlp-6/igt@i915_pipe_stress@stress-xrgb8888-untiled.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rc6_residency@rc6-idle@rcs0:</p>
          <ul>
            <li>{shard-dg1}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3591"
                moz-do-not-send="true">i915#3591</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html"
                moz-do-not-send="true">PASS</a> +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@modeset-lpsp:</p>
          <ul>
            <li>shard-rkl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-rkl-1/igt@i915_pm_rpm@modeset-lpsp.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1397"
                moz-do-not-send="true">i915#1397</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-rkl-7/igt@i915_pm_rpm@modeset-lpsp.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@modeset-non-lpsp:</p>
          <ul>
            <li>{shard-dg1}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-dg1-19/igt@i915_pm_rpm@modeset-non-lpsp.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1397"
                moz-do-not-send="true">i915#1397</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg1-16/igt@i915_pm_rpm@modeset-non-lpsp.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rps@reset:</p>
          <ul>
            <li>shard-snb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-snb4/igt@i915_pm_rps@reset.html"
                moz-do-not-send="true">INCOMPLETE</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/7790"
                moz-do-not-send="true">i915#7790</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-snb5/igt@i915_pm_rps@reset.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_suspend@forcewake:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-dg2-5/igt@i915_suspend@forcewake.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=103375"
                moz-do-not-send="true">fdo#103375</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/6121"
                moz-do-not-send="true">i915#6121</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-2/igt@i915_suspend@forcewake.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:</p>
          <ul>
            <li>shard-mtlp: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5138"
                moz-do-not-send="true">i915#5138</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:</p>
          <ul>
            <li>shard-mtlp: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3743"
                moz-do-not-send="true">i915#3743</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html"
                moz-do-not-send="true">PASS</a> +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@plane-scaler-with-pixel-format-unity-scaling@pipe-b-edp-1:</p>
          <ul>
            <li>shard-mtlp: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-mtlp-5/igt@kms_plane_scaling@plane-scaler-with-pixel-format-unity-scaling@pipe-b-edp-1.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1982"
                moz-do-not-send="true">i915#1982</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-mtlp-7/igt@kms_plane_scaling@plane-scaler-with-pixel-format-unity-scaling@pipe-b-edp-1.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@perf@non-zero-reason@0-rcs0:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-dg2-2/igt@perf@non-zero-reason@0-rcs0.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/7484"
                moz-do-not-send="true">i915#7484</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-2/igt@perf@non-zero-reason@0-rcs0.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
      </ul>
      <h4>Warnings</h4>
      <ul>
        <li>
          <p>igt@gem_exec_whisper@basic-contexts-forked-all:</p>
          <ul>
            <li>shard-mtlp: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-mtlp-2/igt@gem_exec_whisper@basic-contexts-forked-all.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/6363"
                moz-do-not-send="true">i915#6363</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-mtlp-7/igt@gem_exec_whisper@basic-contexts-forked-all.html"
                moz-do-not-send="true">ABORT</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/8131"
                moz-do-not-send="true">i915#8131</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_async_flips@crc@pipe-a-edp-1:</p>
          <ul>
            <li>shard-mtlp: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-mtlp-3/igt@kms_async_flips@crc@pipe-a-edp-1.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/8247"
                moz-do-not-send="true">i915#8247</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-mtlp-8/igt@kms_async_flips@crc@pipe-a-edp-1.html"
                moz-do-not-send="true">DMESG-FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1982"
                moz-do-not-send="true">i915#1982</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/8561"
                moz-do-not-send="true">i915#8561</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_async_flips@crc@pipe-d-edp-1:</p>
          <ul>
            <li>shard-mtlp: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-mtlp-3/igt@kms_async_flips@crc@pipe-d-edp-1.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/8247"
                moz-do-not-send="true">i915#8247</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-mtlp-8/igt@kms_async_flips@crc@pipe-d-edp-1.html"
                moz-do-not-send="true">DMESG-FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/8561"
                moz-do-not-send="true">i915#8561</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@type1:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-dg2-11/igt@kms_content_protection@type1.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/7118"
                moz-do-not-send="true">i915#7118</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/7162"
                moz-do-not-send="true">i915#7162</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-5/igt@kms_content_protection@type1.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/7118"
                moz-do-not-send="true">i915#7118</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
          <ul>
            <li>shard-mtlp: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-mtlp-6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2346"
                moz-do-not-send="true">i915#2346</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-mtlp-6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html"
                moz-do-not-send="true">DMESG-FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1982"
                moz-do-not-send="true">i915#1982</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2017"
                moz-do-not-send="true">i915#2017</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5954"
                moz-do-not-send="true">i915#5954</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_fbcon_fbt@psr-suspend:</p>
          <ul>
            <li>shard-rkl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3955"
                moz-do-not-send="true">i915#3955</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=110189"
                moz-do-not-send="true">fdo#110189</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3955"
                moz-do-not-send="true">i915#3955</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_force_connector_basic@force-load-detect:</p>
          <ul>
            <li>shard-rkl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-rkl-6/igt@kms_force_connector_basic@force-load-detect.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109285"
                moz-do-not-send="true">fdo#109285</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-rkl-4/igt@kms_force_connector_basic@force-load-detect.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109285"
                moz-do-not-send="true">fdo#109285</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4098"
                moz-do-not-send="true">i915#4098</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13351/shard-dg2-11/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html"
                moz-do-not-send="true">INCOMPLETE</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5493"
                moz-do-not-send="true">i915#5493</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120238v2/shard-dg2-5/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html"
                moz-do-not-send="true">CRASH</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/7331"
                moz-do-not-send="true">i915#7331</a>)</li>
          </ul>
        </li>
      </ul>
      <p>{name}: This element is suppressed. This means it is ignored
        when computing<br>
        the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_13351 -&gt; Patchwork_120238v2</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_13351: c5262da740fe00ef30394118a108dcf0723a0318 @
        git://anongit.freedesktop.org/gfx-ci/linux<br>
        IGT_7376: 38af51c0ce6d9573793f53fc32782b77061bf169 @
        <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-tools.git</a><br>
        Patchwork_120238v2: c5262da740fe00ef30394118a108dcf0723a0318 @
        git://anongit.freedesktop.org/gfx-ci/linux<br>
        piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
        git://anongit.freedesktop.org/piglit</p>
    </blockquote>
    <br>
  </body>
</html>

--------------j1izYAbvl30oDWjePSt5eXCk--
