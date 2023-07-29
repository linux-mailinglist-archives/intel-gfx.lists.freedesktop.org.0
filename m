Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC4F767AE5
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Jul 2023 03:36:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D54CD10E222;
	Sat, 29 Jul 2023 01:36:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com
 [IPv6:2607:f8b0:4864:20::64a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EA9F10E7C1
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Jul 2023 01:35:54 +0000 (UTC)
Received: by mail-pl1-x64a.google.com with SMTP id
 d9443c01a7336-1bbf8cb6143so2256235ad.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jul 2023 18:35:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1690594554; x=1691199354;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=tz4uZaQVsPCslkoe6oa8SQY3RtzZLjpuGTuCE1x/oxo=;
 b=rnGsAGmCsCVkvzk/4CeEhRS1uhNwHejWNQjYMUjzvZ9b23PXZzLzHQ7iKvpLO1Zm5o
 sEcAHLrTsKB5yVIPzAw8RrH5ORymgpPHAiDM/Xt64Kov2IqERUDoqTcOGXvoUfc0u6QZ
 X447SLnRfwc80YMR7mIfaKfWAMT5mvZyKlEiZnQwjTwDCpRahtP32ZcYRt0CvZz8E8v4
 t+00GUoSXANKgzpGij7yjEmTxBvUqSswKC0SsnODhH6NFOjVBdboK2rHspDOAzwSQjkg
 IDf0q+2jpzHxwTOMoB02hlRckExnus6yP9NdAAWtZPE/Leok5f6GGdwTeP7Yu3zaGG/L
 0eGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690594554; x=1691199354;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=tz4uZaQVsPCslkoe6oa8SQY3RtzZLjpuGTuCE1x/oxo=;
 b=ILOlXxYKr3tsPXSOPxcZqsUhi45yP1OHql83jUKRVDW8k7u311ueUb4RnHSEsz3Gor
 ynxKQC4+b4U2hCfyHTXACdiyK44jrBKOt2y+9kRF/wLkUn+asZHOqG4gPvZIb6alwQ+6
 ivr4+YQERffS/mCmjlzBlbrY8jcrRty3SQPQ4c6zZ6L31Qcrs7C3d6mknyNCCih4DXjC
 MZqGXNeZ63cPpjfxLT6UH+yeqVtESVFVxQrmgKTBDguXWUWS0/Y5oiYVk2jaZcT62ldd
 looG2T8eHxfHnwS4d3eMRJHO5hux7V3jRVNb5kY3TUK7M1i6dLKLLosxzVACHAifdDVq
 WRHw==
X-Gm-Message-State: ABy/qLbMUVOYAIB5kKC4hhXX4ATkXaL9mQQ68o2pU8kDKWYfAgAAA2Lm
 Y5uO1KjHY9BtOUfx3qdmTJZxuiV8uOo=
X-Google-Smtp-Source: APBJJlFTmYd3lxACjYxVtuqT/iV7PakjZr1YHFf1k1mB2XIV8e9HvgrPxsj425QqhvZ8l6epZt90DIBSddM=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a17:902:e5c1:b0:1b7:edcd:8dcf with SMTP id
 u1-20020a170902e5c100b001b7edcd8dcfmr14524plf.4.1690594553462; Fri, 28 Jul
 2023 18:35:53 -0700 (PDT)
Date: Fri, 28 Jul 2023 18:35:11 -0700
In-Reply-To: <20230729013535.1070024-1-seanjc@google.com>
Mime-Version: 1.0
References: <20230729013535.1070024-1-seanjc@google.com>
X-Mailer: git-send-email 2.41.0.487.g6d72f3e995-goog
Message-ID: <20230729013535.1070024-6-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH v4 05/29] drm/i915/gvt: Put the page reference
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
 Yongwei Ma <yongwei.ma@intel.com>, Ben Gardon <bgardon@google.com>,
 intel-gvt-dev@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Put the struct page reference acquired by gfn_to_pfn(), KVM's API is that
the caller is ultimately responsible for dropping any reference.

Note, kvm_release_pfn_clean() ensures the pfn is actually a refcounted
struct page before trying to put any references.

Fixes: b901b252b6cf ("drm/i915/gvt: Add 2M huge gtt support")
Reviewed-by: Yan Zhao <yan.y.zhao@intel.com>
Tested-by: Yongwei Ma <yongwei.ma@intel.com>
Signed-off-by: Sean Christopherson <seanjc@google.com>
---
 drivers/gpu/drm/i915/gvt/gtt.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gvt/gtt.c b/drivers/gpu/drm/i915/gvt/gtt.c
index f30922c55a0c..5426a27c1b71 100644
--- a/drivers/gpu/drm/i915/gvt/gtt.c
+++ b/drivers/gpu/drm/i915/gvt/gtt.c
@@ -1158,6 +1158,7 @@ static int is_2MB_gtt_possible(struct intel_vgpu *vgpu,
 {
 	const struct intel_gvt_gtt_pte_ops *ops = vgpu->gvt->gtt.pte_ops;
 	kvm_pfn_t pfn;
+	int ret;
 
 	if (!HAS_PAGE_SIZES(vgpu->gvt->gt->i915, I915_GTT_PAGE_SIZE_2M))
 		return 0;
@@ -1171,7 +1172,9 @@ static int is_2MB_gtt_possible(struct intel_vgpu *vgpu,
 	if (!pfn_valid(pfn))
 		return -EINVAL;
 
-	return PageTransHuge(pfn_to_page(pfn));
+	ret = PageTransHuge(pfn_to_page(pfn));
+	kvm_release_pfn_clean(pfn);
+	return ret;
 }
 
 static int split_2MB_gtt_entry(struct intel_vgpu *vgpu,
-- 
2.41.0.487.g6d72f3e995-goog

