Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C682BABE5
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Nov 2020 15:33:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D82056E8B1;
	Fri, 20 Nov 2020 14:33:09 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECA386E8B1
 for <Intel-gfx@lists.freedesktop.org>; Fri, 20 Nov 2020 14:33:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23056252-1500050 for multiple; Fri, 20 Nov 2020 14:32:41 +0000
MIME-Version: 1.0
In-Reply-To: <20201120095636.1987395-2-tvrtko.ursulin@linux.intel.com>
References: <20201120095636.1987395-1-tvrtko.ursulin@linux.intel.com>
 <20201120095636.1987395-2-tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Fri, 20 Nov 2020 14:32:41 +0000
Message-ID: <160588276123.28535.4760687203912180414@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/guc: Use correct lock for CT
 event handler
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

Quoting Tvrtko Ursulin (2020-11-20 09:56:36)
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> CT event handler is called under the gt->irq_lock from the interrupt
> handling paths so make it the same from the init path. I don't think this
> mismatch caused any functional issue but we need to wean the code of the
> global i915->irq_lock.

ct_read definitely wants to be serialised. Is guc->irq_lock the right
choice?

> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/uc/intel_uc.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> index 220626c3ad81..6a0452815c41 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> @@ -203,7 +203,8 @@ static void guc_disable_interrupts(struct intel_guc *guc)
>  
>  static int guc_enable_communication(struct intel_guc *guc)
>  {
> -       struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
> +       struct intel_gt *gt = guc_to_gt(guc);
> +       struct drm_i915_private *i915 = gt->i915;
>         int ret;
>  
>         GEM_BUG_ON(guc_communication_enabled(guc));
> @@ -223,9 +224,9 @@ static int guc_enable_communication(struct intel_guc *guc)
>         guc_enable_interrupts(guc);
>  
>         /* check for CT messages received before we enabled interrupts */
> -       spin_lock_irq(&i915->irq_lock);
> +       spin_lock_irq(&gt->irq_lock);
>         intel_guc_ct_event_handler(&guc->ct);
> -       spin_unlock_irq(&i915->irq_lock);
> +       spin_unlock_irq(&gt->irq_lock);

You used guc->irq_lock in the previous patch. I suggest
intel_guc_ct_event_handler() should specify what lock it requires.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
