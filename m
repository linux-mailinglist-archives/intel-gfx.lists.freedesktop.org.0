Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF94C4CBA54
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Mar 2022 10:33:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AA3510E9C4;
	Thu,  3 Mar 2022 09:33:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 691BC10E9C4
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Mar 2022 09:33:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646299996; x=1677835996;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=kbn9GTGZkQT7AsQRpaFzpsPh6G5VGvwk1XpdDgyuTqU=;
 b=kL4d2PB2bbb6PwxpKwDrjRGExsqg07NoIQqiarvII/3guW0DE78TnETa
 QC+2oD0dmJW7YYzOS24zkhSCDyBYi7RMlMxg6a9l7xzwN8ZKSdfKxJn1P
 fbfGT9a9d+OA9Ef9Ddm+yoLbtoX2IfCld0gSY3tlrYJN6OcHIEPUxmLzC
 nimgkYPj0r2u612lty82DqM9zIjTZ5fbIt13tIcsVvveOTyE3+HK9F2IB
 pMWq2Nn2J5CyrJuNkt8O/LSavFR2N7PlPNlmlxa+ztlXBDasf7mBbUEd3
 ImusH0/ifnLNEHm5u/bMzqwh1DiYvzFQLzc42EkbFhk3lMgtywH+matC2 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10274"; a="237138564"
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="237138564"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 01:33:15 -0800
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="535756810"
Received: from bjoseph-mobl.ger.corp.intel.com (HELO localhost) ([10.252.1.89])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 01:33:14 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mastan Katragadda <mastanx.katragadda@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220303060428.1668844-1-mastanx.katragadda@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220303060428.1668844-1-mastanx.katragadda@intel.com>
Date: Thu, 03 Mar 2022 11:33:11 +0200
Message-ID: <874k4f5qjs.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [v2] drm/i915/gem: missing boundary check in
 vm_access leads to OOB read/write
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
Cc: mastanx.katragadda@intel.com, tejaskumarx.surendrakumar.upadhyay@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 03 Mar 2022, Mastan Katragadda <mastanx.katragadda@intel.com> wrote:
> Intel ID: PSIRT-PTK0002429

What's that and why is it the first thing in the commit message?

BR,
Jani.

>
> A missing bounds check in vm_access()can lead to an out-of-bounds read or
> write in the adjacent memory area.The len attribute is not validated before
> the memcpy at  [1]or [2] occurs.
>
> [  183.637831] BUG: unable to handle page fault for address: ffffc90000c86000
> [  183.637934] #PF: supervisor read access in kernel mode
> [  183.637997] #PF: error_code(0x0000) - not-present page
> [  183.638059] PGD 100000067 P4D 100000067 PUD 100258067 PMD 106341067 PTE 0
> [  183.638144] Oops: 0000 [#2] PREEMPT SMP NOPTI
> [  183.638201] CPU: 3 PID: 1790 Comm: poc Tainted: G      D           5.17.0-rc6-ci-drm-11296+ #1
> [  183.638298] Hardware name: Intel Corporation CoffeeLake Client Platform/CoffeeLake H DDR4 RVP, BIOS CNLSFWR1.R00.X208.B00.1905301319 05/30/2019
> [  183.638430] RIP: 0010:memcpy_erms+0x6/0x10
> [  183.640213] RSP: 0018:ffffc90001763d48 EFLAGS: 00010246
> [  183.641117] RAX: ffff888109c14000 RBX: ffff888111bece40 RCX: 0000000000000ffc
> [  183.642029] RDX: 0000000000001000 RSI: ffffc90000c86000 RDI: ffff888109c14004
> [  183.642946] RBP: 0000000000000ffc R08: 800000000000016b R09: 0000000000000000
> [  183.643848] R10: ffffc90000c85000 R11: 0000000000000048 R12: 0000000000001000
> [  183.644742] R13: ffff888111bed190 R14: ffff888109c14000 R15: 0000000000001000
> [  183.645653] FS:  00007fe5ef807540(0000) GS:ffff88845b380000(0000) knlGS:0000000000000000
> [  183.646570] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [  183.647481] CR2: ffffc90000c86000 CR3: 000000010ff02006 CR4: 00000000003706e0
> [  183.648384] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> [  183.649271] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> [  183.650142] Call Trace:
> [  183.650988]  <TASK>
> [  183.651793]  vm_access+0x1f0/0x2a0 [i915]
> [  183.652726]  __access_remote_vm+0x224/0x380
> [  183.653561]  mem_rw.isra.0+0xf9/0x190
> [  183.654402]  vfs_read+0x9d/0x1b0
> [  183.655238]  ksys_read+0x63/0xe0
> [  183.656065]  do_syscall_64+0x38/0xc0
> [  183.656882]  entry_SYSCALL_64_after_hwframe+0x44/0xae
> [  183.657663] RIP: 0033:0x7fe5ef725142
> [  183.659351] RSP: 002b:00007ffe1e81c7e8 EFLAGS: 00000246 ORIG_RAX: 0000000000000000
> [  183.660227] RAX: ffffffffffffffda RBX: 0000557055dfb780 RCX: 00007fe5ef725142
> [  183.661104] RDX: 0000000000001000 RSI: 00007ffe1e81d880 RDI: 0000000000000005
> [  183.661972] RBP: 00007ffe1e81e890 R08: 0000000000000030 R09: 0000000000000046
> [  183.662832] R10: 0000557055dfc2e0 R11: 0000000000000246 R12: 0000557055dfb1c0
> [  183.663691] R13: 00007ffe1e81e980 R14: 0000000000000000 R15: 0000000000000000
> [  183.664566]  </TASK>
>
> Changes since v1:
>      - Updated if condition with range_overflows_t [Chris Wilson]
>
> Signed-off-by: Mastan Katragadda <mastanx.katragadda@intel.com>
> Suggested-by: Adam Zabrocki <adamza@microsoft.com>
> Reported-by: Jackson Cody <cody.jackson@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Bloomfield Jon <jon.bloomfield@intel.com>
> Cc: Dutt Sudeep <sudeep.dutt@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_mman.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> index efe69d6b86f4..c3ea243d414d 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> @@ -455,7 +455,7 @@ vm_access(struct vm_area_struct *area, unsigned long addr,
>  		return -EACCES;
>  
>  	addr -= area->vm_start;
> -	if (addr >= obj->base.size)
> +	if (range_overflows_t(u64, addr, len, obj->base.size))
>  		return -EINVAL;
>  
>  	i915_gem_ww_ctx_init(&ww, true);

-- 
Jani Nikula, Intel Open Source Graphics Center
