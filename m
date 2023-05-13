Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED28701312
	for <lists+intel-gfx@lfdr.de>; Sat, 13 May 2023 02:36:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DF9E10E6F9;
	Sat, 13 May 2023 00:36:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-x114a.google.com (mail-yw1-x114a.google.com
 [IPv6:2607:f8b0:4864:20::114a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9E7C10E6F9
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 May 2023 00:36:12 +0000 (UTC)
Received: by mail-yw1-x114a.google.com with SMTP id
 00721157ae682-559ea6b1065so173099777b3.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 17:36:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1683938171; x=1686530171;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=XwIKHmmTJOUjvBBd2bP49EQ+CK24vBc6gAU6yUFfBBk=;
 b=IWvS7YHz5rmBbZ87EXsze85WRKsVI10IsyQ7JYdQXOzJhyy8qqCn3wse0CPqqOXIBX
 aqU7JitkpcoRfcEZY2JJNf8S8d/tnnkgje+Fb4zLrrKWNaMFAyOX/CLFfbtG/eSWp/qD
 5x9EqS0ian2MiBrDyRlPSTrcvLs4DL5O2LEPim+W/E/mF3yzmJmrq/CsiPCw5q8Wx9oP
 c0nbU7OgipPHjbcUxB3T/ZIW9THv5V8Gflz8/Q2xYarvFCVHcDsYYIrGq0/4NiZsi4AE
 e7SDmRDh/ac2cSIflttoJ8v7fnAtl8LfqwSunApvH8au0zJUJ/WWoenJobAWpbFDXWBB
 ue+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683938171; x=1686530171;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=XwIKHmmTJOUjvBBd2bP49EQ+CK24vBc6gAU6yUFfBBk=;
 b=BjOyS7ZNLForGXo0mLuKfB9ABohGj3hgCaTbQig+NhRPdggC5BtzErIT00Ursxw+1/
 Hue5O7wAZ5aCMU+uv7VGOtn+ViknEQkntH/WbW3ljnYm4LqZlGgoU0FuIVYKzGf9yQ1f
 0qmONnRCV8XVA+iZ13CdQsyorbNIRegPjMR1YejCPNkEKq9ipZUCnMgAVG3ZH2lxH87e
 SjE8NftQd/KMqtWtHbyPo3ODqkmNsqvEauRFOYj2biIEpewSv3ruxnfqNkxkpMMZgMbU
 3aM8AeWBznnzNdNMPnKQZCmCBjXcOEmBJ2dv6qFeigUwAmlPLe6+y1NEUWTRhrOBn0bC
 4iMw==
X-Gm-Message-State: AC+VfDzloELZPIJorOIaPqeMcXQ6Sjs7mb6f83GoaWSz6Aucv0wMrJBV
 jiKPHMKpbk+JQnGcJ0lalJgGcLw6WBo=
X-Google-Smtp-Source: ACHHUZ6ory0k/qFNjJuvZa2lN6LXysci1uDwM6JYHBj9iXnwBOWmSbi9qEBm6YL7pzYtMD+CEsW4NisJ8+M=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a81:af0e:0:b0:55a:5641:54be with SMTP id
 n14-20020a81af0e000000b0055a564154bemr16292331ywh.6.1683938171803; Fri, 12
 May 2023 17:36:11 -0700 (PDT)
Date: Fri, 12 May 2023 17:35:35 -0700
In-Reply-To: <20230513003600.818142-1-seanjc@google.com>
Mime-Version: 1.0
References: <20230513003600.818142-1-seanjc@google.com>
X-Mailer: git-send-email 2.40.1.606.ga4b1b128d6-goog
Message-ID: <20230513003600.818142-4-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH v3 03/28] drm/i915/gvt: Verify hugepages are
 contiguous in physical address space
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

When shadowing a GTT entry with a 2M page, verify that the pfns are
contiguous, not just that the struct page pointers are contiguous.  The
memory map is virtual contiguous if "CONFIG_FLATMEM=y ||
CONFIG_SPARSEMEM_VMEMMAP=y", but not for "CONFIG_SPARSEMEM=y &&
CONFIG_SPARSEMEM_VMEMMAP=n", so theoretically KVMGT could encounter struct
pages that are virtually contiguous, but not physically contiguous.

In practice, this flaw is likely a non-issue as it would cause functional
problems iff a section isn't 2M aligned _and_ is directly adjacent to
another section with discontiguous pfns.

Signed-off-by: Sean Christopherson <seanjc@google.com>
---
 drivers/gpu/drm/i915/gvt/kvmgt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gvt/kvmgt.c b/drivers/gpu/drm/i915/gvt/kvmgt.c
index de675d799c7d..429f0f993a13 100644
--- a/drivers/gpu/drm/i915/gvt/kvmgt.c
+++ b/drivers/gpu/drm/i915/gvt/kvmgt.c
@@ -161,7 +161,7 @@ static int gvt_pin_guest_page(struct intel_vgpu *vgpu, unsigned long gfn,
 
 		if (npage == 0)
 			base_page = cur_page;
-		else if (base_page + npage != cur_page) {
+		else if (page_to_pfn(base_page) + npage != page_to_pfn(cur_page)) {
 			gvt_vgpu_err("The pages are not continuous\n");
 			ret = -EINVAL;
 			npage++;
-- 
2.40.1.606.ga4b1b128d6-goog

