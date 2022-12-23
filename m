Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B38FC654A32
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Dec 2022 01:59:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BEB610E5EC;
	Fri, 23 Dec 2022 00:58:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x104a.google.com (mail-pj1-x104a.google.com
 [IPv6:2607:f8b0:4864:20::104a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70B4510E606
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Dec 2022 00:58:32 +0000 (UTC)
Received: by mail-pj1-x104a.google.com with SMTP id
 hg4-20020a17090b300400b002215a3c02c3so1781954pjb.4
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Dec 2022 16:58:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:from:to:cc:subject:date:message-id:reply-to;
 bh=V8FAaAl0J9ffNWKaCLz4W642o24GOa7DnL8QonYcD98=;
 b=UzY0yUdAsSHqxmLxd4OyL4bxAdzwhGWK25Flfzl+3CSyBx4kwIJVNG/QqI/lEoiQWG
 1g9CTW0KbQfl4yxxYHicB7tZpBJS3+JDxVpagsj6ZvSPwtPG7I219mwfhejfgHJIY5TU
 vhuuyqRnoPGDIUURZgXyzgqXqjifZseZVKmtqXslCUeBPewP7CXDFYMObhbBt/jkxuZx
 9Q6fteMKITvfLQMXDCAl86dwX4NbXVPgBasUaJ4v7EfcPQCx9XXhZgIOGvdcj1OIJzZb
 ayyWomna9itTTfDShpmkFAtofYY7bdQoOXkARSJzHVtMPUYKFspGFs2sIEHpHx62vnLB
 Yj2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:reply-to:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=V8FAaAl0J9ffNWKaCLz4W642o24GOa7DnL8QonYcD98=;
 b=KB3CJFfDvUnX077wQnHWJm2Gm/CEXm2W0hs+lJVczWNuv3igfuBYJIW/EBwzQ98GWu
 ICbK1tuUUCrsn3NFfRrsaoxc/GNP5e2ZHQXn8pNGymLMVZgdCRNn5YHWgQQ0JqX5O0/N
 mEuFfHxyzIMH8/6AXqQj8Mao7PHq56iRbvXWr5hYQaqNDnI0l3gGAyzRxH6l3LYIwkdV
 hNYZN4rNQZHZOz4weITV0LF0WfIQ1g0epzVvVYjwdNemPAq/74uoBRGbyOo6RqrhSVxp
 AgaVC34qHujoW15eu1l09xE7eRogaz4OaornR0CBX7s5Q687u/Xb5lHRnV3DRlkSUK4t
 FKZA==
X-Gm-Message-State: AFqh2kojN/jlU3k/0qrgDVzeaBNbkzOfDUFhmcLcyTay1WKJ/lvJptah
 CFOB/qJLV23/CFhiFkZimibQbrlzaZU=
X-Google-Smtp-Source: AMrXdXvFMAtq9aBAxQUI4uknZz6s0YjI8T1zwMJn1E+HEm5yUiOyL4AXuzXTzJ1SS2mW/rs793etyELbCXo=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a17:90b:4d83:b0:220:1f03:129b with SMTP id
 oj3-20020a17090b4d8300b002201f03129bmr188159pjb.0.1671757111704; Thu, 22 Dec
 2022 16:58:31 -0800 (PST)
Date: Fri, 23 Dec 2022 00:57:39 +0000
In-Reply-To: <20221223005739.1295925-1-seanjc@google.com>
Mime-Version: 1.0
References: <20221223005739.1295925-1-seanjc@google.com>
X-Mailer: git-send-email 2.39.0.314.g84b9a713c41-goog
Message-ID: <20221223005739.1295925-28-seanjc@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, 
 Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [Intel-gfx] [PATCH 27/27] drm/i915/gvt: Drop final dependencies on
 KVM internal details
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

Open code gpa_to_gfn() in kvmgt_page_track_write() and drop KVMGT's
dependency on kvm_host.h, i.e. include only on kvm_page_track.h.
KVMGT assumes "gfn == gpa >> PAGE_SHIFT" all over the place, including
a few lines below in the same function with the same gpa, i.e. there's
no reason to use KVM's helper for this one case.

No functional change intended.

Signed-off-by: Sean Christopherson <seanjc@google.com>
---
 drivers/gpu/drm/i915/gvt/gvt.h   | 3 ++-
 drivers/gpu/drm/i915/gvt/kvmgt.c | 2 +-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/gvt.h b/drivers/gpu/drm/i915/gvt/gvt.h
index fbfd7eafec14..4fb94b19ffde 100644
--- a/drivers/gpu/drm/i915/gvt/gvt.h
+++ b/drivers/gpu/drm/i915/gvt/gvt.h
@@ -34,10 +34,11 @@
 #define _GVT_H_
 
 #include <uapi/linux/pci_regs.h>
-#include <linux/kvm_host.h>
 #include <linux/vfio.h>
 #include <linux/mdev.h>
 
+#include <asm/kvm_page_track.h>
+
 #include "i915_drv.h"
 #include "intel_gvt.h"
 
diff --git a/drivers/gpu/drm/i915/gvt/kvmgt.c b/drivers/gpu/drm/i915/gvt/kvmgt.c
index e4227ac6ab58..a1647177d1c8 100644
--- a/drivers/gpu/drm/i915/gvt/kvmgt.c
+++ b/drivers/gpu/drm/i915/gvt/kvmgt.c
@@ -1607,7 +1607,7 @@ static void kvmgt_page_track_write(gpa_t gpa, const u8 *val, int len,
 	mutex_lock(&info->vgpu_lock);
 	mutex_lock(&info->gfn_lock);
 
-	if (kvmgt_gfn_is_write_protected(info, gpa_to_gfn(gpa)))
+	if (kvmgt_gfn_is_write_protected(info, gpa >> PAGE_SHIFT))
 		intel_vgpu_page_track_handler(info, gpa,
 						     (void *)val, len);
 
-- 
2.39.0.314.g84b9a713c41-goog

