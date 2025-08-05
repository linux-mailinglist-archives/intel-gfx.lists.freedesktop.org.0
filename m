Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF645B1B6B5
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 16:39:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D1FE10E683;
	Tue,  5 Aug 2025 14:39:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=estudante.ufscar.br header.i=@estudante.ufscar.br header.b="vu2b/PJd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com
 [209.85.210.174])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB4AA10E684
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Aug 2025 14:39:55 +0000 (UTC)
Received: by mail-pf1-f174.google.com with SMTP id
 d2e1a72fcca58-7425bd5a83aso3839535b3a.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 05 Aug 2025 07:39:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=estudante.ufscar.br; s=google; t=1754404795; x=1755009595;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=XmaAeFFWA6mt3OmAOl1hmXirLGR6yM9w72q3d5laiXI=;
 b=vu2b/PJd4uPHhvRFNuT4Hp1KY9O1+s9JVNnqviUWUl6sTnpwGIPl6d/Lw7axOh5i7a
 XwpbEuPOkAh8re2JFaZh/PZkvioe+Ded8EGT3xxtXY0cmw/qeGVgcpqEEV/NJGl5lHFl
 0rmW6SVV4qgsWFaUWAaUEWNKaNc7VTeIzSOLE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754404795; x=1755009595;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=XmaAeFFWA6mt3OmAOl1hmXirLGR6yM9w72q3d5laiXI=;
 b=so6LzAL45Q0welxG+Q1qTZqBxa8KJGl3rZjKKqSn7s5dXY3ib3gbJh8Ws4MAtuORml
 qaUR8pfhJ9JtWPo7hWbJCl6BQ43eOV+SnN5gja2vsQmnrogHj4jXu2omBLuX0A+at36k
 uxETd+BrzbLZyQhhwxUWip3SpEhRuMi4lPQsmGhFHv4Kwn+aOWsHa3dxlXR6xHmH3UvD
 V3cF5WSnhmXfBzxP+oNlhx1VJeKfyFAxKmGQ2+mowYxnwS3fBwmhJ4j6yGRDOP7M5geS
 0b+YBJMjGccjNWbvqQTMe8vP5uqkniu3JvE3byH/9Of/ctSCaBX9laByAokaZj6qe4F6
 2lVw==
X-Gm-Message-State: AOJu0YwKU4TmalensJNdRle10DsDKg1N9LWC3VN1vpEdZ9idcF0250nF
 3XEfBkDvsVEmdFu77Ed0TxX4zvroSdOk4CGnWzoGgdSjPr36v+sGM4hJ2hX51DcFlIs=
X-Gm-Gg: ASbGncsX6NvGvkdAinjXshdDrbQI8OEyJxoamDuvAx8mUFdnIWifinJRoqZ7V+1vRhu
 e3MGOmQLzqaLb8wZ9X+srUNHv67P/3Fo/nUQDhBn5JwrQQ/+iV9moeMX8kLF70txMzCgIoCbJ/a
 qWYvWFZTTr6ohQX5nOCT3/RgR4bKGlcu1fD4Nsw5flw5XpCmYYNBFkbnu6wuHgbpcp1pseTCgLT
 kZCZ57yimSR9dp8sYuEX6PdMvnZGob7k50Q8RUi0/IIax7yHy2bpCh8Wclc1WC+ycR4g2iGM4ZH
 V9SA4/eFhfFUUE0Z2LEYV/bCv/c26y2YiR1M0MvHqMehf87s+rKHTjiWO5hHo4+Bi2n8kmyJXF4
 giqDaHPySVVmgALgYfvMFfgOOC5zyvReD
X-Google-Smtp-Source: AGHT+IGXbnMufTQYhJbGUzUbCVyWyhz1lLbkM4HcM19cgNZrt6bqz6Zzz7JaYJTfGgS5AfKm+drr3w==
X-Received: by 2002:a05:6a00:3a04:b0:769:a6a2:fe1e with SMTP id
 d2e1a72fcca58-76bec48b167mr16563581b3a.11.1754404795277; 
 Tue, 05 Aug 2025 07:39:55 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:4a5:8ac9::1a55])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-76bf1c6d5dcsm7899757b3a.74.2025.08.05.07.39.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Aug 2025 07:39:54 -0700 (PDT)
From: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
To: rodrigo.vivi@intel.com, joonas.lahtinen@linux.intel.com,
 tursulin@ursulin.net, jani.nikula@linux.intel.com, airlied@gmail.com,
 simona@ffwll.ch
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 mairacanal@riseup.net, Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
Subject: [PATCH 3/9] drm/i915: Change mutex initialization in intel_guc_log
Date: Tue,  5 Aug 2025 11:38:58 -0300
Message-ID: <20250805143908.32343-4-luiz.mello@estudante.ufscar.br>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250805143908.32343-1-luiz.mello@estudante.ufscar.br>
References: <20250805143908.32343-1-luiz.mello@estudante.ufscar.br>
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

