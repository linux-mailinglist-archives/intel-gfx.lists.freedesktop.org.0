Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B55D41CFCC5
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2020 20:05:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E1616E956;
	Tue, 12 May 2020 18:05:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C47B86E956
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 May 2020 18:05:09 +0000 (UTC)
IronPort-SDR: Iu5TQZEjThnlS9soRmIBfc2NZsbJlxg94NCKKMKaSpoacV+iVQpYQrvZFHsEXfPud7ibwWkVvn
 YBRhwdMSQWQg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2020 11:05:09 -0700
IronPort-SDR: 2QaH260o3ttvvdel6lMOoYb28sleQru7R1rLFFPmUktdvfh7YagkbfADIirSAYlhM8xKSzd2n5
 iZAniTxMtasQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,384,1583222400"; d="scan'208";a="265588636"
Received: from sdhanava-desk2.jf.intel.com ([10.165.21.144])
 by orsmga006.jf.intel.com with ESMTP; 12 May 2020 11:05:08 -0700
From: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 May 2020 11:00:50 -0700
Message-Id: <20200512180050.6785-1-swathi.dhanavanthri@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/ehl: Restrict w/a 1607087056 for
 EHL/JSL
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This w/a is fixed in B0 stepping and needs to be restricted for
A0 stepping only.
Bspec: 33451

Signed-off-by: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 11 +++++++----
 drivers/gpu/drm/i915/i915_drv.h             |  5 +++++
 2 files changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index aa90e6b7a118..90a2b9e399b0 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -917,10 +917,13 @@ icl_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
 		    GAMT_CHKN_BIT_REG,
 		    GAMT_CHKN_DISABLE_L3_COH_PIPE);
 
-	/* Wa_1607087056:icl */
-	wa_write_or(wal,
-		    SLICE_UNIT_LEVEL_CLKGATE,
-		    L3_CLKGATE_DIS | L3_CR2X_CLKGATE_DIS);
+	/* Wa_1607087056:icl,ehl,jsl */
+	if (IS_ICELAKE(i915) ||
+	    IS_EHL_REVID(i915, EHL_REVID_A0, EHL_REVID_A0)) {
+		wa_write_or(wal,
+			    SLICE_UNIT_LEVEL_CLKGATE,
+			    L3_CLKGATE_DIS | L3_CR2X_CLKGATE_DIS);
+	}
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 8656f1e0d97f..98dc8cdf2c38 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1517,6 +1517,11 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_ICL_REVID(p, since, until) \
 	(IS_ICELAKE(p) && IS_REVID(p, since, until))
 
+#define EHL_REVID_A0            0x0
+
+#define IS_EHL_REVID(p, since, until) \
+	(IS_ELKHARTLAKE(p) && IS_REVID(p, since, until))
+
 #define TGL_REVID_A0		0x0
 #define TGL_REVID_B0		0x1
 #define TGL_REVID_C0		0x2
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
