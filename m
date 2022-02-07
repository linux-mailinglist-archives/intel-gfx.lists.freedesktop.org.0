Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18ED64AC3BE
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Feb 2022 16:33:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F081112473;
	Mon,  7 Feb 2022 15:33:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE23B112464
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Feb 2022 15:33:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1644248022;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0YZKFPfPAlzbRhVzmbaqcoTuZ3BdIzpFOausE6A/ZGI=;
 b=SfSt4Sm3UYkFFFQtFWFcvTvyOUxWk4fDL2tNoe+zFPiK3mm0ZjA50OH44O97rCVNxkEHHp
 /l/9RtxTNkk1nwqK4/wx1hQ2SrXwrT5S0pi4ZHCMKdxXUeVsqRzTCJUBfi3jxTgFeA8T1w
 I0VX1s+tYhJw8I1+uv2Vbiaz+8QJlPo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-301-z8blMLWqNNKtRwtuJROlbw-1; Mon, 07 Feb 2022 10:33:41 -0500
X-MC-Unique: z8blMLWqNNKtRwtuJROlbw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 190331006AA9;
 Mon,  7 Feb 2022 15:33:38 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.40.192.15])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B75755E495;
 Mon,  7 Feb 2022 15:33:19 +0000 (UTC)
From: Maxim Levitsky <mlevitsk@redhat.com>
To: kvm@vger.kernel.org
Date: Mon,  7 Feb 2022 17:28:43 +0200
Message-Id: <20220207152847.836777-27-mlevitsk@redhat.com>
In-Reply-To: <20220207152847.836777-1-mlevitsk@redhat.com>
References: <20220207152847.836777-1-mlevitsk@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Subject: [Intel-gfx] [PATCH 26/30] KVM: x86: nSVM: implement nested vGIF
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
Cc: Dave Hansen <dave.hansen@linux.intel.com>,
 Wanpeng Li <wanpengli@tencent.com>, David Airlie <airlied@linux.ie>,
 "Chang S. Bae" <chang.seok.bae@intel.com>,
 "maintainer:X86 ARCHITECTURE 32-BIT AND 64-BIT" <x86@kernel.org>,
 "open list:X86 ARCHITECTURE 32-BIT AND 64-BIT" <linux-kernel@vger.kernel.org>,
 Maxim Levitsky <mlevitsk@redhat.com>, Tony Luck <tony.luck@intel.com>,
 "open list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>,
 Brijesh Singh <brijesh.singh@amd.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, Jim Mattson <jmattson@google.com>,
 "open list:INTEL GVT-g DRIVERS Intel GPU Virtualization"
 <intel-gvt-dev@lists.freedesktop.org>,
 "open list:INTEL DRM DRIVERS excluding Poulsbo, Moorestow..., 
 Joerg Roedel <joro@8bytes.org>, Borislav Petkov <bp@alien8.de>,
 Daniel Vetter <daniel@ffwll.ch>, \"H. Peter Anvin\" <hpa@zytor.com>,
 Ingo Molnar <mingo@redhat.com>, Sean Christopherson <seanjc@google.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Pawan Gupta <pawan.kumar.gupta@linux.intel.com>,
 Thomas Gleixner <tglx@linutronix.de>" <intel-gfx@lists.freedesktop.org>,
 Kan Liang <kan.liang@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In case L1 enables vGIF for L2, the L2 cannot affect L1's GIF, regardless
of STGI/CLGI intercepts, and since VM entry enables GIF, this means
that L1's GIF is always 1 while L2 is running.

Thus in this case leave L1's vGIF in vmcb01, while letting L2
control the vGIF thus implementing nested vGIF.

Also allow KVM to toggle L1's GIF during nested entry/exit
by always using vmcb01.

Signed-off-by: Maxim Levitsky <mlevitsk@redhat.com>
---
 arch/x86/kvm/svm/nested.c | 17 +++++++++++++----
 arch/x86/kvm/svm/svm.c    |  5 +++++
 arch/x86/kvm/svm/svm.h    | 25 +++++++++++++++++++++----
 3 files changed, 39 insertions(+), 8 deletions(-)

diff --git a/arch/x86/kvm/svm/nested.c b/arch/x86/kvm/svm/nested.c
index 601d38ae05cc6..a426d4d3dcd82 100644
--- a/arch/x86/kvm/svm/nested.c
+++ b/arch/x86/kvm/svm/nested.c
@@ -408,6 +408,10 @@ void nested_sync_control_from_vmcb02(struct vcpu_svm *svm)
 		 */
 		mask &= ~V_IRQ_MASK;
 	}
+
+	if (nested_vgif_enabled(svm))
+		mask |= V_GIF_MASK;
+
 	svm->nested.ctl.int_ctl        &= ~mask;
 	svm->nested.ctl.int_ctl        |= svm->vmcb->control.int_ctl & mask;
 }
