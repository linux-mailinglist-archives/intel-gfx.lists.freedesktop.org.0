Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A40483E3AB
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jan 2024 22:09:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6956A10FEAE;
	Fri, 26 Jan 2024 21:09:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com
 [209.85.167.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0272210FEAA;
 Fri, 26 Jan 2024 21:09:30 +0000 (UTC)
Received: by mail-lf1-f41.google.com with SMTP id
 2adb3069b0e04-5102b43035eso385771e87.1; 
 Fri, 26 Jan 2024 13:09:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1706303309; x=1706908109; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=w3Ih5o/h7ufYfjrVAuvSf+WnrZ1VWnhrW87zuJwgU6A=;
 b=DUK2Lu5fchwx4hcI9a+XSxMjzKciRj2/f0m5BEDBCMl6g1wsrCs0L9YvHmqxOHIthr
 5CtR4amxuYMSJ7mnP+1ToLe5FsfKtLD4WxCTn0YMwLwjn+QGc4KN85YYBP8RRQ4Ph39Y
 Ng49pRexIfTt9K/KrazpKFOiT4iDFZMuRjxZTp4bk3rBsuXyKHAT5C9l1ljRY43nKZH5
 6Ma1aWP6JdmMjG2aeIrhA5LNZDjf4PAOb+FJyygfOyyLc60jYWTWgRrEgsSpgkM211PH
 GyH328I2CUy50xX4Qz9+pAHTqnRRMk0HbpPlEOBDg3oi/GGQLUxGXW5ZMtF51mQl11IO
 tqJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706303309; x=1706908109;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=w3Ih5o/h7ufYfjrVAuvSf+WnrZ1VWnhrW87zuJwgU6A=;
 b=DRIhXWTGkjIzzHmOIhDDQCARHjGbMA8gwfZhCwOG3NSH9848JbI0rpFW4eUuRT/8MZ
 OppgqTS2LztzXcC/C+sle/yTCdVMjll3dleE8wEFRLqebJOvLpKVBb0tQFY+PWZ8PQGC
 bUFvHrpAVAmfwOzhvew/KDh+qv02/oumc339MsRYwZB0MvnDQFjlLFMIiAP6BpQNEEBr
 dtJiIU2GdQg/BG8A44xkr0V2322AxZQ6a41DpWMYc4i+Xg1Gy5eYxLLsl6O7R3WUX9a6
 /f8l7tjoi0bpUy0OzsBBulRXwlKbD7TKsM4XCHWEDjKLU5wviJ2XOUZeuQgqdWm3MrQm
 VSUA==
X-Gm-Message-State: AOJu0Yyf0MdCKoNKg2CzYJtRGKK76oXviRPavW0ePkJg+LvPEIg3VZhT
 k2KiU7pRuV3S7b12nMv0EbJHvgQV9f1Lh1a1N16Ptz3Rdyw8pPKbnnFWgbzuvVA=
X-Google-Smtp-Source: AGHT+IFw/WfW1gKWpDcr0TVJm/EpAYyv0DgSBxv+iX5BdTIauRZBE0ymxEwPfw4aHJM8cjrgifvkDg==
X-Received: by 2002:a05:6512:2209:b0:50e:4098:3798 with SMTP id
 h9-20020a056512220900b0050e40983798mr169512lfu.60.1706303308552; 
 Fri, 26 Jan 2024 13:08:28 -0800 (PST)
Received: from jheikkil-mobl1.. (91-156-196-125.elisa-laajakaista.fi.
 [91.156.196.125]) by smtp.gmail.com with ESMTPSA id
 t3-20020a192d43000000b00510218debaasm290479lft.35.2024.01.26.13.08.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Jan 2024 13:08:28 -0800 (PST)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/5] drm/xe/pat: annotate pat index table with compression
 information
Date: Fri, 26 Jan 2024 23:08:03 +0200
Message-Id: <20240126210807.320671-2-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240126210807.320671-1-juhapekka.heikkila@gmail.com>
References: <20240126210807.320671-1-juhapekka.heikkila@gmail.com>
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

add compressed member into xe_pat_table_entry which will contain
boolean information if given pat_index is compressed or no.

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/xe/xe_pat.c | 9 ++++++++-
 drivers/gpu/drm/xe/xe_pat.h | 8 ++++++++
 2 files changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/xe_pat.c b/drivers/gpu/drm/xe/xe_pat.c
index 1ff6bc79e7d4..c3cc6e90b068 100644
--- a/drivers/gpu/drm/xe/xe_pat.c
+++ b/drivers/gpu/drm/xe/xe_pat.c
@@ -104,7 +104,8 @@ static const struct xe_pat_table_entry xelpg_pat_table[] = {
 			REG_FIELD_PREP(XE2_L3_POLICY, l3_policy) | \
 			REG_FIELD_PREP(XE2_L4_POLICY, l4_policy) | \
 			REG_FIELD_PREP(XE2_COH_MODE, __coh_mode), \
-		.coh_mode = __coh_mode ? XE_COH_AT_LEAST_1WAY : XE_COH_NONE \
+		.coh_mode = __coh_mode ? XE_COH_AT_LEAST_1WAY : XE_COH_NONE, \
+		.compressed = comp_en \
 	}
 
 static const struct xe_pat_table_entry xe2_pat_table[] = {
@@ -148,6 +149,12 @@ u16 xe_pat_index_get_coh_mode(struct xe_device *xe, u16 pat_index)
 	return xe->pat.table[pat_index].coh_mode;
 }
 
+bool xe_pat_index_has_compression(struct xe_device *xe, u16 pat_index)
+{
+	WARN_ON(pat_index >= xe->pat.n_entries);
+	return xe->pat.table[pat_index].compressed;
+}
+
 static void program_pat(struct xe_gt *gt, const struct xe_pat_table_entry table[],
 			int n_entries)
 {
diff --git a/drivers/gpu/drm/xe/xe_pat.h b/drivers/gpu/drm/xe/xe_pat.h
index fa0dfbe525cd..c8aacd30b184 100644
--- a/drivers/gpu/drm/xe/xe_pat.h
+++ b/drivers/gpu/drm/xe/xe_pat.h
@@ -29,6 +29,7 @@ struct xe_pat_table_entry {
 #define XE_COH_NONE          1
 #define XE_COH_AT_LEAST_1WAY 2
 	u16 coh_mode;
+	bool compressed;
 };
 
 /**
@@ -58,4 +59,11 @@ void xe_pat_dump(struct xe_gt *gt, struct drm_printer *p);
  */
 u16 xe_pat_index_get_coh_mode(struct xe_device *xe, u16 pat_index);
 
+/**
+ * xe_pat_index_has_compression - Is pat_index using ccs compression
+ * @xe: xe device
+ * @pat_index: The pat_index to query
+ */
+bool xe_pat_index_has_compression(struct xe_device *xe, u16 pat_index);
+
 #endif
-- 
2.25.1

