Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BA6B6627D5
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Jan 2023 14:57:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9025B10E156;
	Mon,  9 Jan 2023 13:57:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D794410E1C8
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Jan 2023 13:57:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673272664; x=1704808664;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Y7xAJZfEIT6xpHSIHd/NEilT0u+gO5BNqCtlxGcq7VA=;
 b=LoVb7QbIGn/JuTOqV7SPYa5BEsaWkl5/GMyRQHDFE5kgLk9NbAykSwNk
 /V9qiTb0oFZcPR1DzLUQJcw6MtQ6ub1vEIwxSccvZ308WyUQGBH1W7sI8
 1t9y52ypc4Tc02IcwSomuQCcnGBSgmTf3qX33eZVqaIz3ATeR/TRfTJoK
 6FfPvkP103LXGfNIa/VPFDKKL8tkG/eYAQp/uCH07edaD4IGLg7nVMyU6
 zRaclNGK/k2/PaoKtwlCmLJLPe5/5FYo8ySsOhPBUT7T3ZrErfGdPeuaN
 WaKyMV/dzbafuD/ehNXcsfNCuPuGebWVVWjcLSUxBpt3fXKriOdvCyD9x Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="324121850"
X-IronPort-AV: E=Sophos;i="5.96,311,1665471600"; d="scan'208";a="324121850"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2023 05:57:44 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="658602337"
X-IronPort-AV: E=Sophos;i="5.96,311,1665471600"; d="scan'208";a="658602337"
Received: from nsedoc-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.221.78])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2023 05:57:41 -0800
Date: Mon, 9 Jan 2023 14:57:38 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nirmoy Das <nirmoy.das@intel.com>
Message-ID: <Y7wdUnLF0joHySmK@ashyti-mobl2.lan>
References: <20230105203843.30663-1-nirmoy.das@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230105203843.30663-1-nirmoy.das@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Update docs in intel_wakeref.h
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
Cc: intel-gfx@lists.freedesktop.org, andrzej.hajda@intel.com,
 chris.p.wilson@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Nirmoy,

On Thu, Jan 05, 2023 at 09:38:43PM +0100, Nirmoy Das wrote:
> Fix docs for __intel_wakeref_put() and intel_wakeref_get() to
> reflect current behaviour.
> 
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>

Thanks for adding also the change suggested by Ashutosh!

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Andi

> ---
>  drivers/gpu/drm/i915/intel_wakeref.h | 21 ++++++++++-----------
>  1 file changed, 10 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_wakeref.h b/drivers/gpu/drm/i915/intel_wakeref.h
> index 4f4c2e15e736..71b8a63f6f10 100644
> --- a/drivers/gpu/drm/i915/intel_wakeref.h
> +++ b/drivers/gpu/drm/i915/intel_wakeref.h
> @@ -68,11 +68,12 @@ void __intel_wakeref_put_last(struct intel_wakeref *wf, unsigned long flags);
>   * @wf: the wakeref
>   *
>   * Acquire a hold on the wakeref. The first user to do so, will acquire
> - * the runtime pm wakeref and then call the @fn underneath the wakeref
> - * mutex.
> + * the runtime pm wakeref and then call the intel_wakeref_ops->get()
> + * underneath the wakeref mutex.
>   *
> - * Note that @fn is allowed to fail, in which case the runtime-pm wakeref
> - * will be released and the acquisition unwound, and an error reported.
> + * Note that intel_wakeref_ops->get() is allowed to fail, in which case
> + * the runtime-pm wakeref will be released and the acquisition unwound,
> + * and an error reported.
>   *
>   * Returns: 0 if the wakeref was acquired successfully, or a negative error
>   * code otherwise.
> @@ -130,19 +131,17 @@ intel_wakeref_might_get(struct intel_wakeref *wf)
>  }
>  
>  /**
> - * intel_wakeref_put_flags: Release the wakeref
> + * __intel_wakeref_put: Release the wakeref
>   * @wf: the wakeref
>   * @flags: control flags
>   *
>   * Release our hold on the wakeref. When there are no more users,
> - * the runtime pm wakeref will be released after the @fn callback is called
> - * underneath the wakeref mutex.
> + * the runtime pm wakeref will be released after the intel_wakeref_ops->put()
> + * callback is called underneath the wakeref mutex.
>   *
> - * Note that @fn is allowed to fail, in which case the runtime-pm wakeref
> - * is retained and an error reported.
> + * Note that intel_wakeref_ops->put() is allowed to fail, in which case the
> + * runtime-pm wakeref is retained.
>   *
> - * Returns: 0 if the wakeref was released successfully, or a negative error
> - * code otherwise.
>   */
>  static inline void
>  __intel_wakeref_put(struct intel_wakeref *wf, unsigned long flags)
> -- 
> 2.38.0
