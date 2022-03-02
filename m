Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 107B54C9F85
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Mar 2022 09:41:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FF8110E503;
	Wed,  2 Mar 2022 08:41:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C693A10EB43
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Mar 2022 08:41:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646210511; x=1677746511;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=3LnJl42TO1dFyx77LF1sTChiqfp1hDmlRTX58uL7ceo=;
 b=LAgk4NW3HbvFSgfeurvK5hosiLqqHwFrMLCT9UjINQkcrc99Hh+atLqU
 reD9+KrH5dLSuoRR5mE9ISQu37rEY6XxYUpZYEZ0m4TPoN70FmBAO1n2H
 RvdOuO1DhJ1VEdutRavAmB8vnJLtbcf7J+vcRUsRQPRYUQr+HP9DzfCSN
 1O0jtlWsFedL3ZGSmU4aB9g5xmjLvTm5NqNo+2mMOTTfvTB6/cDVMSGxZ
 Hj1x2hTLWgqwkJ2MrIUyiVBfrwO1IevWJD+SZBmsV1Y5ypF+TZ5GBqN/Y
 p6Rm8gxN2YOlqUrRPmPcf4Bav/4BBxVB6PG699nefvN/kiGAd+mr2M31F g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10273"; a="316560786"
X-IronPort-AV: E=Sophos;i="5.90,148,1643702400"; d="scan'208";a="316560786"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 00:41:31 -0800
X-IronPort-AV: E=Sophos;i="5.90,148,1643702400"; d="scan'208";a="641617759"
Received: from jbuller-mobl1.ger.corp.intel.com (HELO [10.213.194.231])
 ([10.213.194.231])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 00:41:29 -0800
Message-ID: <a651c734-91a9-cbeb-2bf5-f8b43ba2ca8a@linux.intel.com>
Date: Wed, 2 Mar 2022 08:41:27 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org,
 Patchwork <patchwork@emeril.freedesktop.org>,
 Vivek Kasireddy <vivek.kasireddy@intel.com>
References: <20220228190429.1358951-1-vivek.kasireddy@intel.com>
 <164616260567.8601.844339670625602983@emeril.freedesktop.org>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <164616260567.8601.844339670625602983@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/mm=3A_Add_an_iterator_to_optimally_walk_over_holes_suitable_fo?=
 =?utf-8?q?r_an_allocation_=28rev2=29?=
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


Hi Vivek,

On 01/03/2022 19:23, Patchwork wrote:
> *Patch Details*
> *Series:*	drm/mm: Add an iterator to optimally walk over holes suitable 
> for an allocation (rev2)
> *URL:*	https://patchwork.freedesktop.org/series/100847/ 
> <https://patchwork.freedesktop.org/series/100847/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_11302_full -> Patchwork_22447_full
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_22447_full absolutely need 
> to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_22447_full, please notify your bug team to allow 
> them
> to document this new failure mode, which will reduce false positives in CI.
> 
> 
>     Participating hosts (13 -> 13)
> 
> No changes in participating hosts
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in 
> Patchwork_22447_full:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   *
> 
>     igt@drm_mm@all@replace:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-skl10/igt@drm_mm@all@replace.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-skl5/igt@drm_mm@all@replace.html>

This looked like a suspicious fail. But from test time to until it is terminated due exceeding the timeout is only a sub-second.
  	
<6> [539.988360] [IGT] drm_mm: starting dynamic subtest replace
<6> [540.010576] drm_mm: Testing DRM range manager (struct drm_mm), with random_seed=0x19e51e55 max_iterations=8192 max_prime=128
<4> [540.051192] [IGT] Per-test timeout exceeded. Killing the current test with SIGQUIT.
...
<6> [540.427965] task:drm_mm          state:R  running task     stack:13128 pid: 6896 ppid:  1037 flags:0x00004000
<6> [540.428142] Call Trace:
<6> [540.428164]  <TASK>
<6> [540.428300]  ? asm_sysvec_apic_timer_interrupt+0x12/0x20
<6> [540.428355]  ? lockdep_hardirqs_on+0xbf/0x130
<6> [540.428409]  ? rm_hole+0x7e/0x310
<6> [540.428476]  ? drm_mm_insert_node_in_range+0x2b3/0x3a0
<6> [540.428649]  ? expect_insert.isra.10+0x2f/0x80 [test_drm_mm]
<6> [540.428712]  ? assert_continuous+0x83/0x120 [test_drm_mm]
<6> [540.428842]  ? __igt_insert+0x2b5/0x560 [test_drm_mm]
<6> [540.429338]  ? tick_nohz_tick_stopped+0xd/0x30
<6> [540.429431]  ? wake_up_klogd.part.31+0x4a/0x60
<6> [540.429613]  ? igt_replace+0x46/0xb0 [test_drm_mm]
<6> [540.429678]  ? 0xffffffffa004b000
<6> [540.429736]  ? test_drm_mm_init+0xab/0x1000 [test_drm_mm]
<6> [540.429800]  ? 0xffffffffa004b000
<6> [540.429835]  ? do_one_initcall+0x56/0x2e0
<6> [540.429869]  ? do_init_module+0x1d/0x1e0
<6> [540.429919]  ? rcu_read_lock_sched_held+0x4d/0x80
<6> [540.429973]  ? kmem_cache_alloc_trace+0x1de/0x250
<6> [540.430202]  ? do_init_module+0x45/0x1e0
<6> [540.430259]  ? load_module+0x2740/0x29d0
<6> [540.430578]  ? __do_sys_finit_module+0xaf/0x120
<6> [540.430617]  ? __do_sys_finit_module+0xaf/0x120
<6> [540.430833]  ? do_syscall_64+0x3a/0xb0
<6> [540.430883]  ? entry_SYSCALL_64_after_hwframe+0x44/0xae
<6> [540.431171]  </TASK>

