Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 228FC35D1BE
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Apr 2021 22:08:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC09389C89;
	Mon, 12 Apr 2021 20:08:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com
 [IPv6:2607:f8b0:4864:20::635])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA36A89C89
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Apr 2021 20:08:40 +0000 (UTC)
Received: by mail-pl1-x635.google.com with SMTP id 20so3023659pll.7
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Apr 2021 13:08:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Bn1v8weQCAphlvQ2nM+cq8dnXhBumoE40YxXGULtULQ=;
 b=CpjlAH7Ye2g+AXc5oigkyHtOnUNSSWCic8/dc1mTorgE/ym0laLcE3728KKNMBi4S1
 xgp1w4MsZ1MNDzcncqY4HfknPHwxpIoJ9ZQZsGYKRzxxxVMXbf72LTCflLWCQfkdO0p/
 KH436pTfgTCP/y5s95xqU6T3MXGQQOloo2beM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Bn1v8weQCAphlvQ2nM+cq8dnXhBumoE40YxXGULtULQ=;
 b=lyQjibOkPkFqc3u2f5112rVoiWjpyd/PVAryoFpLzBMaPjr3k1+VtKPJ0GzYqlUtLC
 o2W3YkGQbN/kPwzFDE0xLAIQkn8d5z10XhQvjyUet97WbNhqfFZTot0+fb0pwX8BrbXP
 DhdwnjbIh9LHHmW6CnQdsrECUTQ8KxDXXTMmANQRmOOrx7R/iDgj/VW1gXQaMAXQRJ9b
 7il3HAHMbwiO+eNF3Qv+P8Jz2hOLKOFN5s+DC0ZShqccR0ioeiDAHAEBvtenmxOymNqP
 aPPAulY8lTIRyRdr4u972nuMFq33Ik0mjBAGbZpCItqhdbU3KCslUNC7mY7/mHUvtR/3
 MyZA==
X-Gm-Message-State: AOAM533Kel9yZcFIsNfbFgKQBpA8mIojH4jTgaZgQaiqFDOro3YCm1wA
 R/0aHHJQBIr3oQ0bG7neVYxO3Q==
X-Google-Smtp-Source: ABdhPJzyB/+5iJRCnS7BNuWsoTebOn4RtTSF+akuP7MK8gjMLNkMyY7+nAJxYt0IjiolcskY6F8FhQ==
X-Received: by 2002:a17:902:7c0b:b029:eb:24a:1209 with SMTP id
 x11-20020a1709027c0bb02900eb024a1209mr5612813pll.43.1618258120487; 
 Mon, 12 Apr 2021 13:08:40 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id h16sm10401469pfc.194.2021.04.12.13.08.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Apr 2021 13:08:39 -0700 (PDT)
Date: Mon, 12 Apr 2021 13:08:38 -0700
From: Kees Cook <keescook@chromium.org>
To: Peter Zijlstra <peterz@infradead.org>
Message-ID: <202104121306.3A73BEB0A5@keescook>
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

For example, switch to returning bad addr through verify_page_range(),
or have a by-reference value, etc:

	unsigned long failed;

	failed = verify_page_range(current->mm< addr, len, check_present_pte);
	if (failed) {
  		pr_err("missing PTE:%lx\n",
  		       (addr - failed) >> PAGE_SHIFT);


-- 
Kees Cook
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
