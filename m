Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CF36767ADA
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Jul 2023 03:35:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5048F10E229;
	Sat, 29 Jul 2023 01:35:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-x1149.google.com (mail-yw1-x1149.google.com
 [IPv6:2607:f8b0:4864:20::1149])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F0A310E221
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Jul 2023 01:35:52 +0000 (UTC)
Received: by mail-yw1-x1149.google.com with SMTP id
 00721157ae682-56cf9a86277so27078847b3.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jul 2023 18:35:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1690594551; x=1691199351;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=BPHrGdmcO+kiKcILc6YcLgffMmTXNHFWJtVnnvxUR/s=;
 b=c4f+vKRihiToZJXS5OogN8iiE6FLuUvOKkmqCmSim7pH2z/utYWPDP2oVqSVGtkG1A
 SWNLm1/AyNWFIXSVTCeRRDtPCloczCV9BmHAm4TIQ+6TPoZlYUjmclmXhMw1bNsrwR1p
 cGrHFdYcS1vUrAfn8uUeNQJFhlilL3d092Hzgj5z4NjaAjqGJnBiMlVL5KIqDHhaenT7
 hpX4y8bbb2dzsC+vVyHxWZAym0YK1xIFqTSmPU3Monwr2Rr1dFQr0frCyiv8zIC9GDti
 Rl/ECx/Fm2afb9uLhum0iHbPNOuhnO2ahivtMk6neha9ZnlXt5q7XUu243mZR+KgHPzY
 VFcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690594551; x=1691199351;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=BPHrGdmcO+kiKcILc6YcLgffMmTXNHFWJtVnnvxUR/s=;
 b=j93RF70ffTSlJ/P2AN036Ccu6ozcCMR9lnyo6jxarnQGzN7+LZpP+8klIzV4CGDOym
 2CZSB9X1GJP92WC5pe5MszpKmEhe5Hubmj05T8ozyxZPlBtjRJydC9ls0yCjf7OvmZB+
 jylmtXLPwb+VjEnsIKLs5rfX2jrWC49vt9X1OtBmSPDOcPecCGC7J/zOQDZBnRuHxLbG
 9Y0ByiDtnEDiHF4f1l1Edt3wtEhFua25hXH07t2CidWBUSZ3ESyKJ7sxkYwJx5ziVUBZ
 /nbD2PJmO+ZorK1jShPI4h8rsRC1batRRt4H0ZMDPculnDhH/ufPT17WfcJ6GEzzhLQR
 CXcw==
X-Gm-Message-State: ABy/qLaTRUkJk3msH9OQqv84ZuflQxxfPBNbna4kDK71p1nZgK+zocmr
 u+cw2eWXq6uM9dOxvQ7sQHnnVGLYCGw=
X-Google-Smtp-Source: APBJJlHeQ90nVnue4Lo7FJ5laVqHKjVRJxh5I5aaPeVZTHL2nHfUYF5rc5PadMFBFWRwxcMrAtXFpLgqUTE=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a05:690c:711:b0:583:591d:3d6c with SMTP id
 bs17-20020a05690c071100b00583591d3d6cmr26031ywb.0.1690594551561; Fri, 28 Jul
 2023 18:35:51 -0700 (PDT)
Date: Fri, 28 Jul 2023 18:35:10 -0700
In-Reply-To: <20230729013535.1070024-1-seanjc@google.com>
Mime-Version: 1.0
References: <20230729013535.1070024-1-seanjc@google.com>
X-Mailer: git-send-email 2.41.0.487.g6d72f3e995-goog
Message-ID: <20230729013535.1070024-5-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH v4 04/29] drm/i915/gvt: Don't try to unpin an
 empty page range
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

From: Yan Zhao <yan.y.zhao@intel.com>

Attempt to unpin pages in the error path of gvt_pin_guest_page() if and
only if at least one page was successfully pinned.  Unpinning doesn't
cause functional problems, but vfio_device_container_unpin_pages()
rightfully warns about being asked to unpin zero pages.

Signed-off-by: Yan Zhao <yan.y.zhao@intel.com>
[sean: write changelog]
Signed-off-by: Sean Christopherson <seanjc@google.com>
---
 drivers/gpu/drm/i915/gvt/kvmgt.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gvt/kvmgt.c b/drivers/gpu/drm/i915/gvt/kvmgt.c
index 429f0f993a13..0366a699baf5 100644
--- a/drivers/gpu/drm/i915/gvt/kvmgt.c
+++ b/drivers/gpu/drm/i915/gvt/kvmgt.c
@@ -172,7 +172,8 @@ static int gvt_pin_guest_page(struct intel_vgpu *vgpu, unsigned long gfn,
 	*page = base_page;
 	return 0;
 err:
-	gvt_unpin_guest_page(vgpu, gfn, npage * PAGE_SIZE);
+	if (npage)
+		gvt_unpin_guest_page(vgpu, gfn, npage * PAGE_SIZE);
 	return ret;
 }
 
-- 
2.41.0.487.g6d72f3e995-goog

