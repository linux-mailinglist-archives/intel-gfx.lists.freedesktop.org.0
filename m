Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8998D5301F2
	for <lists+intel-gfx@lfdr.de>; Sun, 22 May 2022 11:02:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 648F910E996;
	Sun, 22 May 2022 09:02:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 956C310E996
 for <intel-gfx@lists.freedesktop.org>; Sun, 22 May 2022 09:02:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1653210128;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=lHhQz7yGeH9M0bT14FqcQt3xWJJwKp6CTxN9gSJseho=;
 b=H0xEvfOiBViFkXKH417zv2cwyPNJUwRPgatk00dU3lXGcTsLHgA+LOkKwIcyLSrtDR6Ux0
 agq8ymaJaxg8nA8UULrfPAUJkB3n+UyDtkCOW2C73VsTiOREOOyAXOWs9rpoydxM2POJtl
 yXYDcZtV9TjEOikDrskYj6QEdP4Xfi4=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-344-xF3jqyc_NQ-5Tgbu_BvSSQ-1; Sun, 22 May 2022 05:02:05 -0400
X-MC-Unique: xF3jqyc_NQ-5Tgbu_BvSSQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
 [10.11.54.1])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2421D3C02B60;
 Sun, 22 May 2022 09:02:04 +0000 (UTC)
Received: from starship (unknown [10.40.192.55])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 01D1640CF8E7;
 Sun, 22 May 2022 09:01:56 +0000 (UTC)
Message-ID: <d1df82a17e6e89ab58d5f6aa911ee2d532efee31.camel@redhat.com>
From: Maxim Levitsky <mlevitsk@redhat.com>
To: Sean Christopherson <seanjc@google.com>
Date: Sun, 22 May 2022 12:01:55 +0300
In-Reply-To: <YoZr9wC2KjTFHrQ7@google.com>
References: <20220427200314.276673-1-mlevitsk@redhat.com>
 <20220427200314.276673-4-mlevitsk@redhat.com> <YoZr9wC2KjTFHrQ7@google.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.5 (3.36.5-2.fc32) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
Subject: Re: [Intel-gfx] [RFC PATCH v3 03/19] KVM: x86: SVM: remove avic's
 broken code that updated APIC ID
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

On Thu, 2022-05-19 at 16:10 +0000, Sean Christopherson wrote:
> On Wed, Apr 27, 2022, Maxim Levitsky wrote:
> > AVIC is now inhibited if the guest changes apic id, thus remove
> > that broken code.
> 
> Can you explicitly call out what's broken?  Just something short on the code not
> handling the scenario where APIC ID is changed back to vcpu_id to help future
> archaeologists.  I forget if there are other bugs...
> 


Well, the avic_handle_apic_id_update is called each time the AVIC is uninhibited,
because while it is inhibited, the AVIC code doesn't track changes to APIC ID and such.

Also there are many ways it is broken for example

1. a CPU can't move its APIC ID to a free slot due to (!new) check

2. If APIC ID is moved to a used slot, then the CPU that used that overwritten
slot can't correctly move it, since its now not its slot, not to mention races.


BTW, if you see a value in it, I can fix this code instead - a lock + going over all the apic ids,
should be quite easy to implement. In case of two vCPUs using the same APIC ID,
I can write non present entry to the table, so none will be able to be addressed,
hoping that the situation is only temporary.

Same can be done for IPIv.

Best regards,
	Maxim Levitsky

