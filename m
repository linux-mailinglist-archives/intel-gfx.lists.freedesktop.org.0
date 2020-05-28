Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CB901E5CCA
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2020 12:14:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FADE6E12E;
	Thu, 28 May 2020 10:14:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5677C6E141
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 May 2020 10:14:49 +0000 (UTC)
IronPort-SDR: j487dYOq/wtwafykGGfMQWT2rlxpV1lc5sqxQuuEiU0KVDlyAbiD5gVfU0NZP3WoDl1jplbJoz
 fvsHkN1ToroQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 03:14:48 -0700
IronPort-SDR: Z/qBk6FcI7sZkR/uCMGUi/4ThI2FMQIvL9nCoBUB530jIMTriY4q+u/IHmNiCHkCNChSdaMAx2
 U7Ye0bE5F6hQ==
X-IronPort-AV: E=Sophos;i="5.73,444,1583222400"; d="scan'208";a="414555718"
Received: from nshani-mobl.ger.corp.intel.com (HELO [10.214.219.87])
 ([10.214.219.87])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 03:14:47 -0700
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200518181720.14625-1-janusz.krzysztofik@linux.intel.com>
 <20200518181720.14625-2-janusz.krzysztofik@linux.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <cb70ca21-a61f-a641-2655-1da02bb97ea7@linux.intel.com>
Date: Thu, 28 May 2020 11:14:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200518181720.14625-2-janusz.krzysztofik@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC PATCH 1/4] drm/i915: Drop user contexts on
 driver remove
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 18/05/2020 19:17, Janusz Krzysztofik wrote:
> Contexts associated with open device file descriptors together with
> their assigned address spaces are now closed on device file close.  On

i915_gem_driver_remove looks like module unload to me, not device file 
close. So..

