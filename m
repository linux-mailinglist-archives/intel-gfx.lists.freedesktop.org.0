Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF4E4B1DC3E
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 19:03:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A73710E8A5;
	Thu,  7 Aug 2025 17:03:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=estudante.ufscar.br header.i=@estudante.ufscar.br header.b="CiL7S3kg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com
 [209.85.210.174])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B2D510E8A2
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Aug 2025 17:03:38 +0000 (UTC)
Received: by mail-pf1-f174.google.com with SMTP id
 d2e1a72fcca58-7425bd5a83aso1305714b3a.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 07 Aug 2025 10:03:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=estudante.ufscar.br; s=google; t=1754586217; x=1755191017;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=5ZiTawsNty9h+99yOb8KIpC+axpRTSXewrJjYttsLoU=;
 b=CiL7S3kgAaUAIyd9J7Xt8uSjy43JBSJfxrhA+L/KbjvxY6MrG/n3M2Mko0O5wBsCwx
 cHWCvxrdT7ciFvZbiq/d2egCoukv9XOkp6jrAiv87MBOJlOMIi263oBkjwfMJ/c0BBQk
 RfkIMttqoNDzTuKN3Wec+jQ1Iuvj7vqDiGg4c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754586217; x=1755191017;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=5ZiTawsNty9h+99yOb8KIpC+axpRTSXewrJjYttsLoU=;
 b=r2SeRSu5e0o+p5HiG+cIiwNRCYO5EVvHrUWe42j7RWlAGDP7BVo4jhz+qMKFn55hY/
 1PhRJn3JrHeEmEPJeh5a5FwkbARxth9Q+etc2Q4bXIyl1bo+87OQfv/rGUbXQs1/3tI3
 A+w8Oi311MHZ0LtID/7Z9jJ2KV5Fq/fH/7jSBqQHQ93mhHBpSuboG/trObBHN3Elsvsq
 H4IEl/oaqs7QdaKesnn+C0Dm/WCZkfJzOwYYkEFdHZSX/Xpb/fwZ7xbIquJG5Dc8Bq+c
 SmZObOICPX2Z23yDaUSB8xYRnlGQE7XzFUcZG2PXvRg9Ta7eIxtVxHiq8crRdhFGj7lv
 8WgQ==
X-Gm-Message-State: AOJu0YxLxhMa4uAqAns71scvKxzIaTflFV6d4fkWmBElEqRFSChGgW21
 EXST0Nucn3e+EuLqQZ7whYJrgtuwza6ZbIUigpNE/OvQv5HWapcp0YOSFW62c89wlPs=
X-Gm-Gg: ASbGncuTdHm9dFqqy3wTr3Hd+XEf5QJeoGn89bKuHk7dXfqsJdeu9iI1gl2otgDUogq
 PrfsgS6+f9jJJzD+8dsvo0PxnMURYFpOxQHgmCP9uFoFwJwwlyT87oHIbhuL3w6FaJwRwP+vngd
 FxV/L6LfYkoKQlcem/WxQhXH+X4vPTNU3a9dK/O4kN5yuEdTW4kpNyFaCllqdcpDUNYMwRW/51V
 AVqqnihv+Q3JDXXgKP2luL8VtH73lRwiKSytYsuqm6XsemEzMYt91BvsPG1k6XTBnY3EN1t496q
 bg8vGyJtkGprtX6L0ChOf9uYXkvKhqqIDFcW9IapJvRug4Jdey4XFiyxTCCItpF0NNBJlqd/QVj
 2g2rQXwPY4n7RAvA3Slt4kusc4xzhUbmP
X-Google-Smtp-Source: AGHT+IE/Quu9771YvMy2Yspf77hfiYo2Jll59NF1OJagaIwjOshMnePxHTArM42crEdfWMHZlWtOlA==
X-Received: by 2002:a17:902:e944:b0:23f:d47a:c9d3 with SMTP id
 d9443c01a7336-242a0b00209mr90298105ad.15.1754586217339; 
 Thu, 07 Aug 2025 10:03:37 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:4a5:8ac9::1a55])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-241d1ef7c30sm188804875ad.37.2025.08.07.10.03.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Aug 2025 10:03:36 -0700 (PDT)
From: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
To: rodrigo.vivi@intel.com, joonas.lahtinen@linux.intel.com,
 tursulin@ursulin.net, jani.nikula@linux.intel.com, airlied@gmail.com,
 simona@ffwll.ch
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 mairacanal@riseup.net, Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
Subject: [PATCH 6/9 v2] drm/i915/display: Remove outdated struct_mutex comments
Date: Thu,  7 Aug 2025 14:02:05 -0300
Message-ID: <20250807170212.285385-7-luiz.mello@estudante.ufscar.br>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250807170212.285385-1-luiz.mello@estudante.ufscar.br>
References: <20250807170212.285385-1-luiz.mello@estudante.ufscar.br>
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

This patch update a comment about struct_mutex in i915/display, in order
to prevent future misunderstandings.

* intel_fbc.c: Removed the statement that intel_fbc->lock is the inner
  lock when overlapping with struct_mutex, since struct_mutex is no
  longer used anywhere in the driver.

Signed-off-by: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index d4c5deff9cbe..aaaabba77b88 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -98,11 +98,7 @@ struct intel_fbc {
 	struct intel_display *display;
 	const struct intel_fbc_funcs *funcs;
 
-	/*
-	 * This is always the inner lock when overlapping with
-	 * struct_mutex and it's the outer lock when overlapping
-	 * with stolen_lock.
-	 */
+	/* This is always the outer lock when overlapping with stolen_lock */
 	struct mutex lock;
 	unsigned int busy_bits;
 
-- 
2.50.1

