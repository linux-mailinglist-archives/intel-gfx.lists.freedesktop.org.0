Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CF1EA815FE
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 21:43:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6983110E72C;
	Tue,  8 Apr 2025 19:43:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V6HJ5WBC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D867010E72B;
 Tue,  8 Apr 2025 19:43:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744141424; x=1775677424;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+KpwIW/+tIcXshez6NXrLs+X+YlJ5qRWshh+Tna3PCI=;
 b=V6HJ5WBC3HpH1WdLYjfnzBlyiLF3J6gXVwA1s0uOnrT0V2darYhb1avA
 ZoR78VEIe8ENeoXk2FaqgdQ0qpS8Q+zZytKRaomthWP5Rq8Ht1L1375ts
 DPT9Wjne8pf0dW/klHfSbFcH7Y4Wqlen8I5ucUn7wpzTqjW4pGMTZYCiE
 KipjFOyVY6Q0XRpHNJMV0hW3+rPVPHFkAXbJQQ2ypb0T0D2a9BBBJggEj
 ITAUXy5zXRsmGu1kc1beOjk4hsYjXYXLuc+QRh50ujBgB+2Exc0N8UjMU
 63QIa/VqGBO6TwHQWS2KS5CZC3WurcVnHUEOJTlz4f0YnnEeXgYiCmA8U g==;
X-CSE-ConnectionGUID: PaDhRfs+RemrRqHYWlFXJA==
X-CSE-MsgGUID: kmlmw1U6RVybsuxuRnphrg==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="45726700"
X-IronPort-AV: E=Sophos;i="6.15,198,1739865600"; d="scan'208";a="45726700"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 12:43:44 -0700
X-CSE-ConnectionGUID: 3rGTWpP6Qa+3t3i7fWY5tw==
X-CSE-MsgGUID: WwTkthAmRU+/N1OZeO0HIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,198,1739865600"; d="scan'208";a="128102843"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 12:43:43 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: <intel-xe@lists.freedesktop.org>,
	intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH topic/core-for-CI] Revert "libata: Downgrade unsupported
 feature warnings to notifications"
Date: Tue,  8 Apr 2025 12:43:31 -0700
Message-ID: <20250408194331.11046-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.49.0
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

This reverts commit 3f412047c54e28ecd50c10bdcec698f166c861e8.

Tentative removal from topic/core-for-CI.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/ata/libata-core.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/ata/libata-core.c b/drivers/ata/libata-core.c
index 14bed90d83367..773799cfd4430 100644
--- a/drivers/ata/libata-core.c
+++ b/drivers/ata/libata-core.c
@@ -2178,7 +2178,7 @@ static bool ata_identify_page_supported(struct ata_device *dev, u8 page)
 		 * for drives which implement this ATA level or above.
 		 */
 		if (ata_id_major_version(dev->id) >= 10)
-			ata_dev_notice(dev,
+			ata_dev_warn(dev,
 				"ATA Identify Device Log not supported\n");
 		dev->quirks |= ATA_QUIRK_NO_ID_DEV_LOG;
 		return false;
@@ -2249,7 +2249,7 @@ static void ata_dev_config_ncq_send_recv(struct ata_device *dev)
 	unsigned int err_mask;
 
 	if (!ata_log_supported(dev, ATA_LOG_NCQ_SEND_RECV)) {
-		ata_dev_notice(dev, "NCQ Send/Recv Log not supported\n");
+		ata_dev_warn(dev, "NCQ Send/Recv Log not supported\n");
 		return;
 	}
 	err_mask = ata_read_log_page(dev, ATA_LOG_NCQ_SEND_RECV,
@@ -2273,8 +2273,8 @@ static void ata_dev_config_ncq_non_data(struct ata_device *dev)
 	unsigned int err_mask;
 
 	if (!ata_log_supported(dev, ATA_LOG_NCQ_NON_DATA)) {
-		ata_dev_notice(dev,
-			       "NCQ Non-Data Log not supported\n");
+		ata_dev_warn(dev,
+			     "NCQ Non-Data Log not supported\n");
 		return;
 	}
 	err_mask = ata_read_log_page(dev, ATA_LOG_NCQ_NON_DATA,
@@ -2937,14 +2937,14 @@ int ata_dev_configure(struct ata_device *dev)
 		if (ata_id_is_cfa(id)) {
 			/* CPRM may make this media unusable */
 			if (id[ATA_ID_CFA_KEY_MGMT] & 1)
-				ata_dev_notice(dev,
+				ata_dev_warn(dev,
 	"supports DRM functions and may not be fully accessible\n");
 			snprintf(revbuf, 7, "CFA");
 		} else {
 			snprintf(revbuf, 7, "ATA-%d", ata_id_major_version(id));
 			/* Warn the user if the device has TPM extensions */
 			if (ata_id_has_tpm(id))
-				ata_dev_notice(dev,
+				ata_dev_warn(dev,
 	"supports DRM functions and may not be fully accessible\n");
 		}
 
@@ -3100,8 +3100,8 @@ int ata_dev_configure(struct ata_device *dev)
 	}
 
 	if ((dev->quirks & ATA_QUIRK_FIRMWARE_WARN) && print_info) {
-		ata_dev_notice(dev, "WARNING: device requires firmware update to be fully functional\n");
-		ata_dev_notice(dev, "         contact the vendor or visit http://ata.wiki.kernel.org\n");
+		ata_dev_warn(dev, "WARNING: device requires firmware update to be fully functional\n");
+		ata_dev_warn(dev, "         contact the vendor or visit http://ata.wiki.kernel.org\n");
 	}
 
 	return 0;
-- 
2.49.0

