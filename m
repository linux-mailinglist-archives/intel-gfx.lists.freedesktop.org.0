Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EDD3B24B15
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Aug 2025 15:51:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E49110E720;
	Wed, 13 Aug 2025 13:51:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=estudante.ufscar.br header.i=@estudante.ufscar.br header.b="ON9cHFDh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com
 [209.85.215.179])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6CC710E71F
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Aug 2025 13:51:10 +0000 (UTC)
Received: by mail-pg1-f179.google.com with SMTP id
 41be03b00d2f7-b4255b4d8f9so4560429a12.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Aug 2025 06:51:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=estudante.ufscar.br; s=google; t=1755093070; x=1755697870;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=f3/Sq+vNgg4m+drlyeS3ftFb9OT2eAyB9c/v9D5qIQ0=;
 b=ON9cHFDhwgrkORtcRyEMBLk0qE7xcZhzukNXcIe+H145tHp83dPl2TGJuBL5C3UgPT
 k1MhG2Yem0uFEHOxSu7WJoc4r1e+kHSRjcuffPwDLCP9efQgiPiqN9KdNVnJrqM4vh82
 Fg5+sm2vzt8US5vKeD9NM7GEBJGcP5aONhsHQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755093070; x=1755697870;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=f3/Sq+vNgg4m+drlyeS3ftFb9OT2eAyB9c/v9D5qIQ0=;
 b=IVYbAh10XOCdEr134gC7+3DqEx/EQeemRVFl0KlloMFpajDQ3wDcNOt4hHsPZttx6h
 JycKJvKJNwYoF8/yG8dmqdyWQWTbtXarADDacrYILk6js2xvD23vOzzmUEQfZnH+I7oa
 wWPBMQmXQRroLOQHHNzcqSwVXOd07IvC1DprA1C5c4U8QUm9yg74v0fcF+ZyxqoDdAvj
 m8DYQY04vMFyx3OfL7iccExe7IPTdSQkhJQGUom8kgLs9H3kzq+W6lH/jwCZA8oHB+tQ
 gHiRJH4p1gqQ9+LOQVBcHi2twIVhgyrR/XtmcIc394V4CUW+wkmyjWmu9hjUNYP8P+mV
 /5oA==
X-Gm-Message-State: AOJu0YzPDt2M2jvWAp19aAZjVuOSsqvf7GAWD+U0pUFptSA28S8r0OCm
 HXUELKcKfvroXP3eQ+Z3LU9x7pBIek2w2Apk4lScy7wjUUvAGYfggKQQJ81v9bAJ1w0=
X-Gm-Gg: ASbGncssRFsV9mm7X/2m4tyTmRgswCro+PIe8lQ9y5ZTkuRHHBGy7b1se9Ze8liHwso
 nQJXZsASa4XWIa8rSW4xx0v+yec8f2BEmTBgmw9AlPKnoZkzaIpYwXWljDijlhwcrNzQ7Lt6OfL
 87xmyHmFE6gYr03fFDrXic1d9U3rKAq++GEIaMV5Rt805J5QkOrWuxVvj9rQ/BKpaXNKnm/jOV1
 oTarQoCiQ1C5Bj0wKXJ44iBeK9EowMa16Nc/pG5UTqDbaOQLM0B8FwauIBzP7FcWC/qectiHU4c
 CuaQTRbQylw7eAgFYBk5cZaT0k/3ish06lNS+uGt0e/gcgmdld1MQRdvPNMmSzjgt0EYKsUV+oj
 d6y7RWPVVUg4TUEbQ5O7kVyfB+LIhqDmM
X-Google-Smtp-Source: AGHT+IEABtrLeErGGK9z50OhHjjqXVJ7tkjFy2ZSHzdNWk0l0GI1AsZNKqAwIoHFv5vKo76excQqAQ==
X-Received: by 2002:a17:903:2446:b0:240:981d:a4f5 with SMTP id
 d9443c01a7336-2430d23384amr47165255ad.42.1755093070035; 
 Wed, 13 Aug 2025 06:51:10 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:4a5:8ac9::1709])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-241e8aaf855sm326965955ad.168.2025.08.13.06.51.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Aug 2025 06:51:09 -0700 (PDT)
From: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
To: rodrigo.vivi@intel.com, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, simona@ffwll.ch, airlied@gmail.com,
 tursulin@ursulin.net
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 mairacanal@riseup.net, Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
Subject: [PATCH 4/9 v3] drm/i915: Replace struct_mutex in intel_guc_log
Date: Wed, 13 Aug 2025 10:50:28 -0300
Message-ID: <20250813135035.144762-5-luiz.mello@estudante.ufscar.br>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250813135035.144762-1-luiz.mello@estudante.ufscar.br>
References: <20250813135035.144762-1-luiz.mello@estudante.ufscar.br>
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

