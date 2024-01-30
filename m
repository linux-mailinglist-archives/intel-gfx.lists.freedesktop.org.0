Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAA99842D0A
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jan 2024 20:38:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6849B1134D2;
	Tue, 30 Jan 2024 19:38:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com
 [209.85.167.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B4D41134B3;
 Tue, 30 Jan 2024 19:38:08 +0000 (UTC)
Received: by mail-lf1-f41.google.com with SMTP id
 2adb3069b0e04-5111f40b8beso1009831e87.2; 
 Tue, 30 Jan 2024 11:38:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1706643426; x=1707248226; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=W9J4aOaYbujf+cASEgE6nq34KmK9SJl02dpt6GwZ4Ys=;
 b=le+7yFKWeNQEJR90z++cqPsXcyZ6MaVzJdzFdcYHxb37h4SUCJW/iDljr11lxSkj4H
 Ztbma0U23emHxwGcSXFi5bF9ilQqYZ1UXlV6/6yQGdIghKoeZk8ZNpTHBhAMZEqDcg+4
 O0dz7C7o8KN74N3AFAF42soauQWbVr7COTsatQv+eYbkFMfBeOL0NBm5wUEYxyiuugLf
 ZzIDPcldBiSekWSSKZkhxvScf2iCjaUlFrxhtSF1KO+ahv/iwrwqSDVkyPUGZOUPI9TU
 1Vm2HlV1XNEsWLycxiB4++U7BYknyw00PO/9bYPaEmaK6R906rFQob6Iyvw2rpPt4mAn
 XjCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706643426; x=1707248226;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=W9J4aOaYbujf+cASEgE6nq34KmK9SJl02dpt6GwZ4Ys=;
 b=K0OaJBcaNjZoRf9w53bpaGpULU8KswwRDAxiXqv94ARmHe/CerXkX+dhJZm7jp7XCg
 fOwL6NAEGpRXuFokrtnuyfkK6btTUVx6KEo19yvw7dTS5ktrCW77shgiI5h0AUEP5Rd4
 PuuRXXbtZAU2Yk3fV3VPUeVCtLufkJmES57Cw7CgR7yEPA5E2+E31qbqGJ1cRIIWyPew
 DLSM5CYmBfgxZad4ekzgRdhZlU0i4zoSg6FNcNeywfbemA3KGtlFX3+ttoHjNchl3G65
 HAICNU8ZGOksFHCAJ7EKI7aZzQq2u/oQs9djbQ9yj+IJGsd8Ko1V5XPEr21YySNk6Dba
 IDHQ==
X-Gm-Message-State: AOJu0YwklvZwXX/JM7mVWrb5lrXleE2HhFHU7gQ/OMdJdvgoz0ktGsYk
 woODxLkyjyK30uHiwfElhTjxFK75qVpIRhME/HshSqgFJ345qcvZVk29mZfHQAI=
X-Google-Smtp-Source: AGHT+IFBVMBdl/U4jV4Tqj4oSjvh5QNGHdlUrfyvHYHxnshSWvGQjHG/E5LGEB7l037B7cAOb4uiMQ==
X-Received: by 2002:a05:6512:3da9:b0:510:25be:d7ac with SMTP id
 k41-20020a0565123da900b0051025bed7acmr7642330lfv.21.1706643425939; 
 Tue, 30 Jan 2024 11:37:05 -0800 (PST)
Received: from jheikkil-mobl1.. (91-156-196-125.elisa-laajakaista.fi.
 [91.156.196.125]) by smtp.gmail.com with ESMTPSA id
 w30-20020a05651204de00b00510187749besm1558863lfq.80.2024.01.30.11.37.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Jan 2024 11:37:05 -0800 (PST)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/4] drm/xe/pat: annotate pat index table with compression info
Date: Tue, 30 Jan 2024 21:36:49 +0200
Message-Id: <20240130193652.374270-2-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240130193652.374270-1-juhapekka.heikkila@gmail.com>
References: <20240130193652.374270-1-juhapekka.heikkila@gmail.com>
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
Cc: Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Matthew Auld <matthew.auld@intel.com>

In a future patch we need to be able to determine if a given pat_index
enables compression on xe2. Simplest is to annotate the PAT index table
with this information.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/xe/xe_pat.c |  9 ++++++++-
 drivers/gpu/drm/xe/xe_pat.h | 14 ++++++++++++++
 2 files changed, 22 insertions(+), 1 deletion(-)

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
index fa0dfbe525cd..8c0fc68e844f 100644
--- a/drivers/gpu/drm/xe/xe_pat.h
+++ b/drivers/gpu/drm/xe/xe_pat.h
@@ -29,6 +29,10 @@ struct xe_pat_table_entry {
 #define XE_COH_NONE          1
 #define XE_COH_AT_LEAST_1WAY 2
 	u16 coh_mode;
+	/**
+	 * @compressed: Whether compression is enabled or not with @value.
+	 */
+	bool compressed;
 };
 
 /**
@@ -58,4 +62,14 @@ void xe_pat_dump(struct xe_gt *gt, struct drm_printer *p);
  */
 u16 xe_pat_index_get_coh_mode(struct xe_device *xe, u16 pat_index);
 
+/**
+ * xe_pat_index_has_compression - Check if the given pat_index enables
+ * compression.
+ * @xe: xe device
+ * @pat_index: The pat_index to query
+ *
+ * Note: Only applicable to xe2+, where compression is part of the PAT index.
+ */
+bool xe_pat_index_has_compression(struct xe_device *xe, u16 pat_index);
+
 #endif
-- 
2.25.1

