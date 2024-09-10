Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F8A89738DD
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 15:42:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01C6710E7F8;
	Tue, 10 Sep 2024 13:42:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RX5OuFh+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6414F10E7F4;
 Tue, 10 Sep 2024 13:42:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725975753; x=1757511753;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LdPGmz4oXSn3F3dqHG3aXywifXUv0cbdvaztTNgVRpE=;
 b=RX5OuFh+U4GPO29tC1Sny+tewvs36wRlP4vaYuefcIDLl/RU+Yt3TlGK
 wtuvT9+Z21Ao4GEtHLHIiH/scX1WewveeC7jX+th7uMeL/074nwQvJmpr
 d/xMfhyRltGx0/hSgXgOO6BDu0WxjiTDd+5tJIcjiVoIeWxGi6+Aa8rSS
 92ygdlZCMmIeeDeFQH7J9Gj5kW8d/x7of5YYtMRONnF0cDFzbkHKp4vVP
 6K7Eqbfj6LMhNMKJLc9A5u2hbE41x1pzLOQBlvhAW/XVU5S/GeU3ZuWE1
 O0zrK5+73ZutWfRowmtZsICmtiuEiLXZ44E1I8+Wnb9bMJfwakvB0cPvN Q==;
X-CSE-ConnectionGUID: 1h2m7GTQTDe/CRAlvM+KLA==
X-CSE-MsgGUID: umiycBUsRrm7XGBZrLYBvA==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="35861240"
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="35861240"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 06:42:31 -0700
X-CSE-ConnectionGUID: FJ7EGAM5TZKG87nPJr3WrQ==
X-CSE-MsgGUID: xO5WaYs9Ramdlko4U1SQVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="67081305"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Sep 2024 06:42:28 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Sep 2024 16:42:27 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 3/5] drm/i915/bios: Extract intel_spi_read16()
Date: Tue, 10 Sep 2024 16:42:17 +0300
Message-ID: <20240910134219.28479-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240910134219.28479-1-ville.syrjala@linux.intel.com>
References: <20240910134219.28479-1-ville.syrjala@linux.intel.com>
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index cc4a4cc2bf3e..cbbda94c3dab 100644
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
 		drm_dbg(display->drm,
@@ -3109,7 +3113,7 @@ static struct vbt_header *spi_oprom_get_vbt(struct intel_display *display,
 		goto err_not_found;
 
 	for (count = 0; count < vbt_size; count += 4)
-		*(vbt + store++) = intel_spi_read(&i915->uncore, found + count);
+		*(vbt + store++) = intel_spi_read32(&i915->uncore, found + count);
 
 	if (!intel_bios_is_valid_vbt(display, vbt, vbt_size))
 		goto err_free_vbt;
-- 
2.44.2

