Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 423514F5534
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Apr 2022 07:53:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AE8510EDD7;
	Wed,  6 Apr 2022 05:53:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A5F810EC37
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Apr 2022 05:53:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649224425; x=1680760425;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=DN8EBQmk7GKU2Drb8Y8kgFhP8RGMhSOQyNW5aA1EtKU=;
 b=Ds/rykN4MvMXgYmbTJhjhbTMcfHg4dItjjLdlwMylxyhtyWJK0sFalAH
 Kg+yrtEk18pfdo/GVGl899EXMaxDkCKfxU/wvErTR6jgYFH2fXPj7NTNt
 9uxE9zcGtS62vV70m1jdSQDAeEmVnBffdVOmBU9CvEVsePXyJ4ggO+RE5
 vIV+H02L3+R0FEtofRuptR8J/Xdb7VfMuoGKCzbi4i77j+VBCpdk6wm3i
 toD0RtmwLaUfRtWV8sSDKhhDkXk2+5JSKH3RgwGgYMU9hTHKSZ16mtyA3
 43Zu1kP+KZletamkXt/xtsqYGTqqzQQ71c9aHTthT2m4XxCiCdhxOGPrh w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10308"; a="243097087"
X-IronPort-AV: E=Sophos;i="5.90,239,1643702400"; d="scan'208";a="243097087"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 22:53:44 -0700
X-IronPort-AV: E=Sophos;i="5.90,239,1643702400"; d="scan'208";a="523785853"
Received: from wendu-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.136.77])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 22:53:43 -0700
Date: Tue, 5 Apr 2022 22:53:43 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20220406055343.xfyafxtvvo74kayg@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220405001149.2675226-1-lucas.demarchi@intel.com>
 <Yk0Q4n8fLUzuAP0F@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <Yk0Q4n8fLUzuAP0F@mdroper-desk1.amr.corp.intel.com>
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

On Tue, Apr 05, 2022 at 09:02:42PM -0700, Matt Roper wrote:
>On Mon, Apr 04, 2022 at 05:11:49PM -0700, Lucas De Marchi wrote:
>> Since gen6 we use FPGA_DBG register to detect unclaimed MMIO registers.
>> This register is in the display engine IP and can only ever detect
>> unclaimed accesses to registers in this area. However sometimes there
>> are reports of this triggering for registers in other areas, which
>> should not be possible.
>>
>> Right now we always warn after the read/write of registers going through
>> unclaimed_reg_debug(). However places using __raw_uncore_* may be
>> triggering the unclaimed access and those being later accounted to a
>> different register. Let's warn both before and after the read/write
>> with a slightly different message, so it's clear if the register
>> reported in the warning is actually the culprit.
>
>You should probably probably give an explicit mention of commit
>dda960335e020 ("drm/i915: Just clear the mmiodebug before a register
>access") in the commit message since we're reversing direction here.

I will add a note about that commit, but this is not going a reverse
direction: The reason for the change is exactly the same as expressed in
that commit:  earlier failures being accounted for unrelated registers.
In that commit it dropped the warning before the read, but it failed to
account for cases like we are having: a read or write to a non-display
register will still read FPGA_DBG and be marked as failure. Even if it's
unrelated to the register that actually caused the failure. So I think
this is just a slightly different implementation: instead of dropping the
warning, warn with a more appropriate message to be clear what happened.


>
>>
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> ---
>>  drivers/gpu/drm/i915/intel_uncore.c | 29 +++++++++++++++++++++--------
>>  1 file changed, 21 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
>> index 8b9caaaacc21..df59ec88459e 100644
>> --- a/drivers/gpu/drm/i915/intel_uncore.c
>> +++ b/drivers/gpu/drm/i915/intel_uncore.c
>> @@ -1502,11 +1502,10 @@ ilk_dummy_write(struct intel_uncore *uncore)
>>  static void
>>  __unclaimed_reg_debug(struct intel_uncore *uncore,
>>  		      const i915_reg_t reg,
>> -		      const bool read,
>> -		      const bool before)
>> +		      const bool read)
>>  {
>>  	if (drm_WARN(&uncore->i915->drm,
>> -		     check_for_unclaimed_mmio(uncore) && !before,
>> +		     check_for_unclaimed_mmio(uncore),
>>  		     "Unclaimed %s register 0x%x\n",
>
>Might be simpler to just keep it all in one function and do something
>like a
>
>        before ? "MMIO operation *before* a " : ""
>
>in the message?  Up to you.  Either way,

those bool arguments ar too easy to mess up in the caller IMO. I'd
rather keep different functions, particularly since it's just a few
lines.

>
>Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

thanks
Lucas De Marchi

>
>>  		     read ? "read from" : "write to",
>>  		     i915_mmio_reg_offset(reg)))
>> @@ -1514,6 +1513,20 @@ __unclaimed_reg_debug(struct intel_uncore *uncore,
>>  		uncore->i915->params.mmio_debug--;
>>  }
>>
>> +static void
>> +__unclaimed_previous_reg_debug(struct intel_uncore *uncore,
>> +			       const i915_reg_t reg,
>> +			       const bool read)
>> +{
>> +	if (drm_WARN(&uncore->i915->drm,
>> +		     check_for_unclaimed_mmio(uncore),
>> +		     "Unclaimed access detected before %s register 0x%x\n",
>> +		     read ? "read from" : "write to",
>> +		     i915_mmio_reg_offset(reg)))
>> +		/* Only report the first N failures */
>> +		uncore->i915->params.mmio_debug--;
>> +}
>> +
>>  static inline void
>>  unclaimed_reg_debug(struct intel_uncore *uncore,
>>  		    const i915_reg_t reg,
>> @@ -1526,13 +1539,13 @@ unclaimed_reg_debug(struct intel_uncore *uncore,
>>  	/* interrupts are disabled and re-enabled around uncore->lock usage */
>>  	lockdep_assert_held(&uncore->lock);
>>
>> -	if (before)
>> +	if (before) {
>>  		spin_lock(&uncore->debug->lock);
>> -
>> -	__unclaimed_reg_debug(uncore, reg, read, before);
>> -
>> -	if (!before)
>> +		__unclaimed_previous_reg_debug(uncore, reg, read);
>> +	} else {
>> +		__unclaimed_reg_debug(uncore, reg, read);
>>  		spin_unlock(&uncore->debug->lock);
>> +	}
>>  }
>>
>>  #define __vgpu_read(x) \
>> --
>> 2.35.1
>>
>
>-- 
>Matt Roper
>Graphics Software Engineer
>VTT-OSGC Platform Enablement
>Intel Corporation
>(916) 356-2795
