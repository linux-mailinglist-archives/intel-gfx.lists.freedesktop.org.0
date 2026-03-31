Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sDbCM77ry2l6MgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 17:43:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F24C36BF9E
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 17:43:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B947310EB52;
	Tue, 31 Mar 2026 15:43:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oEuuFzJm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 250A510EAE6;
 Tue, 31 Mar 2026 15:43:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774971834; x=1806507834;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0C67toRMXqRwv/RWf0OxDdihmGENjtUtpLGRQXQhZ6A=;
 b=oEuuFzJmxrZQCgIVjeSEMOqvjEH0LZPmdDkdi+q7depcx9yI857su6OC
 qNoR2j4evgd6Md0wUFTTt54YAaGbGwPA6JwCZi3+13wl0pVaqprqXS72Y
 b9tSx+vyr63ZiedTmhvN8BSgeumdc1DGhU6/PwrDp2Bzn0ys0xoHHidd4
 gugeIZokqV+A8+wxXEsBl1XVzdu8XTP5JSs5r4K87o+Y6PuIMa7FgJjsA
 mS7BCfs3ta/DjpSQWQquuWcDodxpxE0+70JGwQ+7odSV3bzpydznRO2ba
 IyDM9Qryjymgw6VlePtt1sRMRfFlXzLDLJgOaR4m+Ie0k6LLzZYwUdnHj g==;
X-CSE-ConnectionGUID: GRtsv8FiQ4KVm4Y9jxf+5A==
X-CSE-MsgGUID: yLpkfpQOS9y/iOsgsw7RTg==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="76181031"
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="76181031"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 08:43:54 -0700
X-CSE-ConnectionGUID: fbwGhy6aQjiAM6ieO4EBIQ==
X-CSE-MsgGUID: uHNFRMN0TZimHCreQdkVVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="223519439"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.244.24])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 08:43:52 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 12/12] drm/i915/rom: Use intel_de for SPI ROM register
 access
Date: Tue, 31 Mar 2026 18:42:59 +0300
Message-ID: <20260331154259.24600-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260331154259.24600-1-ville.syrjala@linux.intel.com>
References: <20260331154259.24600-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linux.intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 5F24C36BF9E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Since we moved intel_rom.c back into the display code, just
use intel_de_{read,write}() for the register accesses.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_rom.c | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_rom.c b/drivers/gpu/drm/i915/display/intel_rom.c
index d573059fb0d9..54f842c09fb0 100644
--- a/drivers/gpu/drm/i915/display/intel_rom.c
+++ b/drivers/gpu/drm/i915/display/intel_rom.c
@@ -7,8 +7,9 @@
 
 #include <drm/drm_device.h>
 
+#include "intel_de.h"
+#include "intel_display_types.h"
 #include "intel_rom.h"
-#include "intel_uncore.h"
 #include "intel_oprom_regs.h"
 
 struct intel_rom {
@@ -17,7 +18,7 @@ struct intel_rom {
 	void __iomem *oprom;
 
 	/* for SPI */
-	struct intel_uncore *uncore;
+	struct intel_display *display;
 	loff_t offset;
 
 	size_t size;
@@ -30,10 +31,10 @@ struct intel_rom {
 
 static u32 spi_read32(struct intel_rom *rom, loff_t offset)
 {
-	intel_uncore_write(rom->uncore, PRIMARY_SPI_ADDRESS,
-			   rom->offset + offset);
+	intel_de_write(rom->display, PRIMARY_SPI_ADDRESS,
+		       rom->offset + offset);
 
-	return intel_uncore_read(rom->uncore, PRIMARY_SPI_TRIGGER);
+	return intel_de_read(rom->display, PRIMARY_SPI_TRIGGER);
 }
 
 static u16 spi_read16(struct intel_rom *rom, loff_t offset)
@@ -50,13 +51,13 @@ struct intel_rom *intel_rom_spi(struct drm_device *drm)
 	if (!rom)
 		return NULL;
 
-	rom->uncore = to_intel_uncore(drm);
+	rom->display = to_intel_display(drm);
 
-	static_region = intel_uncore_read(rom->uncore, SPI_STATIC_REGIONS);
+	static_region = intel_de_read(rom->display, SPI_STATIC_REGIONS);
 	static_region &= OPTIONROM_SPI_REGIONID_MASK;
-	intel_uncore_write(rom->uncore, PRIMARY_SPI_REGIONID, static_region);
+	intel_de_write(rom->display, PRIMARY_SPI_REGIONID, static_region);
 
-	rom->offset = intel_uncore_read(rom->uncore, OROM_OFFSET) & OROM_OFFSET_MASK;
+	rom->offset = intel_de_read(rom->display, OROM_OFFSET) & OROM_OFFSET_MASK;
 
 	rom->size = 0x200000;
 
-- 
2.52.0

