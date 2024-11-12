Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 020D49C4DF0
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2024 05:54:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15FB510E55A;
	Tue, 12 Nov 2024 04:54:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TENGbjPn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2C2E10E55A;
 Tue, 12 Nov 2024 04:54:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731387293; x=1762923293;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hIXeuFhpIeUNqGZ33Yr0m+mB8qPT1Fu9RLp9d7PsxLE=;
 b=TENGbjPnw/noDnyX9Jfr8vH0cwtLRBtcDhFIse08hZDhD2cxmXrcgu9H
 eoP+NpHYol6TWj1tr+F50fZEsthxCOuf0v7QjSFPvzY5C7Sy7366tKOQd
 +RgJ9S/qD2lcsrD9f5bk3lv1qp5W4wfADZihbOiu6ECFBmJc1zoXXM/RY
 RUet5LJVcrGV38IsARiMJSli2uGo5RnTjdEPPQ3Ym9XftKIhESYbGUFj6
 eVpWmyKClb7sCXzhqaRS1p2lS3YIBtheToe0FZKKYd65SXQ7vIwX9Zia0
 Vi9u2BRqVRiraxrgSrA3daxRnKtVlgiYJzP6ef/jcVHX/AioFIorv5yps Q==;
X-CSE-ConnectionGUID: 99DofSf1QaOF4lwG98jRtA==
X-CSE-MsgGUID: K2zLM/fYQSWfqUOBcgFMOA==
X-IronPort-AV: E=McAfee;i="6700,10204,11253"; a="42585890"
X-IronPort-AV: E=Sophos;i="6.12,147,1728975600"; d="scan'208";a="42585890"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 20:54:53 -0800
X-CSE-ConnectionGUID: OlT86MfNSeCu4xbgc62YLA==
X-CSE-MsgGUID: 1PXspbR6T/ObA8pJqiPHRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,147,1728975600"; d="scan'208";a="87673136"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa009.fm.intel.com with ESMTP; 11 Nov 2024 20:54:51 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, mitulkumar.ajitkumar.golani@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 3/5] drm/i915/watermark: Refactor dpkgc value prepration
Date: Tue, 12 Nov 2024 10:24:33 +0530
Message-Id: <20241112045435.1189586-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241112045435.1189586-1-suraj.kandpal@intel.com>
References: <20241112045435.1189586-1-suraj.kandpal@intel.com>
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

Refactor the value getting prepped to be written into the PKG_C_LATENCY
register by ORing the REG_FIELD_PREP values instead of having val
getiing operated on twice.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 3fa463159b0b..4c92ada1c851 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2866,8 +2866,8 @@ skl_program_dpkgc_latency(struct drm_i915_private *i915, bool fixed_refresh_rate
 	}
 
 	clear |= LNL_ADDED_WAKE_TIME_MASK | LNL_PKG_C_LATENCY_MASK;
-	val |= REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, max_latency);
-	val |= REG_FIELD_PREP(LNL_ADDED_WAKE_TIME_MASK, added_wake_time);
+	val |= REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, max_latency) |
+		REG_FIELD_PREP(LNL_ADDED_WAKE_TIME_MASK, added_wake_time);
 
 	intel_uncore_rmw(&i915->uncore, LNL_PKG_C_LATENCY, clear, val);
 }
-- 
2.34.1

