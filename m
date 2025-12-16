Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BAECCC3549
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Dec 2025 14:48:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECFA810E7E8;
	Tue, 16 Dec 2025 13:48:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DwNFilga";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A03CA10E7E8
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Dec 2025 13:48:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765892900; x=1797428900;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ngiLwWOAcuL1Tg7RnoUR1jXzSaV0yuJVciviFjVjVwo=;
 b=DwNFilgaYbWahZEWho2QCixIFHOQGsgWDolIjcDIAElLtJq3XeKGnoLv
 K1PJyniXBFcdhwGZTzDzAUH+M0Oy/ivD8sJNqCarTYRTUEuOrhFhrYqtn
 0P5cz0k4kz2c26XybZapt0acsrF2KTdrXJlx6r1+JGEszwFTT0myFLekx
 I8cmPlG6I8jsHru8OKAoaEgQASVBKj3D/0zGZGIQHxlww0YDgJG3pkKqS
 pF3fe4aalaSWhKK2xzFqIBcE2iQaepW2Kjd97557lGq5BTzF1NJTWnBsi
 1zj1aF/URgTLFo5tSJZOuPnYYlYHkL221HR4ZWVS1xMtTIWt9MZdATRrv g==;
X-CSE-ConnectionGUID: DQ6A6rlXRyeUJmiLJP0MSw==
X-CSE-MsgGUID: vcEIV8PzSSKWyKZdWsrWlg==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="78447551"
X-IronPort-AV: E=Sophos;i="6.21,153,1763452800"; d="scan'208";a="78447551"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 05:48:20 -0800
X-CSE-ConnectionGUID: BXu3hGRCQzKGUZEFizqORA==
X-CSE-MsgGUID: vjnituMCTSe/CV2nh6iK4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,153,1763452800"; d="scan'208";a="202434967"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.153])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 05:48:18 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Randy Dunlap <rdunlap@infradead.org>, intel-gfx@lists.freedesktop.org
Cc: linux-doc@vger.kernel.org, Andy Shevchenko
 <andriy.shevchenko@linux.intel.com>, Jonathan Corbet <corbet@lwn.net>
Subject: Re: [PATCH] drm/i915/wakeref: clean up INTEL_WAKEREF_PUT_* flag macros
In-Reply-To: <76482fc4-7989-41ad-a244-3de4bca44043@infradead.org>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20251215120908.3515578-1-jani.nikula@intel.com>
 <76482fc4-7989-41ad-a244-3de4bca44043@infradead.org>
