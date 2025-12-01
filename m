Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1A13C9729F
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Dec 2025 13:00:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64F8C10E3B5;
	Mon,  1 Dec 2025 12:00:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Tp5UweLH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com
 [209.85.210.182])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DB7910E3B8
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Dec 2025 12:00:40 +0000 (UTC)
Received: by mail-pf1-f182.google.com with SMTP id
 d2e1a72fcca58-7bab7c997eeso4723929b3a.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 01 Dec 2025 04:00:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1764590439; x=1765195239; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=lhy5A74tqtvBS5z52gcumAITRKdRTMaNhMKyqxAMeEk=;
 b=Tp5UweLHP/RU1xzba+3FqlMAD9t1qgZ1FZVl4NSDBmiA3y1Ybzc2VA2+3nFCpt3yZO
 FSPVjrMLugmMYT2ZP261U2dLdngpdWeWcygk1lQHSNf60+Bf4/jab+K8scimdYqwRzlT
 kKXwjh3iK+qiQgYfJhs9L83dYwMEj1s36sl70uSksqfqAwpsj08ygJPJBb0vBSQv3/YI
 JxbedCEHSOyBkO/oCqgHlLqnRXicxaaf9kCYSE5uQS/XuLG/NJ8akAEOdE03mta4R146
 mSALKbFyHre9DGQ5rJ8jJYAobWiCJ3VrQkHwQ1VJkoslJ3vghMMzDS8e546iDr3HrRZ/
 hAvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764590439; x=1765195239;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=lhy5A74tqtvBS5z52gcumAITRKdRTMaNhMKyqxAMeEk=;
 b=JMTkF7z0Y9npN4yLwpxnbo6spbAsjmH0YvEeI67nLUDMn8NitbP2g1ACicz0HRnfnj
 MKtr/8jrboTFsOIcfoGt6rLNDMw4y8ZLUWNh/Rlq31JY1u9KEeT3W/ELPPZek+Z2PZPH
 s22+oLHjBMYpTAf/qDhNYzy+o1SLKSqir/9BSwCK7u4TCTIPXMno+LmuldixS4vleJml
 fcVNJR2EeIOzhAI8nss3rFzuTGgoxsYRw9S8AlZlZvr/TGOKfG62n2gR3fVYEjaRgXic
 97M8ZglerBYBdMrLAzEZaWl/n/vkixD5UA6poHONSKtdJ1v46rtQEgxyr53k8oiZvLC0
 EeOw==
X-Gm-Message-State: AOJu0YwoxYpkZe3s2YU0qn5pq2KWZCrOoI7f9BPAqnO9NqUmoeWLggbQ
 5PlOm9eDJgxPj0EgUdEcmmiXbwtOFLGhpOEXElmvZDdqPVqgVLqFN08Q18u1G2fk
X-Gm-Gg: ASbGncsc+I7F4sZnS7qUEuVSuvOUWAECBY5eG/XCCqMB2CRaB81Y1fyEN9r1ZPJqFiQ
 eNQKQ/KznpNLNOrPODy5Ysj0tDNt1SqlMS9GoQYtI4OaaBFF6knuz5lTX2qIr0HWL26kIO3zbPZ
 JRlM2zhxl+6aS7nLOMCj/m/IxH6Ezywh9t44AO1A4YZAa6NBSekTnghNOHf2UkJJ0ZhR+QXNHnk
 5+8xmjDIJFkZmFQbxUSfElWB2AQBTB4NJ9r2msoGmTTfJBFXt9gy2WUMYFF8YIb0M+1CY8x9cWq
 mK+GPHOgUl9CwYRbAV586eDAgugpQfB9KjpUHOW7hNE9LhYkHTRjX+pVw4lOuOnenf8ixcmp2lV
 cv5lmQOzWcqsPi7rEFiPZLD13A1+RCQDemp3tZUJAEgoI5kycOs9mAK4KWYqRDnJIFNmx69rtC+
 EzkSG0ut+VnpbQEawobymAFq8FBLCoBWC3WV/y8r1WyxJ3VSGU+A==
X-Google-Smtp-Source: AGHT+IFhJXG17VKW8RU4YER/hHhK7oxNq6ZSJSHMNLe5GdjMo1kApjL++q2vWO3gXwmu95Xzn5iQZg==
X-Received: by 2002:a05:6a20:938e:b0:35f:5fc4:d89f with SMTP id
 adf61e73a8af0-36150f048f7mr39691986637.39.1764590438993; 
 Mon, 01 Dec 2025 04:00:38 -0800 (PST)
Received: from localhost ([134.134.137.78]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-7d15f26f11fsm13288431b3a.50.2025.12.01.04.00.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Dec 2025 04:00:38 -0800 (PST)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Subject: [PATCH 2/2] drm/i915: Add intel_gvt_driver_remove() onto error
 cleanup path
Date: Mon,  1 Dec 2025 14:00:04 +0200
Message-ID: <20251201120004.690290-3-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251201120004.690290-1-juhapekka.heikkila@gmail.com>
References: <20251201120004.690290-1-juhapekka.heikkila@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add intel_gvt_driver_remove() onto error cleanup path.

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 73ae3cf7f373..b2c332a589e4 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -884,6 +884,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	i915_gem_drain_freed_objects(i915);
 	i915_ggtt_driver_late_release(i915);
 out_cleanup_mmio:
+	intel_gvt_driver_remove(i915);
 	i915_driver_mmio_release(i915);
 out_runtime_pm_put:
 	enable_rpm_wakeref_asserts(&i915->runtime_pm);
-- 
2.43.0

