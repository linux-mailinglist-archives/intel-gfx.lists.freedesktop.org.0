Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 294AF3B2C44
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 12:17:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F25996EB4E;
	Thu, 24 Jun 2021 10:17:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 287896EB4D
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Jun 2021 10:17:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1624529859;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4frsi0H+HBjHeCdKISuXJMG773wuFNrwEMxUF4xqOQU=;
 b=fZxrt7Lezc/iAa63H6IbCRXWQDJNj5gPuzvDUmv/ZjFqIaMfKVckXsPdadGmcLJyGV5Lle
 XTKS1glQqZH7p0pORUVVUlqcgXJrPABr+3q5GTXUj4N8wUimqffOA9DT32oQ5sc7euhSa2
 g3/xsyNIoXy8VBsxpyRdZ1XHKD/xGkI=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-263-detZH5B_O3iYpAHAeCllng-1; Thu, 24 Jun 2021 06:17:35 -0400
X-MC-Unique: detZH5B_O3iYpAHAeCllng-1
Received: by mail-ej1-f71.google.com with SMTP id
 p20-20020a1709064994b02903cd421d7803so1814000eju.22
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Jun 2021 03:17:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=4frsi0H+HBjHeCdKISuXJMG773wuFNrwEMxUF4xqOQU=;
 b=mx9cuqUwlcfWjfxQczS0/hg7xxK8eFjt2O8EMcZYlEArMH5loA2F+gmnCz9XZ64WOy
 IqsBrybLEcvkOOR0mbREY+HjfhztqG25OZuH+mkUo66aeDgpCD2Bf07SqweHJp9lHJv6
 APFH2k30BxRIDuIEOf+6UU+FaBQwY6tfD99Bm5jxjmneKZavUPIrohwRQjaR+JOCzICT
 A5Xs01/3Q+feSozu48m3Wv+7/Q7E7Uxz4JucDh0nUw5nwWLsd5rnWSQscHczY+oGloMm
 TeLwUXAuQiWlDntqCTJnxvBZ9wRBQGwyiXlJ0IzR2QDb9O8KzkHAGVP1Ix2oGqU9l62q
 8ayA==
X-Gm-Message-State: AOAM533P7I6EmMr519N43u3m1/9DVaUyLFBvhtu+9HaLuZSkGX6sNYhT
 UcWwErmUK2mufLLuxVSiLfM2pg9hz+8klVAbEOdtZlPt38lYyubMyXXklQR2xSlxmLWJCSbD1O3
 oeHlQpgylTrwgBL63Yl54KPEBtQD8
X-Received: by 2002:a17:906:b254:: with SMTP id
 ce20mr4621416ejb.480.1624529854690; 
 Thu, 24 Jun 2021 03:17:34 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzxC6TqcAfZORfwKXJXCm8bql8vynsp6j3JYon1fQgnkpoL4xlG5zu/uVtJRITtzGjbxU3KFw==
X-Received: by 2002:a17:906:b254:: with SMTP id
 ce20mr4621398ejb.480.1624529854552; 
 Thu, 24 Jun 2021 03:17:34 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:c8dd:75d4:99ab:290a?
 ([2001:b07:6468:f312:c8dd:75d4:99ab:290a])
 by smtp.gmail.com with ESMTPSA id x21sm1600772edv.97.2021.06.24.03.17.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Jun 2021 03:17:33 -0700 (PDT)
To: Marc Zyngier <maz@kernel.org>, Nicholas Piggin <npiggin@gmail.com>
References: <20210624035749.4054934-1-stevensd@google.com>
 <20210624035749.4054934-4-stevensd@google.com>
 <1624524744.2sr7o7ix86.astroid@bobo.none> <87mtrfinks.wl-maz@kernel.org>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <0b7f9c30-eb12-35c5-191f-0e8e469e1b88@redhat.com>
Date: Thu, 24 Jun 2021 12:17:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <87mtrfinks.wl-maz@kernel.org>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=pbonzini@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/6] KVM: x86/mmu: avoid struct page in MMU
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
 dri-devel@lists.freedesktop.org, linux-mips@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, Alexandru Elisei <alexandru.elisei@arm.com>,
 Joerg Roedel <joro@8bytes.org>, Huacai Chen <chenhuacai@kernel.org>,
 Aleksandar Markovic <aleksandar.qemu.devel@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, intel-gfx@lists.freedesktop.org,
 kvm-ppc@vger.kernel.org, intel-gvt-dev@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>,
 Sean Christopherson <seanjc@google.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, David Stevens <stevensd@chromium.org>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, linuxppc-dev@lists.ozlabs.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 24/06/21 12:06, Marc Zyngier wrote:
> On Thu, 24 Jun 2021 09:58:00 +0100,
> Nicholas Piggin <npiggin@gmail.com> wrote:
>>
>> Excerpts from David Stevens's message of June 24, 2021 1:57 pm:
>>> From: David Stevens <stevensd@chromium.org>
>>>   out_unlock:
>>>   	if (is_tdp_mmu_root(vcpu->kvm, vcpu->arch.mmu->root_hpa))
>>>   		read_unlock(&vcpu->kvm->mmu_lock);
>>>   	else
>>>   		write_unlock(&vcpu->kvm->mmu_lock);
>>> -	kvm_release_pfn_clean(pfn);
>>> +	if (pfnpg.page)
>>> +		put_page(pfnpg.page);
>>>   	return r;
>>>   }
>>
>> How about
>>
>>    kvm_release_pfn_page_clean(pfnpg);
> 
> I'm not sure. I always found kvm_release_pfn_clean() ugly, because it
> doesn't mark the page 'clean'. I find put_page() more correct.
> 
> Something like 'kvm_put_pfn_page()' would make more sense, but I'm so
> bad at naming things that I could just as well call it 'bob()'.

The best way to go would be to get rid of kvm_release_pfn_clean() and 
always go through a pfn_page.  Then we could or could not introduce 
wrappers kvm_put_pfn_page{,_dirty}.

I think for now it's best to limit the churn since these patches will go 
in the stable releases too, and clean up the resulting API once we have 
a clear idea of how all architectures are using kvm_pfn_page.

Paolo

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
