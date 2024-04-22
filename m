Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3B4D8AC45B
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 08:40:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65FDB1127F9;
	Mon, 22 Apr 2024 06:40:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dErlTR0k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 586601127F8;
 Mon, 22 Apr 2024 06:40:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713768023; x=1745304023;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=m6IBsqDmZAUKScioKFUB5R4tYVOQUAfSBpyxNa70WJA=;
 b=dErlTR0kukf2J8C0XQ7S7RKrpGpjNpKJ7OiNN9KaDkowXtyNgLZ18p+j
 W5MvvsOXX9AWtH0YDGnQWHhW0yS/dF2q27MRZl1yYAIg5PdeM7LD//BQw
 4FzgggyPq/IzOkDLpzuUhPps5FOpSrBYFwEhiqqmTa20IGN4qUyvuSMwr
 G0DGyF4fwxaYrn9kbUyikxdlaDApbY9qamuVhjQ1VCJ/vTJUixC9o1bjS
 lFRmLV6VE+r5yyw7Oj82nawWoOIyeo3uNGucilPz3iusLPqZhMmtE5xLd
 eVnShgWokOJHUPFKRzWL0dTyuWZ/93rb86cbaQEmYWMOFTZvaX+zGHnFv w==;
X-CSE-ConnectionGUID: 7NCE++55QyeIdk2DZm559g==
X-CSE-MsgGUID: PU/OBXJRSR62Ja45v6rCSw==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="9208628"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; 
   d="scan'208";a="9208628"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2024 23:40:23 -0700
X-CSE-ConnectionGUID: i3XFdr/eR5Wq8Yandrl16A==
X-CSE-MsgGUID: vCh9PyD0SNS8GeK2z7KX3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="23896467"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2024 23:40:21 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH v4 09/19] drm/i915/xe2hpd: Add display info
Date: Mon, 22 Apr 2024 12:10:28 +0530
Message-Id: <20240422064038.1451579-10-balasubramani.vivekanandan@intel.com>
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

From: Lucas De Marchi <lucas.demarchi@intel.com>

Add initial display info for xe2hpd. It is similar to xelpdp, but with no
PORT_B.

v2: Inherit from XE_LPDP_FEATURES instead of XE_LPD_FEATURES

Bspec: 67066
CC: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index b8903bd0e82a..2740ccaeb086 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -771,6 +771,12 @@ static const struct intel_display_device_info xe2_lpd_display = {
 		BIT(INTEL_FBC_C) | BIT(INTEL_FBC_D),
 };
 
+static const struct intel_display_device_info xe2_hpd_display = {
+	XE_LPDP_FEATURES,
+	.__runtime_defaults.port_mask = BIT(PORT_A) |
+		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4),
+};
+
 __diag_pop();
 
 /*
@@ -852,6 +858,7 @@ static const struct {
 	const struct intel_display_device_info *display;
 } gmdid_display_map[] = {
 	{ 14,  0, &xe_lpdp_display },
+	{ 14,  1, &xe2_hpd_display },
 	{ 20,  0, &xe2_lpd_display },
 };
 
-- 
2.25.1

