Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE90CC127B
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Dec 2025 07:43:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D62E10E6EB;
	Tue, 16 Dec 2025 06:43:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; secure) header.d=infradead.org header.i=@infradead.org header.b="ZufkX9Y9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 659A410E6EB
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Dec 2025 06:43:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
 Message-ID:Sender:Reply-To:Content-ID:Content-Description;
 bh=mYDUlQyW4hNefAm7Ltz/Cj2u8irC6xba/fO7dY7hi/M=; b=ZufkX9Y9HumTRGczYjeHKWRr+R
 i9qwMiroheuY8/Mm6VVUFoKzrTdLINrNJoGNLf2qHZ8E9qWJCu7QkLcTpgnXvlAUzmzL1IDoOB8dB
 v+nEM4cRkAUr84MMp7jXBd5HW3Hv9/16XxjJ1PO1fegivobBDhW58yki8Wj618FYB8Ja8XLjhwkSK
 0se6pkw41ptMt2nTgQ8yESKRWQBk+f3OhhtwpSx/lRrfKJdtTUEmkibVBvVeKOheFHt9DDPnv1ouT
 SY97g1r9ca34uAbH24qpsy0P82+wGANN7rEKhcuqW/GCCAtkkRHBuOyUAMVbuD32JiPQdOb34qQ5X
 CrQLXsoQ==;
Received: from [50.53.43.113] (helo=[192.168.254.34])
 by bombadil.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
 id 1vVOmT-00000004nTR-2yck; Tue, 16 Dec 2025 06:43:33 +0000
Message-ID: <76482fc4-7989-41ad-a244-3de4bca44043@infradead.org>
Date: Mon, 15 Dec 2025 22:43:33 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/wakeref: clean up INTEL_WAKEREF_PUT_* flag macros
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Cc: linux-doc@vger.kernel.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Jonathan Corbet <corbet@lwn.net>
References: <20251215120908.3515578-1-jani.nikula@intel.com>
Content-Language: en-US
From: Randy Dunlap <rdunlap@infradead.org>
In-Reply-To: <20251215120908.3515578-1-jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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



On 12/15/25 4:09 AM, Jani Nikula wrote:
> Commit 469c1c9eb6c9 ("kernel-doc: Issue warnings that were silently
> discarded") started emitting warnings for cases that were previously
> silently discarded. One such case is in intel_wakeref.h:
> 
> Warning: drivers/gpu/drm/i915/intel_wakeref.h:156 expecting prototype
>   for __intel_wakeref_put(). Prototype was for INTEL_WAKEREF_PUT_ASYNC()
>   instead
> 
> Arguably kernel-doc should be able to handle this, as it's valid C, but
> having the flags defined between the function declarator and the body is
> just asking for trouble. Move the INTEL_WAKEREF_PUT_* macros away from
> there, making kernel-doc's life easier.
> 
> While at it, reduce the unnecessary abstraction levels by removing the
> enum, and append _MASK to INTEL_WAKEREF_PUT_DELAY for clarity.
> 
> Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Cc: Jonathan Corbet <corbet@lwn.net>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Acked-by: Randy Dunlap <rdunlap@infradead.org>
Tested-by: Randy Dunlap <rdunlap@infradead.org>

Thanks.

> 
> ---
> 
> Curiously, kernel-doc does not return non-zero exit status for these
> warnings even with the -Werror parameter!
> ---
>  drivers/gpu/drm/i915/intel_wakeref.c |  2 +-
>  drivers/gpu/drm/i915/intel_wakeref.h | 14 +++++---------
>  2 files changed, 6 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_wakeref.c b/drivers/gpu/drm/i915/intel_wakeref.c
> index b1883dccc22a..98e7cee4e1dc 100644
> --- a/drivers/gpu/drm/i915/intel_wakeref.c
> +++ b/drivers/gpu/drm/i915/intel_wakeref.c
> @@ -80,7 +80,7 @@ void __intel_wakeref_put_last(struct intel_wakeref *wf, unsigned long flags)
>  	/* Assume we are not in process context and so cannot sleep. */
>  	if (flags & INTEL_WAKEREF_PUT_ASYNC || !mutex_trylock(&wf->mutex)) {
>  		mod_delayed_work(wf->i915->unordered_wq, &wf->work,
> -				 FIELD_GET(INTEL_WAKEREF_PUT_DELAY, flags));
> +				 FIELD_GET(INTEL_WAKEREF_PUT_DELAY_MASK, flags));
>  		return;
>  	}
>  
> diff --git a/drivers/gpu/drm/i915/intel_wakeref.h b/drivers/gpu/drm/i915/intel_wakeref.h
> index a2894a56e18f..81308bac34ba 100644
> --- a/drivers/gpu/drm/i915/intel_wakeref.h
> +++ b/drivers/gpu/drm/i915/intel_wakeref.h
> @@ -128,17 +128,16 @@ intel_wakeref_get_if_active(struct intel_wakeref *wf)
>  	return atomic_inc_not_zero(&wf->count);
>  }
>  
> -enum {
> -	INTEL_WAKEREF_PUT_ASYNC_BIT = 0,
> -	__INTEL_WAKEREF_PUT_LAST_BIT__
> -};
> -
>  static inline void
>  intel_wakeref_might_get(struct intel_wakeref *wf)
>  {
>  	might_lock(&wf->mutex);
>  }
>  
> +/* flags for __intel_wakeref_put() and __intel_wakeref_put_last */
> +#define INTEL_WAKEREF_PUT_ASYNC		BIT(0)
> +#define INTEL_WAKEREF_PUT_DELAY_MASK	GENMASK(BITS_PER_LONG - 1, 1)
> +
>  /**
>   * __intel_wakeref_put: Release the wakeref
>   * @wf: the wakeref
> @@ -154,9 +153,6 @@ intel_wakeref_might_get(struct intel_wakeref *wf)
>   */
>  static inline void
>  __intel_wakeref_put(struct intel_wakeref *wf, unsigned long flags)
> -#define INTEL_WAKEREF_PUT_ASYNC BIT(INTEL_WAKEREF_PUT_ASYNC_BIT)
> -#define INTEL_WAKEREF_PUT_DELAY \
> -	GENMASK(BITS_PER_LONG - 1, __INTEL_WAKEREF_PUT_LAST_BIT__)
>  {
>  	INTEL_WAKEREF_BUG_ON(atomic_read(&wf->count) <= 0);
>  	if (unlikely(!atomic_add_unless(&wf->count, -1, 1)))
> @@ -181,7 +177,7 @@ intel_wakeref_put_delay(struct intel_wakeref *wf, unsigned long delay)
>  {
>  	__intel_wakeref_put(wf,
>  			    INTEL_WAKEREF_PUT_ASYNC |
> -			    FIELD_PREP(INTEL_WAKEREF_PUT_DELAY, delay));
> +			    FIELD_PREP(INTEL_WAKEREF_PUT_DELAY_MASK, delay));
>  }
>  
>  static inline void

-- 
~Randy
