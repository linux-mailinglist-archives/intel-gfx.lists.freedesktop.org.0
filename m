Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C4B435A69
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Oct 2021 07:40:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E5146EB44;
	Thu, 21 Oct 2021 05:39:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 324CD6EB31;
 Thu, 21 Oct 2021 05:39:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10143"; a="227719418"
X-IronPort-AV: E=Sophos;i="5.87,168,1631602800"; d="scan'208";a="227719418"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2021 22:39:51 -0700
X-IronPort-AV: E=Sophos;i="5.87,168,1631602800"; d="scan'208";a="721116107"
Received: from mstribae-mobl1.ger.corp.intel.com (HELO [10.249.254.146])
 ([10.249.254.146])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2021 22:39:50 -0700
Message-ID: <a2d6a96b3f360991511e6e4969de83cea2f5a97a.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Matthew Brost <matthew.brost@intel.com>,
 intel-gfx@lists.freedesktop.org,  dri-devel@lists.freedesktop.org
Cc: daniele.ceraolospurio@intel.com, john.c.harrison@intel.com
Date: Thu, 21 Oct 2021 07:39:48 +0200
In-Reply-To: <20211020192147.8048-1-matthew.brost@intel.com>
References: <20211020192147.8048-1-matthew.brost@intel.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: Fix recursive lock in GuC
 submission
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

