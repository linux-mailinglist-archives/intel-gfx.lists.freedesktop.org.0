Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C74143B2C02
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 11:58:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 428C66EA6E;
	Thu, 24 Jun 2021 09:58:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com
 [IPv6:2607:f8b0:4864:20::435])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7203D6EA6C;
 Thu, 24 Jun 2021 09:58:03 +0000 (UTC)
Received: by mail-pf1-x435.google.com with SMTP id s14so3443612pfg.0;
 Thu, 24 Jun 2021 02:58:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:subject:to:cc:references:in-reply-to:mime-version
 :message-id:content-transfer-encoding;
 bh=2/FXkDvvz78LZzi8vEuw9P0gxvIPqn8+9Qh994D56qo=;
 b=EhX2h/EGnTWqdqRQbpZlpJcgT0oJJ6o7Nef8q7EtPvI99smF5fr4TIG1Xp5CmTthMl
 XHQzIJWggbxJUXpq8OIPTnYOso57K6OBKZR9lvcFT5+8SBJA9849ahv3W1ndrCYtoccT
 yygIYTNJlnGOy5EhAkMecjcGkX/PpQmk6jKwKuAM0vg6/CjPiKQtp4B/woWoN5Oxyu7M
 ua8ZUETzbjTOqOpCOLZ+ZXZ4cbXcI88NdWfpPkU+Dnz/3z1CLTZvVnhoG0DpsDAi9bV1
 nK9pW2bxw2DMCvsnbAXlJB/lKwAPvP15NgJgI5cnQ6vQYvzhGuulMUnoZMx6s+4VaanO
 Eqdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:to:cc:references:in-reply-to
 :mime-version:message-id:content-transfer-encoding;
 bh=2/FXkDvvz78LZzi8vEuw9P0gxvIPqn8+9Qh994D56qo=;
 b=NqtVuGKe9/9HL3gtQfc6MptGDoulqDT5jEjl0+qFxTMhrZSDmplCFu1ANMv9dyTEaG
 az6TT1F08JcB7zubBEpog5Zf6TDXpl9LzXP2rp0G6DFE4Z3Yqy/ERBFlVFxiRAkLycK0
 M0JcOjGV0CaYUq+on1ODgl8BYTSRPcd0b4PwJwaLE0D501MotbNeEp/d+Cjr+6AU983S
 eK+TYwYrD5xUVmkeNXVpamr042Cx/7KRvJhsnAcc0/Lqe4GVoiAyEeAoNJ54EsadM5dw
 TdHJcHmPMchCmp84L/277YnpdK12a9CtULkmaUyNqoRdHiUKPdp+zaqfUMpUm8diCqFo
 /6ug==
X-Gm-Message-State: AOAM5331ouQjoUXx26FEttY8OtjTAR7X491ph+SgUNynG33TemHN9bXF
 EaU4ahZ5Yi5ISWEWBIWfVc0=
X-Google-Smtp-Source: ABdhPJzzKwhLHCAEARj7N7XbHWSLsSDNrl/BU7M36fXftqZpKf9BHg/7Rmx6MuG9ZeVpPhgC2xWSpQ==
X-Received: by 2002:a62:1857:0:b029:302:fb56:df52 with SMTP id
 84-20020a6218570000b0290302fb56df52mr4317733pfy.3.1624528683047; 
 Thu, 24 Jun 2021 02:58:03 -0700 (PDT)
Received: from localhost (60-242-147-73.tpgi.com.au. [60.242.147.73])
 by smtp.gmail.com with ESMTPSA id y20sm2759510pfb.207.2021.06.24.02.58.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Jun 2021 02:58:02 -0700 (PDT)
Date: Thu, 24 Jun 2021 19:57:57 +1000
From: Nicholas Piggin <npiggin@gmail.com>
To: Aleksandar Markovic <aleksandar.qemu.devel@gmail.com>, Huacai Chen
 <chenhuacai@kernel.org>, Marc Zyngier <maz@kernel.org>, Paul Mackerras
 <paulus@ozlabs.org>, Paolo Bonzini <pbonzini@redhat.com>, David Stevens
 <stevensd@chromium.org>, Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang
 <zhi.a.wang@intel.com>
References: <20210624035749.4054934-1-stevensd@google.com>
 <20210624035749.4054934-3-stevensd@google.com>
 <1624524331.zsin3qejl9.astroid@bobo.none>
 <201b68a7-10ea-d656-0c1e-5511b1f22674@redhat.com>
In-Reply-To: <201b68a7-10ea-d656-0c1e-5511b1f22674@redhat.com>
MIME-Version: 1.0
Message-Id: <1624528342.s2ezcyp90x.astroid@bobo.none>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Excerpts from Paolo Bonzini's message of June 24, 2021 7:42 pm:
> On 24/06/21 10:52, Nicholas Piggin wrote:
>>> For now, wrap all calls to gfn_to_pfn functions in the new helper
>>> function. Callers which don't need the page struct will be updated in
>>> follow-up patches.
>> Hmm. You mean callers that do need the page will be updated? Normally
>> if there will be leftover users that don't need the struct page then
>> you would go the other way and keep the old call the same, and add a new
>> one (gfn_to_pfn_page) just for those that need it.
> 
> Needing kvm_pfn_page_unwrap is a sign that something might be buggy, so 
> it's a good idea to move the short name to the common case and the ugly 
> kvm_pfn_page_unwrap(gfn_to_pfn(...)) for the weird one.  In fact I'm not 
> sure there should be any kvm_pfn_page_unwrap in the end.

If all callers were updated that is one thing, but from the changelog
it sounds like that would not happen and there would be some gfn_to_pfn
users left over.

But yes in the end you would either need to make gfn_to_pfn never return
a page found via follow_pte, or change all callers to the new way. If 
the plan is for the latter then I guess that's fine.

Thanks,
Nick
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
