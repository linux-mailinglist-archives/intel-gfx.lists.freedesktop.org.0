Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40B4E3B3D9E
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Jun 2021 09:37:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 768E76ECF0;
	Fri, 25 Jun 2021 07:37:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com
 [IPv6:2607:f8b0:4864:20::102f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B839D6ECEF
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Jun 2021 07:37:50 +0000 (UTC)
Received: by mail-pj1-x102f.google.com with SMTP id
 gd24-20020a17090b0fd8b02901702bcb0d90so723559pjb.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Jun 2021 00:37:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=16WTMv4TM6XRqCXu1WqfhwXLGUuF1I5eSAZgF8nuzNU=;
 b=j1IBKqLi1jF1pVyyqujoaaEyDD956vhQFsW4IqQOy9pFHxew6pDCRuHqUYQPzXhgIV
 rZzKBOewFTMPizmmlwFMEzkUu3wwxGe2e89oLtXslKb8oDVXALVjACeulmB5NJhacKR6
 l2tBxaC35ppPnNjz4UkRwFuKRG263fy/OfW/I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=16WTMv4TM6XRqCXu1WqfhwXLGUuF1I5eSAZgF8nuzNU=;
 b=q/jsvD1DuGMgt+LDV42qfIId9zqxfZn7TYp+sq9GSoGCDZhTwlfnTKEBTqQd7CaKDL
 25SsoS3aAcNv2qQ8I+2Y69zZDAh+TMVKvw8q6StldGv6NvqEWOgg+5wWiqFOD5/0IXvO
 yVD2OswJ/Ukb4iWbFd7S6X/g/5lXL42re45VPmAO/+5RQCZG5Y3HVA++0JTGvAmpkJP8
 kTrIcYnN5VnLn9kTALg2nj1jb/mZRbEOvSHrLx3qSWmq+BCzTZ/ncLPyckDNZdJ3R0Bt
 YEs8/eLTaLl4+CARHQ8Lpjc9yoFYk0aded0Ix7N65dsUQGLwsgRzs3MiwJ3lvY8bcZ/s
 vg9A==
X-Gm-Message-State: AOAM532CNBiIeEzWJJkwxUuBt0I37TzdRg9lipryzE9wc8Tj4irQbZ4t
 TzYn/ojUO8Xl3lrOv2b1zMc6lQ==
X-Google-Smtp-Source: ABdhPJyNGzGIGPRke+4sy9vknoJlahbCbtDrQ1Pof1+x3qW6lrR+9qBg5laf4ZCLScq2FNWqiUDGlQ==
X-Received: by 2002:a17:90b:b18:: with SMTP id
 bf24mr9795691pjb.220.1624606670432; 
 Fri, 25 Jun 2021 00:37:50 -0700 (PDT)
Received: from localhost ([2401:fa00:8f:203:1492:9d4f:19fa:df61])
 by smtp.gmail.com with UTF8SMTPSA id j10sm4395324pjb.36.2021.06.25.00.37.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 25 Jun 2021 00:37:50 -0700 (PDT)
From: David Stevens <stevensd@chromium.org>
X-Google-Original-From: David Stevens <stevensd@google.com>
To: Marc Zyngier <maz@kernel.org>, Huacai Chen <chenhuacai@kernel.org>,
 Aleksandar Markovic <aleksandar.qemu.devel@gmail.com>,
 Paul Mackerras <paulus@ozlabs.org>, Paolo Bonzini <pbonzini@redhat.com>,
 Nick Piggin <npiggin@gmail.com>
Date: Fri, 25 Jun 2021 16:36:16 +0900
Message-Id: <20210625073616.2184426-6-stevensd@google.com>
X-Mailer: git-send-email 2.32.0.93.g670b81a890-goog
In-Reply-To: <20210625073616.2184426-1-stevensd@google.com>
References: <20210625073616.2184426-1-stevensd@google.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 5/5] KVM: mmu: remove over-aggressive warnings
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
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Alexandru Elisei <alexandru.elisei@arm.com>, Joerg Roedel <joro@8bytes.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, intel-gfx@lists.freedesktop.org,
 kvm-ppc@vger.kernel.org, intel-gvt-dev@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>,
 Sean Christopherson <seanjc@google.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, David Stevens <stevensd@chromium.org>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: David Stevens <stevensd@chromium.org>

Remove two warnings that require ref counts for pages to be non-zero, as
mapped pfns from follow_pfn may not have an initialized ref count.

Signed-off-by: David Stevens <stevensd@chromium.org>
---
 arch/x86/kvm/mmu/mmu.c | 7 -------
 virt/kvm/kvm_main.c    | 2 +-
 2 files changed, 1 insertion(+), 8 deletions(-)

diff --git a/arch/x86/kvm/mmu/mmu.c b/arch/x86/kvm/mmu/mmu.c
index dd5cb6e33591..0c47245594c6 100644
--- a/arch/x86/kvm/mmu/mmu.c
+++ b/arch/x86/kvm/mmu/mmu.c
@@ -607,13 +607,6 @@ static int mmu_spte_clear_track_bits(u64 *sptep)
 
 	pfn = spte_to_pfn(old_spte);
 
-	/*
-	 * KVM does not hold the refcount of the page used by
-	 * kvm mmu, before reclaiming the page, we should
-	 * unmap it from mmu first.
-	 */
-	WARN_ON(!kvm_is_reserved_pfn(pfn) && !page_count(pfn_to_page(pfn)));
-
 	if (is_accessed_spte(old_spte))
 		kvm_set_pfn_accessed(pfn);
 
diff --git a/virt/kvm/kvm_main.c b/virt/kvm/kvm_main.c
index 1de8702845ac..ce7126bab4b0 100644
--- a/virt/kvm/kvm_main.c
+++ b/virt/kvm/kvm_main.c
@@ -168,7 +168,7 @@ bool kvm_is_zone_device_pfn(kvm_pfn_t pfn)
 	 * the device has been pinned, e.g. by get_user_pages().  WARN if the
 	 * page_count() is zero to help detect bad usage of this helper.
 	 */
-	if (!pfn_valid(pfn) || WARN_ON_ONCE(!page_count(pfn_to_page(pfn))))
+	if (!pfn_valid(pfn) || !page_count(pfn_to_page(pfn)))
 		return false;
 
 	return is_zone_device_page(pfn_to_page(pfn));
-- 
2.32.0.93.g670b81a890-goog

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
