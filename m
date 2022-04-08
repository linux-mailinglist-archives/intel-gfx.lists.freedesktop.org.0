Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D924F95FF
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Apr 2022 14:45:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F51B10F138;
	Fri,  8 Apr 2022 12:45:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1A1E10F132
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Apr 2022 12:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649421900; x=1680957900;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=jX+xUM5Awk6HAKt3BP9+/XDPvoIQYYfL4IqmhInOqXE=;
 b=NGZb4LyBwSeZAEmUmmphuXuytjlY/Jv1SCauUsaR/bdYdWGXa/Hl1jO9
 Lf2DT/3Hw+KzovCOIOPl75+YmYkpjdXFjBCzjbQ2uCcZRvDgmectM5gmy
 DbG44Wj5VWWVQLOB64SUHpsYL8yOkBb9m7jgh488VIrGM6QK0soaPLbv6
 DhPJqIJzZfMGzfsSUFtqcV1JHANpqlZARdyKmBDH4bzIz5fcnBscac8RJ
 Mgl41zUsZuw2yhU2JTlr8N9Go0BhwDGFfa3zsa9rpfgrnPcMxNfTk0OQR
 yJEwDLwgtRxzlEBGapdNgOyx7eVSRmHq7lVNkWvzy9Tf3p9MKV7PKf8s0 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10310"; a="249113352"
X-IronPort-AV: E=Sophos;i="5.90,245,1643702400"; d="scan'208";a="249113352"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2022 05:44:49 -0700
X-IronPort-AV: E=Sophos;i="5.90,245,1643702400"; d="scan'208";a="571478141"
Received: from ddobson-mobl.ger.corp.intel.com (HELO [10.213.224.220])
 ([10.213.224.220])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2022 05:44:48 -0700
Message-ID: <71468da0-d379-6a78-a322-8244c8d5a668@linux.intel.com>
Date: Fri, 8 Apr 2022 13:44:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220405001149.2675226-1-lucas.demarchi@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220405001149.2675226-1-lucas.demarchi@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 05/04/2022 01:11, Lucas De Marchi wrote:
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
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

I see this triggering a lot on drm-tip today (TGL), is that expected?

[    3.994907] i915 0000:00:02.0: [drm:intel_uncore_init_mmio [i915]] unclaimed mmio detected on uncore init, clearing
[    4.392525] i915 0000:00:02.0: Unclaimed access detected before read from register 0x44408
[    5.669929] i915 0000:00:02.0: Unclaimed access detected before write to register 0x50380
[    6.652808] i915 0000:00:02.0: Unclaimed access detected before write to register 0x50380
[   13.015978] i915 0000:00:02.0: Unclaimed access detected before write to register 0x50380
[   16.876802] i915 0000:00:02.0: Unclaimed access detected before write to register 0x44404
[   45.174395] i915 0000:00:02.0: Unclaimed access detected before write to register 0x44404

It continues at runtime as well:

