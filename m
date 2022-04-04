Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62ABD4F206B
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Apr 2022 01:53:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C168B10E0D6;
	Mon,  4 Apr 2022 23:53:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15FDA10E0D6
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Apr 2022 23:53:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649116432; x=1680652432;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=BdFOtGhlMtnQCsoOuaI+vJiFbjiulT9VZaScTFnETJY=;
 b=IZQskrLsj/CrwPXAbyq8dhOvudq1U11N3IHdK9I3UnQoD45zOVdQEL/9
 pWsmHrTu5CU58S11eD1/+4WenGaSQjlojvqOgVhL5UYK7Uv3GgJrWEQu7
 6782IxvlwEInbiMNlxtLT7f2Iieb0A004suz7867t4fBN+IwzA17aRfTZ
 GZgLuoJAXh/SpF/MGv4ZuY/Ii/IMKV3LCeOSDox7avUC5ufzuo10PzSKI
 /HL+ONKuQvNl9Jbq6gYaoMQrDAVKJC+UlYuxte30lYqU0R7EjTIG9ApSJ
 pDogFHuju3WD6pXKz/J4VzhzdGHGCdOhFapSb1+sXfxhZnL1TrIAokimM A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10307"; a="258217535"
X-IronPort-AV: E=Sophos;i="5.90,235,1643702400"; d="scan'208";a="258217535"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2022 16:53:51 -0700
X-IronPort-AV: E=Sophos;i="5.90,235,1643702400"; d="scan'208";a="505084097"
Received: from rshrader-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.170.103])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2022 16:53:51 -0700
Date: Mon, 4 Apr 2022 16:53:51 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20220404235351.42ixmsfdmnulzqaz@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220404181844.2649726-1-lucas.demarchi@intel.com>
 <YktXYifH6HkafDvW@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <YktXYifH6HkafDvW@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/uncore: keep track of last mmio
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

On Mon, Apr 04, 2022 at 01:38:58PM -0700, Matt Roper wrote:
>On Mon, Apr 04, 2022 at 11:18:44AM -0700, Lucas De Marchi wrote:
>> Sine gen6 we use FPGA_DBG register to detect unclaimed MMIO registers.
>> This register is in the display engine IP and can only ever detect
>> unclaimed accesses to registers in this area. However sometimes there
>> are reports of this triggering for registers in other areas, which
>> should not be possible.
>>
>> This keeps track of the last 4 registers which should hopefully be
>> sufficient to understand where these are coming from. And without
>> increasing the debug struct too much:
>
>Doesn't the unclaimed access checking happen within uncore->lock,
>guaranteeing that an unclaimed access triggered by an uncore read/write
>is always from the current one and not a previous one?  Presumably if
>the wrong access is being identified, then the true culprit is probably
>a __raw_uncore_{read,write} that doesn't have any checking of its own
>and doesn't use the uncore lock?  I think we could probably confirm this
>theory by updating __unclaimed_reg_debug() to drop the "!before"
>condition and print a slightly different message if we detect an
>unclaimed access has already happened before we do the new operation.

I was actually thinking this could come from the 2 mmio reads being
batched and the hw not updating the FPGA_DBG in between.

__raw_uncore_* being used could be true.... from what I can see we'd
need to check users of intel_de_read_fw().

Lucas De Marchi

>
>
>Matt
>
>>
>> Before:
>> 	struct intel_uncore_mmio_debug {
>> 		spinlock_t                 lock;                 /*     0    64 */
>> 		/* --- cacheline 1 boundary (64 bytes) --- */
>> 		int                        unclaimed_mmio_check; /*    64     4 */
>> 		int                        saved_mmio_check;     /*    68     4 */
>> 		u32                        suspend_count;        /*    72     4 */
>>
>> 		/* size: 80, cachelines: 2, members: 4 */
>> 		/* padding: 4 */
>> 		/* last cacheline: 16 bytes */
>> 	};
>>
>> After:
>> 	struct intel_uncore_mmio_debug {
>> 		spinlock_t                 lock;                 /*     0    64 */
>> 		/* --- cacheline 1 boundary (64 bytes) --- */
>> 		int                        unclaimed_mmio_check; /*    64     4 */
>> 		int                        saved_mmio_check;     /*    68     4 */
>> 		u32                        last_reg[4];          /*    72    16 */
>> 		u32                        last_reg_pos;         /*    88     4 */
>> 		u32                        suspend_count;        /*    92     4 */
>>
>> 		/* size: 96, cachelines: 2, members: 6 */
>> 		/* last cacheline: 32 bytes */
>> 	};
>>
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> ---
>>  drivers/gpu/drm/i915/intel_uncore.c | 18 +++++++++++++++++-
>>  drivers/gpu/drm/i915/intel_uncore.h |  4 ++++
>>  2 files changed, 21 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
>> index 8b9caaaacc21..31a23b0e2907 100644
>> --- a/drivers/gpu/drm/i915/intel_uncore.c
>> +++ b/drivers/gpu/drm/i915/intel_uncore.c
>> @@ -1509,9 +1509,25 @@ __unclaimed_reg_debug(struct intel_uncore *uncore,
>>  		     check_for_unclaimed_mmio(uncore) && !before,
>>  		     "Unclaimed %s register 0x%x\n",
>>  		     read ? "read from" : "write to",
>> -		     i915_mmio_reg_offset(reg)))
>> +		     i915_mmio_reg_offset(reg))) {
>> +		unsigned int i;
>> +
>>  		/* Only report the first N failures */
>>  		uncore->i915->params.mmio_debug--;
>> +
>> +		drm_dbg(&uncore->i915->drm, "Last register accesses:\n");
>> +		for (i = uncore->debug->last_reg_pos;
>> +		     i < uncore->debug->last_reg_pos + INTEL_UNCORE_MMIO_DEBUG_REG_COUNT;
>> +		     i++)
>> +			drm_dbg(&uncore->i915->drm, "0x%x\n",
>> +				uncore->debug->last_reg[i % INTEL_UNCORE_MMIO_DEBUG_REG_COUNT]);
>> +	}
>> +
>> +	if (!before) {
>> +		uncore->debug->last_reg[uncore->debug->last_reg_pos++] =
>> +			i915_mmio_reg_offset(reg);
>> +		uncore->debug->last_reg_pos %= INTEL_UNCORE_MMIO_DEBUG_REG_COUNT;
>> +	}
>>  }
>>
>>  static inline void
>> diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
>> index 52fe3d89dd2b..5b5d2858ae11 100644
>> --- a/drivers/gpu/drm/i915/intel_uncore.h
>> +++ b/drivers/gpu/drm/i915/intel_uncore.h
>> @@ -38,10 +38,14 @@ struct intel_runtime_pm;
>>  struct intel_uncore;
>>  struct intel_gt;
>>
>> +#define INTEL_UNCORE_MMIO_DEBUG_REG_COUNT	4
>> +
>>  struct intel_uncore_mmio_debug {
>>  	spinlock_t lock; /** lock is also taken in irq contexts. */
>>  	int unclaimed_mmio_check;
>>  	int saved_mmio_check;
>> +	u32 last_reg[INTEL_UNCORE_MMIO_DEBUG_REG_COUNT];
>> +	u32 last_reg_pos;
>>  	u32 suspend_count;
>>  };
>>
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
