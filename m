Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6343192B952
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2024 14:22:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C46310E530;
	Tue,  9 Jul 2024 12:22:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GALL28NT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2487610E530
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2024 12:22:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720527768; x=1752063768;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HlhWTGyWKtUMFnyqvEE5RW+YS7YG976Rq/Jzjd6tEsE=;
 b=GALL28NTVbiKBMlcKmRylirE4sF9tcYqgfzZq9jaeUaiTJ3txcLI0vMS
 CyOtNcZnu3xFttmRZcNSEzJ9HOtCEUUTL0dPq1ip6Uw9kbQP4aPvB+QdZ
 9db6RzR3EZp1nWONxHRas+jFz9FjX+alkJzLEG2qNZlukl2NtpEM3Xx23
 b5S1ChfxQJfPPl9oDp6n13nTlkQ0dhxMVvCSJh650DhvECiTI72Wm3fxn
 tIJ56n1ti1upAPCptRQXL7Fqw7VuqKflDwnBLaSBW4kQ41qDx0onF9IqB
 P8h3XhfDb5HRhNdAZkU1xnLuBmvOFq2NIvij6blIayxSz6v8XBcAWn33B g==;
X-CSE-ConnectionGUID: S157z+iYS+WNGr/XMgmEPg==
X-CSE-MsgGUID: zMmlTffWQ7ymA0KoGPU4cQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11127"; a="21546307"
X-IronPort-AV: E=Sophos;i="6.09,195,1716274800"; d="scan'208";a="21546307"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2024 05:22:48 -0700
X-CSE-ConnectionGUID: FV8p7g9yS+OYHNxJXeD2UQ==
X-CSE-MsgGUID: hOEetT/HSqmqisg/nVdUkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,195,1716274800"; d="scan'208";a="85380219"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.59])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2024 05:22:46 -0700
From: =?UTF-8?q?Zbigniew=20Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Zbigniew=20Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>, 
 Matthew Auld <matthew.auld@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH v2 2/2] drm/xe: Use 64K pages for scanout buffers for
 Battlemage
Date: Tue,  9 Jul 2024 14:22:31 +0200
Message-Id: <20240709122231.537801-3-zbigniew.kempczynski@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240709122231.537801-1-zbigniew.kempczynski@intel.com>
References: <20240709122231.537801-1-zbigniew.kempczynski@intel.com>
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

Set BMG platform to use 64K pages for display.

Signed-off-by: Zbigniew Kempczyński <zbigniew.kempczynski@intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
v2: Use 64K for BMG only (Matt)
---
 drivers/gpu/drm/xe/xe_pci.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
index 53b67f39c7d5..c297f3547734 100644
--- a/drivers/gpu/drm/xe/xe_pci.c
+++ b/drivers/gpu/drm/xe/xe_pci.c
@@ -179,6 +179,13 @@ static const struct xe_graphics_desc graphics_xe2 = {
 	XE2_GFX_FEATURES,
 };
 
+static const struct xe_graphics_desc graphics_bmg = {
+	.name = "Xe2_BMG",
+
+	XE2_GFX_FEATURES,
+	.vram_flags = XE_VRAM_FLAGS_DISPLAY_NEED64K,
+};
+
 static const struct xe_media_desc media_xem = {
 	.name = "Xe_M",
 	.ver = 12,
@@ -355,7 +362,7 @@ static const struct gmdid_map graphics_ip_map[] = {
 	{ 1270, &graphics_xelpg },
 	{ 1271, &graphics_xelpg },
 	{ 1274, &graphics_xelpg },	/* Xe_LPG+ */
-	{ 2001, &graphics_xe2 },
+	{ 2001, &graphics_bmg },
 	{ 2004, &graphics_xe2 },
 };
 
-- 
2.34.1

