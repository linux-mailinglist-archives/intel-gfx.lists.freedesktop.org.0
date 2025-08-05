Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1A2EB1B6B8
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 16:40:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3615D10E68B;
	Tue,  5 Aug 2025 14:40:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=estudante.ufscar.br header.i=@estudante.ufscar.br header.b="gQT+Jf5F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com
 [209.85.210.170])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8253810E684
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Aug 2025 14:40:01 +0000 (UTC)
Received: by mail-pf1-f170.google.com with SMTP id
 d2e1a72fcca58-76bd7676e60so3308119b3a.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 05 Aug 2025 07:40:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=estudante.ufscar.br; s=google; t=1754404801; x=1755009601;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=GuPajkv8Rj4DGQtVUaBH/bpJ1pNQouNWTvzoOdjGMyo=;
 b=gQT+Jf5FVu7ncSHmJ7KnTcYEeBU1zTgXAne+LeZlGbqj6mYU5OzTep+KJ05QQEFN1F
 JOJw3pZyDACasVzxUzpYrpw04n9Jkw5w8hnFWBGS4EEvTL12tqlOkKgOGY/2/zbOkzyR
 aTDf+pHOcIZi+p/Ix7PSor54bZ+7TRtnVHoi4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754404801; x=1755009601;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=GuPajkv8Rj4DGQtVUaBH/bpJ1pNQouNWTvzoOdjGMyo=;
 b=eICneHo4n7BFlEsu1FpEosqKua/wen6TgVM8fuIfVB0rPDbMrmDIq5HRuZO/lAP4KO
 4ZTOnb2BoK1xBQRkCjY8Y4R7S/nEP87zIguKAqZceIQ0DH1mndrz1j51sSrkqdpAhhZI
 g/ZO0FUDoS7j5+nj8R4DpmMKPMDXHiVaO6n2zo8Qg6BQVrFBQO1wkou0vZtk4l4T4rii
 eWbozlspqQcAQSDdwVhOpAYPTI/BoUZn2RoegALnjRhun/GklThSUMCBJe0nZz5r+3Gs
 y9xqP+bWFyIIHaKYMwRMGFgoulYSS4YzVxBAQfTkBIgtB3eeWD0R4jtYGGwMK40xTFAA
 dBZw==
X-Gm-Message-State: AOJu0Ywj65Nfm3nVvYfeFBm23cRvXYRZRwvCD5GKgYNuW2qHNvW2MHYN
 +8esfra60/VSqN6RCwwIeqwP1ZednY52mfg8b1AO4/+fMEODLxSaZhemVaUyVS5nPos=
X-Gm-Gg: ASbGncs15meV9OkLndTHvC2MlwEaykQs2++ODj1hVdMdiGj95rPR5KwhUvOCPsoQ50d
 rdzGyT8sfygInTyPLeiuLDZKCuWwShPVkcUs3IKw/6N9YU8g1QMTJQkxOWfkcWfs7ieEIfVltdg
 H2YeZWWdx4U1IpfVRMUnt60HjKphy2pskAOOIsk4WWVYfU2xRYcXqk4Gm8ZlCy/QYf6FMNnqLWM
 Q1P6AcHkZ1FnkI2YTYtja5txlh3cr3nUOpG65g7BkvI6HLrCAcKuFshPBgJSEuPuDWrAjJqEn3g
 KUFBCxRpSnna8LYS/2l1aJA5i5KZidJs2uIlcvhhzDNEUehta0Tx0pgMaL+D1Un62PiXXSb/d8q
 tWj28mNTIJyLbcPvm8DUQcHX2ccbE+08J
X-Google-Smtp-Source: AGHT+IETxXdk6w9BhrIqYgbACswhY2KN4FG8lPYVK0UcXekO4kesVPAqiL7E6LBnealFUrETrpGA5A==
X-Received: by 2002:a05:6a00:1254:b0:76b:e109:a1f4 with SMTP id
 d2e1a72fcca58-76bec4812c8mr18406518b3a.12.1754404800906; 
 Tue, 05 Aug 2025 07:40:00 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:4a5:8ac9::1a55])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-76bf1c6d5dcsm7899757b3a.74.2025.08.05.07.39.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Aug 2025 07:40:00 -0700 (PDT)
From: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
To: rodrigo.vivi@intel.com, joonas.lahtinen@linux.intel.com,
 tursulin@ursulin.net, jani.nikula@linux.intel.com, airlied@gmail.com,
 simona@ffwll.ch
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 mairacanal@riseup.net, Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
Subject: [PATCH 4/9] drm/i915: Replace struct_mutex in intel_guc_log.c
Date: Tue,  5 Aug 2025 11:38:59 -0300
Message-ID: <20250805143908.32343-5-luiz.mello@estudante.ufscar.br>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250805143908.32343-1-luiz.mello@estudante.ufscar.br>
References: <20250805143908.32343-1-luiz.mello@estudante.ufscar.br>
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

