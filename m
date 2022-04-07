Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 258684F7B41
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 11:15:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36AD110E765;
	Thu,  7 Apr 2022 09:15:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CBAA10E765;
 Thu,  7 Apr 2022 09:15:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649322903; x=1680858903;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uC4jihYH6UUQHHskgYrA3e2n4aJRK258bFCSVIXhSpQ=;
 b=Xoc+LqMcnFdGr/L8W+u4lLNMmHH8aaFcIcL0670mx0mjITXDnBYbmIH1
 7mKcvLy6bB4RGuCedbhwwvP31p5QYkf90kpSp8WHeQWT4fUzLjmD5zE8d
 qvFmqIt6/d9V5nYLAInBT4EPirRLx/4IiH8DFZojzR0P7ju+d8Fhm1D5k
 vrw1nWq9lVJPPjC3fcooE39GnJVdak/dR5ji8NbWGFXzzlu4geaXgFuaZ
 /LHUTZ1NINULSNRLzspeLgj8hpMnsgkYSzUBuZDxQmMGZqxKREV4f0i4x
 2PG5cL4pSRfJ9m85xgPHIllETrsytzyOOp8H8DIx6whpeBNGA4Mwc6SOb w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10309"; a="260108545"
X-IronPort-AV: E=Sophos;i="5.90,241,1643702400"; d="scan'208";a="260108545"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 02:15:00 -0700
X-IronPort-AV: E=Sophos;i="5.90,241,1643702400"; d="scan'208";a="722885939"
Received: from kgibala-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.142.48])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 02:14:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Thu,  7 Apr 2022 12:14:29 +0300
Message-Id: <012d5b007a6a3771540499fb1273882d631887b3.1649322799.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1649322799.git.jani.nikula@intel.com>
References: <cover.1649322799.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/12] drm/edid: refactor EDID block status
 printing
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Split out a function to log EDID block status. The printouts get changed
slightly.

Unfortunately, not all users will have struct drm_device available, so
we convert to pr_* debug logging instead of drm device based logging.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 75 ++++++++++++++++++++++++++------------
 1 file changed, 51 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index f062d1715ec3..3d04d63464ba 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -1729,6 +1729,50 @@ static bool edid_block_valid(const void *block, bool base)
 				       edid_block_tag(block));
 }
 
+static void edid_block_status_print(enum edid_block_status status,
+				    const struct edid *block,
+				    int block_num)
+{
+	switch (status) {
+	case EDID_BLOCK_OK:
+		break;
+	case EDID_BLOCK_NULL:
+		pr_debug("EDID block %d pointer is NULL\n", block_num);
+		break;
+	case EDID_BLOCK_ZERO:
+		pr_notice("EDID block %d is all zeroes\n", block_num);
+		break;
+	case EDID_BLOCK_HEADER_CORRUPT:
+		pr_notice("EDID has corrupt header\n");
+		break;
+	case EDID_BLOCK_HEADER_REPAIR:
+		pr_debug("EDID corrupt header needs repair\n");
+		break;
+	case EDID_BLOCK_HEADER_FIXED:
+		pr_debug("EDID corrupt header fixed\n");
+		break;
+	case EDID_BLOCK_CHECKSUM:
+		if (edid_block_status_valid(status, edid_block_tag(block))) {
+			pr_debug("EDID block %d (tag 0x%02x) checksum is invalid, remainder is %d, ignoring\n",
+				 block_num, edid_block_tag(block),
+				 edid_block_compute_checksum(block));
+		} else {
+			pr_notice("EDID block %d (tag 0x%02x) checksum is invalid, remainder is %d\n",
+				  block_num, edid_block_tag(block),
+				  edid_block_compute_checksum(block));
+		}
+		break;
+	case EDID_BLOCK_VERSION:
+		pr_notice("EDID has major version %d, instead of 1\n",
+			  block->version);
+		break;
+	default:
+		pr_debug("EDID block %d unknown edid block status code %d\n",
+			 block_num, status);
+		break;
+	}
+}
+
 /**
  * drm_edid_block_valid - Sanity check the EDID block (base or extension)
  * @raw_edid: pointer to raw EDID block
@@ -1775,33 +1819,16 @@ bool drm_edid_block_valid(u8 *_block, int block_num, bool print_bad_edid,
 			*edid_corrupt = true;
 	}
 
+	edid_block_status_print(status, block, block_num);
+
 	/* Determine whether we can use this block with this status. */
 	valid = edid_block_status_valid(status, edid_block_tag(block));
 
-	/* Some fairly random status printouts. */
-	if (status == EDID_BLOCK_CHECKSUM) {
-		if (valid) {
-			DRM_DEBUG("EDID block checksum is invalid, remainder is %d\n",
-				  edid_block_compute_checksum(block));
-			DRM_DEBUG("Assuming a KVM switch modified the block but left the original checksum\n");
-		} else if (print_bad_edid) {
-			DRM_NOTE("EDID block checksum is invalid, remainder is %d\n",
-				 edid_block_compute_checksum(block));
-		}
-	} else if (status == EDID_BLOCK_VERSION) {
-		DRM_NOTE("EDID has major version %d, instead of 1\n",
-			 block->version);
-	}
-
-	if (!valid && print_bad_edid) {
-		if (status == EDID_BLOCK_ZERO) {
-			pr_notice("EDID block is all zeroes\n");
-		} else {
-			pr_notice("Raw EDID:\n");
-			print_hex_dump(KERN_NOTICE,
-				       " \t", DUMP_PREFIX_NONE, 16, 1,
-				       block, EDID_LENGTH, false);
-		}
+	if (!valid && print_bad_edid && status != EDID_BLOCK_ZERO) {
+		pr_notice("Raw EDID:\n");
+		print_hex_dump(KERN_NOTICE,
+			       " \t", DUMP_PREFIX_NONE, 16, 1,
+			       block, EDID_LENGTH, false);
 	}
 
 	return valid;
-- 
2.30.2

