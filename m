Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D12B48D25
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 14:16:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF35610E4F1;
	Mon,  8 Sep 2025 12:16:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=estudante.ufscar.br header.i=@estudante.ufscar.br header.b="FfzWx1WS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com
 [209.85.216.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E9E010E4F2
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Sep 2025 12:16:04 +0000 (UTC)
Received: by mail-pj1-f42.google.com with SMTP id
 98e67ed59e1d1-32b959b4895so2805234a91.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 08 Sep 2025 05:16:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=estudante.ufscar.br; s=google; t=1757333764; x=1757938564;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ov+c/bZFtSWdE4f2Ei/73+xpZsgPZAaXCwBdXm2Me7E=;
 b=FfzWx1WSMEe5AEFyI7HZ/OzFmm70QhBLDgF+2Nk9sGJtFYtE3aCw2fcXzAoq0F5V9D
 uAdwz9zUAC1v7bAm1Gl2sPcXmnxOKYzSKEEAIO9x5ei6Q/Liz87ownJ/bLCcmgO25/M1
 Fe5DxLoDxmUR+Vc5Efko7gHbwjnTgSZlLNwtc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1757333764; x=1757938564;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ov+c/bZFtSWdE4f2Ei/73+xpZsgPZAaXCwBdXm2Me7E=;
 b=qX+py/oAYjwhAA+M/k7aT/y5OiUzcZVm1fHV0SNPNPD1PD3YtNqoghPjv1lQgQNz+/
 qArbWUW+BCB4/HQt6MnZBErtsciBEN9cu3Zc/wbeKoD/15dRjLbwQ1yKeoyYySdNLbKy
 PKCsvcOaUKw64XQOJk/22jH0k3ox3wAYCJk2VUKSg4RAcxx0FX8Uy8tBQxtn92abxvxj
 i+tQ5qra2T3XFiKlLeNQw046ZYDFtKOLK4/erUyDA9ZeBERVaoJFWz1bpQzxng/maxVV
 hSs+9Un1GsdyjLiclqKouKj0FhF7oDZDgTbCDcI+0plmm4++ADsp8B5jfsk92RHueM5x
 y2KQ==
X-Gm-Message-State: AOJu0Ywq2H4kKTOXP57v4cCFFnm4tpDnrV9N731KS6sObZQJJ4DcWgJd
 mh5dzMXWYRPCR0sCTZx4O8zNjw2LlkeawqGMwIY420EEE6XUW3+STwDSzeMmN2PNQvc=
X-Gm-Gg: ASbGnctoByxplJzISYYj3TIkHNfLqek5h5Dxi3u/pG9vCX47faKORbugAZ2Z4oNIYM3
 4BQ/JnD+RcHdDGb3KUllUrexA2c3S2vl/KDu2udv37EF9FSjl85Q5Aepz+pofv2ZYX3FpZiRyIb
 C7AMAay98vYWEd9w3onJtUVMzTBi+/LEyVDieFMdl4BH4jizoOFZabK2HStG39kOjdRwKti17Do
 oRJ3Dq/UCBk0fGkehC1P2juM3xm4WPEOo6vVmrw6oO21e9uD24Z4pzewIa5W7gP0p4S7OdyXTwk
 FUzWUiXRowzpXSaqBZ/jFmMe2tAvNAW9U38qVGz47h5y+SmpFPRRGoUK2+Ci9M6lqr7YX7Dfc8d
 IPhcr+fXL/KgvwOE64sieD1kmByLRgiROrzsgV4qQOxA=
X-Google-Smtp-Source: AGHT+IECIzR4ZfYmrcsRs/Xg5Pm8jsds7+MrH4rmMyqItGZC1N6J7iX1AH3m2roiEmXjJVRfiuHdrw==
X-Received: by 2002:a17:90b:3d43:b0:327:be5f:8014 with SMTP id
 98e67ed59e1d1-32d43f9546emr8653538a91.34.1757333763977; 
 Mon, 08 Sep 2025 05:16:03 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:4a5:943d::1709])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-772306a1870sm28345188b3a.75.2025.09.08.05.16.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Sep 2025 05:16:03 -0700 (PDT)
From: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
To: rodrigo.vivi@intel.com, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, simona@ffwll.ch, airlied@gmail.com,
 tursulin@ursulin.net
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 mairacanal@riseup.net, Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
Subject: [PATCH 7/9 v4] drm/i915: Clean-up outdated struct_mutex comments
Date: Mon,  8 Sep 2025 09:15:15 -0400
Message-ID: <20250908131518.36625-8-luiz.mello@estudante.ufscar.br>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250908131518.36625-1-luiz.mello@estudante.ufscar.br>
References: <20250908131518.36625-1-luiz.mello@estudante.ufscar.br>
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

The struct_mutex will be removed from the DRM subsystem, as it was a
legacy BKL that was only used by i915 driver. After review, it was
concluded that its usage was no longer necessary

This patch updates various comments in the i915 codebase to
either remove or clarify references to struct_mutex, in order to
prevent future misunderstandings.

* i915_drv.h: Removed the statement that stolen_lock is the inner lock
  when overlaps with struct_mutex, since struct_mutex is no longer used
  in the driver.
* i915_gem.c: Removed parentheses suggesting usage of struct_mutex, which
  which is no longer used.

Signed-off-by: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 3 +--
 drivers/gpu/drm/i915/i915_gem.c | 3 +--
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 15f66a7d496d..63fef3873a38 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -114,8 +114,7 @@ struct i915_gem_mm {
 	struct intel_memory_region *stolen_region;
 	/** Memory allocator for GTT stolen memory */
 	struct drm_mm stolen;
-	/** Protects the usage of the GTT stolen memory allocator. This is
-	 * always the inner lock when overlapping with struct_mutex. */
+	/** Protects the usage of the GTT stolen memory allocator */
 	struct mutex stolen_lock;
 
 	/* Protects bound_list/unbound_list and #drm_i915_gem_object.mm.link */
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 8c8d43451f35..e14a0c3db999 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -847,8 +847,7 @@ void i915_gem_runtime_suspend(struct drm_i915_private *i915)
 	/*
 	 * Only called during RPM suspend. All users of the userfault_list
 	 * must be holding an RPM wakeref to ensure that this can not
-	 * run concurrently with themselves (and use the struct_mutex for
-	 * protection between themselves).
+	 * run concurrently with themselves.
 	 */
 
 	list_for_each_entry_safe(obj, on,
-- 
2.50.1

