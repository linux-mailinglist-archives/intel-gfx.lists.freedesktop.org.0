Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36ECF97EE10
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 17:25:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C998210E42E;
	Mon, 23 Sep 2024 15:25:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DrYJ227F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D85110E428;
 Mon, 23 Sep 2024 15:25:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727105102; x=1758641102;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1H1cMmPc6E1Js2D8spANh9y/cEuxIxWbEJVGRXGMHLY=;
 b=DrYJ227F3leWiGVraqTP/hmP7rkWVk92XSk98+ofpnOIqXMd8pJ15PSz
 IZ72EooGnKKljhgcmyHowUoydBpJFAkFk2dtqRU7jJ7K03IysgEeVs1Y8
 OTBsnUdFqlDLyO51yeL9+8yih1tEPFyuG9M7m8R4xyHh9iDtWgdlDKNJg
 9PJotpVdJEhBEWcfVZi9LrOjcUZh81OwtWXqzzE2J7t3CK9l271xLhVEy
 WJafRvHRawPvztekqgj8Fk9MFcIW3J78WjvOjuxNaxwsX214kRNKefgWW
 q6EFQsM0Hr/gAiSHsQGVNu7jFhChBoeJQR9KaeQPgIP0MhWl5MCR4Hm3K Q==;
X-CSE-ConnectionGUID: 38F3xkFGT9280bpqldGlbw==
X-CSE-MsgGUID: xnTru7TjTTuiF1Iduss1LQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="26013451"
X-IronPort-AV: E=Sophos;i="6.10,251,1719903600"; d="scan'208";a="26013451"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 08:25:02 -0700
X-CSE-ConnectionGUID: Tgo/g8uPRf6p5QVZnJOZ0w==
X-CSE-MsgGUID: Q8fMuC6OTLKgl/Qbht6IYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,251,1719903600"; d="scan'208";a="71239664"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 23 Sep 2024 08:25:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 23 Sep 2024 18:24:59 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 2/6] drm/i915/bios: Add some size checks to SPI VBT read
Date: Mon, 23 Sep 2024 18:24:49 +0300
Message-ID: <20240923152453.11230-3-ville.syrjala@linux.intel.com>
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

Unify the SPI vs. PCI ROM VBT read codepaths a bit by
pulling some size overflow checks from the PCI side
into the SPI side.

v2: s/drm_dbg()/drm_dbg_kms()/

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index b00aad23d6c2..37f30bb76e08 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3088,11 +3088,22 @@ static struct vbt_header *spi_oprom_get_vbt(struct intel_display *display,
 	if (count >= oprom_size)
 		goto err_not_found;
 
+	if (sizeof(struct vbt_header) > oprom_size - count) {
+		drm_dbg_kms(display->drm, "VBT header incomplete\n");
+		goto err_not_found;
+	}
+
 	/* Get VBT size and allocate space for the VBT */
 	vbt_size = intel_spi_read(&i915->uncore,
 				  found + offsetof(struct vbt_header, vbt_size));
 	vbt_size &= 0xffff;
 
+	if (vbt_size > oprom_size - count) {
+		drm_dbg_kms(display->drm,
+			    "VBT incomplete (vbt_size overflows)\n");
+		goto err_not_found;
+	}
+
 	vbt = kzalloc(round_up(vbt_size, 4), GFP_KERNEL);
 	if (!vbt)
 		goto err_not_found;
-- 
2.44.2

