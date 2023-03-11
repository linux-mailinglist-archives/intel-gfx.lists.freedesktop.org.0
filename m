Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE4D06B5652
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Mar 2023 01:23:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21D4710EA36;
	Sat, 11 Mar 2023 00:23:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com
 [IPv6:2607:f8b0:4864:20::b4a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0E3010EA2F
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Mar 2023 00:23:12 +0000 (UTC)
Received: by mail-yb1-xb4a.google.com with SMTP id
 i11-20020a256d0b000000b0086349255277so7407404ybc.8
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Mar 2023 16:23:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20210112; t=1678494192;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=G0qAJvxHpDAgqFvh7uYoRk6mNXypsV4ie53qEn0pPDQ=;
 b=PwdUG07Az6fOz5PClM8/T/4anRZgVRjRi28o1O6nSTDEv/mQSm0X5GIbbEnKWrhHZZ
 5q9H3mm1wKS3TJ1fghFhCdX8n33BkbDHNL/QtNciEfRycZ5FMo+9TT1hRc1fF7uwtFr7
 a5G3o7+gsp0O4C0lg8dTvW/jP0RuVm23ZZtudxaeRanpqY0wqUZ3YAEPBJnl0bcISdKL
 LIzD6VwQ59ZIHK4uoGEWjmugf+H7oOkM2+ZQ3IaZxInQrGK3STHr9mQqA5dqw+D3PGyK
 88dSoZtZX4hT1wb11Ix/GCR347PoNYOPhgQ7xhQs3+j/0Kblqd91mcTmH806f3lFXlyG
 hhjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678494192;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=G0qAJvxHpDAgqFvh7uYoRk6mNXypsV4ie53qEn0pPDQ=;
 b=7gw+Obvml6qxPpd9NCFyF9HBmgUBcpe5ZX60Hjw6sf0vZFaI1DJF9+G6wHVAjD38SZ
 Z+Xmi3xDlii0Qap1RrymMtf2cnp0GGPFE6pYpgVu+e6xuMlbcmwoPLwo11ZB0TQI+Pu5
 BLJsDqGqsX30JPH1rQK3dYcUzmFumnEowm0IMGQ683CzcGok5enA6BdCrIrbp+hOSf1m
 QFoUZZt7CIsmR/wJapH867+OzhiM/NR31SFBKJLE126IwyDoB0vfbR9N1eVkms1Vufip
 HpzWrLpgrkalBHweNB5yZOMc8Z1C7o8+sJkNpUvu8WIBASw9ybZoHuLONAlnkh28LjhP
 z5OQ==
X-Gm-Message-State: AO0yUKUJaYdUqPFAkhU0tY1a2Mp+vJrr8CZBAtUondPo6k6JvbGVncuG
 sZ+rQUFvFc8WLeTnN4RpE6u8g7e+r1k=
X-Google-Smtp-Source: AK7set9wt6iqY8MK9a5vdGpHoxS3AAYipjLVZ70LK+fNGu6gFqNqIUC0ahwai+IiNe5tijrFC/xCQqLNgNc=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a25:e911:0:b0:af7:1b45:1240 with SMTP id
 n17-20020a25e911000000b00af71b451240mr9206070ybd.11.1678494191916; Fri, 10
 Mar 2023 16:23:11 -0800 (PST)
Date: Fri, 10 Mar 2023 16:22:34 -0800
In-Reply-To: <20230311002258.852397-1-seanjc@google.com>
Mime-Version: 1.0
References: <20230311002258.852397-1-seanjc@google.com>
X-Mailer: git-send-email 2.40.0.rc1.284.g88254d51c5-goog
Message-ID: <20230311002258.852397-4-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH v2 03/27] drm/i915/gvt: remove interface
 intel_gvt_is_valid_gfn
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
Reply-To: Sean Christopherson <seanjc@google.com>
Cc: Yan Zhao <yan.y.zhao@intel.com>, kvm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Ben Gardon <bgardon@google.com>, intel-gvt-dev@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Yan Zhao <yan.y.zhao@intel.com>

Currently intel_gvt_is_valid_gfn() is called in two places:
(1) shadowing guest GGTT entry
(2) shadowing guest PPGTT leaf entry,
which was introduced in commit cc753fbe1ac4
("drm/i915/gvt: validate gfn before set shadow page entry").

However, now it's not necessary to call this interface any more, because
a. GGTT partial write issue has been fixed by
   commit bc0686ff5fad
   ("drm/i915/gvt: support inconsecutive partial gtt entry write")
   commit 510fe10b6180
   ("drm/i915/gvt: fix a bug of partially write ggtt enties")