Looking at the test runner log we have this:

Starting dynamic subtest: insert
Dynamic subtest insert: SUCCESS (120.029s)
[540.455651] Per-test timeout exceeded. Killing the current test with SIGQUIT.
Starting dynamic subtest: replace

So actually insert test is the one which took long, but not that much longer than it can take in other CI runs as far as I could see. At least I randomly found one instance where it took >110s in the past.

CI history does not show the test as failing in the (visible) past though. Neither I can find anything in the issue tracker. But I don't think it is this patch at fault. No idea..

One thing you could still tweak would be to put the mode macro argument in drm_mm_for_each_suitable_hole into braces, as per checkpatch suggestion:

-:157: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'mode' may be better as '(mode)' to avoid precedence issues
#157: FILE: include/drm/drm_mm.h:430:
+#define drm_mm_for_each_suitable_hole(pos, mm, range_start, range_end, \
+				      size, mode) \
+	for (pos = __drm_mm_first_hole(mm, range_start, range_end, size, \
+				       mode & ~DRM_MM_INSERT_ONCE); \
+	     pos; \
+	     pos = mode & DRM_MM_INSERT_ONCE ? \
+	     NULL : __drm_mm_next_hole(mm, pos, size, \
+				       mode & ~DRM_MM_INSERT_ONCE))

Ending up with two instances of "(mode) & ~DRM_MM_INSERT_ONCE" and one "(mode) & DRM_MM_INSERT_ONCE".

Regards,

Tvrtko

