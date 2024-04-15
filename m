Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4C8F8A49FF
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 10:14:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C44A21122D0;
	Mon, 15 Apr 2024 08:14:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KmuYooMe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BECDD1122CF;
 Mon, 15 Apr 2024 08:14:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713168847; x=1744704847;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EFSPbUcX5XGSRoOptBP3MO0sG+hRGJOFyYVLcTqcCSc=;
 b=KmuYooMedLgpodQUmp7aKun8BtmoSJtNp/5bVtRlPERI+B0GaHmoVHCo
 NV2Fg2f5CkWa3lItXxxBwyq16He8YGrI9YWGJFUrwrkISSSwe2beE7TuX
 /miq8DZcD9omjbG/aogYHkfhb+7wE5nSod9Qip4gDS2GjiIcX5b0n/FF/
 cuiN4sYkozyBvFIcQKCsgIIU9s+N+YS1cp0y2AbtWTdCAfFuM2zVIxWlU
 Bcmb7lifXzqiobdItJU/7wkGQAQzLG3OyZrLqwg3Gw/nqQQUInrT/gcUx
 oE03CSXiUxhr/jA+uD5QLMqT90knrIJui6qV4+HHyZcVxw4gfvVYJkxhC Q==;
X-CSE-ConnectionGUID: qAPNoY5jRx2UDZ2QFOC3zg==
X-CSE-MsgGUID: Xih/6GCjRAOYjdc60aEKgw==
X-IronPort-AV: E=McAfee;i="6600,9927,11044"; a="9096363"
X-IronPort-AV: E=Sophos;i="6.07,202,1708416000"; 
   d="scan'208";a="9096363"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 01:14:07 -0700
X-CSE-ConnectionGUID: 9MTEPJ3EQb201KmkpXAoVg==
X-CSE-MsgGUID: EorrphvhT3Kg0azTQOjAIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,202,1708416000"; d="scan'208";a="26400239"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 01:14:06 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Clint Taylor <clinton.a.taylor@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH v3 05/21] drm/i915/xe2hpd: Initial cdclk table
Date: Mon, 15 Apr 2024 13:44:07 +0530
Message-Id: <20240415081423.495834-6-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240415081423.495834-1-balasubramani.vivekanandan@intel.com>
References: <20240415081423.495834-1-balasubramani.vivekanandan@intel.com>
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

