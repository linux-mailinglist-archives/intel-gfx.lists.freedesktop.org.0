Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB3DA509668
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Apr 2022 07:13:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0168C10F360;
	Thu, 21 Apr 2022 05:13:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B987710E42F
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Apr 2022 05:13:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1650518011;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=MCnDcG50OJVRyX/LehdalM91tRLRSat9OLrAV6Orn+A=;
 b=XbyJDsiKJwR6A8mI7V/c4oi9NvuXHJKafzlk1Rtu+PaiW57bL8SL21k2CXRGnCSsoerq0V
 R6XVrxDb//ULzn3pP7WCBZZ3UFnbHWbvXQM4QWHoxO8Z1WQrPibnoLYMFV940BvhaOC524
 5WU7KiblkZ56x6LI8uuR2rcXUarPiEY=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-391-fjwQIF29PQSTCAlkuArcbQ-1; Thu, 21 Apr 2022 01:13:27 -0400
X-MC-Unique: fjwQIF29PQSTCAlkuArcbQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6543980005D;
 Thu, 21 Apr 2022 05:13:26 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.40.194.231])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 112E2145BA5A;
 Thu, 21 Apr 2022 05:13:20 +0000 (UTC)
From: Maxim Levitsky <mlevitsk@redhat.com>
To: kvm@vger.kernel.org
Date: Thu, 21 Apr 2022 08:12:40 +0300
Message-Id: <20220421051244.187733-7-mlevitsk@redhat.com>
In-Reply-To: <20220421051244.187733-1-mlevitsk@redhat.com>
References: <20220421051244.187733-1-mlevitsk@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
Subject: [Intel-gfx] [RFC PATCH v2 06/10] KVM: x86: SVM: remove avic's
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
Cc: Wanpeng Li <wanpengli@tencent.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, "H. Peter Anvin" <hpa@zytor.com>,
 Joerg Roedel <joro@8bytes.org>, x86@kernel.org,
 Maxim Levitsky <mlevitsk@redhat.com>, Ingo Molnar <mingo@redhat.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, intel-gfx@lists.freedesktop.org,
 Borislav Petkov <bp@alien8.de>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, intel-gvt-dev@lists.freedesktop.org,
 Jim Mattson <jmattson@google.com>, Sean Christopherson <seanjc@google.com>,
 linux-kernel@vger.kernel.org, Paolo Bonzini <pbonzini@redhat.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Now that KVM doesn't allow to change APIC ID in case AVIC is
enabled, remove buggy AVIC code that tried to do so.

Signed-off-by: Maxim Levitsky <mlevitsk@redhat.com>
---
 arch/x86/kvm/svm/avic.c | 35 -----------------------------------
 1 file changed, 35 deletions(-)

diff --git a/arch/x86/kvm/svm/avic.c b/arch/x86/kvm/svm/avic.c
index 9b859218af59c..f375ca1d6518e 100644
--- a/arch/x86/kvm/svm/avic.c
+++ b/arch/x86/kvm/svm/avic.c
@@ -442,35 +442,6 @@ static int avic_handle_ldr_update(struct kvm_vcpu *vcpu)
 	return ret;
 }
 
-static int avic_handle_apic_id_update(struct kvm_vcpu *vcpu)
-{
-	u64 *old, *new;
-	struct vcpu_svm *svm = to_svm(vcpu);
-	u32 id = kvm_xapic_id(vcpu->arch.apic);
-
-	if (vcpu->vcpu_id == id)
-		return 0;
-
-	old = avic_get_physical_id_entry(vcpu, vcpu->vcpu_id);
-	new = avic_get_physical_id_entry(vcpu, id);
-	if (!new || !old)
-		return 1;
-
-	/* We need to move physical_id_entry to new offset */
-	*new = *old;
-	*old = 0ULL;
-	to_svm(vcpu)->avic_physical_id_cache = new;
-
-	/*
-	 * Also update the guest physical APIC ID in the logical
-	 * APIC ID table entry if already setup the LDR.
-	 */
-	if (svm->ldr_reg)
-		avic_handle_ldr_update(vcpu);
-
-	return 0;
-}
-
 static void avic_handle_dfr_update(struct kvm_vcpu *vcpu)
 {
 	struct vcpu_svm *svm = to_svm(vcpu);
@@ -489,10 +460,6 @@ static int avic_unaccel_trap_write(struct kvm_vcpu *vcpu)
 				AVIC_UNACCEL_ACCESS_OFFSET_MASK;
 
 	switch (offset) {
-	case APIC_ID:
-		if (avic_handle_apic_id_update(vcpu))
-			return 0;
-		break;
 	case APIC_LDR:
 		if (avic_handle_ldr_update(vcpu))
 			return 0;
@@ -584,8 +551,6 @@ int avic_init_vcpu(struct vcpu_svm *svm)
 
 void avic_apicv_post_state_restore(struct kvm_vcpu *vcpu)
 {
-	if (avic_handle_apic_id_update(vcpu) != 0)
-		return;
 	avic_handle_dfr_update(vcpu);
 	avic_handle_ldr_update(vcpu);
 }
-- 
2.26.3

