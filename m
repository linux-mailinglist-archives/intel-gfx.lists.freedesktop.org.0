Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 070146549E9
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Dec 2022 01:57:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 940DB10E5EA;
	Fri, 23 Dec 2022 00:57:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com
 [IPv6:2607:f8b0:4864:20::44a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B885D10E177
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Dec 2022 00:57:47 +0000 (UTC)
Received: by mail-pf1-x44a.google.com with SMTP id
 u3-20020a056a00124300b0056d4ab0c7cbso1832914pfi.7
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Dec 2022 16:57:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=KwIE4ETZbha1iVHVnmmk26NjJzT7Ww98bDHeI8SzWEM=;
 b=VdmJ3vuW5hwx3kJCnM8faRJP7RuSvtbP2ikWNhpFTp9I9z0DVVcdJ0RfscWi+OoGoi
 MJ2G5H/yD95pjyp//Pb2jYl7A1gWkqRHGZf2J32KbjsKXqp3gU3YboP6KKuyiMaD/AAr
 Z4u1PblzAICguwGToRHR80qO4jWKIisB8zsX66tglczJgHgpnkX/z0MTFX/GN81elusD
 X4oC8eqWPYcYBtDK58vck3vcbZzBkrMVqKhuWer4YBW96UOB5yjMiHVT8pk1wkRZ8D6y
 IoBiiZe2OfEeW8J0ouvD8oVG1pVP9aTU5g6XrC5yWQaGBH6sOX3ntS60GO2VjtyS3ZB+
 hOUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=KwIE4ETZbha1iVHVnmmk26NjJzT7Ww98bDHeI8SzWEM=;
 b=Mg8jBUOwDC5PBfuc+LKOxPPfF473IJaUejmmGIwL8JOKps/eUPU9frZL9uekJ8ejeo
 NrHAWQHDVoOJhvTHMbw65I+pNWSch0amyXMXa4mP//fWhGj/T7t3SS+e1FE4b0dNPR0d
 +qmoaUDByogfsVhLMe1lsBC2goUlcbJSkeo36WeKvYsTEahTpBaudJEnj5ngZTTyqnXc
 d3zLAbapbRK1PftzQu1ktMQmvnBuB3DSg+vogoh5dQQWXcAOVE7YjeeM0PFbU/bp3IAf
 qNAGvbA+8+qHSaWx9OdWagCS9oj6cZjC2svn+KKm7XaTyp6cb530mru1FLEQbYp+PrXO
 Jj+Q==
X-Gm-Message-State: AFqh2krir/lTgjPlf18fcX3hTjDeCUcHSJ9q/vOJ4GapZNaEk2eaSbRE
 aGY5ZlrxaXJ7QR3RppFRPk6L0INovrs=
X-Google-Smtp-Source: AMrXdXtkgpf6dDrWJjo57M40NYNaWtKweyvUHpN66Us7oNs+QBzk+DEmGWx4z2DdCJIQiZm1KZ2ESd9jW+0=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a17:90a:c217:b0:219:aa90:3198 with SMTP id
 e23-20020a17090ac21700b00219aa903198mr779140pjt.112.1671757067336; Thu, 22
 Dec 2022 16:57:47 -0800 (PST)
Date: Fri, 23 Dec 2022 00:57:13 +0000
In-Reply-To: <20221223005739.1295925-1-seanjc@google.com>
Mime-Version: 1.0
References: <20221223005739.1295925-1-seanjc@google.com>
X-Mailer: git-send-email 2.39.0.314.g84b9a713c41-goog
Message-ID: <20221223005739.1295925-2-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH 01/27] drm/i915/gvt: Verify pfn is "valid"
 before dereferencing "struct page"
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

Check that the pfn found by gfn_to_pfn() is actually backed by "struct
page" memory prior to retrieving and dereferencing the page.  KVM
supports backing guest memory with VM_PFNMAP, VM_IO, etc., and so
there is no guarantee the pfn returned by gfn_to_pfn() has an associated
"struct page".

Fixes: b901b252b6cf ("drm/i915/gvt: Add 2M huge gtt support")
Signed-off-by: Sean Christopherson <seanjc@google.com>
---
 drivers/gpu/drm/i915/gvt/gtt.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/gvt/gtt.c b/drivers/gpu/drm/i915/gvt/gtt.c
index ce0eb03709c3..d0fca53a3563 100644
--- a/drivers/gpu/drm/i915/gvt/gtt.c
+++ b/drivers/gpu/drm/i915/gvt/gtt.c
@@ -1188,6 +1188,10 @@ static int is_2MB_gtt_possible(struct intel_vgpu *vgpu,
 	pfn = gfn_to_pfn(vgpu->vfio_device.kvm, ops->get_pfn(entry));
 	if (is_error_noslot_pfn(pfn))
 		return -EINVAL;
+
+	if (!pfn_valid(pfn))
+		return -EINVAL;
+
 	return PageTransHuge(pfn_to_page(pfn));
 }
 
-- 
2.39.0.314.g84b9a713c41-goog

