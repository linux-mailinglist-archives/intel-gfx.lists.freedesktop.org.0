Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C996549F0
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Dec 2022 01:58:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE2AC10E5FF;
	Fri, 23 Dec 2022 00:57:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com
 [IPv6:2607:f8b0:4864:20::44a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B31B10E5F1
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Dec 2022 00:57:54 +0000 (UTC)
Received: by mail-pf1-x44a.google.com with SMTP id
 e6-20020aa78c46000000b005772151d489so1839962pfd.15
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Dec 2022 16:57:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=NBTVXhB5C1LBSgUVZgx9DDnSqNxpCLvQp+2Tt7daAzY=;
 b=PlfdJuINIz79VbNXj96aWe6+xyqOcNWgoFfBKXO69TEmccmX1942p1Kyzpar864asr
 XDLlrV4h/z3yt7ub3l4JawTQViMgB+vso07ZoO5qPG8HZ8ZwZ79n9sNsdI9q2RoIwbeG
 AbHqwyDWwx9IAhFNAoqcInUGxLMtyU01VX9lvM0rmbSOQgWKiNnfERh1rh/elzAovs+8
 3y70iyzOvz/NxL9S/TaVq/aBs6+nmTg/gOUzTp23eWU84817bdw4cPSr/sXHXzdSEx8S
 P4Mp5+sUcRqXpTl/uiqPGeug+OSUTglz8ISXwjwtbnXBQir9/d83nYa1sF0t6p/+TDh4
 ciOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=NBTVXhB5C1LBSgUVZgx9DDnSqNxpCLvQp+2Tt7daAzY=;
 b=WGaYTjhziZ9afQt30mf4aeHlMXmpEcOx5bTlvjiAdRhzZZnTecIMN9mvJdpRJibZcV
 IfFzdBg+o/Q/ttrRQtAQ6CM2ALIPIG/MDRp4GErotdHiYPA5I8EJil5ohqSNmGAu/G2V
 vPFKMcwvXbUSYc+iiDf4n1Tfyii046rp75L3Sox1iuU4Y9ItrJnXtU1eLOIx7JBazKx7
 swJMkYUNA7JsK0PwUb5+7DcT7Owu8C8nu87te4gJ9vR46NxWZ8XIFfkP1+O9WKdXDhx9
 Y0M7ggbqKLXHKUwRp/CD3pG+9AWJwC0CAlH0BHuxOn2bSO55DFjL+rbVWOLGtPztafJk
 Xpfg==
X-Gm-Message-State: AFqh2koAJg2WQljZNyEfS22Y39Yrm5LS3RxY+5QRHpT+Hcik/G1ksuU2
 8WykXftwh5WIaghY0q8EA5HtwLTGPKA=
X-Google-Smtp-Source: AMrXdXtuJpzQAA6YsAARKoo86Ndko68Bw/8PzP0Po4HgPrkiwdi87VkArdRLlydeD02n3c8sF2p0uUxApik=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a17:902:c155:b0:189:9a71:109b with SMTP id
 21-20020a170902c15500b001899a71109bmr561626plj.171.1671757073922; Thu, 22 Dec
 2022 16:57:53 -0800 (PST)
Date: Fri, 23 Dec 2022 00:57:17 +0000
In-Reply-To: <20221223005739.1295925-1-seanjc@google.com>
Mime-Version: 1.0
References: <20221223005739.1295925-1-seanjc@google.com>
X-Mailer: git-send-email 2.39.0.314.g84b9a713c41-goog
Message-ID: <20221223005739.1295925-6-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH 05/27] drm/i915/gvt: Put the page reference
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
index 6736d7bd94ea..9936f8bd19af 100644
--- a/drivers/gpu/drm/i915/gvt/gtt.c
+++ b/drivers/gpu/drm/i915/gvt/gtt.c
@@ -1181,6 +1181,7 @@ static int is_2MB_gtt_possible(struct intel_vgpu *vgpu,
 	unsigned long gfn = ops->get_pfn(entry);
 	kvm_pfn_t pfn;
 	int max_level;
+	int ret;
 
 	if (!HAS_PAGE_SIZES(vgpu->gvt->gt->i915, I915_GTT_PAGE_SIZE_2M))
 		return 0;
@@ -1200,7 +1201,9 @@ static int is_2MB_gtt_possible(struct intel_vgpu *vgpu,
 	if (!pfn_valid(pfn))
 		return -EINVAL;
 
-	return PageTransHuge(pfn_to_page(pfn));
+	ret = PageTransHuge(pfn_to_page(pfn));
+	kvm_release_pfn_clean(pfn);
+	return ret;
 }
 
 static int split_2MB_gtt_entry(struct intel_vgpu *vgpu,
-- 
2.39.0.314.g84b9a713c41-goog

