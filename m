Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 46AEF701315
	for <lists+intel-gfx@lfdr.de>; Sat, 13 May 2023 02:36:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7AE810E701;
	Sat, 13 May 2023 00:36:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com
 [IPv6:2607:f8b0:4864:20::b49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20D8210E6FD
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 May 2023 00:36:16 +0000 (UTC)
Received: by mail-yb1-xb49.google.com with SMTP id
 3f1490d57ef6-ba237aec108so9980268276.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 17:36:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1683938175; x=1686530175;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=bws/OjWeywvM9XkLtSpHOYJ+ALa04I5zAABYQaubhUE=;
 b=2nK84DtH7omdb7lgN90xeHzmaSrYcT1rO5f/Jmgj+Dv+zaVTUQfWKOjbL4BOhWtkOH
 CphCTTunIGNQIxuE3yQ2akHe/1RH76qxPs6uXyStOp8VMHUkHauNlfxC5o5QJkgjGNZX
 VE0x7PQn9vR51EdpRjP3q312V9jMDcwrBozE6gq5to2f2TMIcI2+jGpwh8SVNdO/jT1I
 Ueje6zg7QEiBe2RJ0mo7uqdWXz+87j9Yl989iyAL5mT032xiSRUFwOyWkjgsZxB9dTjP
 7MkO4YuqPEwMFjmSSiu9igcaZ/+IMY85RpkB88NskeeCtT+NtikPvSF5EeCr7kfnC2UF
 GF1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683938175; x=1686530175;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=bws/OjWeywvM9XkLtSpHOYJ+ALa04I5zAABYQaubhUE=;
 b=RPwX7or2q+9VmA7NiNiBlZ5HvOfEesLjPZnabefYpUnZYvpzTlKJfaBxIYYIHz+E3y
 pXP4Icj/cG9b/9Q7JcVhJPYdOhEWCfCoSjVboB5wgz4rjzSgp1vGSm43ypC9rLHIQ2Nk
 MqCz71HM3sE9V9QfFQwRNcWbb7CvkgjhVVWmOSuMkUMpNZxYQHh77/aipCOH2/Fy2ujg
 MbYVdRFij1qmXa7fZB4vRc19fw5Hc4De3eIt68L3KeHnuHn4p1Gq6nqvtrVx7niCbwao
 RU0q5t2CLg/ZMu02bWeSP+Z3N9Cf5DF0p94ovJY11FkGJA2jUF7BpkxRQBLozWSlqqgx
 9rFQ==
X-Gm-Message-State: AC+VfDwU+K15ldsJzS7Q+Gfy7FblSOe8edeXd3CaLsvzJprut3SHpseX
 cj+y6JoFSNt0Ki6lNRdjZva7pEBFhxU=
X-Google-Smtp-Source: ACHHUZ4K09KxXj/DOOYSy7/m5VtpOi/JikwvVDfoLnnXWJCoYBtEIIsBAZMRE15JnhV2Yyt2NzyHcgNL0lY=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a05:6902:11c9:b0:b9d:ed0f:b9db with SMTP id
 n9-20020a05690211c900b00b9ded0fb9dbmr16402286ybu.6.1683938175412; Fri, 12 May
 2023 17:36:15 -0700 (PDT)
Date: Fri, 12 May 2023 17:35:37 -0700
In-Reply-To: <20230513003600.818142-1-seanjc@google.com>
Mime-Version: 1.0
References: <20230513003600.818142-1-seanjc@google.com>
X-Mailer: git-send-email 2.40.1.606.ga4b1b128d6-goog
Message-ID: <20230513003600.818142-6-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH v3 05/28] drm/i915/gvt: Explicitly check that
 vGPU is attached before shadowing
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

Move the check that a vGPU is attacked from is_2MB_gtt_possible() to its
sole caller, ppgtt_populate_shadow_entry().  All of the paths in
ppgtt_populate_shadow_entry() eventually check for attachment by way of
intel_gvt_dma_map_guest_page(), but explicitly checking can avoid
unnecessary work and will make it more obvious that a future cleanup of
is_2MB_gtt_possible() isn't introducing a bug.

Signed-off-by: Sean Christopherson <seanjc@google.com>
---
 drivers/gpu/drm/i915/gvt/gtt.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/gtt.c b/drivers/gpu/drm/i915/gvt/gtt.c
index 5426a27c1b71..2aed31b497c9 100644
--- a/drivers/gpu/drm/i915/gvt/gtt.c
+++ b/drivers/gpu/drm/i915/gvt/gtt.c
@@ -1163,8 +1163,6 @@ static int is_2MB_gtt_possible(struct intel_vgpu *vgpu,
 	if (!HAS_PAGE_SIZES(vgpu->gvt->gt->i915, I915_GTT_PAGE_SIZE_2M))
 		return 0;
 
-	if (!test_bit(INTEL_VGPU_STATUS_ATTACHED, vgpu->status))
-		return -EINVAL;
 	pfn = gfn_to_pfn(vgpu->vfio_device.kvm, ops->get_pfn(entry));
 	if (is_error_noslot_pfn(pfn))
 		return -EINVAL;
@@ -1277,6 +1275,9 @@ static int ppgtt_populate_shadow_entry(struct intel_vgpu *vgpu,
 	if (!pte_ops->test_present(ge))
 		return 0;
 
+	if (!test_bit(INTEL_VGPU_STATUS_ATTACHED, vgpu->status))
+		return -EINVAL;
+
 	gfn = pte_ops->get_pfn(ge);
 
 	switch (ge->type) {
-- 
2.40.1.606.ga4b1b128d6-goog

