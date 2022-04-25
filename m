Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7186A50EB2B
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Apr 2022 23:13:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FC4E10E2CF;
	Mon, 25 Apr 2022 21:13:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7154F10E25F;
 Mon, 25 Apr 2022 21:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650921188; x=1682457188;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8X3t5h7So7AjPgy3UZcGNC0llXzzeQ8CC5IAGiBE3q0=;
 b=nJ40CKcj6ArAajJcAt83jSTovnqVxfjPJxbZwXvmaVPkuGdHjPn3j7v/
 4K1aiYJt2cF0QyhrRQXMWWSMA6Mp2IDpRgn06H5EadYZIa1xP6xmGDEMN
 vuMN9m188G7lXItm7dt9zvW4ZY8xJEYpK9bxtGxlwUUfApSP535ji5pWp
 EZoGA6bqs2J2LwVP82B/0TJYIIpe4zp97KJ1suMHEiFih9D3erBHDeb8b
 0vZ/thIyHe4WO9Wau/mlOXBuvR3FNTTgx64y0X6h+sj25PvPqSDq1DSg7
 3bJKoOAsQ8wQWEc/cafJCLG9sms6pRfNxNqZf/cDZlr3X9BBOXOycRboB A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10328"; a="265531327"
X-IronPort-AV: E=Sophos;i="5.90,289,1643702400"; d="scan'208";a="265531327"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2022 14:12:59 -0700
X-IronPort-AV: E=Sophos;i="5.90,289,1643702400"; d="scan'208";a="729916091"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2022 14:12:59 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Apr 2022 14:12:51 -0700
Message-Id: <20220425211251.77154-4-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220425211251.77154-1-matthew.d.roper@intel.com>
References: <20220425211251.77154-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/3] topic/core-for-CI: Add remaining DG2 and
 ATS-M device IDs
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The device IDs here are associated with DG2 add-in cards.  We need to
wait for some additional functionality (e.g., small BAR recovery) to
land before we're ready to truly upstream these via drm-intel; for now
we'll just add them to the core-for-CI branch for CI coverage.

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c          |  2 +-
 drivers/gpu/drm/i915/intel_device_info.c |  2 ++
 include/drm/i915_pciids.h                | 25 +++++++++++++++++++++---
 3 files changed, 25 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 1d44f57c2eb0..b60492826478 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1066,7 +1066,6 @@ static const struct intel_device_info dg2_info = {
 	.require_force_probe = 1,
 };
 
-__maybe_unused
 static const struct intel_device_info ats_m_info = {
 	DG2_FEATURES,
 	.display = { 0 },
@@ -1154,6 +1153,7 @@ static const struct pci_device_id pciidlist[] = {
 	INTEL_RPLS_IDS(&adl_s_info),
 	INTEL_RPLP_IDS(&adl_p_info),
 	INTEL_DG2_IDS(&dg2_info),
+	INTEL_ATS_M_IDS(&ats_m_info),
 	{0, 0, 0}
 };
 MODULE_DEVICE_TABLE(pci, pciidlist);
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index cefa9ed784ff..63e05cd15a90 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -188,10 +188,12 @@ static const u16 subplatform_rpl_ids[] = {
 
 static const u16 subplatform_g10_ids[] = {
 	INTEL_DG2_G10_IDS(0),
+	INTEL_ATS_M150_IDS(0),
 };
 
 static const u16 subplatform_g11_ids[] = {
 	INTEL_DG2_G11_IDS(0),
+	INTEL_ATS_M75_IDS(0),
 };
 
 static const u16 subplatform_g12_ids[] = {
diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index 283dadfbb4db..4585fed4e41e 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -696,22 +696,41 @@
 #define INTEL_DG2_G10_IDS(info) \
 	INTEL_VGA_DEVICE(0x5690, info), \
 	INTEL_VGA_DEVICE(0x5691, info), \
-	INTEL_VGA_DEVICE(0x5692, info)
+	INTEL_VGA_DEVICE(0x5692, info), \
+	INTEL_VGA_DEVICE(0x56A0, info), \
+	INTEL_VGA_DEVICE(0x56A1, info), \
+	INTEL_VGA_DEVICE(0x56A2, info)
 
 #define INTEL_DG2_G11_IDS(info) \
 	INTEL_VGA_DEVICE(0x5693, info), \
 	INTEL_VGA_DEVICE(0x5694, info), \
 	INTEL_VGA_DEVICE(0x5695, info), \
-	INTEL_VGA_DEVICE(0x56B0, info)
+	INTEL_VGA_DEVICE(0x56A5, info), \
+	INTEL_VGA_DEVICE(0x56A6, info), \
+	INTEL_VGA_DEVICE(0x56B0, info), \
+	INTEL_VGA_DEVICE(0x56B1, info)
 
 #define INTEL_DG2_G12_IDS(info) \
 	INTEL_VGA_DEVICE(0x5696, info), \
 	INTEL_VGA_DEVICE(0x5697, info), \
-	INTEL_VGA_DEVICE(0x56B2, info)
+	INTEL_VGA_DEVICE(0x56A3, info), \
+	INTEL_VGA_DEVICE(0x56A4, info), \
+	INTEL_VGA_DEVICE(0x56B2, info), \
+	INTEL_VGA_DEVICE(0x56B3, info)
 
 #define INTEL_DG2_IDS(info) \
 	INTEL_DG2_G10_IDS(info), \
 	INTEL_DG2_G11_IDS(info), \
 	INTEL_DG2_G12_IDS(info)
 
+#define INTEL_ATS_M150_IDS(info) \
+	INTEL_VGA_DEVICE(0x56C0, info)
+
+#define INTEL_ATS_M75_IDS(info) \
+	INTEL_VGA_DEVICE(0x56C1, info)
+
+#define INTEL_ATS_M_IDS(info) \
+	INTEL_ATS_M150_IDS(info), \
+	INTEL_ATS_M75_IDS(info)
+
 #endif /* _I915_PCIIDS_H */
-- 
2.35.1