b. PPGTT resides in normal guest RAM and we only treat 8-byte writes
   as valid page table writes. Any invalid GPA found is regarded as
   an error, either due to guest misbehavior/attack or bug in host
   shadow code.
   So,rather than do GFN pre-checking and replace invalid GFNs with
   scratch GFN and continue silently, just remove the pre-checking and
   abort PPGTT shadowing on error detected.
c. GFN validity check is still performed in
   intel_gvt_dma_map_guest_page() --> gvt_pin_guest_page().
   It's more desirable to call VFIO interface to do both validity check
   and mapping.
   Calling intel_gvt_is_valid_gfn() to do GFN validity check from KVM side
   while later mapping the GFN through VFIO interface is unnecessarily
   fragile and confusing for unaware readers.

Signed-off-by: Yan Zhao <yan.y.zhao@intel.com>
[sean: remove now-unused local variables]
Signed-off-by: Sean Christopherson <seanjc@google.com>
---
 drivers/gpu/drm/i915/gvt/gtt.c | 36 +---------------------------------
 1 file changed, 1 insertion(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/gtt.c b/drivers/gpu/drm/i915/gvt/gtt.c
index 58b9b316ae46..f30922c55a0c 100644
--- a/drivers/gpu/drm/i915/gvt/gtt.c
+++ b/drivers/gpu/drm/i915/gvt/gtt.c
@@ -49,22 +49,6 @@
 static bool enable_out_of_sync = false;
 static int preallocated_oos_pages = 8192;
 
-static bool intel_gvt_is_valid_gfn(struct intel_vgpu *vgpu, unsigned long gfn)
-{
-	struct kvm *kvm = vgpu->vfio_device.kvm;
-	int idx;
-	bool ret;
-
-	if (!test_bit(INTEL_VGPU_STATUS_ATTACHED, vgpu->status))
-		return false;
-
-	idx = srcu_read_lock(&kvm->srcu);
-	ret = kvm_is_visible_gfn(kvm, gfn);
-	srcu_read_unlock(&kvm->srcu, idx);
-
-	return ret;
-}
-
 /*
  * validate a gm address and related range size,
  * translate it to host gm address
@@ -1333,11 +1317,9 @@ static int ppgtt_populate_shadow_entry(struct intel_vgpu *vgpu,
 static int ppgtt_populate_spt(struct intel_vgpu_ppgtt_spt *spt)
 {
 	struct intel_vgpu *vgpu = spt->vgpu;
-	struct intel_gvt *gvt = vgpu->gvt;
-	const struct intel_gvt_gtt_pte_ops *ops = gvt->gtt.pte_ops;
 	struct intel_vgpu_ppgtt_spt *s;
 	struct intel_gvt_gtt_entry se, ge;
-	unsigned long gfn, i;
+	unsigned long i;
 	int ret;
 
 	trace_spt_change(spt->vgpu->id, "born", spt,
@@ -1354,13 +1336,6 @@ static int ppgtt_populate_spt(struct intel_vgpu_ppgtt_spt *spt)
 			ppgtt_generate_shadow_entry(&se, s, &ge);
 			ppgtt_set_shadow_entry(spt, &se, i);
 		} else {
-			gfn = ops->get_pfn(&ge);
-			if (!intel_gvt_is_valid_gfn(vgpu, gfn)) {
-				ops->set_pfn(&se, gvt->gtt.scratch_mfn);
-				ppgtt_set_shadow_entry(spt, &se, i);
-				continue;
-			}
-
 			ret = ppgtt_populate_shadow_entry(vgpu, spt, i, &ge);
 			if (ret)
 				goto fail;
@@ -2335,14 +2310,6 @@ static int emulate_ggtt_mmio_write(struct intel_vgpu *vgpu, unsigned int off,
 		m.val64 = e.val64;
 		m.type = e.type;
 
-		/* one PTE update may be issued in multiple writes and the
-		 * first write may not construct a valid gfn
-		 */
-		if (!intel_gvt_is_valid_gfn(vgpu, gfn)) {
-			ops->set_pfn(&m, gvt->gtt.scratch_mfn);
-			goto out;
-		}
-
 		ret = intel_gvt_dma_map_guest_page(vgpu, gfn, PAGE_SIZE,
 						   &dma_addr);
 		if (ret) {
@@ -2359,7 +2326,6 @@ static int emulate_ggtt_mmio_write(struct intel_vgpu *vgpu, unsigned int off,
 		ops->clear_present(&m);
 	}
 
-out:
 	ggtt_set_guest_entry(ggtt_mm, &e, g_gtt_index);
 
 	ggtt_get_host_entry(ggtt_mm, &e, g_gtt_index);
-- 
2.40.0.rc1.284.g88254d51c5-goog

