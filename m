Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 695CE8B7E7A
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 19:30:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB45C112D78;
	Tue, 30 Apr 2024 17:30:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rm2smwRU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A00C112D78;
 Tue, 30 Apr 2024 17:30:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714498220; x=1746034220;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=M/Augv4QApN+dSPQmN9/1exhM7/SjAqWXkbZ26nRHnU=;
 b=Rm2smwRUVrBL2QkTcBGK4RsnDZcbYjQm9JzAGKbYwhGXVO9XO8Ho5PuE
 bZd7KVUaryqSfxMx5SfwuHYF1JDVVxyvwrJteh9n87urr5Rgk3eEDnjsk
 ftrfVEvTu6Hi5DtWqrUXO/eiQNGHTqBnyQDOd2q/v0RBqXPW+tkseGOuQ
 PN8uSFCkvQhF1gUSDZnS8Yl2eb77fjaOvjscorBhf7I6nE+5uZ1nbgnfD
 9GHPBCi9v3XlfZ+JcFaJ4zEaLnIfNd7AXE7bo/2M4IWGBgE4vGaY9JTr3
 4DDn6CWAZdLLLQ9m2bVgarn4pIzxTrEeqq11uYTk7PIaRL3uD5EZM24wJ g==;
X-CSE-ConnectionGUID: wMSUROPMR7aDsDP/bnuyOg==
X-CSE-MsgGUID: pRjyjOtqRc+u5QV4yBlixQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11060"; a="27741987"
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="27741987"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 10:30:19 -0700
X-CSE-ConnectionGUID: 4W2D6InDRQ6tUgs7O5n6Gw==
X-CSE-MsgGUID: P3pOHltnRd6bGDun28MIDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="26617819"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 10:30:19 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, Clint Taylor <clinton.a.taylor@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Subject: [PATCH v3 03/19] drm/i915/xe2hpd: Initial cdclk table
Date: Tue, 30 Apr 2024 10:28:34 -0700
Message-Id: <20240430172850.1881525-4-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240430172850.1881525-1-radhakrishna.sripada@intel.com>
References: <20240430172850.1881525-1-radhakrishna.sripada@intel.com>
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
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
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
2.34.1

