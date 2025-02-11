Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DD04A312A7
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2025 18:19:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B557710E72A;
	Tue, 11 Feb 2025 17:19:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="mqjzv3FJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com
 [209.85.214.169])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA02510E726
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2025 17:19:46 +0000 (UTC)
Received: by mail-pl1-f169.google.com with SMTP id
 d9443c01a7336-21f4500a5c3so116645435ad.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2025 09:19:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1739294386; x=1739899186; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=YdoOsyd3AHRYOPykX7ut7+b/79LZ3E2uPQtb5Zm5rHM=;
 b=mqjzv3FJh6bhlL9CfOI3YaRYFH7yX95dSSzZdeKZAFM/SxWPL98ltkRI6XVdStwaMW
 CWUmm8C1EYblyXvFPEcgHvNH9tnNxUC6aZ2YjKdFXS7opouJiMZXAYGSDvwHMPKmEuyE
 ZwwhnrPW1TaLbmIwQmD4AZckHQ8DRyr7tML/A0gB0EkvgEvtg/N0TrucMd9bJruKEC4f
 y1JY9AvTXER6vsyRfnOWMfO1q0vSMjNjWaaOPrw8T24RxEuVqS1uYLkNlEk6zb6TxZaM
 Irjjp9IWgIwSIqFYvdbSghOmiFPfQvkmw66m1Jp4IEsJN2uWlaRdz9w3IX/3rW9Q5N6o
 fAOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739294386; x=1739899186;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=YdoOsyd3AHRYOPykX7ut7+b/79LZ3E2uPQtb5Zm5rHM=;
 b=kKiMZSPwJf2siz9abG6ypxLoKotuLTx7funY3rWFsBJMnSQDx+PFELvat3AOwOqtEO
 ZIuuoNNx0n3OzNybCDHICbF1VmI0ft18sfnkTyN3QHfdZjp3JJXgFOTAGbRlCuihvngh
 Amb63KTjimg3Zg5+K3xkaDzEOVTr0ND90TR3+TtPxsWQizUgyPLhJ35WZV0M1l7zr+72
 w3m8kg5S2By/6nbQkNcZBSoM8PQOgCDUg2c/pHHwu3oDBbw4Lozo01OeN9L3YmKYKNHU
 bJ+HG3gmqMRVoUCiEFybyQpviXgGC7ju/20WNSsxspcxFI0Fy0c6hrArsjfnH3LtoGEY
 dEug==
X-Gm-Message-State: AOJu0Yy0v+UHSuHtRjoi2d8HKJOJSKyuLfP4B93LhlCtVNYACWwzZxLd
 39KLwC4WFQYCfDCSVviF0hKmio+hlkVH8detbOkp9+9hOGWG9GYey9k7jTL+jo0=
X-Gm-Gg: ASbGncsI9WeCraAxPa997dL5/ejVWKws3Y1uyGgvPFrLY94bLUL1CwilQpMSKS6wDwt
 IN6SOqP+Bq+U/DejIzMr/2F68Up4PUIZd76ZYNhK2XedyCb2wvdVNHv6dTzIbgeGz8iImoajtWS
 uzWXFeIAjlQ/tUBRG3avAsS7CyTKvNxDU32lUf+nLd4G44j8teteGHDLvn8vU0s2htghVWKjzXy
 kspEH4RiAtbGoQYp+8psyWD7qgwsdRPy7RDf47EF56UxCfOa8t38C9mpeephNyxfr6TJAuQUxH9
 j+7oy7GIJjgyBwDZBd2v
X-Google-Smtp-Source: AGHT+IGKxlqwoWeIIfO2KDJLdPqf8nV8ySpuUWbVtagf6bBBe5xMzi025riH0EdRt/GSNxPFc1nodQ==
X-Received: by 2002:a17:902:e747:b0:21f:f3d:d533 with SMTP id
 d9443c01a7336-220bbab3bc9mr1620625ad.2.1739294386258; 
 Tue, 11 Feb 2025 09:19:46 -0800 (PST)
Received: from localhost ([192.55.54.41]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-21f3650ef0dsm98792115ad.7.2025.02.11.09.19.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Feb 2025 09:19:46 -0800 (PST)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
	andi.shyti@intel.com
Subject: [PATCH 1/1] drm/i915/xehp: add wait on depth stall done bit handling
Date: Tue, 11 Feb 2025 19:24:31 +0200
Message-ID: <20250211172431.2631083-2-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250211172431.2631083-1-juhapekka.heikkila@gmail.com>
References: <20250211172431.2631083-1-juhapekka.heikkila@gmail.com>
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

Add writing of WAIT_ON_DEPTH_STALL_DONE_DISABLE for gen12. This
is performance optimization, writing this bit disables the wait.

Bspec: 46132

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12411
Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 3 +++
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 +++++
 2 files changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 6dba65e54cdb..7423fdd5dcaf 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -1010,6 +1010,9 @@
 #define XEHP_L3SCQREG7				MCR_REG(0xb188)
 #define   BLEND_FILL_CACHING_OPT_DIS		REG_BIT(3)
 
+#define XEHP_WM_CHICKEN2			MCR_REG(0x5584)
+#define   WAIT_ON_DEPTH_STALL_DONE_DISABLE	REG_BIT(5)
+
 #define GEN11_GLBLINVL				_MMIO(0xb404)
 #define   GEN11_BANK_HASH_ADDR_EXCL_MASK	(0x7f << 5)
 #define   GEN11_BANK_HASH_ADDR_EXCL_BIT0	(1 << 5)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index db04c3ee02e2..affee4d4cee2 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1640,6 +1640,11 @@ static void gt_tuning_settings(struct intel_gt *gt, struct i915_wa_list *wal)
 		wa_mcr_write_or(wal, XEHP_L3SCQREG7, BLEND_FILL_CACHING_OPT_DIS);
 		wa_mcr_write_or(wal, XEHP_SQCM, EN_32B_ACCESS);
 	}
+
+	if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 0), IP_VER(12, 70))) {
+		wa_mcr_write_or(wal, XEHP_WM_CHICKEN2,
+				WAIT_ON_DEPTH_STALL_DONE_DISABLE);
+	}
 }
 
 static void
-- 
2.45.2

