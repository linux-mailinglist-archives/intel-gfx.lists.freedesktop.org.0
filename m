Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9DAC87EA36
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Mar 2024 14:38:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04B4410F74B;
	Mon, 18 Mar 2024 13:38:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Chen9qfD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB81610F739;
 Mon, 18 Mar 2024 13:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710769103; x=1742305103;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VcHlkWZPdgNwoVatj9DLnnFm412m7GzYOqtnDay6xT4=;
 b=Chen9qfDTun9h2Dbu7Dq8NaP2KNBaYYuUjs50A2hU1lPp0NL2Vbfvfri
 4U82zeLBLBjn8ENCvSdOvsrvpLeP06pmhJs0uTG4ltROjOPCaZyV77Eti
 hUQ3NxxXX0iFyTxE0dZiCdtYQhPMFN+278Areczl8wUMju/NPe+rGDdTr
 LJ8M/OvcwMRAvbORcCSPqHApHwl0Ts1/i1cGTtFPR6eVgyNgVScRFI7r0
 ndMNwPSGgwcN0VR7PJBzLxdE3QElO05Baqp2NikbZZRKFgfFzndfh+T4X
 OIZkAXZG+rjSBvBejgIAkZB41UGdZ9xZB9Y1ALnAiqShIJDv8T5XcarFi Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11016"; a="16218021"
X-IronPort-AV: E=Sophos;i="6.07,134,1708416000"; d="scan'208";a="16218021"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2024 06:38:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,134,1708416000"; d="scan'208";a="13570059"
Received: from dcroitox-mobl1.ger.corp.intel.com (HELO
 hazy.ger.corp.intel.com) ([10.251.210.126])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2024 06:38:21 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@intel.com
Subject: [PATCH v3 2/4] drm/i915/display: don't allow DMC wakelock on older
 hardware
Date: Mon, 18 Mar 2024 15:37:55 +0200
Message-Id: <20240318133757.1479189-3-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240318133757.1479189-1-luciano.coelho@intel.com>
References: <20240318133757.1479189-1-luciano.coelho@intel.com>
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

Only allow running DMC wakelock code if the display version is 20 or
greater.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc_wl.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index 5c3d8204ae7e..7c991e22c616 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -120,6 +120,9 @@ void intel_dmc_wl_enable(struct drm_i915_private *i915)
 	struct intel_dmc_wl *wl = &i915->display.wl;
 	unsigned long flags;
 
+	if (DISPLAY_VER(i915) < 20)
+		return;
+
 	spin_lock_irqsave(&wl->lock, flags);
 
 	if (wl->enabled)
@@ -143,6 +146,9 @@ void intel_dmc_wl_disable(struct drm_i915_private *i915)
 	struct intel_dmc_wl *wl = &i915->display.wl;
 	unsigned long flags;
 
+	if (DISPLAY_VER(i915) < 20)
+		return;
+
 	flush_delayed_work(&wl->work);
 
 	spin_lock_irqsave(&wl->lock, flags);
@@ -171,6 +177,9 @@ void intel_dmc_wl_get(struct drm_i915_private *i915, i915_reg_t reg)
 	struct intel_dmc_wl *wl = &i915->display.wl;
 	unsigned long flags;
 
+	if (DISPLAY_VER(i915) < 20)
+		return;
+
 	if (!intel_dmc_wl_check_range(reg.reg))
 		return;
 
@@ -203,6 +212,9 @@ void intel_dmc_wl_put(struct drm_i915_private *i915, i915_reg_t reg)
 	struct intel_dmc_wl *wl = &i915->display.wl;
 	unsigned long flags;
 
+	if (DISPLAY_VER(i915) < 20)
+		return;
+
 	if (!intel_dmc_wl_check_range(reg.reg))
 		return;
 
-- 
2.39.2

