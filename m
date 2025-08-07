Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B46ECB1DC38
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 19:03:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2556F10E896;
	Thu,  7 Aug 2025 17:03:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=estudante.ufscar.br header.i=@estudante.ufscar.br header.b="rLcnI8OO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com
 [209.85.215.171])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25C9110E899
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Aug 2025 17:03:19 +0000 (UTC)
Received: by mail-pg1-f171.google.com with SMTP id
 41be03b00d2f7-b424d2eb139so1859054a12.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 07 Aug 2025 10:03:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=estudante.ufscar.br; s=google; t=1754586198; x=1755190998;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=XmaAeFFWA6mt3OmAOl1hmXirLGR6yM9w72q3d5laiXI=;
 b=rLcnI8OOLqJhgdrUgEoMuyjG96cthW/uCsHyrfQMisL27tvQR3t45geCEeXsuEBzMe
 qRXqb9EJ7ybqKEW1spQvGDbMPjyhACkbtAVfFGeC1bIBl4gU0TQnKThWe3I4aimEpe0p
 az4auNb1UKgNd70Nn9Byr7klgC6Yoqe9VwSDg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754586198; x=1755190998;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=XmaAeFFWA6mt3OmAOl1hmXirLGR6yM9w72q3d5laiXI=;
 b=oAQ33csrf3Zb43VqaHOLpVWHiUwM6+lpmpZUiLDD0UGped+QixUWaOoio6cGkfa1oz
 aLwn6dUtzn2T21Fq/xpy0DuMw2jjbP7bLJFGM3Jgpcs7MG/XTQhSxYm4jq8kGkEaJcF6
 Xy02P40OfPvz3pvMwnquYBVQiiy+Zgi5rcAGFW8Qeu1gf15uf36iKMfSKzOzLgcklwxa
 WRzFR8mJ5+jic8enN7QrOOgVn49YlZn8/2jhqsTSQ60NBCQqLxBgnPz/nclzKF3NFu3k
 xUyrzRBp+1WgZyxyR6Dn6b7/vjEyP1NMUmZh1nW3IdncfEk0kLbx9zmYLAjgO4R6ssBq
 +7Ig==
X-Gm-Message-State: AOJu0YwCeBKJrlsaAirTE8dl8xvgMZ8DHuc+LUyD5IWI5kmLxTBF5/FY
 ObgPk3i7KmAUj98uWdhynCAGFvRO3hSJbPRP0+qYIV7Wg/0rG8eYmWqJjo/HOKvbJpo=
X-Gm-Gg: ASbGnctdOUh9sGHXzrdgQio6Lk1bxB/3i3R4zdy2fG2u9dzdHiZh4Ul804Kt6Jk1dob
 hXX2K0ryvRNL2IAGKkO7o2wHJC2jtcx2ZaHn1JKaaDcsvNWhnbWKI3KNAltPJDMWzWQCDImSQH7
 xU5U5/Hq1jFrTTUfyLQOdc+8D74QMZjxkJwJFRFT3gueiaIvEEsxZtrqnL7NBugmNM06H0yY+jS
 v7m7laVTn8uoyM+XnrQLcEFbSSgUDm/LgSytVsl/1+uMmjnTE0P35GSbfPEv3lPlrt2AmSc57wO
 s9gp1mDhuOkCy1TARYby34Bzi2FrfJuPyNIJYLP0kufDiC18+DWRjaVP0fzEfjBC/zYQz7qHmN+
 a8/JcHyiOEOYztZ2qck4P6klCi5G/nRS8VZiHVA23Fhc=
X-Google-Smtp-Source: AGHT+IEI+JqvxbyxwILUffJ1WOEQOIA2orP1uY5gZpeHknGUKbCPNXTGJJqdNmt208+XJ303Y0DxaQ==
X-Received: by 2002:a17:902:c943:b0:240:8381:45b9 with SMTP id
 d9443c01a7336-242b0640515mr71168295ad.8.1754586197488; 
 Thu, 07 Aug 2025 10:03:17 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:4a5:8ac9::1a55])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-241d1ef7c30sm188804875ad.37.2025.08.07.10.03.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Aug 2025 10:03:17 -0700 (PDT)
From: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
To: rodrigo.vivi@intel.com, joonas.lahtinen@linux.intel.com,
 tursulin@ursulin.net, jani.nikula@linux.intel.com, airlied@gmail.com,
 simona@ffwll.ch
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 mairacanal@riseup.net, Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
Subject: [PATCH 3/9 v2] drm/i915: Change mutex initialization in intel_guc_log
Date: Thu,  7 Aug 2025 14:02:02 -0300
Message-ID: <20250807170212.285385-4-luiz.mello@estudante.ufscar.br>
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

The intel_guc_log->relay.lock is currently initialized in
intel_guc_log_init_early(), but it lacks a corresponding destructor,
which can lead to a memory leak.

This patch replaces the use of mutex_init() with drmm_mutex_init(),
which ensures the lock is properly destroyed when the driver is
unloaded.

Signed-off-by: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
index 7135fdb0ebb4..469173791394 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
@@ -6,6 +6,8 @@
 #include <linux/debugfs.h>
 #include <linux/string_helpers.h>
 
+#include <drm/drm_managed.h>
+
 #include "gt/intel_gt.h"
 #include "i915_drv.h"
 #include "i915_irq.h"
@@ -512,7 +514,10 @@ static void guc_log_relay_unmap(struct intel_guc_log *log)
 
 void intel_guc_log_init_early(struct intel_guc_log *log)
 {
-	mutex_init(&log->relay.lock);
+	struct intel_guc *guc = log_to_guc(log);
+	struct drm_i915_private *i915 = guc_to_i915(guc);
+
+	drmm_mutex_init(&i915->drm, &log->relay.lock);
 	INIT_WORK(&log->relay.flush_work, copy_debug_logs_work);
 	log->relay.started = false;
 }
-- 
2.50.1

