Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B378E518541
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 15:17:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DB1B10FFD8;
	Tue,  3 May 2022 13:17:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3641210FFD6
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 13:17:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651583839; x=1683119839;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DcAVxXmYXK1fCLNOfjzLDeVPAbR+Bt4rkJ4BTsJB6C8=;
 b=kz2pSkA1SUN/fFnpAL+jfG+bYcwEvL/BfNFLvIiKbFNS63UhuC7Q62/k
 sR6crvCYvUT7RJgWBLqlLwpOtd4rdYr4wF094hLGTa5zqc7yRIQ+0cFb8
 nLWVdc3nmMfyzUH+sAJ+eR378/ofl7eWheOBXx07LrcPXugeXKXGMu+Bn
 ncDZdN68rV55XjFHo/hoaAxQDklBsBg4qSVvmP2rfAnlyecGdrNChk0VW
 20Hi1yGYZIRlgYAuBpVJOMVM8BDhvmfZFPDSyCUzRMzl9vsEPa8IN83Gu
 ptfdKa+qkY7r3QG7F8SIFFaSusvegHfxxZMm9Odn2XXGdVwKnd97B24cI g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10335"; a="266315463"
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="266315463"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 06:17:18 -0700
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="562202023"
Received: from jasinski-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.133.126])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 06:17:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 May 2022 16:17:12 +0300
Message-Id: <20220503131712.187267-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
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
index 81949c36ab96..4aa9a19a0df0 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2536,6 +2536,13 @@ bool intel_bios_is_valid_vbt(const void *buf, size_t size)
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
@@ -2552,9 +2559,7 @@ static struct vbt_header *spi_oprom_get_vbt(struct drm_i915_private *i915)
 	oprom_offset &= OROM_OFFSET_MASK;
 
 	for (count = 0; count < oprom_size; count += 4) {
-		intel_uncore_write(&i915->uncore, PRIMARY_SPI_ADDRESS, oprom_offset + count);
-		data = intel_uncore_read(&i915->uncore, PRIMARY_SPI_TRIGGER);
-
+		data = intel_spi_read(&i915->uncore, oprom_offset + count);
 		if (data == *((const u32 *)"$VBT")) {
 			found = oprom_offset + count;
 			break;
@@ -2565,20 +2570,16 @@ static struct vbt_header *spi_oprom_get_vbt(struct drm_i915_private *i915)
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
2.30.2

