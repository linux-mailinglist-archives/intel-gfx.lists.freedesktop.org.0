Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E4E84F5301
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Apr 2022 06:02:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89A8E10F103;
	Wed,  6 Apr 2022 04:02:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 463AE10F103
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Apr 2022 04:02:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649217768; x=1680753768;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=lLMHWUcJhD57l/VLKrisxaA23D0K5kXd1yf1vb542V8=;
 b=HfVVPrv0qSlmoQJnc+89mDdJkdPV7ibnR7sOI40uTFUrS4a0a9287yLC
 EAvBzk2IZGFha0joKA08fDb0Om6K3DuHL4OaLuhZ3mKDvNtxI2BNlkIQK
 rBq9Kh6LwV0lsm5cHH+Yh2xpAeL2TuUtxq82HxBS39QRlbj99uW7apiJT
 22Iu8DsFsLaCDV+/qrYaHAo2PGsn8LbXOm6na4H9cyULb960zvUJgINaX
 nibXynTpErZUvJYRXn2ebmTazcU4A28Iy4POpLCC06EyT9/hxZ6BdYY3U
 6KWa75FdVmP72xH7sQy+RxAlmmRqUNRjnx0F7m0jlKDR57EFaevkBhlze A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10308"; a="324114744"
X-IronPort-AV: E=Sophos;i="5.90,239,1643702400"; d="scan'208";a="324114744"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 21:02:44 -0700
X-IronPort-AV: E=Sophos;i="5.90,238,1643702400"; d="scan'208";a="549365548"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 21:02:43 -0700
Date: Tue, 5 Apr 2022 21:02:42 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <Yk0Q4n8fLUzuAP0F@mdroper-desk1.amr.corp.intel.com>
References: <20220405001149.2675226-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220405001149.2675226-1-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/uncore: Warn on previous unclaimed
 accesses
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 04, 2022 at 05:11:49PM -0700, Lucas De Marchi wrote:
> Since gen6 we use FPGA_DBG register to detect unclaimed MMIO registers.
> This register is in the display engine IP and can only ever detect
> unclaimed accesses to registers in this area. However sometimes there
> are reports of this triggering for registers in other areas, which
> should not be possible.
> 
> Right now we always warn after the read/write of registers going through
> unclaimed_reg_debug(). However places using __raw_uncore_* may be
> triggering the unclaimed access and those being later accounted to a
> different register. Let's warn both before and after the read/write
> with a slightly different message, so it's clear if the register
> reported in the warning is actually the culprit.

You should probably probably give an explicit mention of commit
dda960335e020 ("drm/i915: Just clear the mmiodebug before a register
access") in the commit message since we're reversing direction here.

> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_uncore.c | 29 +++++++++++++++++++++--------
>  1 file changed, 21 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
> index 8b9caaaacc21..df59ec88459e 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/intel_uncore.c
> @@ -1502,11 +1502,10 @@ ilk_dummy_write(struct intel_uncore *uncore)
>  static void
>  __unclaimed_reg_debug(struct intel_uncore *uncore,
>  		      const i915_reg_t reg,
> -		      const bool read,
> -		      const bool before)
> +		      const bool read)
>  {
>  	if (drm_WARN(&uncore->i915->drm,
> -		     check_for_unclaimed_mmio(uncore) && !before,
> +		     check_for_unclaimed_mmio(uncore),
>  		     "Unclaimed %s register 0x%x\n",

Might be simpler to just keep it all in one function and do something
like a

        before ? "MMIO operation *before* a " : ""

in the message?  Up to you.  Either way,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

>  		     read ? "read from" : "write to",
>  		     i915_mmio_reg_offset(reg)))
> @@ -1514,6 +1513,20 @@ __unclaimed_reg_debug(struct intel_uncore *uncore,
>  		uncore->i915->params.mmio_debug--;
>  }
>  
> +static void
> +__unclaimed_previous_reg_debug(struct intel_uncore *uncore,
> +			       const i915_reg_t reg,
> +			       const bool read)
> +{
> +	if (drm_WARN(&uncore->i915->drm,
> +		     check_for_unclaimed_mmio(uncore),
> +		     "Unclaimed access detected before %s register 0x%x\n",
> +		     read ? "read from" : "write to",
> +		     i915_mmio_reg_offset(reg)))
> +		/* Only report the first N failures */
> +		uncore->i915->params.mmio_debug--;
> +}
> +
>  static inline void
>  unclaimed_reg_debug(struct intel_uncore *uncore,
>  		    const i915_reg_t reg,
> @@ -1526,13 +1539,13 @@ unclaimed_reg_debug(struct intel_uncore *uncore,
>  	/* interrupts are disabled and re-enabled around uncore->lock usage */
>  	lockdep_assert_held(&uncore->lock);
>  
> -	if (before)
> +	if (before) {
>  		spin_lock(&uncore->debug->lock);
> -
> -	__unclaimed_reg_debug(uncore, reg, read, before);
> -
> -	if (!before)
> +		__unclaimed_previous_reg_debug(uncore, reg, read);
> +	} else {
> +		__unclaimed_reg_debug(uncore, reg, read);
>  		spin_unlock(&uncore->debug->lock);
> +	}
>  }
>  
>  #define __vgpu_read(x) \
> -- 
> 2.35.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
