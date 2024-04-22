Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 625BF8AC454
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 08:40:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24F0B1127EE;
	Mon, 22 Apr 2024 06:40:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HZKuZKeu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C1781127EE;
 Mon, 22 Apr 2024 06:40:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713768009; x=1745304009;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EFSPbUcX5XGSRoOptBP3MO0sG+hRGJOFyYVLcTqcCSc=;
 b=HZKuZKeumVQxLGAcMvzwkva7FmOrMuUqtdlesyN9cdxVmRHIkIhs3FFR
 eBPDRY508PTZEd0MKLs8UV7KMaaFCMdwQACF+ZoU81eUUJKqQR796zFyV
 uDr1Cn7w7KTXb+0DSfGLuWnkcF4g31MfrFQyLc+I/N/h03jnY1rDzCLsS
 PI6gJHwvn8lQ6D/Ckrp4toWQ7fCMtVN5tAysXt3GhiyU/UYgFt9nfWYbb
 DEupF3wEkDyTVvXkJX2+P0KjsoKQAVw53xFw1iTAXXIDRqUJUW7yGHkXv
 Jn9ni986p5oHwEn/9N6gNMI5O8s3jRMLIz3wmpaoil6h5U2fFFJuep/e+ A==;
X-CSE-ConnectionGUID: wKzMzUf8Tm6m5U7ISZrB4g==
X-CSE-MsgGUID: Yj8/rO0sToKJnP8R07wNog==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="9208521"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; 
   d="scan'208";a="9208521"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2024 23:40:09 -0700
X-CSE-ConnectionGUID: bpNGRwHEQHGo66Mo/v6x7A==
X-CSE-MsgGUID: YPzPJbk7RiCymsPZJYQoYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="23896360"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2024 23:40:06 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Clint Taylor <clinton.a.taylor@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH v4 03/19] drm/i915/xe2hpd: Initial cdclk table
Date: Mon, 22 Apr 2024 12:10:22 +0530
Message-Id: <20240422064038.1451579-4-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240422064038.1451579-1-balasubramani.vivekanandan@intel.com>
References: <20240422064038.1451579-1-balasubramani.vivekanandan@intel.com>
MIME-Version: 1.0
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

From: Clint Taylor <clinton.a.taylor@intel.com>

Add Xe2_HPD specific CDCLK table and use MTL Funcs.

Bspec: 65243
CC: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 7a833b5f2de2..b78154c82a71 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1443,6 +1443,14 @@ static const struct intel_cdclk_vals xe2lpd_cdclk_table[] = {
 	{}
 };
 
+/*
+ * Xe2_HPD always uses the minimal cdclk table from Wa_15015413771
+ */
+static const struct intel_cdclk_vals xe2hpd_cdclk_table[] = {
+	{ .refclk = 38400, .cdclk = 652800, .ratio = 34, .waveform = 0xffff },
+	{}
+};
+
 static const int cdclk_squash_len = 16;
 
 static int cdclk_squash_divider(u16 waveform)
@@ -3778,6 +3786,9 @@ void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
 	if (DISPLAY_VER(dev_priv) >= 20) {
 		dev_priv->display.funcs.cdclk = &rplu_cdclk_funcs;
 		dev_priv->display.cdclk.table = xe2lpd_cdclk_table;
+	} else if (DISPLAY_VER_FULL(dev_priv) >= IP_VER(14, 1)) {
+		dev_priv->display.funcs.cdclk = &rplu_cdclk_funcs;
+		dev_priv->display.cdclk.table = xe2hpd_cdclk_table;
 	} else if (DISPLAY_VER(dev_priv) >= 14) {
 		dev_priv->display.funcs.cdclk = &rplu_cdclk_funcs;
 		dev_priv->display.cdclk.table = mtl_cdclk_table;
-- 
2.25.1