On Wed, 2021-10-20 at 12:21 -0700, Matthew Brost wrote:
> Use __release_guc_id (lock held) rather than release_guc_id (acquires
> lock), add lockdep annotations.
> 
> 213.280129] i915: Running i915_perf_live_selftests/live_noa_gpr
> [ 213.283459] ============================================
> [ 213.283462] WARNING: possible recursive locking detected
> {{[ 213.283466] 5.15.0-rc6+ #18 Tainted: G U W }}
> [ 213.283470] --------------------------------------------
> [ 213.283472] kworker/u24:0/8 is trying to acquire lock:
> [ 213.283475] ffff8ffc4f6cc1e8 (&guc->submission_state.lock){....}-
> {2:2}, at: destroyed_worker_func+0x2df/0x350 [i915]
> {{[ 213.283618] }}
> {{ but task is already holding lock:}}
> [ 213.283621] ffff8ffc4f6cc1e8 (&guc->submission_state.lock){....}-
> {2:2}, at: destroyed_worker_func+0x4f/0x350 [i915]
> {{[ 213.283720] }}
> {{ other info that might help us debug this:}}
> [ 213.283724] Possible unsafe locking scenario:[ 213.283727] CPU0
> [ 213.283728] ----
> [ 213.283730] lock(&guc->submission_state.lock);
> [ 213.283734] lock(&guc->submission_state.lock);
> {{[ 213.283737] }}
> {{ *** DEADLOCK ***}}[ 213.283740] May be due to missing lock nesting
> notation[ 213.283744] 3 locks held by kworker/u24:0/8:
> [ 213.283747] #0: ffff8ffb80059d38
> ((wq_completion)events_unbound){..}-{0:0}, at:
> process_one_work+0x1f3/0x550
> [ 213.283757] #1: ffffb509000e3e78 ((work_completion)(&guc-
> >submission_state.destroyed_worker)){..}-{0:0}, at:
> process_one_work+0x1f3/0x550
> [ 213.283766] #2: ffff8ffc4f6cc1e8 (&guc-
> >submission_state.lock){....}-{2:2}, at:
> destroyed_worker_func+0x4f/0x350 [i915]
> {{[ 213.283860] }}
> {{ stack backtrace:}}
> [ 213.283863] CPU: 8 PID: 8 Comm: kworker/u24:0 Tainted: G U W
> 5.15.0-rc6+ #18
> [ 213.283868] Hardware name: ASUS System Product Name/PRIME B560M-A
> AC, BIOS 0403 01/26/2021
> [ 213.283873] Workqueue: events_unbound destroyed_worker_func [i915]
> [ 213.283957] Call Trace:
> [ 213.283960] dump_stack_lvl+0x57/0x72
> [ 213.283966] __lock_acquire.cold+0x191/0x2d3
> [ 213.283972] lock_acquire+0xb5/0x2b0
> [ 213.283978] ? destroyed_worker_func+0x2df/0x350 [i915]
> [ 213.284059] ? destroyed_worker_func+0x2d7/0x350 [i915]
> [ 213.284139] ? lock_release+0xb9/0x280
> [ 213.284143] _raw_spin_lock_irqsave+0x48/0x60
> [ 213.284148] ? destroyed_worker_func+0x2df/0x350 [i915]
> [ 213.284226] destroyed_worker_func+0x2df/0x350 [i915]
> [ 213.284310] process_one_work+0x270/0x550
> [ 213.284315] worker_thread+0x52/0x3b0
> [ 213.284319] ? process_one_work+0x550/0x550
> [ 213.284322] kthread+0x135/0x160
> [ 213.284326] ? set_kthread_struct+0x40/0x40
> [ 213.284331] ret_from_fork+0x1f/0x30
> 
> and a bit later in the trace:
> 
> {{ 227.499864] do_raw_spin_lock+0x94/0xa0}}
> [ 227.499868] _raw_spin_lock_irqsave+0x50/0x60
> [ 227.499871] ? guc_flush_destroyed_contexts+0x4f/0xf0 [i915]
> [ 227.499995] guc_flush_destroyed_contexts+0x4f/0xf0 [i915]
> [ 227.500104] intel_guc_submission_reset_prepare+0x99/0x4b0 [i915]
> [ 227.500209] ? mark_held_locks+0x49/0x70
> [ 227.500212] intel_uc_reset_prepare+0x46/0x50 [i915]
> [ 227.500320] reset_prepare+0x78/0x90 [i915]
> [ 227.500412] __intel_gt_set_wedged.part.0+0x13/0xe0 [i915]
> [ 227.500485] intel_gt_set_wedged.part.0+0x54/0x100 [i915]
> [ 227.500556] intel_gt_set_wedged_on_fini+0x1a/0x30 [i915]
> [ 227.500622] intel_gt_driver_unregister+0x1e/0x60 [i915]
> [ 227.500694] i915_driver_remove+0x4a/0xf0 [i915]
> [ 227.500767] i915_pci_probe+0x84/0x170 [i915]
> [ 227.500838] local_pci_probe+0x42/0x80
> [ 227.500842] pci_device_probe+0xd9/0x190
> [ 227.500844] really_probe+0x1f2/0x3f0
> [ 227.500847] __driver_probe_device+0xfe/0x180
> [ 227.500848] driver_probe_device+0x1e/0x90
> [ 227.500850] __driver_attach+0xc4/0x1d0
> [ 227.500851] ? __device_attach_driver+0xe0/0xe0
> [ 227.500853] ? __device_attach_driver+0xe0/0xe0
> [ 227.500854] bus_for_each_dev+0x64/0x90
> [ 227.500856] bus_add_driver+0x12e/0x1f0
> [ 227.500857] driver_register+0x8f/0xe0
> [ 227.500859] i915_init+0x1d/0x8f [i915]
> [ 227.500934] ? 0xffffffffc144a000
> [ 227.500936] do_one_initcall+0x58/0x2d0
> [ 227.500938] ? rcu_read_lock_sched_held+0x3f/0x80
> [ 227.500940] ? kmem_cache_alloc_trace+0x238/0x2d0
> [ 227.500944] do_init_module+0x5c/0x270
> [ 227.500946] __do_sys_finit_module+0x95/0xe0
> [ 227.500949] do_syscall_64+0x38/0x90
> [ 227.500951] entry_SYSCALL_64_after_hwframe+0x44/0xae
> [ 227.500953] RIP: 0033:0x7ffa59d2ae0d
> [ 227.500954] Code: c8 0c 00 0f 05 eb a9 66 0f 1f 44 00 00 f3 0f 1e
> fa 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24
> 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 3b 80 0c 00 f7 d8 64
> 89 01 48
> [ 227.500955] RSP: 002b:00007fff320bbf48 EFLAGS: 00000246 ORIG_RAX:
> 0000000000000139
> [ 227.500956] RAX: ffffffffffffffda RBX: 00000000022ea710 RCX:
> 00007ffa59d2ae0d
> [ 227.500957] RDX: 0000000000000000 RSI: 00000000022e1d90 RDI:
> 0000000000000004
> [ 227.500958] RBP: 0000000000000020 R08: 00007ffa59df3a60 R09:
> 0000000000000070
> [ 227.500958] R10: 00000000022e1d90 R11: 0000000000000246 R12:
> 00000000022e1d90
> [ 227.500959] R13: 00000000022e58e0 R14: 0000000000000043 R15:
> 00000000022e42c0
> 
> v2:
>  (CI build)
>   - Fix build error
> 
> Fixes: 1a52faed31311 ("drm/i915/guc: Take engine PM when a context is
> pinned with GuC submission")
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> Cc: stable@vger.kernel.org

Looks correct to me.
Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index d7710debcd47..38b47e73e35d 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -2373,6 +2373,7 @@ static inline void guc_lrc_desc_unpin(struct
> intel_context *ce)
>         unsigned long flags;
>         bool disabled;
>  
> +       lockdep_assert_held(&guc->submission_state.lock);
>         GEM_BUG_ON(!intel_gt_pm_is_awake(gt));
>         GEM_BUG_ON(!lrc_desc_registered(guc, ce->guc_id.id));
>         GEM_BUG_ON(ce != __get_context(guc, ce->guc_id.id));
> @@ -2388,7 +2389,7 @@ static inline void guc_lrc_desc_unpin(struct
> intel_context *ce)
>         }
>         spin_unlock_irqrestore(&ce->guc_state.lock, flags);
>         if (unlikely(disabled)) {
> -               release_guc_id(guc, ce);
> +               __release_guc_id(guc, ce);
>                 __guc_context_destroy(ce);
>                 return;
>         }


