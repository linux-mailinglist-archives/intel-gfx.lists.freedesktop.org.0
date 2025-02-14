Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21DFFA36247
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 16:52:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A1DA10ECF9;
	Fri, 14 Feb 2025 15:52:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="TISusecS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com
 [209.85.214.178])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C9CA10ECF9
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2025 15:52:26 +0000 (UTC)
Received: by mail-pl1-f178.google.com with SMTP id
 d9443c01a7336-220e6028214so31731215ad.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2025 07:52:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1739548345; x=1740153145; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=40od1Rm/7/JqqeDFeUjqOOgb+OZDXcwBsUab/e2vVSU=;
 b=TISusecSduOK3maZtTpOJlNENTIp9aFLepkp2mN4VEsAkft7QLV+/F9tXZ2rGdoV4t
 l/8IPohxJxcPeFjuuK/p3ycGqhFw/bZNdWtDd8wMfF2ujZs8FYxHPxwnpfD/vp7ITEiS
 /zA2gryjdDTvCVUwJzCJqALqROqDQ2+iv57jh4yhQ22ZvRM0NkNzp1r28tFyGwWfugB0
 xklRUv0Hp+hELivyTsnYnv0ilcISLY5iimIqzbIjwJK5esUekzr50p+HgF7VLRn7kLZ0
 qJQgD5jI0CkNJ+P6CmUF47sIfjy6jvOPCG98CuVYfMqZ1tz/+TRgF+tPj0yX6vYAtOu8
 pF8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739548345; x=1740153145;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=40od1Rm/7/JqqeDFeUjqOOgb+OZDXcwBsUab/e2vVSU=;
 b=MrAwISgIttr+ldwO+0EL6dJJUga319FHFrJSYlsMG3FOgtP7uO1IL9n4Zz2ckg+qMK
 Q9p7xOunbnseIYcdMxbemPyZ/Q86y9b7hKcH3Xf2ZKq5x8YGdF51j90sut9mX6+CeALa
 25O8PPJJmex6yYEAAn6irO+hFQqLkegGnSIaAPLxa4HV3yJDgdeyO6V56tY5+Olzswdx
 xsJ8pd3YgR6fCxhneX/AecMsVcfqmkHudliSwNsOkQ5CW5/j0okG+KydUwQ97m2zUrr+
 1Ycn2uYPDFLEVz7IYgrgLSQZKYw7WqtMi+IqIn1gEKXgxHpule6JK68pk2gjABnAYt0w
 cYRA==
X-Gm-Message-State: AOJu0YzslAIbQFAOaD04ugtMbC3ozsOMQU92bMAzDYpA5gaYWxe63QDr
 GeJSULBIoxb/iVq928/UDZz+RHwSIVBkaJUAvt0t04kJ2LUEDjhUVFLJpCC6dX8=
X-Gm-Gg: ASbGnctzMNPXTXoVfsnYEXJ9V06faJfI1JNvIvS/OlXLqBb6eL2fd1QljzhsN21b3MR
 9Eg/zMHvcks1EM4+QX/dDSbV2YWIBnCsqxmroDX3S/p4W7LN43086ZY5CEYDJGSHoouLSTDPl6F
 NhzILHvFsjhRDUz59w3qi9OWdN/4hZ1Z8WPOetqPv39V75WCE4dhpaYj4xKJZTLUjJUbo3Xe+8S
 MvizPu2r4qo6/1KbAOXZGd1loc8yAx4h4s8LuPCMciXzdeg+5sQhCb4Mk0iLkxl/ouUw2FXT7hU
 pl0cwjK/3TdmzOswo/GF
X-Google-Smtp-Source: AGHT+IFSqPL3M92Y+PP9cQAklDCBfId0DQuuxt1ZpwmNXVzsTvdIYsMcKMf/GmB5qQ4YeYnH47ILIg==
X-Received: by 2002:a17:902:c40a:b0:21f:7880:8473 with SMTP id
 d9443c01a7336-220bdedcc72mr190995265ad.11.1739548345443; 
 Fri, 14 Feb 2025 07:52:25 -0800 (PST)
Received: from localhost ([192.55.55.44]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-220d545d474sm30295975ad.116.2025.02.14.07.52.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 14 Feb 2025 07:52:25 -0800 (PST)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
	andi.shyti@intel.com
Subject: [PATCH v2 1/1] drm/i915/xehp: add wait on depth stall done bit
 handling
Date: Fri, 14 Feb 2025 17:57:11 +0200
Message-ID: <20250214155712.2849848-2-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250214155712.2849848-1-juhapekka.heikkila@gmail.com>
References: <20250214155712.2849848-1-juhapekka.heikkila@gmail.com>
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

Add writing of WAIT_ON_DEPTH_STALL_DONE_DISABLE for gen12, this
is performance optimization.

Bspec: 46132

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12411
Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 3 +++
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 6 ++++++
 2 files changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 6dba65e54cdb..a6e50af44b46 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -409,6 +409,9 @@
 #define GEN7_SO_PRIM_STORAGE_NEEDED(n)		_MMIO(0x5240 + (n) * 8)
 #define GEN7_SO_PRIM_STORAGE_NEEDED_UDW(n)	_MMIO(0x5240 + (n) * 8 + 4)
 
+#define GEN8_WM_CHICKEN2			MCR_REG(0x5584)
+#define   WAIT_ON_DEPTH_STALL_DONE_DISABLE	REG_BIT(5)
+
 #define GEN9_WM_CHICKEN3			_MMIO(0x5588)
 #define   GEN9_FACTOR_IN_CLR_VAL_HIZ		(1 << 9)
 
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index db04c3ee02e2..116683ebe074 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -742,6 +742,12 @@ static void gen12_ctx_workarounds_init(struct intel_engine_cs *engine,
 		/* Wa_1606376872 */
 		wa_masked_en(wal, COMMON_SLICE_CHICKEN4, DISABLE_TDC_LOAD_BALANCING_CALC);
 	}
+
+	/*
+	 * This bit must be set to enable performance optimization for fast
+	 * clears.
+	 */
+	wa_mcr_write_or(wal, GEN8_WM_CHICKEN2, WAIT_ON_DEPTH_STALL_DONE_DISABLE);
 }
 
 static void dg1_ctx_workarounds_init(struct intel_engine_cs *engine,
-- 
2.45.2