@@ -573,10 +577,8 @@ static void nested_vmcb02_prepare_save(struct vcpu_svm *svm, struct vmcb *vmcb12
 
 static void nested_vmcb02_prepare_control(struct vcpu_svm *svm)
 {
-	const u32 int_ctl_vmcb01_bits =
-		V_INTR_MASKING_MASK | V_GIF_MASK | V_GIF_ENABLE_MASK;
-
-	const u32 int_ctl_vmcb12_bits = V_TPR_MASK | V_IRQ_INJECTION_BITS_MASK;
+	u32 int_ctl_vmcb01_bits = V_INTR_MASKING_MASK;
+	u32 int_ctl_vmcb12_bits = V_TPR_MASK | V_IRQ_INJECTION_BITS_MASK;
 
 	struct kvm_vcpu *vcpu = &svm->vcpu;
 
@@ -586,6 +588,13 @@ static void nested_vmcb02_prepare_control(struct vcpu_svm *svm)
 	 */
 
 
+
+
+	if (svm->vgif_enabled && (svm->nested.ctl.int_ctl & V_GIF_ENABLE_MASK))
+		int_ctl_vmcb12_bits |= (V_GIF_MASK | V_GIF_ENABLE_MASK);
+	else
+		int_ctl_vmcb01_bits |= (V_GIF_MASK | V_GIF_ENABLE_MASK);
+
 	/* Copied from vmcb01.  msrpm_base can be overwritten later.  */
 	svm->vmcb->control.nested_ctl = svm->vmcb01.ptr->control.nested_ctl;
 	svm->vmcb->control.iopm_base_pa = svm->vmcb01.ptr->control.iopm_base_pa;
diff --git a/arch/x86/kvm/svm/svm.c b/arch/x86/kvm/svm/svm.c
index e49043807ec44..1cf682d1553cc 100644
--- a/arch/x86/kvm/svm/svm.c
+++ b/arch/x86/kvm/svm/svm.c
@@ -4008,6 +4008,8 @@ static void svm_vcpu_after_set_cpuid(struct kvm_vcpu *vcpu)
 		svm->pause_threshold_enabled = false;
 	}
 
+	svm->vgif_enabled = vgif && guest_cpuid_has(vcpu, X86_FEATURE_VGIF);
+
 	svm_recalc_instruction_intercepts(vcpu, svm);
 
 	/* For sev guests, the memory encryption bit is not reserved in CR3.  */
@@ -4823,6 +4825,9 @@ static __init void svm_set_cpu_caps(void)
 		if (pause_filter_thresh)
 			kvm_cpu_cap_set(X86_FEATURE_PFTHRESHOLD);
 
+		if (vgif)
+			kvm_cpu_cap_set(X86_FEATURE_VGIF);
+
 		/* Nested VM can receive #VMEXIT instead of triggering #GP */
 		kvm_cpu_cap_set(X86_FEATURE_SVME_ADDR_CHK);
 	}
diff --git a/arch/x86/kvm/svm/svm.h b/arch/x86/kvm/svm/svm.h
index 297ec57f9941c..73cc9d3e784bd 100644
--- a/arch/x86/kvm/svm/svm.h
+++ b/arch/x86/kvm/svm/svm.h
@@ -224,6 +224,7 @@ struct vcpu_svm {
 	bool v_vmload_vmsave_enabled      : 1;
 	bool pause_filter_enabled         : 1;
 	bool pause_threshold_enabled      : 1;
+	bool vgif_enabled                 : 1;
 
 	u32 ldr_reg;
 	u32 dfr_reg;
@@ -442,31 +443,47 @@ static inline bool svm_is_intercept(struct vcpu_svm *svm, int bit)
 	return vmcb_is_intercept(&svm->vmcb->control, bit);
 }
 
+static bool nested_vgif_enabled(struct vcpu_svm *svm)
+{
+	if (!is_guest_mode(&svm->vcpu) || !svm->vgif_enabled)
+		return false;
+	return svm->nested.ctl.int_ctl & V_GIF_ENABLE_MASK;
+}
+
 static inline bool vgif_enabled(struct vcpu_svm *svm)
 {
-	return !!(svm->vmcb->control.int_ctl & V_GIF_ENABLE_MASK);
+	struct vmcb *vmcb = nested_vgif_enabled(svm) ? svm->vmcb01.ptr : svm->vmcb;
+
+	return !!(vmcb->control.int_ctl & V_GIF_ENABLE_MASK);
 }
 
 static inline void enable_gif(struct vcpu_svm *svm)
 {
+	struct vmcb *vmcb = nested_vgif_enabled(svm) ? svm->vmcb01.ptr : svm->vmcb;
+
 	if (vgif_enabled(svm))
-		svm->vmcb->control.int_ctl |= V_GIF_MASK;
+		vmcb->control.int_ctl |= V_GIF_MASK;
 	else
 		svm->vcpu.arch.hflags |= HF_GIF_MASK;
 }
 
 static inline void disable_gif(struct vcpu_svm *svm)
 {
+	struct vmcb *vmcb = nested_vgif_enabled(svm) ? svm->vmcb01.ptr : svm->vmcb;
+
 	if (vgif_enabled(svm))
-		svm->vmcb->control.int_ctl &= ~V_GIF_MASK;
+		vmcb->control.int_ctl &= ~V_GIF_MASK;
 	else
 		svm->vcpu.arch.hflags &= ~HF_GIF_MASK;
+
 }
 
 static inline bool gif_set(struct vcpu_svm *svm)
 {
+	struct vmcb *vmcb = nested_vgif_enabled(svm) ? svm->vmcb01.ptr : svm->vmcb;
+
 	if (vgif_enabled(svm))
-		return !!(svm->vmcb->control.int_ctl & V_GIF_MASK);
+		return !!(vmcb->control.int_ctl & V_GIF_MASK);
 	else
 		return !!(svm->vcpu.arch.hflags & HF_GIF_MASK);
 }
-- 
2.26.3

