Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B76ED767AD0
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Jul 2023 03:35:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7913810E0BA;
	Sat, 29 Jul 2023 01:35:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com
 [IPv6:2607:f8b0:4864:20::b49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EC7B10E0BA
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Jul 2023 01:35:45 +0000 (UTC)
Received: by mail-yb1-xb49.google.com with SMTP id
 3f1490d57ef6-d27ac992539so1160248276.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jul 2023 18:35:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1690594544; x=1691199344;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=fW+zeLl0d3GvBZwCEAwlFx7jr5U4FE8sODZ9RvpbNnI=;
 b=ZP2Pl1U+VMG9eIcFe1thgUAFsc8cZjkOgPAjp9pDooSSsuJ2j1IZOS08mKcskS4QYf
 pOXDSlUcYjELo1efpHRXVtgHB5y7GpDNQUMco/ZqNeHucoPdW3Y+rlVQNz25meZc7hqq
 5RNNwpLrak8abUMmSRtmmh8AaDlM9YcDnXUwD6csXaCt+0zy1bTiHq7gwzTzbt28WWc8
 8QORYHFn6N2qOJveGmETgH9unGEwC9f/hkfDgCu1zRLzUBiNYnGBWnMbpgxn+2YTbBT0
 XSWD6sjGPelyY0Y3oKO6zCWGJa81RfHN/ZhFDivLtF2rE33X8pVMkHMndFMtf1evPZJb
 odwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690594544; x=1691199344;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=fW+zeLl0d3GvBZwCEAwlFx7jr5U4FE8sODZ9RvpbNnI=;
 b=AUATAMbfga6TrI54vr5mj/mphGeYAalm7O55sPFm6V/MuKjaPJLQYsdznuVmjOYtdR
 vqDVAESsfwg1FxilPdlpRZKW9tQt4euBblFcaz0pSHa3acQvOR0kdXY80YRMocFitowF
 leMkXfs8nzrjA3fp+gJpmkpXxn03gPq7LvurhOpRB62PzslWyHOHJmwDUMiflPYmS1gZ
 JGDeHX7Hv5hjeP/psSI2PpBvyX52kZDdN3/9uel7+lxQSuvcFkjR4l99zHOFODCahUXS
 DyxTV5oEDf4nfEy3eE1p1rqt3golld7y/Wn/VbGlbTl+Y+W4BsG2klr4cLrFojIfDjux
 4Byg==
X-Gm-Message-State: ABy/qLad59+Kg2fMs6lER1Z7aI8oNO82Se1pakjFE0pcx1iGZx/Ix0G+
 LEB7nsuFssS2CIDOWwM4BqbEK0JpmJc=
X-Google-Smtp-Source: APBJJlEMdfy+y58tC/xUBasIf3ZTmatdKbl/uuM/5Z7SlwY7B7FyHVWpyPUm13Npqe1zGQwR8s/AvTfClgo=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a25:2508:0:b0:d05:e080:63c6 with SMTP id
 l8-20020a252508000000b00d05e08063c6mr18632ybl.9.1690594544514; Fri, 28 Jul
 2023 18:35:44 -0700 (PDT)
Date: Fri, 28 Jul 2023 18:35:07 -0700
In-Reply-To: <20230729013535.1070024-1-seanjc@google.com>
Mime-Version: 1.0
References: <20230729013535.1070024-1-seanjc@google.com>
X-Mailer: git-send-email 2.41.0.487.g6d72f3e995-goog
Message-ID: <20230729013535.1070024-2-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH v4 01/29] drm/i915/gvt: Verify pfn is "valid"
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
 Yongwei Ma <yongwei.ma@intel.com>, Ben Gardon <bgardon@google.com>,
 intel-gvt-dev@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Check that the pfn found by gfn_to_pfn() is actually backed by "struct
page" memory prior to retrieving and dereferencing the page.  KVM
supports backing guest memory with VM_PFNMAP, VM_IO, etc., and so
there is no guarantee the pfn returned by gfn_to_pfn() has an associated
"struct page".

Fixes: b901b252b6cf ("drm/i915/gvt: Add 2M huge gtt support")
Reviewed-by: Yan Zhao <yan.y.zhao@intel.com>
Tested-by: Yongwei Ma <yongwei.ma@intel.com>
Signed-off-by: Sean Christopherson <seanjc@google.com>
---
 drivers/gpu/drm/i915/gvt/gtt.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/gvt/gtt.c b/drivers/gpu/drm/i915/gvt/gtt.c
index 4ec85308379a..58b9b316ae46 100644
--- a/drivers/gpu/drm/i915/gvt/gtt.c
+++ b/drivers/gpu/drm/i915/gvt/gtt.c
@@ -1183,6 +1183,10 @@ static int is_2MB_gtt_possible(struct intel_vgpu *vgpu,
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
2.41.0.487.g6d72f3e995-goog

