Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55EA65302F4
	for <lists+intel-gfx@lfdr.de>; Sun, 22 May 2022 14:13:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 284D910E90F;
	Sun, 22 May 2022 12:13:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEB8010E90F
 for <intel-gfx@lists.freedesktop.org>; Sun, 22 May 2022 12:13:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1653221589;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=MgC5JNYrsgqgs2qTUiLYfjxLufYrNUR4cj0BHzuGBF0=;
 b=Z8ehBnUl6iyqiOFS4dmxVXQxJnK39Zy8m8mIveMbABaTACUFdRM3Zy+4qx62D5zrJ4G/xr
 DPyO2UeqZBCtwChzS4G4DWpNKB25j1p3O9h7zOPcMo3CCT430SjhbWDhD0sd6MJJoNLdwl
 GOy/Z78QzubDJL1Ij7xSenv/+sbp6fU=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-381-iLoXoZYkOo6_1bgTYeSohw-1; Sun, 22 May 2022 08:13:05 -0400
X-MC-Unique: iLoXoZYkOo6_1bgTYeSohw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
 [10.11.54.2])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6A6EF801210;
 Sun, 22 May 2022 12:13:04 +0000 (UTC)
Received: from starship (unknown [10.40.192.55])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4F17F40D2821;
 Sun, 22 May 2022 12:12:57 +0000 (UTC)
Message-ID: <f7ef15598cf350f8c5ec8d58c8e2eb51b48c48df.camel@redhat.com>
From: Maxim Levitsky <mlevitsk@redhat.com>
To: Sean Christopherson <seanjc@google.com>
Date: Sun, 22 May 2022 15:12:56 +0300
In-Reply-To: <YoZzx6f1XBWL3i8F@google.com>
References: <20220427200314.276673-1-mlevitsk@redhat.com>
 <20220427200314.276673-7-mlevitsk@redhat.com> <YoZzx6f1XBWL3i8F@google.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.5 (3.36.5-2.fc32) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
Subject: Re: [Intel-gfx] [RFC PATCH v3 06/19] KVM: x86: mmu: add
 gfn_in_memslot helper
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
 David Airlie <airlied@linux.ie>, Dave Hansen <dave.hansen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, "H. Peter Anvin" <hpa@zytor.com>,
 Brijesh Singh <brijesh.singh@amd.com>, Joerg Roedel <joro@8bytes.org>,
 x86@kernel.org, Ingo Molnar <mingo@redhat.com>,
 Tom Lendacky <thomas.lendacky@amd.com>, intel-gfx@lists.freedesktop.org,
 Borislav Petkov <bp@alien8.de>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, intel-gvt-dev@lists.freedesktop.org,
 Jim Mattson <jmattson@google.com>, linux-kernel@vger.kernel.org,
 Paolo Bonzini <pbonzini@redhat.com>, Vitaly Kuznetsov <vkuznets@redhat.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 2022-05-19 at 16:43 +0000, Sean Christopherson wrote:
> On Wed, Apr 27, 2022, Maxim Levitsky wrote:
> > This is a tiny refactoring, and can be useful to check
> > if a GPA/GFN is within a memslot a bit more cleanly.
> 
> This doesn't explain the actual motivation, which is to use the new helper from
> arch code.
I'll add this in the next version
> 
> > Signed-off-by: Maxim Levitsky <mlevitsk@redhat.com>
> > ---
> >  include/linux/kvm_host.h | 10 +++++++++-
> >  1 file changed, 9 insertions(+), 1 deletion(-)
> > 
> > diff --git a/include/linux/kvm_host.h b/include/linux/kvm_host.h
> > index 252ee4a61b58b..12e261559070b 100644
> > --- a/include/linux/kvm_host.h
> > +++ b/include/linux/kvm_host.h
> > @@ -1580,6 +1580,13 @@ int kvm_request_irq_source_id(struct kvm *kvm);
> >  void kvm_free_irq_source_id(struct kvm *kvm, int irq_source_id);
> >  bool kvm_arch_irqfd_allowed(struct kvm *kvm, struct kvm_irqfd *args);
> >  
> > +
> > +static inline bool gfn_in_memslot(struct kvm_memory_slot *slot, gfn_t gfn)
> > +{
> > +	return (gfn >= slot->base_gfn && gfn < slot->base_gfn + slot->npages);
> > +}
> > +
> 
> Spurious newline.
> 
> > +
> >  /*
> >   * Returns a pointer to the memslot if it contains gfn.
> >   * Otherwise returns NULL.
> > @@ -1590,12 +1597,13 @@ try_get_memslot(struct kvm_memory_slot *slot, gfn_t gfn)
> >  	if (!slot)
> >  		return NULL;
> >  
> > -	if (gfn >= slot->base_gfn && gfn < slot->base_gfn + slot->npages)
> > +	if (gfn_in_memslot(slot, gfn))
> >  		return slot;
> >  	else
> >  		return NULL;
> 
> At this point, maybe:

No objections.

Thanks for the review.

Best regards,
	Maxim Levitsky

> 
> 	if (!slot || !gfn_in_memslot(slot, gfn))
> 		return NULL;
> 
> 	return slot;
> 
> >  }
> >  
> > +
> >  /*
> >   * Returns a pointer to the memslot that contains gfn. Otherwise returns NULL.
> >   *
> > -- 
> > 2.26.3
> > 


