Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 936339E58C8
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2024 15:45:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BCBE10EEA3;
	Thu,  5 Dec 2024 14:45:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EB/DkhgC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E84CB10EEA3
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2024 14:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733409955; x=1764945955;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=i+/WKidUGiBQEo96RudN4H/IBo+prSGMA0yIAfn0g1E=;
 b=EB/DkhgCBTc9N54S0aUcDXoZS47l5AHzRKtptDRuw2/+u0BJYWiqnPqE
 AsnPDtpFrFb9U6Nbe+WVz3drZBAc2xWEVhmvQNl7yGqkAegXH03f9/NTh
 L72hUSqOLcwG+CoWl6jnSdJVmbPryF77WQ3o96QVrN4Lc7VGp6TRzSuDU
 FsYgz93FhKKNfeOEA5LI2738fVEBOSWBGxlOu5p7wt2OIniK9XxleYvQP
 7ivwY3OiSv9k43N25ac57OTuvYrpcr4yChDsVSXXfiRnqFUkOsEz3TfSM
 GIkd6OCafoEysPUI8OkjcWFOYrWhWdN/V3B1FYCfVBjgQPlIAW5vvVl9p Q==;
X-CSE-ConnectionGUID: 8CqniMkfTuiNCkdwSGrXYQ==
X-CSE-MsgGUID: QkPuOHvzTVa1m05KpU+obw==
X-IronPort-AV: E=McAfee;i="6700,10204,11277"; a="33640807"
X-IronPort-AV: E=Sophos;i="6.12,210,1728975600"; d="scan'208";a="33640807"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2024 06:45:54 -0800
X-CSE-ConnectionGUID: hAPaOEmHSB2k6KPCWAI9Ow==
X-CSE-MsgGUID: IYd1jSRtTgGJKjrtdpXrXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,210,1728975600"; d="scan'208";a="94589170"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2024 06:45:54 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/5] drm/i915/dsi: add LP_CLOCK_DURING_LPM bit for
 DSI_TRANS_FUNC_CONF
Date: Thu,  5 Dec 2024 16:45:37 +0200
Message-Id: <c5d812efc59081a0f65cb821d1b42ab3508a45a0.1733409899.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1733409899.git.jani.nikula@intel.com>
References: <cover.1733409899.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

We're missing the definition for LP_CLOCK_DURING_LPM. Add it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi_regs.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi_regs.h b/drivers/gpu/drm/i915/display/icl_dsi_regs.h
index 88df1da8ccfd..d47a799aad75 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi_regs.h
+++ b/drivers/gpu/drm/i915/display/icl_dsi_regs.h
@@ -222,6 +222,7 @@
 #define   CLK_ENTER_LP_AFTER_DATA	REG_FIELD_PREP(CONTINUOUS_CLK_MASK, 0)
 #define   CLK_HS_OR_LP			REG_FIELD_PREP(CONTINUOUS_CLK_MASK, 2)
 #define   CLK_HS_CONTINUOUS		REG_FIELD_PREP(CONTINUOUS_CLK_MASK, 3)
+#define   LP_CLOCK_DURING_LPM		REG_BIT(7)
 #define   LINK_CALIBRATION_MASK		REG_GENMASK(5, 4)
 #define   CALIBRATION_DISABLED			REG_FIELD_PREP(LINK_CALIBRATION_MASK, 0)
 #define   CALIBRATION_ENABLED_INITIAL_ONLY	REG_FIELD_PREP(LINK_CALIBRATION_MASK, 2)
-- 
2.39.5

