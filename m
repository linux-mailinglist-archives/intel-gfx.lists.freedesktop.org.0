Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C53A2472CAC
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Dec 2021 13:59:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA0B210E783;
	Mon, 13 Dec 2021 12:58:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41CE810E772;
 Mon, 13 Dec 2021 12:58:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10196"; a="324995071"
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; d="scan'208";a="324995071"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 04:58:54 -0800
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; d="scan'208";a="481500027"
Received: from dwaguero-mobl1.amr.corp.intel.com (HELO [10.249.254.147])
 ([10.249.254.147])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 04:58:53 -0800
Message-ID: <4469b0ff-076e-86ee-cb2a-fd9f780fc106@linux.intel.com>
Date: Mon, 13 Dec 2021 13:58:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20211213125530.3960007-1-matthew.auld@intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
In-Reply-To: <20211213125530.3960007-1-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/debugfs: add noreclaim annotations
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 12/13/21 13:55, Matthew Auld wrote:
> We have a debugfs hook to directly call into i915_gem_shrink() with the
> fs_reclaim acquire annotations to simulate hitting direct reclaim.
> However we should also annotate this with memalloc_noreclaim, which will
> set PF_MEMALLOC for us on the current context, to ensure we can't
> re-enter direct reclaim(just like "real" direct reclaim does). This is
> an issue now that ttm_bo_validate could potentially be called here,
> which might try to allocate a tiny amount of memory to hold the new
> ttm_resource struct, as per the below splat:
>
> [ 2507.913844] WARNING: possible recursive locking detected
> [ 2507.913848] 5.16.0-rc4+ #5 Tainted: G U
> [ 2507.913853] --------------------------------------------
> [ 2507.913856] gem_exec_captur/1825 is trying to acquire lock:
> [ 2507.913861] ffffffffb9df2500 (fs_reclaim){..}-{0:0}, at: kmem_cache_alloc_trace+0x30/0x390
> [ 2507.913875]
> but task is already holding lock:
> [ 2507.913879] ffffffffb9df2500 (fs_reclaim){..}-{0:0}, at: i915_drop_caches_set+0x1c9/0x2c0 [i915]
> [ 2507.913962]
> other info that might help us debug this:
> [ 2507.913966] Possible unsafe locking scenario:
>
> [ 2507.913970] CPU0
> [ 2507.913973] ----
> [ 2507.913975] lock(fs_reclaim);
> [ 2507.913979] lock(fs_reclaim);
> [ 2507.913983]
>
>              DEADLOCK ***
>
> [ 2507.913988] May be due to missing lock nesting notation
>
> [ 2507.913992] 4 locks held by gem_exec_captur/1825:
> [ 2507.913997] #0: ffff888101f6e460 (sb_writers#17){..}-{0:0}, at: ksys_write+0xe9/0x1b0
> [ 2507.914009] #1: ffff88812d99e2b8 (&attr->mutex){..}-{3:3}, at: simple_attr_write+0xbb/0x220
> [ 2507.914019] #2: ffffffffb9df2500 (fs_reclaim){..}-{0:0}, at: i915_drop_caches_set+0x1c9/0x2c0 [i915]
> [ 2507.914085] #3: ffff8881b4a11b20 (reservation_ww_class_mutex){..}-{3:3}, at: ww_mutex_trylock+0x43f/0xcb0
> [ 2507.914097]
> stack backtrace:
> [ 2507.914102] CPU: 0 PID: 1825 Comm: gem_exec_captur Tainted: G U 5.16.0-rc4+ #5
> [ 2507.914109] Hardware name: ASUS System Product Name/PRIME B560M-A AC, BIOS 0403 01/26/2021
> [ 2507.914115] Call Trace:
> [ 2507.914118] <TASK>
> [ 2507.914121] dump_stack_lvl+0x59/0x73
> [ 2507.914128] __lock_acquire.cold+0x227/0x3b0
> [ 2507.914135] ? lockdep_hardirqs_on_prepare+0x410/0x410
> [ 2507.914141] ? __lock_acquire+0x23ca/0x5000
> [ 2507.914147] lock_acquire+0x19c/0x4b0
> [ 2507.914152] ? kmem_cache_alloc_trace+0x30/0x390
> [ 2507.914157] ? lock_release+0x690/0x690
> [ 2507.914163] ? lock_is_held_type+0xe4/0x140
> [ 2507.914170] ? ttm_sys_man_alloc+0x47/0xb0 [ttm]
> [ 2507.914178] fs_reclaim_acquire+0x11a/0x160
> [ 2507.914183] ? kmem_cache_alloc_trace+0x30/0x390
> [ 2507.914188] kmem_cache_alloc_trace+0x30/0x390
> [ 2507.914192] ? lock_release+0x37f/0x690
> [ 2507.914198] ttm_sys_man_alloc+0x47/0xb0 [ttm]
> [ 2507.914206] ttm_bo_pipeline_gutting+0x70/0x440 [ttm]
> [ 2507.914214] ? ttm_mem_io_free+0x150/0x150 [ttm]
> [ 2507.914221] ? lock_is_held_type+0xe4/0x140
> [ 2507.914227] ttm_bo_validate+0x2fb/0x370 [ttm]
> [ 2507.914234] ? lock_acquire+0x19c/0x4b0
> [ 2507.914239] ? ttm_bo_bounce_temp_buffer.constprop.0+0xf0/0xf0 [ttm]
> [ 2507.914246] ? lock_acquire+0x131/0x4b0
> [ 2507.914251] ? lock_is_held_type+0xe4/0x140
> [ 2507.914257] i915_ttm_shrinker_release_pages+0x2bc/0x490 [i915]
> [ 2507.914339] ? i915_ttm_swap_notify+0x130/0x130 [i915]
> [ 2507.914429] ? i915_gem_object_release_mmap_offset+0x32/0x250 [i915]
> [ 2507.914529] i915_gem_shrink+0xb14/0x1290 [i915]
> [ 2507.914616] ? ___i915_gem_object_make_shrinkable+0x3e0/0x3e0 [i915]
> [ 2507.914698] ? _raw_spin_unlock_irqrestore+0x2d/0x60
> [ 2507.914705] ? track_intel_runtime_pm_wakeref+0x180/0x230 [i915]
> [ 2507.914777] i915_gem_shrink_all+0x4b/0x70 [i915]
> [ 2507.914857] i915_drop_caches_set+0x227/0x2c0 [i915]
>
> Reported-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_debugfs.c | 3 +++
>   1 file changed, 3 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
> index bafb902269de..359d8ffc6e36 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -666,6 +666,7 @@ static int
>   i915_drop_caches_set(void *data, u64 val)
>   {
>   	struct drm_i915_private *i915 = data;
> +	unsigned int flags;
>   	int ret;
>   
>   	DRM_DEBUG("Dropping caches: 0x%08llx [0x%08llx]\n",
> @@ -676,6 +677,7 @@ i915_drop_caches_set(void *data, u64 val)
>   		return ret;
>   
>   	fs_reclaim_acquire(GFP_KERNEL);
> +	flags = memalloc_noreclaim_save();
>   	if (val & DROP_BOUND)
>   		i915_gem_shrink(NULL, i915, LONG_MAX, NULL, I915_SHRINK_BOUND);
>   
> @@ -684,6 +686,7 @@ i915_drop_caches_set(void *data, u64 val)
>   
>   	if (val & DROP_SHRINK_ALL)
>   		i915_gem_shrink_all(i915);
> +	memalloc_noreclaim_restore(flags);
>   	fs_reclaim_release(GFP_KERNEL);
>   
>   	if (val & DROP_RCU)

Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>


