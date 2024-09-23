Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83EC897EE12
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 17:25:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04AC410E43E;
	Mon, 23 Sep 2024 15:25:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UfOT8zm1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE56510E430;
 Mon, 23 Sep 2024 15:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727105108; x=1758641108;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sR0O5d7hDN3AxBJ3a8L2d/6f1GVle1JkUCu2PZIa5v0=;
 b=UfOT8zm1PIIKAikQvdxF9AvFefRbO8yP9Eu15e34DEnvhYx4UvB1hL1J
 r8g6LSdzCKdT4OCu2hEMLZPtEfeCET2o+ntiMpjfAWNUGjkfNb7wixwGj
 5OApRfR3Ebg9AkaXh5aY6PIZ02OzAdbHpYmC0YZ9JM1nJVHmG2CtMZhe3
 8wu8j7rvTpqceu92Ysuazea97eb6h+DJlE42YGQidPnPpZXtTR+T77lgj
 /83wmrGpdoOaunUC3XHijk2qNU4/DMuEyiLrqb12L1/A8hSPtguK3iHlr
 L7Hg8hv419nyCrSBJ+OhrerlirTZS/xvbaYnomc1w4c7U30lXGdskwkH9 w==;
X-CSE-ConnectionGUID: X9nfsbAxQE6Oq63c4ipRJQ==
X-CSE-MsgGUID: nmN+UXPwTFmEY6M5+M3MzA==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="26013480"
X-IronPort-AV: E=Sophos;i="6.10,251,1719903600"; d="scan'208";a="26013480"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 08:25:08 -0700
X-CSE-ConnectionGUID: Vcx7F8/pS3GZfu7uqdP1Hw==
X-CSE-MsgGUID: FAjq39tlSYGATuV+8OekQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,251,1719903600"; d="scan'208";a="71239838"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 23 Sep 2024 08:25:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 23 Sep 2024 18:25:05 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 4/6] drm/i915/bios: Extract intel_spi_read16()
Date: Mon, 23 Sep 2024 18:24:51 +0300
Message-ID: <20240923152453.11230-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240923152453.11230-1-ville.syrjala@linux.intel.com>
References: <20240923152453.11230-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The SPI VBT codepath only knows how to read 4 bytes at a time.
So to read the 2 byte vbt_size it masks out the unwanted msbs.
Hide that little implementation detail inside a new intel_spi_read16()
helper. Alse rename the existing intel_spi_read() to intel_spi_read32()
to make it clear what it does.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index d4281234773c..38ea92b4ff13 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3053,13 +3053,18 @@ static struct vbt_header *firmware_get_vbt(struct intel_display *display,
 	return vbt;
 }
 
-static u32 intel_spi_read(struct intel_uncore *uncore, u32 offset)
+static u32 intel_spi_read32(struct intel_uncore *uncore, u32 offset)
 {
 	intel_uncore_write(uncore, PRIMARY_SPI_ADDRESS, offset);
 
 	return intel_uncore_read(uncore, PRIMARY_SPI_TRIGGER);
 }
 
+static u16 intel_spi_read16(struct intel_uncore *uncore, u32 offset)
+{
+	return intel_spi_read32(uncore, offset) & 0xffff;
+}
+
 static struct vbt_header *spi_oprom_get_vbt(struct intel_display *display,
 					    size_t *size)
 {
@@ -3078,7 +3083,7 @@ static struct vbt_header *spi_oprom_get_vbt(struct intel_display *display,
 	oprom_offset &= OROM_OFFSET_MASK;
 
 	for (count = 0; count < oprom_size; count += 4) {
-		data = intel_spi_read(&i915->uncore, oprom_offset + count);
+		data = intel_spi_read32(&i915->uncore, oprom_offset + count);
 		if (data == *((const u32 *)"$VBT")) {
 			found = oprom_offset + count;
 			break;
@@ -3094,9 +3099,8 @@ static struct vbt_header *spi_oprom_get_vbt(struct intel_display *display,
 	}
 
 	/* Get VBT size and allocate space for the VBT */
-	vbt_size = intel_spi_read(&i915->uncore,
-				  found + offsetof(struct vbt_header, vbt_size));
-	vbt_size &= 0xffff;
+	vbt_size = intel_spi_read16(&i915->uncore,
+				    found + offsetof(struct vbt_header, vbt_size));
 
 	if (vbt_size > oprom_size - count) {
 		drm_dbg_kms(display->drm,
@@ -3109,7 +3113,7 @@ static struct vbt_header *spi_oprom_get_vbt(struct intel_display *display,
 		goto err_not_found;
 
 	for (count = 0; count < vbt_size; count += 4)
-		*(vbt + store++) = intel_spi_read(&i915->uncore, found + count);
+		*(vbt + store++) = intel_spi_read32(&i915->uncore, found + count);
 
 	if (!intel_bios_is_valid_vbt(display, vbt, vbt_size))
 		goto err_free_vbt;
-- 
2.44.2

