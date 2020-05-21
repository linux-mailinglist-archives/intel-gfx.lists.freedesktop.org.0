Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 158C61DC869
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2020 10:20:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79E146E910;
	Thu, 21 May 2020 08:20:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 695376E910
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2020 08:20:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21248913-1500050 for multiple; Thu, 21 May 2020 09:19:57 +0100
MIME-Version: 1.0
In-Reply-To: <20200521003803.18936-27-lucas.demarchi@intel.com>
References: <20200521003803.18936-1-lucas.demarchi@intel.com>
 <20200521003803.18936-27-lucas.demarchi@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <159004919688.32320.12584310519381075712@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 21 May 2020 09:19:56 +0100
Subject: Re: [Intel-gfx] [PATCH 26/37] drm/i915/dg1: Handle GRF/IC ECC error
 irq
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
Cc: Matthew Auld <matthew.auld@intel.com>, fernando.pacheco@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Lucas De Marchi (2020-05-21 01:37:52)
> From: Fernando Pacheco <fernando.pacheco@intel.com>
> 
> The error detection and correction capability
> for GRF and instruction cache (IC) will utilize
> the new interrupt and error handling infrastructure
> for dgfx products. The GFX device can generate
> a number of classes of error under the new
> infrastructure: correctable, non-fatal, and
> fatal errors.
> 
> The non-fatal and fatal error classes distinguish
> between levels of severity for uncorrectable errors.
> All ECC uncorrectable errors will be reported as
> fatal to produce the desired system response. Fatal
> errors are expected to route as PCIe error messages
> which should result in OS issuing a GFX device FLR.
> But the option exists to route fatal errors as
> interrupts.
> 
> Driver will only handle logging of errors. Anything
> more will be handled at system level.
> 
> For errors that will route as interrupts, three
> bits in the Master Interrupt Register will be used
> to convey the class of error.
> 
> For each class of error:
> 1. Determine source of error (IP block) by reading
>    the Device Error Source Register (RW1C) that
>    corresponds to the class of error being serviced.
> 2. If the generating IP block is GT, read and log the
>    GT Error Register (RW1C) that corresponds to the
>    class of error being serviced. Non-GT errors will
>    be logged in aggregate for now.
> 
> Bspec: 50875
> 
> Cc: Paulo Zanoni <paulo.r.zanoni@intel.com>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Fernando Pacheco <fernando.pacheco@intel.com>
> Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Fernando Pacheco <fernando.pacheco@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_irq.c | 121 ++++++++++++++++++++++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h |  28 ++++++++
>  2 files changed, 149 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index ebc80e8b1599..17e679b910da 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -2515,6 +2515,124 @@ static irqreturn_t gen8_irq_handler(int irq, void *arg)
>         return IRQ_HANDLED;
>  }
>  
> +static const char *
> +hardware_error_type_to_str(const enum hardware_error hw_err)
> +{
> +       switch (hw_err) {
> +       case HARDWARE_ERROR_CORRECTABLE:
> +               return "CORRECTABLE";
> +       case HARDWARE_ERROR_NONFATAL:
> +               return "NONFATAL";
> +       case HARDWARE_ERROR_FATAL:
> +               return "FATAL";
> +       default:
> +               return "UNKNOWN";
> +       }
> +}
> +
> +static void
> +gen12_gt_hw_error_handler(struct drm_i915_private * const i915,
> +                         const enum hardware_error hw_err)
> +{
> +       void __iomem * const regs = i915->uncore.regs;
> +       const char *hw_err_str = hardware_error_type_to_str(hw_err);
> +       u32 other_errors = ~(EU_GRF_ERROR | EU_IC_ERROR);
> +       u32 errstat;
> +
> +       lockdep_assert_held(&i915->irq_lock);

Wrong place and wrong locks.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
