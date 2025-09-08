Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0331B48D1D
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 14:15:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBE1010E4E3;
	Mon,  8 Sep 2025 12:15:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=estudante.ufscar.br header.i=@estudante.ufscar.br header.b="ittK+z15";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com
 [209.85.210.176])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9963E10E4EC
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Sep 2025 12:15:50 +0000 (UTC)
Received: by mail-pf1-f176.google.com with SMTP id
 d2e1a72fcca58-77287fb79d3so3458928b3a.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 08 Sep 2025 05:15:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=estudante.ufscar.br; s=google; t=1757333750; x=1757938550;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=f3/Sq+vNgg4m+drlyeS3ftFb9OT2eAyB9c/v9D5qIQ0=;
 b=ittK+z152Y1/zmhYv22AD6EsOq1kqrePQSm9DOTWlUj3gLndLcl+uvFFXP74iY2vyE
 kua8JJeo7XRMPxhjXAIh8Z7Tsp0ejB9Q31IQmzBzZUlcnXl1k8ceocfAbpJlSlWPS+hw
 c8Dvh8LY3msJIJstBLhXAaBqw8cMuA5XWy1JQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1757333750; x=1757938550;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=f3/Sq+vNgg4m+drlyeS3ftFb9OT2eAyB9c/v9D5qIQ0=;
 b=BElF709H/CQUTx09+nW/satENUC7n147byMdqr5vjp/70YEtE3wDfM8Qgk6qGrrE9f
 /VXLaaNih+RbVCRO+QU/hAkmYtmcEIjcTqIW3aKHp91Oxnn5Pjo8iUS0R/1LuRLE6O6z
 NcDcx71h9Ie9bfKghRyexNlXeEShTQTvpHelH7Efc2HlRV4BAGmcTslkibGsnM3H6PP2
 4P2XJQq//SQObR4/ZtnrQWmMzrA8ICaZsregbM2zgWz6II+UCGsoowlTuvCx1TzNNufX
 54ykymciCIFRQvvst/lX0gtw3ZONePbwMU2/9l7dTTefi9LOWE291gcYB2OXjqqMrKDG
 PeAQ==
X-Gm-Message-State: AOJu0Ywpoxu8V/yqVpTqZlvRZDfEe8Q9jxwwlAe20U1kJKc/6MH+JBu5
 Tym5IS54MY5F6leZODQupBI6lQuu4mjJ5aOCWqkBrWjHoPNVlDsxfi75S2NW/N2PaQo=
X-Gm-Gg: ASbGncuaLylY9Z5SYqOKD1suQAfxCXtR/APOq2eHKxztbxnG0KGMUZNn+B81wXNaxsK
 b1LfoHAuNUxGwrjr9agVjtRfkjEWf1Z1EUwDpSDe8Ijuc7z/Bj19A7XdViDec/ZccROPfL4LRgS
 6OeTdMJC/KkdjR9Y3aDiB3CpY/4qI8dqbYxlthofna8vPM2505GcbQnE5laaYQXW/i4StiaQVGN
 r5SBwhYgzU+CUTCQZJ3oHOCXgHw3p/aYgq1wtL0tLAVEk2DmPXxjDRl/qo5ffk58PAdcZxItxfi
 vJhBk0d/wCTlG6IEkfJUM8SOUwDXoCp/b4GUt0X8NSrZ1sy18aKj19MoNLIY2qRXZ7/QRIZBUTH
 dgLUfBSVH19nvTp9r7DL6EO91oTcKDXE6rY6Z+d1vgTs=
X-Google-Smtp-Source: AGHT+IF6VOuSVeyrb5NhQEAvWBO8/spLKmsABNvmUJGsSnK4sSB4famjs3m8g6bKGN1xPQVz8+Jw5Q==
X-Received: by 2002:a05:6a20:3d05:b0:251:2a11:e61 with SMTP id
 adf61e73a8af0-2533d226181mr10991779637.17.1757333750093; 
 Mon, 08 Sep 2025 05:15:50 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:4a5:943d::1709])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-772306a1870sm28345188b3a.75.2025.09.08.05.15.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Sep 2025 05:15:49 -0700 (PDT)
From: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
To: rodrigo.vivi@intel.com, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, simona@ffwll.ch, airlied@gmail.com,
 tursulin@ursulin.net
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 mairacanal@riseup.net, Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
Subject: [PATCH 4/9 v4] drm/i915: Replace struct_mutex in intel_guc_log
Date: Mon,  8 Sep 2025 09:15:12 -0400
Message-ID: <20250908131518.36625-5-luiz.mello@estudante.ufscar.br>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250908131518.36625-1-luiz.mello@estudante.ufscar.br>
References: <20250908131518.36625-1-luiz.mello@estudante.ufscar.br>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Remove the use of struct_mutex from intel_guc_log.c and replace it with
a dedicated lock, guc_lock, defined within the intel_guc_log struct.
    
The struct_mutex was previously used to protect concurrent access and
modification of intel_guc_log->level in intel_guc_log_set_level().
However, it was suggested that the lock should reside within the
intel_guc_log struct itself.
    
Initialize the new guc_lock in intel_guc_log_init_early(), alongside the
existing relay.lock. The lock is initialized using drmm_mutex_init(),
which also ensures it is properly destroyed when the driver is unloaded.

Signed-off-by: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
Suggested-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c | 5 +++--
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.h | 8 ++++++++
 2 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
index bfa02a17038f..cdff48920ee6 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
@@ -517,6 +517,7 @@ void intel_guc_log_init_early(struct intel_guc_log *log)
 	struct drm_i915_private *i915 = guc_to_i915(guc);
 
 	drmm_mutex_init(&i915->drm, &log->relay.lock);
+	drmm_mutex_init(&i915->drm, &log->guc_lock);
 	INIT_WORK(&log->relay.flush_work, copy_debug_logs_work);
 	log->relay.started = false;
 }
@@ -682,7 +683,7 @@ int intel_guc_log_set_level(struct intel_guc_log *log, u32 level)
 	if (level < GUC_LOG_LEVEL_DISABLED || level > GUC_LOG_LEVEL_MAX)
 		return -EINVAL;
 
-	mutex_lock(&i915->struct_mutex);
+	mutex_lock(&log->guc_lock);
 
 	if (log->level == level)
 		goto out_unlock;
@@ -700,7 +701,7 @@ int intel_guc_log_set_level(struct intel_guc_log *log, u32 level)
 	log->level = level;
 
 out_unlock:
-	mutex_unlock(&i915->struct_mutex);
+	mutex_unlock(&log->guc_lock);
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
index 02127703be80..13cb93ad0710 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
@@ -42,6 +42,14 @@ enum {
 struct intel_guc_log {
 	u32 level;
 
+	/*
+	 * Protects concurrent access and modification of intel_guc_log->level.
+	 *
+	 * This lock replaces the legacy struct_mutex usage in
+	 * intel_guc_log system.
+	 */
+	struct mutex guc_lock;
+
 	/* Allocation settings */
 	struct {
 		s32 bytes;	/* Size in bytes */
-- 
2.50.1

