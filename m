Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA4B3B2C33
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 12:14:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 642916EAA2;
	Thu, 24 Jun 2021 10:14:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DEE06EB4B
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Jun 2021 10:14:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1624529640;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qgeFYkU0pR1Q1xO1W6kYeH0XfpPQ577wwQcLewdoy9I=;
 b=C4fJMYlyXOYFpPhsPy1vz2dgiKNtgYeXnf2Y6/fmC4MIieSXk2suAoRLv2d06iqAl6PY01
 3Nz1og9YsiGkL3UJjq91DaNiVB2jGqB5uoOuS6mIom482jv7bm5fjAjBzrAWCmphS38SVN
 2lIADXMQJUlWrTg6XHU3hw4qPYrlkfY=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-493-BO7izrP_OiKcuiVNr3Zouw-1; Thu, 24 Jun 2021 06:13:56 -0400
X-MC-Unique: BO7izrP_OiKcuiVNr3Zouw-1
Received: by mail-wr1-f72.google.com with SMTP id
 l13-20020adfe9cd0000b0290119a0645c8fso2015645wrn.8
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Jun 2021 03:13:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=qgeFYkU0pR1Q1xO1W6kYeH0XfpPQ577wwQcLewdoy9I=;
 b=FTjhTAKKQVpULOvCCYJ66vpXcuhxIjEx5b2Ln5WZA0sAvtCY3C5n9ccHSCWhRyZQyR
 AT93EXj/RGMAIcmRZmyUIkXQYAJlz35ZDPTRDmN4i2CuWQM7RA9V08mk3TlDRL7bIo+b
 2u6unCLIkXTP6LZCZ6c/alp0NjbvNN70fB17TZhWHEaRceYObh07lruvyuvqv8NobTZL
 1nU2h5SWeKvcubk6c5xrLPx90+mM934ep/9tvQ8BXkDDm2vQIDu/y1F6Ue6xesKOQkgT
 aH7vNS3YnrYNG2WK1hp8YPGfSnm/iYmXASieJsbwftrhxHck1Pfxhqm1LSGPe3QKnbNr
 936w==
X-Gm-Message-State: AOAM532i81rplyuZ/Hqs2V9kzfBy6EWSrsVG0fTnHLqJEcMpQy524TY2
 uqKmcqD5m5RGg/Mz3Nb+YLRhJoaUGxJeKBHKVFqi9aa+xbZeBcV2neaYVhpLsTzHewEhtp6vmku
 DLGZnURrNcYHbOaPr4Nw+XIyVsTv9
X-Received: by 2002:adf:e80c:: with SMTP id o12mr3526089wrm.425.1624529635772; 
 Thu, 24 Jun 2021 03:13:55 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwystGI+L9gOrbELlIiJWJblqcplIdniKN++kkqVaKxE8NfJktozv1x7SoGv2eSTMa2UzUKpw==
X-Received: by 2002:adf:e80c:: with SMTP id o12mr3526053wrm.425.1624529635607; 
 Thu, 24 Jun 2021 03:13:55 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:c8dd:75d4:99ab:290a?
 ([2001:b07:6468:f312:c8dd:75d4:99ab:290a])
 by smtp.gmail.com with ESMTPSA id q19sm8207562wmc.44.2021.06.24.03.13.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Jun 2021 03:13:55 -0700 (PDT)
To: Nicholas Piggin <npiggin@gmail.com>,
 Aleksandar Markovic <aleksandar.qemu.devel@gmail.com>,
 Huacai Chen <chenhuacai@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Paul Mackerras <paulus@ozlabs.org>, David Stevens <stevensd@chromium.org>,
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
References: <20210624035749.4054934-1-stevensd@google.com>
 <20210624035749.4054934-3-stevensd@google.com>
 <1624524331.zsin3qejl9.astroid@bobo.none>
 <201b68a7-10ea-d656-0c1e-5511b1f22674@redhat.com>
 <1624528342.s2ezcyp90x.astroid@bobo.none>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <bbbd7334-5311-a7b4-5dec-8bc606f1d6c9@redhat.com>
Date: Thu, 24 Jun 2021 12:13:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <1624528342.s2ezcyp90x.astroid@bobo.none>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=pbonzini@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/6] KVM: mmu: also return page from
 gfn_to_pfn
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
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>, intel-gfx@lists.freedesktop.org,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, kvmarm@lists.cs.columbia.edu,
 Will Deacon <will@kernel.org>, James Morse <james.morse@arm.com>,
 kvm-ppc@vger.kernel.org, Sean Christopherson <seanjc@google.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, linux-mips@vger.kernel.org,
 intel-gvt-dev@lists.freedesktop.org, Joerg Roedel <joro@8bytes.org>,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 24/06/21 11:57, Nicholas Piggin wrote:
>> Needing kvm_pfn_page_unwrap is a sign that something might be buggy, so
>> it's a good idea to move the short name to the common case and the ugly
>> kvm_pfn_page_unwrap(gfn_to_pfn(...)) for the weird one.  In fact I'm not
>> sure there should be any kvm_pfn_page_unwrap in the end.
>
> If all callers were updated that is one thing, but from the changelog
> it sounds like that would not happen and there would be some gfn_to_pfn
> users left over.

In this patches there are, so yeah the plan is to always change the 
callers to the new way.

> But yes in the end you would either need to make gfn_to_pfn never return
> a page found via follow_pte, or change all callers to the new way. If
> the plan is for the latter then I guess that's fine.

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
