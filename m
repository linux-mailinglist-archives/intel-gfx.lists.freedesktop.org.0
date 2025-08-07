Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8FD7B1DC39
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 19:03:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16FBB10E89C;
	Thu,  7 Aug 2025 17:03:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=estudante.ufscar.br header.i=@estudante.ufscar.br header.b="tIDJEvU0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com
 [209.85.214.176])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13B6910E89C
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Aug 2025 17:03:24 +0000 (UTC)
Received: by mail-pl1-f176.google.com with SMTP id
 d9443c01a7336-24049d16515so10450385ad.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 07 Aug 2025 10:03:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=estudante.ufscar.br; s=google; t=1754586203; x=1755191003;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=GuPajkv8Rj4DGQtVUaBH/bpJ1pNQouNWTvzoOdjGMyo=;
 b=tIDJEvU0v1J13hhx2+9ti2Wemm9ErYnBE89F70s/MGe9Ftj2ATh/MaKczx8PI0ByHw
 uuB98l07dnG2AsAw710YAGmN3+0oM0k7sOdIIMsjzK5C3m1g4vsV6Za8bLK0mMY+LRgd
 xOVdfbabgeqz+7q6oI4cT7ZyVLdWFVt99j1B4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754586203; x=1755191003;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=GuPajkv8Rj4DGQtVUaBH/bpJ1pNQouNWTvzoOdjGMyo=;
 b=ax0roLXHLopGZuCX5xQOqDqZZZjuPxaF9TR1E9s/nrEsEai6lNgK+o/80IK9KKWaHu
 zGefKIfhy0XfAKhlskQ5M1VwgnKbme7UrpoHYj5QtaDBWU0SD9aWqApYnpwD5OKoPYBD
 j1XeMuflaHBb/ikda8o/JxQ2kCVE0zrXlp2heArE99vfts3nYD91if9ucA/sOUEIu29W
 wXprrtDlKOeCdS6xLYrfOwZWzyoiJoA8nymOb47WgdL69sYOCRJ3i3gcsOQsbKfKJx0E
 4Pvz1ZbHp4O+rkhekbSfwzjvAJjKpxcyiGhJJULaSrl2QyDIFjNo00y2m/eo2UP56hDw
 8clg==
X-Gm-Message-State: AOJu0YzWdeBV/4UMi2Oacjq5mCoOVT67RW+xuEUO0s2ClgWgY3U2tlj9
 DcHCmqZOy6okPAMYJlNLqnQht5Un3sENid8Auv+fJZ/gLVLgumerNq5z+7JzFkV32LY=
X-Gm-Gg: ASbGncuLr8qBWRBnA3rBc94kbKZolmXoHrWlzE8FDfS8QkBZ17Pu/KCa/Lx9TGpuvGl
 IMJdaWKlI/jLK3x1fITVGhOssIayDqDgH9854keYorjIez3a054rCePwkMx+fLUyQSbmIB/rtx+
 qkx05ghTjdJJl3e5Ju8bgPxqSp1x5Jplnhn0ZSpXboTb7zNSrppnDbCsVQsQ08unsYAm6jridLD
 Vqe375lo9K3Langw0RGTPEFlgU5ZIOpfyahVPNVx9AyvYvslPGFud8rlltJpZJBrCql5zxDfUfW
 ucPqPXbX7scErSLr7jXcqJqu7lj7s9gSwqJPw95OOjdQiLTlM3aInLB7RH1GTUsFORSaImnVlAu
 sto3tU6sDmgKtZOf07J+r+S+mYgCmGhzvng8YiPruzEU=
X-Google-Smtp-Source: AGHT+IELxejrEAF3OtmrlY4OBEC06i/OSTIeEyG4BP7NxumGdCuXbdlcGsK0eX+BprjV4g0+1hcqFQ==
X-Received: by 2002:a17:902:ef46:b0:235:7c6:ebdb with SMTP id
 d9443c01a7336-242a0ae469dmr85328265ad.10.1754586203414; 
 Thu, 07 Aug 2025 10:03:23 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:4a5:8ac9::1a55])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-241d1ef7c30sm188804875ad.37.2025.08.07.10.03.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Aug 2025 10:03:23 -0700 (PDT)
From: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
To: rodrigo.vivi@intel.com, joonas.lahtinen@linux.intel.com,
 tursulin@ursulin.net, jani.nikula@linux.intel.com, airlied@gmail.com,
 simona@ffwll.ch
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 mairacanal@riseup.net, Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
Subject: [PATCH 4/9 v2] drm/i915: Replace struct_mutex in intel_guc_log.c
Date: Thu,  7 Aug 2025 14:02:03 -0300
Message-ID: <20250807170212.285385-5-luiz.mello@estudante.ufscar.br>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250807170212.285385-1-luiz.mello@estudante.ufscar.br>
References: <20250807170212.285385-1-luiz.mello@estudante.ufscar.br>
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
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c | 5 +++--
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.h | 8 ++++++++
 2 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
index 469173791394..0104fffd5852 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
@@ -518,6 +518,7 @@ void intel_guc_log_init_early(struct intel_guc_log *log)
 	struct drm_i915_private *i915 = guc_to_i915(guc);
 
 	drmm_mutex_init(&i915->drm, &log->relay.lock);
+	drmm_mutex_init(&i915->drm, &log->guc_lock);
 	INIT_WORK(&log->relay.flush_work, copy_debug_logs_work);
 	log->relay.started = false;
 }
@@ -683,7 +684,7 @@ int intel_guc_log_set_level(struct intel_guc_log *log, u32 level)
 	if (level < GUC_LOG_LEVEL_DISABLED || level > GUC_LOG_LEVEL_MAX)
 		return -EINVAL;
 
-	mutex_lock(&i915->struct_mutex);
+	mutex_lock(&log->guc_lock);
 
 	if (log->level == level)
 		goto out_unlock;
@@ -701,7 +702,7 @@ int intel_guc_log_set_level(struct intel_guc_log *log, u32 level)
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

