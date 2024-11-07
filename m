Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E243F9C0DC0
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 19:29:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBD2510E8A7;
	Thu,  7 Nov 2024 18:29:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ed5rspj1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FEA410E8A1;
 Thu,  7 Nov 2024 18:29:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731004184; x=1762540184;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=K6I+UG1ro/PCMoBy6LL6IWVTYI48329yETnRx1L9Srw=;
 b=ed5rspj18WUlB/IXzz2v7Z9MxPaJNwjuXDNC7wn33TcbwtT6ZYYDK0QY
 9JmrZCuhpX081yrAeD6PNNoPKpZQGdBjiCVaCTFkg8lgNCaOs6WkCvlbu
 wYJ6NhTZekH5tqlxZXwOriC+4aq9tpu53CS/goZs2LXplrP+DFOQI2yRL
 ylmuWPjGDdHyX2OWcSClAyAneYMeJioVv+yQcNYJm89Ye6AfqZrNsJUaF
 JpMNmPfKK2zqtiOS0hiZCMfsY+2lPcjlq/SNQS9DC4dns5iqngU2lf9fG
 HrcXlS8hk/UpZVKeNf6dp3ALgF5IDKPBfjg5IdTZhqOpDoXl4PCpl5pHD A==;
X-CSE-ConnectionGUID: Ix9OAP1HSe+OO6HnuSyUVQ==
X-CSE-MsgGUID: IJOf0Z9GQLivKrhglmcXHw==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="18494836"
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="18494836"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 10:29:44 -0800
X-CSE-ConnectionGUID: 3auE/RKOR9yOJuPi5lpGtw==
X-CSE-MsgGUID: CdAflu3STi2jVd9n6t6+SQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="85329564"
Received: from rchatre-mobl4.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.110.154])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 10:29:43 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v3 01/18] drm/i915/dmc_wl: Use i915_mmio_reg_offset() instead
 of reg.reg
Date: Thu,  7 Nov 2024 15:27:06 -0300
Message-ID: <20241107182921.102193-2-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241107182921.102193-1-gustavo.sousa@intel.com>
References: <20241107182921.102193-1-gustavo.sousa@intel.com>
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

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
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

