Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A623B2E65
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 14:00:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 772BF6EB62;
	Thu, 24 Jun 2021 12:00:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 557E86EB62
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Jun 2021 12:00:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1624536034;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=avGojGcO92NTULuhKarR1IMbTxAu/KipAq8BEw7I0Ko=;
 b=BX6OlthUO5j+LNUnoustwakKvIK4PY6Naj1+gSOYqusiXAgA3y09k6ti9rB1+EIt3eqGu6
 h6AMUxLBSwL43V6uk7xxDAiKi5ej5OQCqx1jZrHJjd9eW+PNfpVr9vOg80bkuha6TmoG3O
 S8GCTAF9AlCUpR4HXvaqKYllHnHs8tY=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-487-hKcHYzKwNjWvz3ISKQSl7Q-1; Thu, 24 Jun 2021 08:00:31 -0400
X-MC-Unique: hKcHYzKwNjWvz3ISKQSl7Q-1
Received: by mail-wm1-f70.google.com with SMTP id
 i24-20020a1c54180000b02901dbcf5d699eso552998wmb.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Jun 2021 05:00:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:references:from:subject:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=avGojGcO92NTULuhKarR1IMbTxAu/KipAq8BEw7I0Ko=;
 b=V9U47LdmSCy3gWj5TnuAz/xVHKyZPtapA2kFXFloZDvNzxgZlkVOtz6RHSYnxEr+Td
 H61M1+yv9KlJ6/pfl/4bz+5E1hoqbctL7T2pNaYKaX4Mjw+37kaHiYeBpsVsILHFVyIq
 hoRMa0sezhJm7HGJxOkz3qSUhe93HxbJLPZ9fsSD8+mG/yXHXJdttyl7r2M6TJQLCeQ/
 gYwTg5kVbhvP6KjJMZdM7/9DNy/RpeMPSQydoqzRiXVfL/lsTNye8uWQdvYw7lfYBYve
 8ADGVjoWfcphbLfMyHbp0FutD1vnt1uJ3rqrZ3CUhF6TFzksKW6bfjjbji2LBhIQIZpL
 4RXA==
X-Gm-Message-State: AOAM531SgOl9t1LCYMfXZ4DB92ske74DdmbJTziRc170t0WuW9rhrYlZ
 EsvtnS8jFszCjGTE+hB+asuTMR8ztalDPAN3FWCbP/104VNfelnU4F75/lYTo1Qqz5UM5cCAc0t
 X1KeIfsUOWKt8H3BwLvK5fn2zA/Fc
X-Received: by 2002:a1c:f215:: with SMTP id s21mr3879312wmc.179.1624536030028; 
 Thu, 24 Jun 2021 05:00:30 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxXFCnAp+BCIAB50GwF3Py3d9h4g0enz3/eZSVNkNtDC1Z07h1ecnwnq+OHmfePVB6B9P4IuQ==
X-Received: by 2002:a1c:f215:: with SMTP id s21mr3879281wmc.179.1624536029808; 
 Thu, 24 Jun 2021 05:00:29 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:c8dd:75d4:99ab:290a?
 ([2001:b07:6468:f312:c8dd:75d4:99ab:290a])
 by smtp.gmail.com with ESMTPSA id o2sm3074141wrp.53.2021.06.24.05.00.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Jun 2021 05:00:29 -0700 (PDT)
To: Nicholas Piggin <npiggin@gmail.com>,
 Aleksandar Markovic <aleksandar.qemu.devel@gmail.com>,
 Huacai Chen <chenhuacai@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Paul Mackerras <paulus@ozlabs.org>, David Stevens <stevensd@chromium.org>,
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
References: <20210624035749.4054934-1-stevensd@google.com>
 <1624530624.8jff1f4u11.astroid@bobo.none>
 <1624534759.nj0ylor2eh.astroid@bobo.none>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <d06a8a55-bb9d-a6ef-21bb-0633b99a50d1@redhat.com>
Date: Thu, 24 Jun 2021 14:00:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <1624534759.nj0ylor2eh.astroid@bobo.none>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=pbonzini@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 0/6] KVM: Remove uses of struct page from
 x86 and arm64 MMU
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
Cc: Wanpeng Li <wanpengli@tencent.com>, kvm@vger.kernel.org,
 David Stevens <stevensd@google.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>, intel-gfx@lists.freedesktop.org,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, kvmarm@lists.cs.columbia.edu,
 Will Deacon <will@kernel.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 James Morse <james.morse@arm.com>, kvm-ppc@vger.kernel.org,
 Sean Christopherson <seanjc@google.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, linux-mips@vger.kernel.org,
 intel-gvt-dev@lists.freedesktop.org, Joerg Roedel <joro@8bytes.org>,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 24/06/21 13:42, Nicholas Piggin wrote:
> +static int kvm_try_get_pfn(kvm_pfn_t pfn)
> +{
> +	if (kvm_is_reserved_pfn(pfn))
> +		return 1;

So !pfn_valid would always return true.  Yeah, this should work and is 
certainly appealing!

Paolo


> +	return get_page_unless_zero(pfn_to_page(pfn));
> +}
> +
>   static int hva_to_pfn_remapped(struct vm_area_struct *vma,
>   			       unsigned long addr, bool *async,
>   			       bool write_fault, bool *writable,
> @@ -2104,13 +2111,21 @@ static int hva_to_pfn_remapped(struct vm_area_struct *vma,
>   	 * Whoever called remap_pfn_range is also going to call e.g.
>   	 * unmap_mapping_range before the underlying pages are freed,
>   	 * causing a call to our MMU notifier.
> +	 *
> +	 * Certain IO or PFNMAP mappings can be backed with valid
> +	 * struct pages, but be allocated without refcounting e.g.,
> +	 * tail pages of non-compound higher order allocations, which
> +	 * would then underflow the refcount when the caller does the
> +	 * required put_page. Don't allow those pages here.
>   	 */
> -	kvm_get_pfn(pfn);
> +	if (!kvm_try_get_pfn(pfn))
> +		r = -EFAULT;
>   
>   out:
>   	pte_unmap_unlock(ptep, ptl);
>   	*p_pfn = pfn;
> -	return 0;
> +
> +	return r;
>   }
>   
>   /*
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
