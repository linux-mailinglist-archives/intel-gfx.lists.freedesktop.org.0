Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B249BF8AA
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 22:52:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8CBE10E20C;
	Wed,  6 Nov 2024 21:52:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ScrREUmJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43B4610E0BC;
 Wed,  6 Nov 2024 21:52:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730929966; x=1762465966;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JlqyTSsy5rgaTGO96QAdXFkQSuZmAjqDJbbcdhYH8cY=;
 b=ScrREUmJ9niygNl9PO4XaSBn+tm+Txephw4AgJdJESqTdfJGxoViMWWe
 C73TZHWcDy7oJfNXuCoDFNkBHU6Qic0tCwepK2D1TOBAXYtkG0/axuycZ
 a2AXFAL8iMGNa327f/9F+QUToc6qgzgIGX6z709uh61JsOpavBoBtNghB
 560hiWShxkJAFiX9vHs+gklrBWaVZM4MQy3EStLbzdAmCX0p7F/Ka+rCu
 kkSSiTPCT1mvoBZSHty32syFBVRcXnj4DTsccnEBtNcFXlWR0oEi/vZOF
 0zqddgriUYEG2T86BOMjDkalFUo9AGH8nrx4bcp7oqcl+3TO1s15Sy+8H w==;
X-CSE-ConnectionGUID: nyRFechdSqazaBRdhZBSrg==
X-CSE-MsgGUID: d7klSDRQTGaCIgPRTlmG6w==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="48212135"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="48212135"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 13:52:46 -0800
X-CSE-ConnectionGUID: Y9+y/6l0T1y1Lf3XtnOWXQ==
X-CSE-MsgGUID: t5RueCn0TkaMDUQ+tTSJVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="84882457"
Received: from puneetse-mobl.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.110.118])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 13:52:45 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 01/17] drm/i915/dmc_wl: Use i915_mmio_reg_offset() instead
 of reg.reg
Date: Wed,  6 Nov 2024 18:50:27 -0300
Message-ID: <20241106215231.103474-2-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241106215231.103474-1-gustavo.sousa@intel.com>
References: <20241106215231.103474-1-gustavo.sousa@intel.com>
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

The macro i915_mmio_reg_offset() is the proper interface to get a
register's offset. Use that instead of looking directly at reg.reg.

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc_wl.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index 5634ff07269d..05892a237d3a 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -91,14 +91,15 @@ static void intel_dmc_wl_work(struct work_struct *work)
 	spin_unlock_irqrestore(&wl->lock, flags);
 }
 
-static bool intel_dmc_wl_check_range(u32 address)
+static bool intel_dmc_wl_check_range(i915_reg_t reg)
 {
 	int i;
 	bool wl_needed = false;
+	u32 offset = i915_mmio_reg_offset(reg);
 
 	for (i = 0; i < ARRAY_SIZE(lnl_wl_range); i++) {
-		if (address >= lnl_wl_range[i].start &&
-		    address <= lnl_wl_range[i].end) {
+		if (offset >= lnl_wl_range[i].start &&
+		    offset <= lnl_wl_range[i].end) {
 			wl_needed = true;
 			break;
 		}
@@ -191,7 +192,7 @@ void intel_dmc_wl_get(struct intel_display *display, i915_reg_t reg)
 	if (!__intel_dmc_wl_supported(display))
 		return;
 
-	if (!intel_dmc_wl_check_range(reg.reg))
+	if (!intel_dmc_wl_check_range(reg))
 		return;
 
 	spin_lock_irqsave(&wl->lock, flags);
@@ -239,7 +240,7 @@ void intel_dmc_wl_put(struct intel_display *display, i915_reg_t reg)
 	if (!__intel_dmc_wl_supported(display))
 		return;
 
-	if (!intel_dmc_wl_check_range(reg.reg))
+	if (!intel_dmc_wl_check_range(reg))
 		return;
 
 	spin_lock_irqsave(&wl->lock, flags);
-- 
2.47.0

