Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB292BABCC
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Nov 2020 15:26:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B646C6E8BF;
	Fri, 20 Nov 2020 14:26:52 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14ABF6E8BF
 for <Intel-gfx@lists.freedesktop.org>; Fri, 20 Nov 2020 14:26:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23056162-1500050 for multiple; Fri, 20 Nov 2020 14:26:21 +0000
MIME-Version: 1.0
In-Reply-To: <20201120095636.1987395-1-tvrtko.ursulin@linux.intel.com>
References: <20201120095636.1987395-1-tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Fri, 20 Nov 2020 14:26:20 +0000
Message-ID: <160588238065.28535.17983138007111557633@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/guc: Use correct lock for
 accessing guc->mmio_msg
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

Quoting Tvrtko Ursulin (2020-11-20 09:56:35)
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Guc->mmio_msg is set under the guc->irq_lock in guc_get_mmio_msg so it
> should be consumed under the same lock from guc_handle_mmio_msg.
> 
> I am not sure if the overall flow here makes complete sense but at least
> the correct lock is now used.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/uc/intel_uc.c | 16 ++++++----------
>  1 file changed, 6 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> index 4e6070e95fe9..220626c3ad81 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> @@ -175,19 +175,15 @@ static void guc_get_mmio_msg(struct intel_guc *guc)
>  
>  static void guc_handle_mmio_msg(struct intel_guc *guc)
>  {
> -       struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
> -
>         /* we need communication to be enabled to reply to GuC */
>         GEM_BUG_ON(!guc_communication_enabled(guc));
>  
> -       if (!guc->mmio_msg)
> -               return;
> -
> -       spin_lock_irq(&i915->irq_lock);
> -       intel_guc_to_host_process_recv_msg(guc, &guc->mmio_msg, 1);
> -       spin_unlock_irq(&i915->irq_lock);
> -
> -       guc->mmio_msg = 0;
> +       spin_lock_irq(&guc->irq_lock);
> +       if (guc->mmio_msg) {
> +               intel_guc_to_host_process_recv_msg(guc, &guc->mmio_msg, 1);
> +               guc->mmio_msg = 0;
> +       }
> +       spin_unlock_irq(&guc->irq_lock);

Based on just looking at mmio_msg, the locking should be guc->irq_lock, and
guc->mmio_msg = 0 should be pulled under the lock.

Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
