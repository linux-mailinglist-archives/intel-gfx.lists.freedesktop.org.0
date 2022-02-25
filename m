Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F05C14C42A2
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Feb 2022 11:42:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D841810E897;
	Fri, 25 Feb 2022 10:42:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF8DE10E892;
 Fri, 25 Feb 2022 10:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645785753; x=1677321753;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=4uKKRz49PAHw2FzMCnfosveOhUWEGr2Ul8XChNDGYac=;
 b=jWcByvDdJ0cXTDRthUoxQOqMg7TRt76Pdwv/GFWS2b8yu+IHn8vrl2Ti
 3xeVLBKEpElld5EChhmeLizE1NqaZKezljb9avr/dj9JLhjbahhoEWvPY
 egofZCPWilt59zczFHM3XBZteLERukLBLG/9fRVqYe8PeBGG/JBYey7OE
 K7/yZYv1ZkAvPIwXFkW4Lo1cR8NdZFbPhqMfnF83HvOnwfvxOa0ZZt6d1
 gHyrqHVcJWqtOT3EdKO/8wBQ64vqksxvcEqRJbAuzx40d34bWWFtFaJ16
 KoTbfxKYflXpr0RXP96L7LyH2YjEBYPAWLw5KfV2h4Z5DLQ3HtIMZeUBi w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="250054411"
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="250054411"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 02:42:23 -0800
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="509235789"
Received: from ztabakx-mobl1.amr.corp.intel.com (HELO [10.249.254.93])
 ([10.249.254.93])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 02:42:21 -0800
Message-ID: <2c0bae68-b88d-9d0f-5fb3-3cbd8b6ee5cc@linux.intel.com>
Date: Fri, 25 Feb 2022 11:42:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220225103443.225228-1-matthew.auld@intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
In-Reply-To: <20220225103443.225228-1-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: apply PM_EARLY for non-GTT
 mappable objects
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 2/25/22 11:34, Matthew Auld wrote:
> On DG2 we allow objects that are smaller than the min_page_size, under
> the premise that these are never mapped by the GTT, like with the paging
> structures. Currently the suspend-resume path will try to map such
> objects through the migration vm, which hits:
>
> [  560.529217] kernel BUG at drivers/gpu/drm/i915/gt/intel_migrate.c:431!
> [  560.536081] invalid opcode: 0000 [#1] PREEMPT SMP NOPTI
> [  560.541629] CPU: 4 PID: 2062 Comm: rtcwake Tainted: G        W         5.17.0-rc5-demarchi+ #175
> [  560.550716] Hardware name: Intel Corporation CoffeeLake Client Platform/CoffeeLake S UDIMM RVP, BIOS CNLSFWR1.R00.X220.B00.2103302221 03/30/2021
> [  560.563627] RIP: 0010:emit_pte+0x2e7/0x380 [i915]
> [  560.568665] Code: ee 02 48 89 69 04 83 c6 05 83 c0 05 39 f0 0f 4f c6 48 8b 73 08 39 d0 0f 4f c2 44 89 f2 4c 8d 4a ff 49 85 f1 0f 84 62 fe ff ff <0f> 0b 48 c7 03 00 00 00 00 4d 89 c6 8b 01 48 29 ce 48 8d 57 0c 48
> [  560.587691] RSP: 0018:ffffc9000104f8a0 EFLAGS: 00010206
> [  560.592906] RAX: 0000000000000040 RBX: ffffc9000104f908 RCX: ffffc900025114d0
> [  560.600024] RDX: 0000000000010000 RSI: 00000003f9fe2000 RDI: ffffc900025114dc
> [  560.607458] RBP: 0000000001840000 R08: ffff88810f335540 R09: 000000000000ffff
> [  560.614865] R10: 000000000000081b R11: 0000000000000001 R12: 000000000000081b
> [  560.622300] R13: 0000000000000000 R14: 0000000000010000 R15: ffff888107c3e240
> [  560.629716] FS:  00007f5b7c086580(0000) GS:ffff88846dc00000(0000) knlGS:0000000000000000
> [  560.638090] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [  560.644132] CR2: 00007f3ab0a133a8 CR3: 000000010a43e003 CR4: 00000000003706e0
> [  560.651590] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> [  560.659002] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> [  560.666438] Call Trace:
> [  560.668885]  <TASK>
> [  560.670983]  intel_context_migrate_copy+0x1b1/0x4c0 [i915]
> [  560.676794]  __i915_ttm_move+0x628/0x790 [i915]
> [  560.681704]  ? dma_resv_iter_next+0x8f/0xb0
> [  560.686223]  ? dma_resv_iter_first+0xe5/0x140
> [  560.690894]  ? i915_deps_add_resv+0x4b/0x110 [i915]
> [  560.696147]  ? dma_resv_reserve_shared+0x161/0x310
> [  560.701228]  i915_gem_obj_copy_ttm+0x10f/0x220 [i915]
> [  560.706650]  i915_ttm_backup+0x191/0x2f0 [i915]
> [  560.711558]  i915_gem_process_region+0x266/0x3b0 [i915]
> [  560.717153]  ? verify_cpu+0xf0/0x100
> [  560.721040]  ? pci_pm_resume_early+0x20/0x20
> [  560.725603]  i915_ttm_backup_region+0x47/0x70 [i915]
> [  560.730927]  i915_gem_backup_suspend+0x141/0x170 [i91
>
> For now let's just force the memcpy path for such objects during
> suspend-resume.
>
> Fixes: 00e27ad85bc9 ("drm/i915/migrate: add acceleration support for DG2")
> Reported-by: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_region.c | 11 +++++++++++
>   1 file changed, 11 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_region.c b/drivers/gpu/drm/i915/gem/i915_gem_region.c
> index a4350227e9ae..6d65c5849874 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_region.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_region.c
> @@ -67,6 +67,17 @@ i915_gem_object_create_region(struct intel_memory_region *mem,
>   	if (!obj)
>   		return ERR_PTR(-ENOMEM);
>   
> +	/*
> +	 * Anything smaller than the min_page_size can't be freely inserted into
> +	 * the GTT, due to alignemnt restrictions. For such special objects,

s/alignemnt/alignment/

Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>


> +	 * make sure we force memcpy based suspend-resume. In the future we can
> +	 * revisit this, either by allowing special mis-aligned objects in the
> +	 * migration path, or by mapping all of LMEM upfront using cheap 1G
> +	 * GTT entries.
> +	 */
> +	if (default_page_size < mem->min_page_size)
> +		flags |= I915_BO_ALLOC_PM_EARLY;
> +
>   	err = mem->ops->init_object(mem, obj, size, page_size, flags);
>   	if (err)
>   		goto err_object_free;
