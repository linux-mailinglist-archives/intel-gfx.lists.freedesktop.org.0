Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59F6619BDC4
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 10:46:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B226889388;
	Thu,  2 Apr 2020 08:46:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C61956EA09
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Apr 2020 08:46:14 +0000 (UTC)
IronPort-SDR: MTIW7aiwZ2aFN7A33Ig1zp9a5Tbq9tSGDT1ceLxKf+I8sBbpAVIlJO9BPLqi2FJDnr5/coMcn5
 jqa9gj5vaPVQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2020 01:46:14 -0700
IronPort-SDR: ALLtYQKs/qCrtsXu2KoMqXri83d7kXcPN6PNI7wD7wb2O6MyIH9Rq5I/em5By7+DhkJ1NeGxVG
 M0CKVErePu9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,335,1580803200"; d="scan'208";a="267956486"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga002.jf.intel.com with ESMTP; 02 Apr 2020 01:46:13 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id EA31E5C1EF4; Thu,  2 Apr 2020 11:44:33 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200402080805.20292-1-chris@chris-wilson.co.uk>
References: <20200402080805.20292-1-chris@chris-wilson.co.uk>
Date: Thu, 02 Apr 2020 11:44:33 +0300
Message-ID: <878sjep98u.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Add one more rcu_barrier()
 after draining the ppGTT freelist
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Since gen7 full-ppgtt uses nested vm references (the ppGTT is a slot
> within the global GTT and so has a buried i915_ggtt) we may need to go
> through a couple of RCU barriers before we have freed all the structs.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gt/intel_ggtt.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index 894d08e5a21f..cb31ed712db3 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -684,8 +684,9 @@ static void ggtt_cleanup_hw(struct i915_ggtt *ggtt)
>  
>  	atomic_set(&ggtt->vm.open, 0);
>  
> -	rcu_barrier(); /* flush the RCU'ed__i915_vm_release */
> -	flush_workqueue(ggtt->vm.i915->wq);
> +	do { /* flush the RCU'ed__i915_vm_release */
> +		rcu_barrier();
> +	} while (flush_workqueue(ggtt->vm.i915->wq));

flush_workqueue returns void. you want flush_work?
-Mika

>  
>  	mutex_lock(&ggtt->vm.mutex);
>  
> -- 
> 2.20.1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