[10265.010902] i915 0000:00:02.0: Unclaimed access detected before write to register 0x190030
[10329.093078] i915 0000:00:02.0: Unclaimed access detected before write to register 0x190030
[10354.060331] i915 0000:00:02.0: Unclaimed access detected before write to register 0x190030
[10385.486480] i915 0000:00:02.0: Unclaimed access detected before write to register 0x190030
[10408.910533] i915 0000:00:02.0: Unclaimed access detected before write to register 0x190030
[10433.398443] i915 0000:00:02.0: Unclaimed access detected before write to register 0x1900ec
[10444.110593] i915 0000:00:02.0: Unclaimed access detected before write to register 0x190030
[10468.302627] i915 0000:00:02.0: Unclaimed access detected before write to register 0x190030
[10493.398727] i915 0000:00:02.0: Unclaimed access detected before write to register 0x1900ec
[10515.366845] i915 0000:00:02.0: Unclaimed access detected before read from register 0x44408
[10518.674046] i915 0000:00:02.0: Unclaimed access detected before read from register 0xc7204
[10529.934735] i915 0000:00:02.0: Unclaimed access detected before write to register 0x190030
[10553.398808] i915 0000:00:02.0: Unclaimed access detected before write to register 0x1900ec
[10599.684455] i915 0000:00:02.0: Unclaimed access detected before read from register 0xc4008
[10602.898167] i915 0000:00:02.0: Unclaimed access detected before read from register 0xc7204
[10613.398909] i915 0000:00:02.0: Unclaimed access detected before write to register 0x1900ec
[10686.006783] i915 0000:00:02.0: Unclaimed access detected before write to register 0x190030
[10711.906813] i915 0000:00:02.0: Unclaimed access detected before write to register 0x190030
[10745.860538] i915 0000:00:02.0: Unclaimed access detected before write to register 0x190030
[10771.812277] i915 0000:00:02.0: Unclaimed access detected before write to register 0x190030
[10805.903058] i915 0000:00:02.0: Unclaimed access detected before write to register 0x190030
[10831.927073] i915 0000:00:02.0: Unclaimed access detected before write to register 0x190030
[10853.398958] i915 0000:00:02.0: Unclaimed access detected before write to register 0x1900ec
[10866.007084] i915 0000:00:02.0: Unclaimed access detected before write to register 0x190030
[10879.378435] i915 0000:00:02.0: Unclaimed access detected before read from register 0xc7204
[10891.727120] i915 0000:00:02.0: Unclaimed access detected before write to register 0x190030
[10913.395161] i915 0000:00:02.0: Unclaimed access detected before write to register 0x1900ec
[10939.026480] i915 0000:00:02.0: Unclaimed access detected before read from register 0xc7204
[10964.626494] i915 0000:00:02.0: Unclaimed access detected before read from register 0xc7204

It don't think this machine had a problem with this before, or perhaps it was going undetected?

Regards,

Tvrtko

> ---
>   drivers/gpu/drm/i915/intel_uncore.c | 29 +++++++++++++++++++++--------
>   1 file changed, 21 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
> index 8b9caaaacc21..df59ec88459e 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/intel_uncore.c
> @@ -1502,11 +1502,10 @@ ilk_dummy_write(struct intel_uncore *uncore)
>   static void
>   __unclaimed_reg_debug(struct intel_uncore *uncore,
>   		      const i915_reg_t reg,
> -		      const bool read,
> -		      const bool before)
> +		      const bool read)
>   {
>   	if (drm_WARN(&uncore->i915->drm,
> -		     check_for_unclaimed_mmio(uncore) && !before,
> +		     check_for_unclaimed_mmio(uncore),
>   		     "Unclaimed %s register 0x%x\n",
>   		     read ? "read from" : "write to",
>   		     i915_mmio_reg_offset(reg)))
> @@ -1514,6 +1513,20 @@ __unclaimed_reg_debug(struct intel_uncore *uncore,
>   		uncore->i915->params.mmio_debug--;
>   }
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
>   static inline void
>   unclaimed_reg_debug(struct intel_uncore *uncore,
>   		    const i915_reg_t reg,
> @@ -1526,13 +1539,13 @@ unclaimed_reg_debug(struct intel_uncore *uncore,
>   	/* interrupts are disabled and re-enabled around uncore->lock usage */
>   	lockdep_assert_held(&uncore->lock);
>   
> -	if (before)
> +	if (before) {
>   		spin_lock(&uncore->debug->lock);
> -
> -	__unclaimed_reg_debug(uncore, reg, read, before);
> -
> -	if (!before)
> +		__unclaimed_previous_reg_debug(uncore, reg, read);
> +	} else {
> +		__unclaimed_reg_debug(uncore, reg, read);
>   		spin_unlock(&uncore->debug->lock);
> +	}
>   }
>   
>   #define __vgpu_read(x) \