> address space closure its associated DMA mappings are revoked.  If the
> device is removed while being open, subsequent attempts to revoke
> those mappings while closing the device file descriptor may may be
> judged by intel-iommu code as a bug and result in kernel panic.
> 
> Since user contexts become useless after the device is no longer
> available, drop them on device removal.
> 
> <4> [36.900985] ------------[ cut here ]------------
> <2> [36.901005] kernel BUG at drivers/iommu/intel-iommu.c:3717!
> <4> [36.901105] invalid opcode: 0000 [#1] PREEMPT SMP NOPTI
> <4> [36.901117] CPU: 0 PID: 39 Comm: kworker/u8:1 Tainted: G     U  W         5.7.0-rc5-CI-CI_DRM_8485+ #1
> <4> [36.901133] Hardware name: Intel Corporation Elkhart Lake Embedded Platform/ElkhartLake LPDDR4x T3 CRB, BIOS EHLSFWI1.R00.1484.A00.1911290833 11/29/2019
> <4> [36.901250] Workqueue: i915 __i915_vm_release [i915]
> <4> [36.901264] RIP: 0010:intel_unmap+0x1f5/0x230
> <4> [36.901274] Code: 01 e8 9f bc a9 ff 85 c0 74 09 80 3d df 60 09 01 00 74 19 65 ff 0d 13 12 97 7e 0f 85 fc fe ff ff e8 82 b0 95 ff e9 f2 fe ff ff <0f> 0b e8 d4 bd a9 ff 85 c0 75 de 48 c7 c2 10 84 2c 82 be 54 00 00
> <4> [36.901302] RSP: 0018:ffffc900001ebdc0 EFLAGS: 00010246
> <4> [36.901313] RAX: 0000000000000000 RBX: ffff8882561dd000 RCX: 0000000000000000
> <4> [36.901324] RDX: 0000000000001000 RSI: 00000000ffd9c000 RDI: ffff888274c94000
> <4> [36.901336] RBP: ffff888274c940b0 R08: 0000000000000000 R09: 0000000000000001
> <4> [36.901348] R10: 000000000a25d812 R11: 00000000112af2d4 R12: ffff888252c70200
> <4> [36.901360] R13: 00000000ffd9c000 R14: 0000000000001000 R15: ffff8882561dd010
> <4> [36.901372] FS:  0000000000000000(0000) GS:ffff888278000000(0000) knlGS:0000000000000000
> <4> [36.901386] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> <4> [36.901396] CR2: 00007f06def54950 CR3: 0000000255844000 CR4: 0000000000340ef0
> <4> [36.901408] Call Trace:
> <4> [36.901418]  ? process_one_work+0x1de/0x600
> <4> [36.901494]  cleanup_page_dma+0x37/0x70 [i915]
> <4> [36.901573]  free_pd+0x9/0x20 [i915]
> <4> [36.901644]  gen8_ppgtt_cleanup+0x59/0xc0 [i915]
> <4> [36.901721]  __i915_vm_release+0x14/0x30 [i915]
> <4> [36.901733]  process_one_work+0x268/0x600
> <4> [36.901744]  ? __schedule+0x307/0x8d0
> <4> [36.901756]  worker_thread+0x37/0x380
> <4> [36.901766]  ? process_one_work+0x600/0x600
> <4> [36.901775]  kthread+0x140/0x160
> <4> [36.901783]  ? kthread_park+0x80/0x80
> <4> [36.901792]  ret_from_fork+0x24/0x50
> <4> [36.901804] Modules linked in: mei_hdcp i915 x86_pkg_temp_thermal coretemp crct10dif_pclmul crc32_pclmul ghash_clmulni_intel ax88179_178a usbnet mii mei_me mei prime_numbers intel_lpss_pci
> <4> [36.901857] ---[ end trace 52d1b4d81f8d1ea7 ]---
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_context.c | 38 +++++++++++++++++++++
>   drivers/gpu/drm/i915/gem/i915_gem_context.h |  1 +
>   drivers/gpu/drm/i915/i915_gem.c             |  2 ++
>   3 files changed, 41 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index 900ea8b7fc8f..0096a69fbfd3 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -927,6 +927,44 @@ void i915_gem_driver_release__contexts(struct drm_i915_private *i915)
>   	rcu_barrier(); /* and flush the left over RCU frees */
>   }
>   
> +void i915_gem_driver_remove__contexts(struct drm_i915_private *i915)
> +{
> +	struct i915_gem_context *ctx, *cn;
> +
> +	list_for_each_entry_safe(ctx, cn, &i915->gem.contexts.list, link) {
> +		struct drm_i915_file_private *file_priv = ctx->file_priv;
> +		struct i915_gem_context *entry;
> +		unsigned long int id;
> +
> +		if (i915_gem_context_is_closed(ctx) || IS_ERR(file_priv))
> +			continue;
> +
> +		xa_for_each(&file_priv->context_xa, id, entry) {

... how is driver unload possible with open drm file descriptors, or 
active contexts? If something is going wrong sounds like something else.

drm postclose -> i915_gem_context_close -> closes all contexts and puts 
all vm. What can remain dangling? An active context? But there is idling 
via i915_gem_driver_remove -> i915_gem_suspend_late.

Regards,

Tvrtko

> +			struct i915_address_space *vm;
> +			unsigned long int idx;
> +
> +			if (entry != ctx)
> +				continue;
> +
> +			xa_erase(&file_priv->context_xa, id);
> +
> +			if (id)
> +				break;
> +
> +			xa_for_each(&file_priv->vm_xa, idx, vm) {
> +				xa_erase(&file_priv->vm_xa, idx);
> +				i915_vm_put(vm);
> +			}
> +
> +			break;
> +		}
> +
> +		context_close(ctx);
> +	}
> +
> +	i915_gem_driver_release__contexts(i915);
> +}
> +
>   static int gem_context_register(struct i915_gem_context *ctx,
>   				struct drm_i915_file_private *fpriv,
>   				u32 *id)
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.h b/drivers/gpu/drm/i915/gem/i915_gem_context.h
> index 3702b2fb27ab..62808bea9239 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.h
> @@ -110,6 +110,7 @@ i915_gem_context_clear_user_engines(struct i915_gem_context *ctx)
>   
>   /* i915_gem_context.c */
>   void i915_gem_init__contexts(struct drm_i915_private *i915);
> +void i915_gem_driver_remove__contexts(struct drm_i915_private *i915);
>   void i915_gem_driver_release__contexts(struct drm_i915_private *i915);
>   
>   int i915_gem_context_open(struct drm_i915_private *i915,
> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
> index 0cbcb9f54e7d..87d3c4f5b6c6 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -1189,6 +1189,8 @@ void i915_gem_driver_remove(struct drm_i915_private *dev_priv)
>   	/* Flush any outstanding unpin_work. */
>   	i915_gem_drain_workqueue(dev_priv);
>   
> +	i915_gem_driver_remove__contexts(dev_priv);
> +
>   	i915_gem_drain_freed_objects(dev_priv);
>   }
>   
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