>   *
> 
>     igt@gem_exec_schedule@preemptive-hang@vecs0:
> 
>       o shard-glk: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk9/igt@gem_exec_schedule@preemptive-hang@vecs0.html>
>   *
> 
>     igt@gem_exec_schedule@submit-early-slice@bcs0:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk6/igt@gem_exec_schedule@submit-early-slice@bcs0.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk7/igt@gem_exec_schedule@submit-early-slice@bcs0.html>
>         +2 similar issues
>   *
> 
>     igt@kms_rotation_crc@primary-rotation-180:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-kbl6/igt@kms_rotation_crc@primary-rotation-180.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-kbl6/igt@kms_rotation_crc@primary-rotation-180.html>
> 
>         Warnings
> 
>   *
> 
>     igt@gem_exec_balancer@parallel-balancer:
> 
>       o shard-glk: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk9/igt@gem_exec_balancer@parallel-balancer.html>
>         ([fdo#109271]) -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk8/igt@gem_exec_balancer@parallel-balancer.html>
>   *
> 
>     igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2:
> 
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk5/igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2.html>
>         ([i915#2122]) -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk4/igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2.html>
> 
> 
>         Suppressed
> 
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
> 
>   *
> 
>     {igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-a-hdmi-a-1-planes-downscale}:
> 
>       o {shard-tglu}: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-tglu-3/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-a-hdmi-a-1-planes-downscale.html>
>         +15 similar issues
>   *
> 
>     {igt@kms_plane_scaling@scaler-with-pixel-format-unity-scaling@pipe-b-hdmi-a-2-scaler-with-pixel-format}:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk2/igt@kms_plane_scaling@scaler-with-pixel-format-unity-scaling@pipe-b-hdmi-a-2-scaler-with-pixel-format.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk5/igt@kms_plane_scaling@scaler-with-pixel-format-unity-scaling@pipe-b-hdmi-a-2-scaler-with-pixel-format.html>
>   *
> 
>     {igt@kms_plane_scaling@scaler-with-rotation-unity-scaling@pipe-d-hdmi-a-3-scaler-with-rotation}:
> 
>       o {shard-dg1}: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-dg1-18/igt@kms_plane_scaling@scaler-with-rotation-unity-scaling@pipe-d-hdmi-a-3-scaler-with-rotation.html>
>         +3 similar issues
>   *
> 
>     {igt@kms_plane_scaling@upscale-with-rotation-20x20}:
> 
>       o {shard-rkl}: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-rkl-5/igt@kms_plane_scaling@upscale-with-rotation-20x20.html>
>         +8 similar issues
> 
> 
>     New tests
> 
> New tests have been introduced between CI_DRM_11302_full and 
> Patchwork_22447_full:
> 
> 
>       New IGT tests (126)
> 
>   *
> 
>     igt@gem_create@create-clear:
> 
>       o Statuses : 9 pass(s)
>       o Exec time: [32.65, 37.06] s
>   *
> 
>     igt@gem_ctx_engines@none:
> 
>       o Statuses : 8 pass(s)
>       o Exec time: [0.00] s
>   *
> 
>     igt@gem_ctx_exec@basic-norecovery:
> 
>       o Statuses : 9 pass(s)
>       o Exec time: [0.01, 0.26] s
>   *
> 
>     igt@gem_ctx_sseu@mmap-args:
> 
>       o Statuses : 4 skip(s)
>       o Exec time: [0.0] s
>   *
> 
>     igt@gem_eio@context-create:
> 
>       o Statuses : 7 pass(s)
>       o Exec time: [0.02, 0.28] s
>   *
> 
>     igt@gem_exec_create@forked:
> 
>       o Statuses :
>       o Exec time: [None] s
>   *
> 
>     igt@gem_exec_reloc@basic-scanout@bcs0:
> 
>       o Statuses : 8 pass(s) 1 skip(s)
>       o Exec time: [0.0, 0.34] s
>   *
> 
>     igt@gem_exec_reloc@basic-scanout@rcs0:
> 
>       o Statuses : 8 pass(s) 1 skip(s)
>       o Exec time: [0.0, 0.57] s
>   *
> 
>     igt@gem_exec_reloc@basic-scanout@vcs0:
> 
>       o Statuses : 8 pass(s) 1 skip(s)
>       o Exec time: [0.0, 0.36] s
>   *
> 
>     igt@gem_exec_reloc@basic-scanout@vcs1:
> 
>       o Statuses : 4 pass(s)
>       o Exec time: [0.10, 0.18] s
>   *
> 
>     igt@gem_exec_reloc@basic-scanout@vecs0:
> 
>       o Statuses : 7 pass(s) 1 skip(s)
>       o Exec time: [0.0, 0.32] s
>   *
> 
>     igt@gem_exec_suspend@basic:
> 
>       o Statuses :
>       o Exec time: [None] s
>   *
> 
>     igt@gem_exec_whisper@basic-contexts:
> 
>       o Statuses : 6 pass(s)
>       o Exec time: [1.39, 22.89] s
>   *
> 
>     igt@gem_exec_whisper@basic-contexts-all:
> 
>       o Statuses : 9 pass(s)
>       o Exec time: [1.60, 21.84] s
>   *
> 
>     igt@gem_exec_whisper@basic-contexts-forked:
> 
>       o Statuses : 7 pass(s)
>       o Exec time: [5.18, 26.73] s
>   *
> 
>     igt@gem_exec_whisper@basic-contexts-forked-all:
> 
>       o Statuses : 8 pass(s)
>       o Exec time: [18.93, 34.05] s
>   *
> 
>     igt@gem_exec_whisper@basic-contexts-priority:
> 
>       o Statuses :
>       o Exec time: [None] s
>   *
> 
>     igt@gem_exec_whisper@basic-contexts-priority-all:
> 
>       o Statuses : 7 pass(s) 1 skip(s)
>       o Exec time: [0.00, 24.87] s
>   *
> 
>     igt@gem_exec_whisper@basic-fds:
> 
>       o Statuses : 9 pass(s)
>       o Exec time: [2.06, 12.59] s
>   *
> 
>     igt@gem_exec_whisper@basic-fds-all:
> 
>       o Statuses : 7 pass(s)
>       o Exec time: [2.55, 23.90] s
>   *
> 
>     igt@gem_exec_whisper@basic-fds-forked:
> 
>       o Statuses : 6 pass(s)
>       o Exec time: [6.01, 24.95] s
>   *
> 
>     igt@gem_exec_whisper@basic-fds-forked-all:
> 
>       o Statuses :
>       o Exec time: [None] s
>   *
> 
>     igt@gem_exec_whisper@basic-fds-priority:
> 
>       o Statuses : 5 pass(s) 1 skip(s)
>       o Exec time: [0.00, 25.40] s
>   *
> 
>     igt@gem_exec_whisper@basic-fds-priority-all:
> 
>       o Statuses : 5 pass(s) 1 skip(s)
>       o Exec time: [0.00, 33.68] s
>   *
> 
>     igt@gem_exec_whisper@basic-forked:
> 
>       o Statuses : 8 pass(s)
>       o Exec time: [3.48, 22.11] s
>   *
> 
>     igt@gem_exec_whisper@basic-forked-all:
> 
>       o Statuses :
>       o Exec time: [None] s
>   *
> 
>     igt@gem_exec_whisper@basic-normal:
> 
>       o Statuses : 9 pass(s)
>       o Exec time: [0.95, 16.87] s
>   *
> 
>     igt@gem_exec_whisper@basic-normal-all:
> 
>       o Statuses : 9 pass(s)
>       o Exec time: [1.28, 22.17] s
>   *
> 
>     igt@gem_exec_whisper@basic-queues:
> 
>       o Statuses : 7 pass(s) 1 skip(s)
>       o Exec time: [0.00, 22.56] s
>   *
> 
>     igt@gem_exec_whisper@basic-queues-all:
> 
>       o Statuses : 5 pass(s) 1 skip(s)
>       o Exec time: [0.00, 12.49] s
>   *
> 
>     igt@gem_exec_whisper@basic-queues-forked:
> 
>       o Statuses : 6 pass(s) 1 skip(s)
>       o Exec time: [0.00, 25.30] s
>   *
> 
>     igt@gem_exec_whisper@basic-queues-forked-all:
> 
>       o Statuses : 9 pass(s) 1 skip(s)
>       o Exec time: [0.00, 29.98] s
>   *
> 
>     igt@gem_exec_whisper@basic-queues-priority:
> 
>       o Statuses : 3 pass(s) 1 skip(s)
>       o Exec time: [0.00, 25.27] s
>   *
> 
>     igt@gem_exec_whisper@basic-queues-priority-all:
> 
>       o Statuses :
>       o Exec time: [None] s
>   *
> 
>     igt@gem_exec_whisper@basic-sync:
> 
>       o Statuses : 6 pass(s)
>       o Exec time: [1.16, 21.73] s
>   *
> 
>     igt@gem_exec_whisper@basic-sync-all:
> 
>       o Statuses : 7 pass(s)
>       o Exec time: [1.34, 22.12] s
>   *
> 
>     igt@gem_render_copy@linear:
> 
>       o Statuses :
>       o Exec time: [None] s
>   *
> 
>     igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
> 
>       o Statuses :
>       o Exec time: [None] s
>   *
> 
>     igt@i915_pm_backlight@bad-brightness:
> 
>       o Statuses : 2 pass(s) 3 skip(s)
>       o Exec time: [0.0, 0.01] s
>   *
> 
>     igt@i915_pm_backlight@fade:
> 
>       o Statuses : 2 pass(s) 6 skip(s)
>       o Exec time: [0.0, 2.36] s
>   *
> 
>     igt@i915_pm_backlight@fade_with_dpms:
> 
>       o Statuses : 3 pass(s) 6 skip(s)
>       o Exec time: [0.0, 5.12] s
>   *
> 
>     igt@i915_pm_backlight@fade_with_suspend:
> 
>       o Statuses : 3 pass(s) 5 skip(s)
>       o Exec time: [0.0, 5.04] s
>   *
> 
>     igt@i915_pm_lpsp@screens-disabled:
> 
>       o Statuses : 8 skip(s)
>       o Exec time: [0.0, 0.06] s
>   *
> 
>     igt@i915_pm_rc6_residency@media-rc6-accuracy:
> 
>       o Statuses : 5 skip(s)
>       o Exec time: [0.0] s
>   *
> 
>     igt@i915_pm_rc6_residency@rc6-accuracy:
> 
>       o Statuses : 9 pass(s) 1 skip(s)
>       o Exec time: [0.0, 3.00] s
>   *
> 
>     igt@i915_pm_rpm@cursor:
> 
>       o Statuses : 5 pass(s) 2 skip(s)
>       o Exec time: [0.0, 36.01] s
>   *
> 
>     igt@i915_pm_rpm@cursor-dpms:
> 
>       o Statuses : 7 pass(s) 1 skip(s)
>       o Exec time: [0.0, 40.79] s
>   *
> 
>     igt@i915_pm_rpm@debugfs-forcewake-user:
> 
>       o Statuses : 6 pass(s) 1 skip(s)
>       o Exec time: [0.0, 14.34] s
>   *
> 
>     igt@i915_pm_rpm@dpms-lpsp:
> 
>       o Statuses : 4 pass(s) 6 skip(s)
>       o Exec time: [0.0, 0.68] s
>   *
> 
>     igt@i915_pm_rpm@dpms-mode-unset-lpsp:
> 
>       o Statuses : 4 pass(s) 6 skip(s)
>       o Exec time: [0.0, 9.32] s
>   *
> 
>     igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
> 
>       o Statuses : 2 pass(s) 7 skip(s)
>       o Exec time: [0.0, 4.75] s
>   *
> 
>     igt@i915_pm_rpm@dpms-non-lpsp:
> 
>       o Statuses : 2 pass(s) 6 skip(s)
>       o Exec time: [0.0, 0.23] s
>   *
> 
>     igt@i915_pm_rpm@drm-resources-equal:
> 
>       o Statuses : 5 pass(s) 2 skip(s)
>       o Exec time: [0.0, 5.84] s
>   *
> 
>     igt@i915_pm_rpm@fences:
> 
>       o Statuses : 6 pass(s) 2 skip(s)
>       o Exec time: [0.0, 17.03] s
>   *
> 
>     igt@i915_pm_rpm@fences-dpms:
> 
>       o Statuses : 6 pass(s) 2 skip(s)
>       o Exec time: [0.0, 16.80] s
>   *
> 
>     igt@i915_pm_rpm@gem-evict-pwrite:
> 
>       o Statuses : 4 pass(s) 2 skip(s)
>       o Exec time: [0.0, 3.76] s
>   *
> 
>     igt@i915_pm_rpm@gem-execbuf:
> 
>       o Statuses :
>       o Exec time: [None] s
>   *
> 
>     igt@i915_pm_rpm@gem-execbuf-stress:
> 
>       o Statuses :
>       o Exec time: [None] s
>   *
> 
>     igt@i915_pm_rpm@gem-execbuf-stress-pc8:
> 
>       o Statuses : 7 skip(s)
>       o Exec time: [0.0, 0.09] s
>   *
> 
>     igt@i915_pm_rpm@gem-idle:
> 
>       o Statuses : 7 pass(s) 1 skip(s)
>       o Exec time: [0.0, 8.72] s
>   *
> 
>     igt@i915_pm_rpm@gem-mmap-type:
> 
>       o Statuses : 1 skip(s)
>       o Exec time: [0.0] s
>   *
> 
>     igt@i915_pm_rpm@gem-mmap-type@gtt:
> 
>       o Statuses : 6 pass(s)
>       o Exec time: [2.17, 22.92] s
>   *
> 
>     igt@i915_pm_rpm@gem-mmap-type@uc:
> 
>       o Statuses : 6 pass(s)
>       o Exec time: [1.02, 7.02] s
>   *
> 
>     igt@i915_pm_rpm@gem-mmap-type@wb:
> 
>       o Statuses : 6 pass(s)
>       o Exec time: [1.03, 6.49] s
>   *
> 
>     igt@i915_pm_rpm@gem-mmap-type@wc:
> 
>       o Statuses : 6 pass(s)
>       o Exec time: [1.04, 3.45] s
>   *
> 
>     igt@i915_pm_rpm@gem-pread:
> 
>       o Statuses : 6 pass(s) 1 skip(s)
>       o Exec time: [0.0, 6.25] s
>   *
> 
>     igt@i915_pm_rpm@i2c:
> 
>       o Statuses : 6 pass(s) 2 skip(s)
>       o Exec time: [0.0, 11.04] s
>   *
> 
>     igt@i915_pm_rpm@legacy-planes:
> 
>       o Statuses :
>       o Exec time: [None] s
>   *
> 
>     igt@i915_pm_rpm@modeset-lpsp:
> 
>       o Statuses : 4 pass(s) 5 skip(s)
>       o Exec time: [0.0, 4.85] s
>   *
> 
>     igt@i915_pm_rpm@modeset-lpsp-stress:
> 
>       o Statuses : 3 pass(s) 3 skip(s)
>       o Exec time: [0.0, 46.16] s
>   *
> 
>     igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
> 
>       o Statuses : 4 pass(s) 5 skip(s)
>       o Exec time: [0.0, 14.40] s
>   *
> 
>     igt@i915_pm_rpm@modeset-non-lpsp:
> 
>       o Statuses : 2 pass(s) 6 skip(s)
>       o Exec time: [0.0, 3.62] s
>   *
> 
>     igt@i915_pm_rpm@modeset-non-lpsp-stress:
> 
>       o Statuses : 3 pass(s) 6 skip(s)
>       o Exec time: [0.0, 7.16] s
>   *
> 
>     igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
> 
>       o Statuses : 2 pass(s) 7 skip(s)
>       o Exec time: [0.0, 4.89] s
>   *
> 
>     igt@i915_pm_rpm@modeset-pc8-residency-stress:
> 
>       o Statuses : 7 skip(s)
>       o Exec time: [0.0] s
>   *
> 
>     igt@i915_pm_rpm@pc8-residency:
> 
>       o Statuses : 8 skip(s)
>       o Exec time: [0.0] s
>   *
> 
>     igt@i915_pm_rpm@pm-caching:
> 
>       o Statuses : 5 pass(s) 2 skip(s)
>       o Exec time: [0.0, 19.04] s
>   *
> 
>     igt@i915_pm_rpm@pm-tiling:
> 
>       o Statuses :
>       o Exec time: [None] s
>   *
> 
>     igt@i915_pm_rpm@reg-read-ioctl:
> 
>       o Statuses : 6 pass(s) 1 skip(s)
>       o Exec time: [0.0, 7.94] s
>   *
> 
>     igt@i915_pm_rpm@sysfs-read:
> 
>       o Statuses : 5 pass(s) 1 skip(s)
>       o Exec time: [0.0, 4.01] s
>   *
> 
>     igt@i915_pm_rpm@system-suspend:
> 
>       o Statuses : 7 pass(s) 1 skip(s)
>       o Exec time: [0.0, 13.04] s
>   *
> 
>     igt@i915_pm_rpm@system-suspend-devices:
> 
>       o Statuses : 9 pass(s) 1 skip(s)
>       o Exec time: [0.0, 13.58] s
>   *
> 
>     igt@i915_pm_rpm@system-suspend-execbuf:
> 
>       o Statuses : 7 pass(s) 1 skip(s)
>       o Exec time: [0.0, 86.65] s
>   *
> 
>     igt@i915_pm_rpm@system-suspend-modeset:
> 
>       o Statuses :
>       o Exec time: [None] s
>   *
> 
>     igt@i915_pm_rpm@universal-planes-dpms:
> 
>       o Statuses :
>       o Exec time: [None] s
>   *
> 
>     igt@i915_pm_rps@min-max-config-idle:
> 
>       o Statuses : 1 fail(s) 8 pass(s)
>       o Exec time: [0.14, 2.58] s
>   *
> 
>     igt@i915_pm_rps@min-max-config-loaded:
> 
>       o Statuses : 8 pass(s)
>       o Exec time: [0.33, 0.64] s
>   *
> 
>     igt@i915_pm_rps@reset:
> 
>       o Statuses : 1 fail(s) 7 pass(s)
>       o Exec time: [3.52, 3.76] s
>   *
> 
>     igt@i915_pm_rps@waitboost:
> 
>       o Statuses : 8 pass(s)
>       o Exec time: [2.52, 2.77] s
>   *
> 
>     igt@i915_pm_sseu@full-enable:
> 
>       o Statuses : 3 pass(s) 4 skip(s)
>       o Exec time: [0.0, 0.05] s
>   *
> 
>     igt@kms_atomic_interruptible@atomic-setmode:
> 
>       o Statuses : 1 skip(s)
>       o Exec time: [0.0] s
>   *
> 
>     igt@kms_atomic_transition@plane-use-after-nonblocking-unbind:
> 
>       o Statuses :
>       o Exec time: [None] s
>   *
> 
>     igt@kms_content_protection@atomic-dpms:
> 
>       o Statuses : 3 skip(s) 2 timeout(s)
>       o Exec time: [0.0, 121.44] s
>   *
> 
>     igt@kms_content_protection@dp-mst-lic-type-0:
> 
>       o Statuses : 9 skip(s)
>       o Exec time: [0.0, 0.00] s
>   *
> 
>     igt@kms_content_protection@dp-mst-lic-type-1:
> 
>       o Statuses : 7 skip(s)
>       o Exec time: [0.0, 0.00] s
>   *
> 
>     igt@kms_content_protection@dp-mst-type-0:
> 
>       o Statuses : 9 skip(s)
>       o Exec time: [0.0, 0.00] s
>   *
> 
>     igt@kms_content_protection@dp-mst-type-1:
> 
>       o Statuses : 8 skip(s)
>       o Exec time: [0.0] s
>   *
> 
>     igt@kms_flip@absolute-wf_vblank@d-hdmi-a3:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [7.82] s
>   *
> 
>     igt@kms_flip@basic-plain-flip@d-hdmi-a3:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [0.65] s
>   *
> 
>     igt@kms_flip@flip-vs-dpms-off-vs-modeset:
> 
>       o Statuses :
>       o Exec time: [None] s
>   *
> 
>     igt@kms_flip@flip-vs-modeset-vs-hang:
> 
>       o Statuses :
>       o Exec time: [None] s
>   *
> 
>     igt@kms_flip@nonexisting-fb:
> 
>       o Statuses :
>       o Exec time: [None] s
>   *
> 
>     igt@kms_flip@nonexisting-fb-interruptible@d-hdmi-a3:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [0.62] s
>   *
> 
>     igt@kms_flip@plain-flip-fb-recreate-interruptible@d-hdmi-a3:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [7.95] s
>   *
> 
>     igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a3:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [8.07] s
>   *
> 
>     igt@kms_hdr@bpc-switch:
> 
>       o Statuses : 1 fail(s) 6 pass(s) 2 skip(s)
>       o Exec time: [0.0, 4.85] s
>   *
> 
>     igt@kms_hdr@bpc-switch-dpms:
> 
>       o Statuses : 3 pass(s) 3 skip(s)
>       o Exec time: [0.0, 5.81] s
>   *
> 
>     igt@kms_hdr@bpc-switch-suspend:
> 
>       o Statuses : 5 pass(s) 2 skip(s)
>       o Exec time: [0.0, 5.76] s
>   *
> 
>     igt@kms_hdr@static-swap:
> 
>       o Statuses :
>       o Exec time: [None] s
>   *
> 
>     igt@kms_hdr@static-toggle:
> 
>       o Statuses : 1 pass(s) 7 skip(s)
>       o Exec time: [0.0, 3.74] s
>   *
> 
>     igt@kms_hdr@static-toggle-dpms:
> 
>       o Statuses : 9 skip(s)
>       o Exec time: [0.0, 0.00] s
>   *
> 
>     igt@kms_hdr@static-toggle-suspend:
> 
>       o Statuses : 8 skip(s)
>       o Exec time: [0.0] s
>   *
> 
>     igt@kms_lease@implicit-plane-lease:
> 
>       o Statuses : 6 pass(s)
>       o Exec time: [0.00, 0.01] s
>   *
> 
>     igt@kms_lease@invalid-create-leases:
> 
>       o Statuses : 8 pass(s)
>       o Exec time: [0.00, 0.03] s
>   *
> 
>     igt@kms_lease@lease-uevent:
> 
>       o Statuses : 8 pass(s)
>       o Exec time: [1.01, 1.06] s
>   *
> 
>     igt@kms_lease@lease_invalid_plane:
> 
>       o Statuses : 8 pass(s) 1 skip(s)
>       o Exec time: [0.0, 0.00] s
>   *
> 
>     igt@kms_lease@master-vs-lease:
> 
>       o Statuses :
>       o Exec time: [None] s
>   *
> 
>     igt@kms_lease@multimaster-lease:
> 
>       o Statuses :
>       o Exec time: [None] s
>   *
> 
>     igt@kms_lease@possible-crtcs-filtering:
> 
>       o Statuses : 6 pass(s)
>       o Exec time: [0.00, 0.02] s
>   *
> 
>     igt@kms_mmap_write_crc@main:
> 
>       o Statuses : 1 fail(s) 7 pass(s)
>       o Exec time: [0.26, 23.60] s
>   *
> 
>     igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d-edp-1-planes-upscale-downscale:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [1.28] s
>   *
> 
>     igt@prime_mmap@test_correct:
> 
>       o Statuses :
>       o Exec time: [None] s
>   *
> 
>     igt@prime_mmap@test_userptr:
> 
>       o Statuses :
>       o Exec time: [None] s
>   *
> 
>     igt@prime_vgem@basic-blt:
> 
>       o Statuses :
>       o Exec time: [None] s
>   *
> 
>     igt@prime_vgem@basic-fence-blt:
> 
>       o Statuses : 7 pass(s)
>       o Exec time: [0.08, 0.33] s
>   *
> 
>     igt@prime_vgem@coherency-blt:
> 
>       o Statuses : 6 pass(s)
>       o Exec time: [0.55, 18.55] s
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_22447_full that come from known 
> issues:
> 
> 
>       CI changes
> 
> 
>         Possible fixes
> 
>   * boot:
>       o shard-glk: (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk9/boot.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk1/boot.html>)
>         ([i915#4392]) -> (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk1/boot.html>)
> 
> 
>       IGT changes
> 
> 
>         Issues hit
> 
>   *
> 
>     igt@gem_eio@unwedge-stress:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-tglb6/igt@gem_eio@unwedge-stress.html>
>         -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-tglb6/igt@gem_eio@unwedge-stress.html>
>         ([i915#3063] / [i915#3648])
>   *
> 
>     igt@gem_exec_balancer@parallel-balancer:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-iclb1/igt@gem_exec_balancer@parallel-balancer.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-iclb3/igt@gem_exec_balancer@parallel-balancer.html>
>         ([i915#4525])
>   *
> 
>     igt@gem_exec_balancer@parallel-out-fence:
> 
>       o shard-kbl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-kbl1/igt@gem_exec_balancer@parallel-out-fence.html>
>         ([i915#5076]) +1 similar issue
>   *
> 
>     igt@gem_exec_capture@pi@vcs0:
> 
>       o shard-skl: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-skl1/igt@gem_exec_capture@pi@vcs0.html>
>         ([i915#4547])
>   *
> 
>     igt@gem_exec_fair@basic-none@vcs0:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-apl2/igt@gem_exec_fair@basic-none@vcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-apl4/igt@gem_exec_fair@basic-none@vcs0.html>
>         ([i915#2842]) +1 similar issue
>   *
> 
>     igt@gem_exec_fair@basic-pace@vecs0:
> 
>       o shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html>
>         ([i915#2842]) +1 similar issue
>   *
> 
>     igt@gem_exec_fair@basic-throttle@rcs0:
> 
>       o shard-iclb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html>
>         ([i915#2849])
>   *
> 
>     igt@gem_lmem_swapping@verify-random:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-skl4/igt@gem_lmem_swapping@verify-random.html>
>         ([fdo#109271] / [i915#4613]) +3 similar issues
>   *
> 
>     igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-iclb2/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html>
>         ([i915#4270])
>   *
> 
>     igt@gem_render_copy@yf-tiled-to-vebox-linear:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-iclb6/igt@gem_render_copy@yf-tiled-to-vebox-linear.html>
>         ([i915#768])
>   *
> 
>     igt@gem_softpin@allocator-evict-all-engines:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-glk7/igt@gem_softpin@allocator-evict-all-engines.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-glk4/igt@gem_softpin@allocator-evict-all-engines.html>
>         ([i915#4171])
>   *
> 
>     igt@gem_softpin@noreloc-s3:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-apl3/igt@gem_softpin@noreloc-s3.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-apl8/igt@gem_softpin@noreloc-s3.html>
>         ([i915#180]) +2 similar issues
>   *
> 
>     igt@gem_userptr_blits@input-checking:
> 
>       o shard-skl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-skl6/igt@gem_userptr_blits@input-checking.html>
>         ([i915#4991])
>   *
> 
>     igt@gen7_exec_parse@oacontrol-tracking:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-iclb3/igt@gen7_exec_parse@oacontrol-tracking.html>
>         ([fdo#109289])
>   *
> 
>     igt@gen9_exec_parse@shadow-peek:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-tglb3/igt@gen9_exec_parse@shadow-peek.html>
>         ([i915#2527] / [i915#2856])
>   *
> 
>     igt@i915_pm_backlight@fade_with_dpms (NEW):
> 
>       o {shard-tglu}: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-tglu-3/igt@i915_pm_backlight@fade_with_dpms.html>
>         ([i915#1155])
>   *
> 
>     igt@i915_pm_dc@dc9-dpms:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-iclb1/igt@i915_pm_dc@dc9-dpms.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html>
>         ([i915#4281])
>   *
> 
>     igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-apl2/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html>
>         ([fdo#109271] / [i915#1937])
>   *
> 
>     igt@i915_pm_lpsp@screens-disabled (NEW):
> 
>       o {shard-rkl}: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-rkl-6/igt@i915_pm_lpsp@screens-disabled.html>
>         ([i915#1902])
>   *
> 
>     igt@i915_pm_rc6_residency@rc6-idle:
> 
>       o shard-iclb: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html>
>         ([i915#2684])
>   *
> 
>     igt@i915_pm_rpm@drm-resources-equal (NEW):
> 
>       o {shard-rkl}: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-rkl-1/igt@i915_pm_rpm@drm-resources-equal.html>
>         ([fdo#109308])
>   *
> 
>     igt@i915_pm_rpm@fences (NEW):
> 
>       o {shard-rkl}: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-rkl-4/igt@i915_pm_rpm@fences.html>
>         ([i915#1849])
>   *
> 
>     igt@i915_pm_rpm@pm-caching (NEW):
> 
>       o {shard-dg1}: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-dg1-16/igt@i915_pm_rpm@pm-caching.html>
>         ([i915#4077])
>   *
> 
>     igt@i915_pm_rps@reset (NEW):
> 
>       o {shard-dg1}: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-dg1-16/igt@i915_pm_rps@reset.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-dg1-13/igt@i915_pm_rps@reset.html>
>         ([i915#3719])
>   *
> 
>     igt@kms_async_flips@alternate-sync-async-flip:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11302/shard-skl5/igt@kms_async_flips@alternate-sync-async-flip.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip.html>
>         ([i915#2521])
>   *
> 
>     igt@kms_atomic_interruptible@atomic-setmode (NEW):
> 
>       o {shard-rkl}: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-rkl-1/igt@kms_atomic_interruptible@atomic-setmode.html>
>         ([i915#1845]) +1 similar issue
>   *
> 
>     igt@kms_big_fb@linear-64bpp-rotate-270:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-iclb6/igt@kms_big_fb@linear-64bpp-rotate-270.html>
>         ([fdo#110725] / [fdo#111614])
>   *
> 
>     igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22447/shard-kbl4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html>
>         ([fdo#109271] / [i915#3777])
>   *
> 
>     igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
> 
>       o shard-apl: NOTRUN -> [SKIP][
> 
