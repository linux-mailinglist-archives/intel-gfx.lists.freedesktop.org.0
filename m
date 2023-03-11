Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 006256B565B
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Mar 2023 01:23:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4949710EA3A;
	Sat, 11 Mar 2023 00:23:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1049.google.com (mail-pj1-x1049.google.com
 [IPv6:2607:f8b0:4864:20::1049])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C183C10EA3D
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Mar 2023 00:23:17 +0000 (UTC)
Received: by mail-pj1-x1049.google.com with SMTP id
 cl18-20020a17090af69200b0023470d96ae6so5261599pjb.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Mar 2023 16:23:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20210112; t=1678494197;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=QHerbQhjH53h/ZHwU5QVI9hxX7GhCGiNGgQsrmW50t4=;
 b=UOOoJWfUcA7GC/99pLDncOCYw/ZSKy8cgsGXbxX58KzT3NzGZc7wH8lCmf0oAQfpKq
 hjcxQRGgLkPGKlCawvxwrkvukATCRtgPYnMbqSBD5uscgj39B0vmTkhnvMgcmdk9NbiB
 K64ViJd4ne0EYEYjfGG5d6kPwirzxEw5lqcOzrUdA91bj/3z7WW2O16cfG50mdYHyi+F
 8belCrRQbBfaK2WzD/PQejUgzYcU2vR3vMegxSCF5ZB4v6jnYTOpdFATSuu9h0apkhxu
 Icms8xYjSzdS9QnEO7gSP/EblQydpusmTx4NQaAaKuJOjwYY/5w93+mXKPJyeqcneA5b
 krDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678494197;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=QHerbQhjH53h/ZHwU5QVI9hxX7GhCGiNGgQsrmW50t4=;
 b=CaSZpgYHVPZwz2y31kEQ4VrEaJRziDc/uQXEZ0crf0OxMSpKJC5QzYIPAEYwKX3PoY
 akvq0pPcJzHDJcU+kkKVvtSvok/Gn30N06ocsgMGGHf8j1U+CbCiadynspaJIv/HrCb5
 X2mmQ+qF6Ahp/75AjBUU7oRrOWRu8PnHjS8s+1K0zkssPi7t2hh6sexkctXNnYHfKTzB
 iGpycSducyOMc07WeheVE/YtTip94IWlnzf01STVIdRjKFiSiSJi4aEAQzmHMgXRG9sp
 Kp8e7cr4XtKq6kGQQ7z4bMQUmzpfJE9Oj223tA4sPg0nd/UFifuN2cJVNY5y7bqnaXPs
 Iccw==
X-Gm-Message-State: AO0yUKWEGzqp8kGvP29jBBLipnS4fIHNfAGGKSow+BJ2x54/9GfJnSFD
 0QCRC91PF8wc4zpAzMDk5UhZbM8mMgg=
X-Google-Smtp-Source: AK7set+gdgZfxdjSIjTd5RQzPMMLwiEtm11ePUcERkI8TTwlF9ygfQgPOwzIK/GJCHY+nwoJewM4Elogmg8=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a17:902:ef8b:b0:19b:370:f7b3 with SMTP id
 iz11-20020a170902ef8b00b0019b0370f7b3mr10076584plb.6.1678494197458; Fri, 10
 Mar 2023 16:23:17 -0800 (PST)
Date: Fri, 10 Mar 2023 16:22:37 -0800
In-Reply-To: <20230311002258.852397-1-seanjc@google.com>
Mime-Version: 1.0
References: <20230311002258.852397-1-seanjc@google.com>
X-Mailer: git-send-email 2.40.0.rc1.284.g88254d51c5-goog
Message-ID: <20230311002258.852397-7-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH v2 06/27] drm/i915/gvt: Put the page reference
 obtained by KVM's gfn_to_pfn()
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

Put the struct page reference acquired by gfn_to_pfn(), KVM's API is that
the caller is ultimately responsible for dropping any reference.

Note, kvm_release_pfn_clean() ensures the pfn is actually a refcounted
struct page before trying to put any references.

Fixes: b901b252b6cf ("drm/i915/gvt: Add 2M huge gtt support")
Signed-off-by: Sean Christopherson <seanjc@google.com>
---
 drivers/gpu/drm/i915/gvt/gtt.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gvt/gtt.c b/drivers/gpu/drm/i915/gvt/gtt.c
index d59c7ab9d224..15848b041a0d 100644
--- a/drivers/gpu/drm/i915/gvt/gtt.c
+++ b/drivers/gpu/drm/i915/gvt/gtt.c
@@ -1160,6 +1160,7 @@ static int is_2MB_gtt_possible(struct intel_vgpu *vgpu,
 	unsigned long gfn = ops->get_pfn(entry);
 	kvm_pfn_t pfn;
 	int max_level;
+	int ret;
 
 	if (!HAS_PAGE_SIZES(vgpu->gvt->gt->i915, I915_GTT_PAGE_SIZE_2M))
 		return 0;
@@ -1179,7 +1180,9 @@ static int is_2MB_gtt_possible(struct intel_vgpu *vgpu,
 	if (!pfn_valid(pfn))
 		return -EINVAL;
 
-	return PageTransHuge(pfn_to_page(pfn));
+	ret = PageTransHuge(pfn_to_page(pfn));
+	kvm_release_pfn_clean(pfn);
+	return ret;
 }
 
 static int split_2MB_gtt_entry(struct intel_vgpu *vgpu,
-- 
2.40.0.rc1.284.g88254d51c5-goog