Date: Tue, 16 Dec 2025 15:48:15 +0200
Message-ID: <707d40a5b84853a6403e537163c6cb97c3474792@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Mon, 15 Dec 2025, Randy Dunlap <rdunlap@infradead.org> wrote:
> On 12/15/25 4:09 AM, Jani Nikula wrote:
>> Commit 469c1c9eb6c9 ("kernel-doc: Issue warnings that were silently
>> discarded") started emitting warnings for cases that were previously
>> silently discarded. One such case is in intel_wakeref.h:
>> 
>> Warning: drivers/gpu/drm/i915/intel_wakeref.h:156 expecting prototype
>>   for __intel_wakeref_put(). Prototype was for INTEL_WAKEREF_PUT_ASYNC()
>>   instead
>> 
>> Arguably kernel-doc should be able to handle this, as it's valid C, but
>> having the flags defined between the function declarator and the body is
>> just asking for trouble. Move the INTEL_WAKEREF_PUT_* macros away from
>> there, making kernel-doc's life easier.
>> 
>> While at it, reduce the unnecessary abstraction levels by removing the
>> enum, and append _MASK to INTEL_WAKEREF_PUT_DELAY for clarity.
>> 
>> Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
>> Cc: Jonathan Corbet <corbet@lwn.net>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Acked-by: Randy Dunlap <rdunlap@infradead.org>
> Tested-by: Randy Dunlap <rdunlap@infradead.org>
>
> Thanks.

Thanks, pushed to drm-intel-next.

BR,
Jani.

>
>> 
>> ---
>> 
>> Curiously, kernel-doc does not return non-zero exit status for these
>> warnings even with the -Werror parameter!
>> ---
>>  drivers/gpu/drm/i915/intel_wakeref.c |  2 +-
>>  drivers/gpu/drm/i915/intel_wakeref.h | 14 +++++---------
>>  2 files changed, 6 insertions(+), 10 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/intel_wakeref.c b/drivers/gpu/drm/i915/intel_wakeref.c
>> index b1883dccc22a..98e7cee4e1dc 100644
>> --- a/drivers/gpu/drm/i915/intel_wakeref.c
>> +++ b/drivers/gpu/drm/i915/intel_wakeref.c
>> @@ -80,7 +80,7 @@ void __intel_wakeref_put_last(struct intel_wakeref *wf, unsigned long flags)
>>  	/* Assume we are not in process context and so cannot sleep. */
>>  	if (flags & INTEL_WAKEREF_PUT_ASYNC || !mutex_trylock(&wf->mutex)) {
>>  		mod_delayed_work(wf->i915->unordered_wq, &wf->work,
>> -				 FIELD_GET(INTEL_WAKEREF_PUT_DELAY, flags));
>> +				 FIELD_GET(INTEL_WAKEREF_PUT_DELAY_MASK, flags));
>>  		return;
>>  	}
>>  
>> diff --git a/drivers/gpu/drm/i915/intel_wakeref.h b/drivers/gpu/drm/i915/intel_wakeref.h
>> index a2894a56e18f..81308bac34ba 100644
>> --- a/drivers/gpu/drm/i915/intel_wakeref.h
>> +++ b/drivers/gpu/drm/i915/intel_wakeref.h
>> @@ -128,17 +128,16 @@ intel_wakeref_get_if_active(struct intel_wakeref *wf)
>>  	return atomic_inc_not_zero(&wf->count);
>>  }
>>  
>> -enum {
>> -	INTEL_WAKEREF_PUT_ASYNC_BIT = 0,
>> -	__INTEL_WAKEREF_PUT_LAST_BIT__
>> -};
>> -
>>  static inline void
>>  intel_wakeref_might_get(struct intel_wakeref *wf)
>>  {
>>  	might_lock(&wf->mutex);
>>  }
>>  
>> +/* flags for __intel_wakeref_put() and __intel_wakeref_put_last */
>> +#define INTEL_WAKEREF_PUT_ASYNC		BIT(0)
>> +#define INTEL_WAKEREF_PUT_DELAY_MASK	GENMASK(BITS_PER_LONG - 1, 1)
>> +
>>  /**
>>   * __intel_wakeref_put: Release the wakeref
>>   * @wf: the wakeref
>> @@ -154,9 +153,6 @@ intel_wakeref_might_get(struct intel_wakeref *wf)
>>   */
>>  static inline void
>>  __intel_wakeref_put(struct intel_wakeref *wf, unsigned long flags)
>> -#define INTEL_WAKEREF_PUT_ASYNC BIT(INTEL_WAKEREF_PUT_ASYNC_BIT)
>> -#define INTEL_WAKEREF_PUT_DELAY \
>> -	GENMASK(BITS_PER_LONG - 1, __INTEL_WAKEREF_PUT_LAST_BIT__)
>>  {
>>  	INTEL_WAKEREF_BUG_ON(atomic_read(&wf->count) <= 0);
>>  	if (unlikely(!atomic_add_unless(&wf->count, -1, 1)))
>> @@ -181,7 +177,7 @@ intel_wakeref_put_delay(struct intel_wakeref *wf, unsigned long delay)
>>  {
>>  	__intel_wakeref_put(wf,
>>  			    INTEL_WAKEREF_PUT_ASYNC |
>> -			    FIELD_PREP(INTEL_WAKEREF_PUT_DELAY, delay));
>> +			    FIELD_PREP(INTEL_WAKEREF_PUT_DELAY_MASK, delay));
>>  }
>>  
>>  static inline void

-- 
Jani Nikula, Intel
