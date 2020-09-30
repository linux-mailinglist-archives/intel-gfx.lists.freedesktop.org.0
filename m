Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CE8027E189
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 08:43:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A34B6E51A;
	Wed, 30 Sep 2020 06:43:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CC1C6E509
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Sep 2020 06:42:55 +0000 (UTC)
IronPort-SDR: Q1e7mMhTGZu31V5kbTqrcqgjjX/FZkxQC/eRt1nrUPzmi0pPuNU6cYQSumQRHzrkT6/qIdSaBd
 ud2YbGBHt1qA==
X-IronPort-AV: E=McAfee;i="6000,8403,9759"; a="142387785"
X-IronPort-AV: E=Sophos;i="5.77,321,1596524400"; d="scan'208";a="142387785"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 23:42:55 -0700
IronPort-SDR: atYjKQJXs1JIqUn+mPkzuMe+rZvY3Qc+a1AtBJ+w70VXMV39SP/eDv092TV9mHXAF4hIhxyjxw
 fUPqZnwtCAGg==
X-IronPort-AV: E=Sophos;i="5.77,321,1596524400"; d="scan'208";a="312487774"
Received: from cdgarci1-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.213.164.152])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 23:42:54 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Sep 2020 23:42:33 -0700
Message-Id: <20200930064234.85769-24-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200930064234.85769-1-lucas.demarchi@intel.com>
References: <20200930064234.85769-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 23/24] drm/i915/dg1: Change DMC_DEBUG{1,
 2} registers
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

From: Anshuman Gupta <anshuman.gupta@intel.com>

DGFX devices have different DMC_DEBUG* counter MMIO address
offset. Incorporate these changes in i915_reg.h for DG1
and handle i915_dmc_info accordingly.

Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 9 +++++++--
 drivers/gpu/drm/i915/i915_reg.h                      | 1 +
 2 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 0bf31f9a8af5..472f119fe246 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -518,8 +518,13 @@ static int i915_dmc_info(struct seq_file *m, void *unused)
 		   CSR_VERSION_MINOR(csr->version));
 
 	if (INTEL_GEN(dev_priv) >= 12) {
-		dc5_reg = TGL_DMC_DEBUG_DC5_COUNT;
-		dc6_reg = TGL_DMC_DEBUG_DC6_COUNT;
+		if (IS_DG1(dev_priv)) {
+			dc5_reg = DG1_DMC_DEBUG_DC5_COUNT;
+		} else {
+			dc5_reg = TGL_DMC_DEBUG_DC5_COUNT;
+			dc6_reg = TGL_DMC_DEBUG_DC6_COUNT;
+		}
+
 		/*
 		 * NOTE: DMC_DEBUG3 is a general purpose reg.
 		 * According to B.Specs:49196 DMC f/w reuses DC5/6 counter
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index bb5094b80f15..b856a1fb0a32 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7538,6 +7538,7 @@ enum {
 #define BXT_CSR_DC3_DC5_COUNT	_MMIO(0x80038)
 #define TGL_DMC_DEBUG_DC5_COUNT	_MMIO(0x101084)
 #define TGL_DMC_DEBUG_DC6_COUNT	_MMIO(0x101088)
+#define DG1_DMC_DEBUG_DC5_COUNT	_MMIO(0x134154)
 
 #define DMC_DEBUG3		_MMIO(0x101090)
 
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
