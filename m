Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7979D51235F
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Apr 2022 22:04:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCDAC10E377;
	Wed, 27 Apr 2022 20:04:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7469510E377
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Apr 2022 20:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1651089844;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5bCkYEOsNHgNL9DAc6eiIfRMxj3itayT5GreRyCWKFU=;
 b=hXvZ0Ik9z7z4FXVwKdeR5uavEXnFJK72wKmNW7wVLiW654mw4fkBSiNcPQamO3+s3v2VMf
 u+Jdw51U+V14WHNPQcEYMBwKTQ22k1PxWIEPS44qoo/jF154Gygip8vemiW6n5MYQOnkgJ
 JKmuXeQ9k7zClrojeIVev6e554sBYYY=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-202-gBR3848rPtKLahtijeTJ8g-1; Wed, 27 Apr 2022 16:03:59 -0400
X-MC-Unique: gBR3848rPtKLahtijeTJ8g-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
 [10.11.54.5])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BF502811E75;
 Wed, 27 Apr 2022 20:03:57 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.40.192.41])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5699B9E84;
 Wed, 27 Apr 2022 20:03:52 +0000 (UTC)
From: Maxim Levitsky <mlevitsk@redhat.com>
To: kvm@vger.kernel.org
Date: Wed, 27 Apr 2022 23:03:01 +0300
Message-Id: <20220427200314.276673-7-mlevitsk@redhat.com>
In-Reply-To: <20220427200314.276673-1-mlevitsk@redhat.com>
References: <20220427200314.276673-1-mlevitsk@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
Subject: [Intel-gfx] [RFC PATCH v3 06/19] KVM: x86: mmu: add gfn_in_memslot
 helper
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
Cc: Wanpeng Li <wanpengli@tencent.com>, David Airlie <airlied@linux.ie>,
 Dave Hansen <dave.hansen@linux.intel.com>, dri-devel@lists.freedesktop.org,
 "H. Peter Anvin" <hpa@zytor.com>, Brijesh Singh <brijesh.singh@amd.com>,
 Joerg Roedel <joro@8bytes.org>, x86@kernel.org,
 Maxim Levitsky <mlevitsk@redhat.com>, Ingo Molnar <mingo@redhat.com>,
 Tom Lendacky <thomas.lendacky@amd.com>, intel-gfx@lists.freedesktop.org,
 Borislav Petkov <bp@alien8.de>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, intel-gvt-dev@lists.freedesktop.org,
 Jim Mattson <jmattson@google.com>, Sean Christopherson <seanjc@google.com>,
 linux-kernel@vger.kernel.org, Paolo Bonzini <pbonzini@redhat.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a tiny refactoring, and can be useful to check
if a GPA/GFN is within a memslot a bit more cleanly.

Signed-off-by: Maxim Levitsky <mlevitsk@redhat.com>
---
 include/linux/kvm_host.h | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/include/linux/kvm_host.h b/include/linux/kvm_host.h
index 252ee4a61b58b..12e261559070b 100644
--- a/include/linux/kvm_host.h
+++ b/include/linux/kvm_host.h
@@ -1580,6 +1580,13 @@ int kvm_request_irq_source_id(struct kvm *kvm);
 void kvm_free_irq_source_id(struct kvm *kvm, int irq_source_id);
 bool kvm_arch_irqfd_allowed(struct kvm *kvm, struct kvm_irqfd *args);
 
+
+static inline bool gfn_in_memslot(struct kvm_memory_slot *slot, gfn_t gfn)
+{
+	return (gfn >= slot->base_gfn && gfn < slot->base_gfn + slot->npages);
+}
+
+
 /*
  * Returns a pointer to the memslot if it contains gfn.
  * Otherwise returns NULL.
@@ -1590,12 +1597,13 @@ try_get_memslot(struct kvm_memory_slot *slot, gfn_t gfn)
 	if (!slot)
 		return NULL;
 
-	if (gfn >= slot->base_gfn && gfn < slot->base_gfn + slot->npages)
+	if (gfn_in_memslot(slot, gfn))
 		return slot;
 	else
 		return NULL;
 }
 
+
 /*
  * Returns a pointer to the memslot that contains gfn. Otherwise returns NULL.
  *
-- 
2.26.3

