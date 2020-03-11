Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C6B18175D
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 13:03:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A6F689168;
	Wed, 11 Mar 2020 12:03:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8DC689168
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Mar 2020 12:03:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Mar 2020 05:03:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,518,1574150400"; d="scan'208";a="261121098"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga002.jf.intel.com with ESMTP; 11 Mar 2020 05:03:46 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 085E45C1DD2; Wed, 11 Mar 2020 14:02:24 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200311092624.10012-3-chris@chris-wilson.co.uk>
References: <20200311092624.10012-1-chris@chris-wilson.co.uk>
 <20200311092624.10012-3-chris@chris-wilson.co.uk>
Date: Wed, 11 Mar 2020 14:02:24 +0200
Message-ID: <87lfo714mn.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/gem: Mark up the racy read of
 the mmap_singleton
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> [11057.642683] BUG: KCSAN: data-race in i915_gem_mmap [i915] / singleton_release [i915]
> [11057.642717]
> [11057.642740] write (marked) to 0xffff8881f24471a0 of 8 bytes by task 44668 on cpu 2:
> [11057.643162]  singleton_release+0x38/0x60 [i915]
> [11057.643192]  __fput+0x160/0x3c0
> [11057.643217]  ____fput+0x16/0x20
> [11057.643241]  task_work_run+0xba/0x100
> [11057.643263]  exit_to_usermode_loop+0xe4/0xf0
> [11057.643286]  do_syscall_64+0x27e/0x2c0
> [11057.643314]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> [11057.643339]
> [11057.643359] read to 0xffff8881f24471a0 of 8 bytes by task 44667 on cpu 3:
> [11057.643774]  i915_gem_mmap+0x295/0x670 [i915]
> [11057.643802]  mmap_region+0x62b/0xac0
> [11057.643825]  do_mmap+0x414/0x6b0
> [11057.643848]  vm_mmap_pgoff+0xa9/0xf0
> [11057.643875]  ksys_mmap_pgoff+0x1ac/0x2f0
> [11057.643900]  do_syscall_64+0x6e/0x2c0
> [11057.643924]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gem/i915_gem_mman.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> index e8cccc131c40..b39c24dae64e 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> @@ -775,7 +775,7 @@ static struct file *mmap_singleton(struct drm_i915_private *i915)
>  	struct file *file;
>  
>  	rcu_read_lock();
> -	file = i915->gem.mmap_singleton;
> +	file = READ_ONCE(i915->gem.mmap_singleton);
>  	if (file && !get_file_rcu(file))
>  		file = NULL;
>  	rcu_read_unlock();
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
