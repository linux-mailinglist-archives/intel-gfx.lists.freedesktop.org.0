Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C6FC4700677
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 13:14:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33F1310E67E;
	Fri, 12 May 2023 11:14:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11F0D10E67E
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 11:14:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683890093; x=1715426093;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WxLtdagd1a3yEe8hCe3Xt4QhoY80Z2XFQUhI967RvzY=;
 b=Scb9lrSyKkNBKWjIiTLGexfwMaszq3slfcno3EiQ1FCpdfkhdltBplq2
 wJKytjTwRx98aDSTxTV6Il067k1ma1zyPDVEel7UOjfLRHIwyaUx0EKDd
 bIHvKBCvLoqfm7dJ2EPkBYERh5tYraRpsAQbsnmJY653koOOGFMo2uQU5
 7JBLai+45sTNjhYf/Afo5mRUYYF/leaTZKoHmSl3yAUIUBLXMUUiJ91o+
 0t78VzW2FKQU5mxNZ+8ozJZ9Kxy/ac5fdGWEeUZoOuoZG5XLM5lad0oe+
 TUh8goEy/M7uLKC9GfmCu2q6BGk3ZLNzRg5JtyXVZTl5bRuC7HZ+wWzWY g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="353899750"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="353899750"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 04:14:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="694207812"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="694207812"
Received: from tsavina-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.63.51])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 04:14:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 May 2023 14:14:46 +0300
Message-Id: <20230512111446.1524038-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/bios: add helper for reading SPI
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add helper for reading SPI to not duplicate the write&read combo
everywhere.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 23 ++++++++++++-----------
 1 file changed, 12 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 64eb11a45265..34a397adbd6b 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3033,6 +3033,13 @@ bool intel_bios_is_valid_vbt(const void *buf, size_t size)
 	return vbt;
 }
 
+static u32 intel_spi_read(struct intel_uncore *uncore, u32 offset)
+{
+	intel_uncore_write(uncore, PRIMARY_SPI_ADDRESS, offset);
+
+	return intel_uncore_read(uncore, PRIMARY_SPI_TRIGGER);
+}
+
 static struct vbt_header *spi_oprom_get_vbt(struct drm_i915_private *i915)
 {
 	u32 count, data, found, store = 0;
@@ -3049,9 +3056,7 @@ static struct vbt_header *spi_oprom_get_vbt(struct drm_i915_private *i915)
 	oprom_offset &= OROM_OFFSET_MASK;
 
 	for (count = 0; count < oprom_size; count += 4) {
-		intel_uncore_write(&i915->uncore, PRIMARY_SPI_ADDRESS, oprom_offset + count);
-		data = intel_uncore_read(&i915->uncore, PRIMARY_SPI_TRIGGER);
-
+		data = intel_spi_read(&i915->uncore, oprom_offset + count);
 		if (data == *((const u32 *)"$VBT")) {
 			found = oprom_offset + count;
 			break;
@@ -3062,20 +3067,16 @@ static struct vbt_header *spi_oprom_get_vbt(struct drm_i915_private *i915)
 		goto err_not_found;
 
 	/* Get VBT size and allocate space for the VBT */
-	intel_uncore_write(&i915->uncore, PRIMARY_SPI_ADDRESS, found +
-		   offsetof(struct vbt_header, vbt_size));
-	vbt_size = intel_uncore_read(&i915->uncore, PRIMARY_SPI_TRIGGER);
+	vbt_size = intel_spi_read(&i915->uncore,
+				  found + offsetof(struct vbt_header, vbt_size));
 	vbt_size &= 0xffff;
 
 	vbt = kzalloc(round_up(vbt_size, 4), GFP_KERNEL);
 	if (!vbt)
 		goto err_not_found;
 
-	for (count = 0; count < vbt_size; count += 4) {
-		intel_uncore_write(&i915->uncore, PRIMARY_SPI_ADDRESS, found + count);
-		data = intel_uncore_read(&i915->uncore, PRIMARY_SPI_TRIGGER);
-		*(vbt + store++) = data;
-	}
+	for (count = 0; count < vbt_size; count += 4)
+		*(vbt + store++) = intel_spi_read(&i915->uncore, found + count);
 
 	if (!intel_bios_is_valid_vbt(vbt, vbt_size))
 		goto err_free_vbt;
-- 
2.39.2

