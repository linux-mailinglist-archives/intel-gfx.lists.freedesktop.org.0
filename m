Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BB3F35EB38
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 05:04:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E912E6E435;
	Wed, 14 Apr 2021 03:04:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com
 [IPv6:2607:f8b0:4864:20::634])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9652D6E435
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 03:04:14 +0000 (UTC)
Received: by mail-pl1-x634.google.com with SMTP id p16so5351881plf.12
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Apr 2021 20:04:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=YWlsnRSOQekuHI1nza1U/2ONG9pe3JCImgoC6OaquBA=;
 b=SXne9fh7omzAovHAQzanO8IhZ+//SWUNB4MkMEe45uUU0sYUSnLRltlNBuIBK9eJlf
 Lo9tasW+hDySRqLO+7tjixOAq7WnIPilXo10FJ+REohcVhguthzmHH5Vmw8qEU6RfDEr
 knc6b7AI/dgbzjUCvBUq8PM8SlyLWvzuvEKXQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=YWlsnRSOQekuHI1nza1U/2ONG9pe3JCImgoC6OaquBA=;
 b=MlQCUPiorR18OLkzWNHmGVCzykgkSJJlF1ad+u8CpQKV9mM+96kqCjdXb3CblD8wlz
 uHsVswZ0nXD4EmbL0JpbRe0SW5K1NLDIydjiAoP4c0+lozzjxbiA6jxaS6LUGgVAiXoy
 dZVhkSBv2sYykrWNB4Lbfp/U0Rz8VBe2f9agj1reZoaL16j40LtSl8jgQx/DLoJa1RCN
 xMB6iRSGhi2kbxRmjPrPeeTXXXvjDSmnvkCjcYFpl/Hy6ew5Clx3SCWRSsSRIB3Y8E06
 kysdBYz4hIdP5/CgZ56oQy2d9xmPPEzPvbGaMiin31SE2lHo8ee4NhIqzSMao84Hl/oS
 RhvQ==
X-Gm-Message-State: AOAM530o3CiWd03rnmr9uczfGAEXrHPoQ+pLs5+XDPbr24WqO64qwR6K
 a+3qtAhZWvqoxhBQM5nowLYnbIsyiVmWkg==
X-Google-Smtp-Source: ABdhPJwsrb7nChofgZXy5qyqkooUJJDW3SUr838kF2MWEpNvljqx4WE8BGxk1sgcKKBpjL0Nznrz3Q==
X-Received: by 2002:a17:90b:e0b:: with SMTP id
 ge11mr1038370pjb.127.1618369454295; 
 Tue, 13 Apr 2021 20:04:14 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id d4sm3408238pjs.1.2021.04.13.20.04.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Apr 2021 20:04:13 -0700 (PDT)
Date: Tue, 13 Apr 2021 20:04:12 -0700
From: Kees Cook <keescook@chromium.org>
To: Peter Zijlstra <peterz@infradead.org>
Message-ID: <202104132002.F03F8616DA@keescook>
References: <20210412080012.357146277@infradead.org>
 <20210412080611.902470568@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210412080611.902470568@infradead.org>
Subject: Re: [Intel-gfx] [PATCH 6/7] i915: Convert to verify_page_range()
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
Cc: jgross@suse.com, sstabellini@kernel.org, intel-gfx@lists.freedesktop.org,
 x86@kernel.org, linux-kernel@vger.kernel.org, chris@chris-wilson.co.uk,
 linux-mm@kvack.org, boris.ostrovsky@oracle.com, hch@lst.de,
 akpm@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 12, 2021 at 10:00:18AM +0200, Peter Zijlstra wrote:
> check_{present,absent}() only need R/O access, use verify_page_range()
> instead to remove modular use of apply_to_page_range().
> 
> Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
> ---
>  drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c |   16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> @@ -1225,9 +1225,9 @@ static int igt_mmap_gpu(void *arg)
>  	return 0;
>  }
>  
> -static int check_present_pte(pte_t *pte, unsigned long addr, void *data)
> +static int check_present_pte(pte_t pte, unsigned long addr, void *data)
>  {
> -	if (!pte_present(*pte) || pte_none(*pte)) {
> +	if (!pte_present(pte) || pte_none(pte)) {
>  		pr_err("missing PTE:%lx\n",
>  		       (addr - (unsigned long)data) >> PAGE_SHIFT);
>  		return -EINVAL;
> @@ -1236,9 +1236,9 @@ static int check_present_pte(pte_t *pte,
>  	return 0;
>  }
>  
> -static int check_absent_pte(pte_t *pte, unsigned long addr, void *data)
> +static int check_absent_pte(pte_t pte, unsigned long addr, void *data)
>  {
> -	if (pte_present(*pte) && !pte_none(*pte)) {
> +	if (pte_present(pte) && !pte_none(pte)) {
>  		pr_err("present PTE:%lx; expected to be revoked\n",
>  		       (addr - (unsigned long)data) >> PAGE_SHIFT);
>  		return -EINVAL;
> @@ -1249,14 +1249,14 @@ static int check_absent_pte(pte_t *pte,
>  
>  static int check_present(unsigned long addr, unsigned long len)
>  {
> -	return apply_to_page_range(current->mm, addr, len,
> -				   check_present_pte, (void *)addr);
> +	return verify_page_range(current->mm, addr, len,
> +				 check_present_pte, (void *)addr);
>  }

And this would be:

static int check_present(unsigned long addr, unsigned long len)
	unsigned long fail;

	fail = verify_page_range(current->mm, addr, len, check_present_pte);
	if (fail) {
  		pr_err("missing PTE:%lx\n", addr);
		return -EINVAL;
	}
}

(Oh, and I think I messed up the page shifting macro name in the earlier
one...)


-- 
Kees Cook
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
