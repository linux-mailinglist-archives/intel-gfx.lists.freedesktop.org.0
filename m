Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD22F9C0DC6
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 19:29:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DF8410E8B7;
	Thu,  7 Nov 2024 18:29:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UHeYk3RK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F348710E8C2;
 Thu,  7 Nov 2024 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731004194; x=1762540194;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5ensK3gAA8Mwmm2H7u6eNIJUisLeViKqAxhAbLVLiyY=;
 b=UHeYk3RK5WeswmCQP4/1IhsQISldzwcKNPa8WVrD9li9j3kJFpwXmnIz
 tm6iAidFaIIEpxpaWn9Z7XyOtR7t0lf8v6agTufIkBI67RqDCa9jBi4gT
 8UBXLEkWPxD4yNQ2gcRclNZDlZ7rfS6U+DaMFqr4kspHpxep8wdyxE6rt
 dDGUSY1veW45/To/CtUF4/cxFdopRmq/1NtDQeBx5d9O9mayqrXE4A7aw
 KQ9f3zV4EyrUxmSQoSpPzkTEUs+U8EhOpFS/UrIcDqVApPlMwvSgep7/f
 0msEfKEBa+3+sUSlBZ3G+GlJH5NahhsPDpjziUOXF0vma7NNjBV1FsUm5 Q==;
X-CSE-ConnectionGUID: tLONQfkKS8WOFdLTNBUWVg==
X-CSE-MsgGUID: 1ORl1sAvQveZjGuXRhRodw==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="18494854"
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="18494854"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 10:29:53 -0800
X-CSE-ConnectionGUID: Opf7QW9ZSKmq149B974ZcQ==
X-CSE-MsgGUID: ni1IEvvNQnKARRjVa6T/iQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="85329620"
Received: from rchatre-mobl4.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.110.154])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 10:29:52 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v3 07/18] drm/i915/dmc_wl: Extract intel_dmc_wl_reg_in_range()
Date: Thu,  7 Nov 2024 15:27:12 -0300
Message-ID: <20241107182921.102193-8-gustavo.sousa@intel.com>
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

We will be using more than one range table in
intel_dmc_wl_check_range(). As such, move the logic to a new function
and name it intel_dmc_wl_reg_in_range().

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc_wl.c | 21 +++++++++++----------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index 1753c334f3fd..4b958a4c4358 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -99,21 +99,22 @@ static void intel_dmc_wl_work(struct work_struct *work)
 	spin_unlock_irqrestore(&wl->lock, flags);
 }
 
-static bool intel_dmc_wl_check_range(i915_reg_t reg)
+static bool intel_dmc_wl_reg_in_range(i915_reg_t reg,
+				      const struct intel_dmc_wl_range ranges[])
 {
-	int i;
-	bool wl_needed = false;
 	u32 offset = i915_mmio_reg_offset(reg);
 
-	for (i = 0; lnl_wl_range[i].start; i++) {
-		if (offset >= lnl_wl_range[i].start &&
-		    offset <= lnl_wl_range[i].end) {
-			wl_needed = true;
-			break;
-		}
+	for (int i = 0; ranges[i].start; i++) {
+		if (ranges[i].start <= offset && offset <= ranges[i].end)
+			return true;
 	}
 
-	return wl_needed;
+	return false;
+}
+
+static bool intel_dmc_wl_check_range(i915_reg_t reg)
+{
+	return intel_dmc_wl_reg_in_range(reg, lnl_wl_range);
 }
 
 static bool __intel_dmc_wl_supported(struct intel_display *display)
-- 
2.47.0

