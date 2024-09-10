Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B9529738DE
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 15:42:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 622AD10E7F4;
	Tue, 10 Sep 2024 13:42:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cSUd1Geb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF00210E7F4;
 Tue, 10 Sep 2024 13:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725975754; x=1757511754;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QWXekUZ6f972PjoHVcQeqHMb7+LOGTHyo63uvzdIs94=;
 b=cSUd1GebFYAGj6dNSzhxWb0Ggxkha9OyODJKelk2dbT0EuEfaIJKzPEW
 V6UjOTY8HjI6aZPHs/DiUKaAW+Gxixh9eiBa56N6MgFRaTPrYkOQKqaJ9
 xlh1OufxMDEAiqlrcbweKW1tijAPQlT6lp5mthCs/NktrGAA8b2QMxAzm
 6y0sC7Xts8OEdUT5pfkHGPlEtTACASm5xv2aUy+lcYVyzZ3NLzM4YK51T
 ti8rrMD2FGpjLtS7EgCCD/PNu1y8wof+XGqmoNjraRp2Xxd1PZc2FmFK9
 4Tm4N4wcUS3uk3GTj+TdWoeNqaIi2SNak+qhQxgZfKNdQOP6Nn8MBi9Cp Q==;
X-CSE-ConnectionGUID: VtcjI3MqQK22ZbYktLLjPQ==
X-CSE-MsgGUID: 4dBU229jS2qBu/cv9Ctkyw==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="35861250"
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="35861250"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 06:42:34 -0700
X-CSE-ConnectionGUID: 2pGKHZhzT5CLPfcUz0umnw==
X-CSE-MsgGUID: uBvYoAOBTzaWZ1v8NVhU4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="67081319"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Sep 2024 06:42:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Sep 2024 16:42:30 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 4/5] drm/i915/bios: Extract vbt_signature[]
Date: Tue, 10 Sep 2024 16:42:18 +0300
Message-ID: <20240910134219.28479-5-ville.syrjala@linux.intel.com>
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

Replace the three hand rolled "$VBT"s with a vbt_signature[]
to avoid accidents.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index cbbda94c3dab..0b92b494117f 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2964,6 +2964,8 @@ static const struct bdb_header *get_bdb_header(const struct vbt_header *vbt)
 	return _vbt + vbt->bdb_offset;
 }
 
+static const char vbt_signature[4] = "$VBT";
+
 /**
  * intel_bios_is_valid_vbt - does the given buffer contain a valid VBT
  * @display:	display device
@@ -2986,7 +2988,7 @@ bool intel_bios_is_valid_vbt(struct intel_display *display,
 		return false;
 	}
 
-	if (memcmp(vbt->signature, "$VBT", 4)) {
+	if (memcmp(vbt->signature, vbt_signature, sizeof(vbt_signature))) {
 		drm_dbg_kms(display->drm, "VBT invalid signature\n");
 		return false;
 	}
@@ -3082,9 +3084,11 @@ static struct vbt_header *spi_oprom_get_vbt(struct intel_display *display,
 	oprom_offset = intel_uncore_read(&i915->uncore, OROM_OFFSET);
 	oprom_offset &= OROM_OFFSET_MASK;
 
+	BUILD_BUG_ON(sizeof(vbt_signature) != sizeof(u32));
+
 	for (count = 0; count < oprom_size; count += 4) {
 		data = intel_spi_read32(&i915->uncore, oprom_offset + count);
-		if (data == *((const u32 *)"$VBT")) {
+		if (data == *((const u32 *)vbt_signature)) {
 			found = oprom_offset + count;
 			break;
 		}
@@ -3144,9 +3148,11 @@ static struct vbt_header *oprom_get_vbt(struct intel_display *display,
 	if (!oprom)
 		return NULL;
 
+	BUILD_BUG_ON(sizeof(vbt_signature) != sizeof(u32));
+
 	/* Scour memory looking for the VBT signature. */
 	for (i = 0; i + 4 < size; i += 4) {
-		if (ioread32(oprom + i) != *((const u32 *)"$VBT"))
+		if (ioread32(oprom + i) != *((const u32 *)vbt_signature))
 			continue;
 
 		p = oprom + i;
-- 
2.44.2

