Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C1A397EE13
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 17:25:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6EFB10E420;
	Mon, 23 Sep 2024 15:25:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EjPYoFY3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BD3310E421;
 Mon, 23 Sep 2024 15:25:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727105112; x=1758641112;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DjAIt+0y7A1t0a9f6hIK1Eud6c+Yp0f8vryakaidICk=;
 b=EjPYoFY3S1LetjzaenXO4BPQ+Om6twn6mKFfwZUgScznWmv0e3hHG2/U
 YO9LqzRKPyXl7z6n1hn/lVI3OPiGgP23UqMUrS6VDYjKdMLgKX50L0wb9
 fyUTogG9WRMane0AJQnnwfChWnuSyxwBuGeLUp3hVGJYHB1QYw7RGdE1g
 tbbRjX/3uxWVidPT3E8QayoFhTZfeUZ2OMYYdk0WaDG7k8+INXDyPKNEq
 3rK4ZKxIXxOKdQp1vaZSLuF6/gf4o1f0DEgWnCmfd2jfvVOa5+/sXLopV
 xHOZ3lFntmMcqvHJ07bTdN1pGdAakOyxXELlruh2ejFAqbjQuGTIhoabb A==;
X-CSE-ConnectionGUID: INZkradWQkmqayeDCgZCzg==
X-CSE-MsgGUID: 385oVuIpQ8a5wHLGPL2hzA==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="26013492"
X-IronPort-AV: E=Sophos;i="6.10,251,1719903600"; d="scan'208";a="26013492"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 08:25:12 -0700
X-CSE-ConnectionGUID: GcERdoXbT6mtQji1isKUPg==
X-CSE-MsgGUID: ss6FHqC1SKe5v2+++3HnOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,251,1719903600"; d="scan'208";a="71239920"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 23 Sep 2024 08:25:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 23 Sep 2024 18:25:08 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 5/6] drm/i915/bios: Extract vbt_signature[]
Date: Mon, 23 Sep 2024 18:24:52 +0300
Message-ID: <20240923152453.11230-6-ville.syrjala@linux.intel.com>
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

Replace the three hand rolled "$VBT"s with a vbt_signature[]
to avoid accidents.

v2: Include terminating '\0' for safety (Jani)

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 38ea92b4ff13..c57426940cf8 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2964,6 +2964,9 @@ static const struct bdb_header *get_bdb_header(const struct vbt_header *vbt)
 	return _vbt + vbt->bdb_offset;
 }
 
+static const char vbt_signature[] = "$VBT";
+static const int vbt_signature_len = 4;
+
 /**
  * intel_bios_is_valid_vbt - does the given buffer contain a valid VBT
  * @display:	display device
@@ -2986,7 +2989,7 @@ bool intel_bios_is_valid_vbt(struct intel_display *display,
 		return false;
 	}
 
-	if (memcmp(vbt->signature, "$VBT", 4)) {
+	if (memcmp(vbt->signature, vbt_signature, vbt_signature_len)) {
 		drm_dbg_kms(display->drm, "VBT invalid signature\n");
 		return false;
 	}
@@ -3082,9 +3085,12 @@ static struct vbt_header *spi_oprom_get_vbt(struct intel_display *display,
 	oprom_offset = intel_uncore_read(&i915->uncore, OROM_OFFSET);
 	oprom_offset &= OROM_OFFSET_MASK;
 
+	BUILD_BUG_ON(vbt_signature_len != sizeof(vbt_signature) - 1);
+	BUILD_BUG_ON(vbt_signature_len != sizeof(u32));
+
 	for (count = 0; count < oprom_size; count += 4) {
 		data = intel_spi_read32(&i915->uncore, oprom_offset + count);
-		if (data == *((const u32 *)"$VBT")) {
+		if (data == *((const u32 *)vbt_signature)) {
 			found = oprom_offset + count;
 			break;
 		}
@@ -3144,9 +3150,12 @@ static struct vbt_header *oprom_get_vbt(struct intel_display *display,
 	if (!oprom)
 		return NULL;
 
+	BUILD_BUG_ON(vbt_signature_len != sizeof(vbt_signature) - 1);
+	BUILD_BUG_ON(vbt_signature_len != sizeof(u32));
+
 	/* Scour memory looking for the VBT signature. */
 	for (i = 0; i + 4 < size; i += 4) {
-		if (ioread32(oprom + i) != *((const u32 *)"$VBT"))
+		if (ioread32(oprom + i) != *((const u32 *)vbt_signature))
 			continue;
 
 		p = oprom + i;
-- 
2.44.2

