Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 682551EFC88
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jun 2020 17:32:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 163526E92F;
	Fri,  5 Jun 2020 15:32:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F5CF89862
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jun 2020 15:32:54 +0000 (UTC)
IronPort-SDR: 24Tam9t9dLFRA1zXjcKmcRgZWwJX8MYUS22hXyCm+2ur3VbQnZ2MVynrHAT1iwkp/2Sc1hCtIU
 KZXJ5O/0lshA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2020 08:32:53 -0700
IronPort-SDR: ZGKjI1eIA6bbqY1cawXDRZ1eKzk5dLMZjEuYOp0Jo7MGEmC5ea+xGrZgHbwahN8Mw/Jrs6YlrR
 2T2ryG3rh0ZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,476,1583222400"; d="scan'208";a="445926289"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga005.jf.intel.com with ESMTP; 05 Jun 2020 08:32:53 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 33A015C2C59; Fri,  5 Jun 2020 18:30:22 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200605122334.2798-3-chris@chris-wilson.co.uk>
References: <20200605122334.2798-1-chris@chris-wilson.co.uk>
 <20200605122334.2798-3-chris@chris-wilson.co.uk>
Date: Fri, 05 Jun 2020 18:30:22 +0300
Message-ID: <87r1uta5td.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 03/10] Restore "drm/i915: drop
 engine_pin/unpin_breadcrumbs_irq"
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

> This was removed in commit 478ffad6d690 ("drm/i915: drop
> engine_pin/unpin_breadcrumbs_irq") as the last user had been removed,
> but now there is a promise of a new user in the next patch.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_breadcrumbs.c | 22 +++++++++++++++++++++
>  drivers/gpu/drm/i915/gt/intel_engine.h      |  3 +++
>  2 files changed, 25 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> index d907d538176e..03c14ab86d95 100644
> --- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> @@ -220,6 +220,28 @@ static void signal_irq_work(struct irq_work *work)
>  	}
>  }
>  
> +void intel_engine_pin_breadcrumbs_irq(struct intel_engine_cs *engine)
> +{
> +	struct intel_breadcrumbs *b = &engine->breadcrumbs;
> +
> +	spin_lock_irq(&b->irq_lock);
> +	if (!b->irq_enabled++)
> +		irq_enable(engine);
> +	GEM_BUG_ON(!b->irq_enabled); /* no overflow! */
> +	spin_unlock_irq(&b->irq_lock);
> +}
> +
> +void intel_engine_unpin_breadcrumbs_irq(struct intel_engine_cs *engine)
> +{
> +	struct intel_breadcrumbs *b = &engine->breadcrumbs;
> +
> +	spin_lock_irq(&b->irq_lock);
> +	GEM_BUG_ON(!b->irq_enabled); /* no underflow! */
> +	if (!--b->irq_enabled)
> +		irq_disable(engine);
> +	spin_unlock_irq(&b->irq_lock);
> +}
> +
>  static bool __intel_breadcrumbs_arm_irq(struct intel_breadcrumbs *b)
>  {
>  	struct intel_engine_cs *engine =
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
> index 791897f8d847..043462b6ce1f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine.h
> @@ -226,6 +226,9 @@ void intel_engine_init_execlists(struct intel_engine_cs *engine);
>  void intel_engine_init_breadcrumbs(struct intel_engine_cs *engine);
>  void intel_engine_fini_breadcrumbs(struct intel_engine_cs *engine);
>  
> +void intel_engine_pin_breadcrumbs_irq(struct intel_engine_cs *engine);
> +void intel_engine_unpin_breadcrumbs_irq(struct intel_engine_cs *engine);
> +
>  void intel_engine_disarm_breadcrumbs(struct intel_engine_cs *engine);
>  
>  static inline void
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
