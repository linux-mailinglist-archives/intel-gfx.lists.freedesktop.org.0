Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CCE18A4A0A
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 10:14:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90ADB1122EB;
	Mon, 15 Apr 2024 08:14:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DAxLL51G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB4421122EA;
 Mon, 15 Apr 2024 08:14:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713168861; x=1744704861;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=O0SYlZlopd2X/6KcVED6FwsrEuc6roUqkha6Ao5noAU=;
 b=DAxLL51GCFiGptHF/KOIphRbLv2nwptNCQU5XUozpvKSR/trItAh9vZC
 KnX7ZSqlws1zcVbaIcilN+udIO2KuSaN3OdnH+IEsEHtNne1Fz5pDP2gi
 LOfedgpQmmMmwHfjoK+cuA8grLILLfxjzewII07gj6ku6+FZQIXIQpShq
 vAFwPFYcvIiIsIzUnGmF8qcmBY22FL0Jo/NB8aV0KRPoNr6YN4eUz7XSO
 pUaraxUVEWou9uOhPvVHyvNM+DMeqrWcyTF7aJ/JXD/551P0aRqhSuU4w
 jbJsmZOoUXpcx5282Gne6UjeISuKRf4JkRT8E8ozf9tk0PwRZjAFp3Dyq w==;
X-CSE-ConnectionGUID: kW1muP/qQcCCLbSMw4JNIg==
X-CSE-MsgGUID: neUhCVQ4Q8CSPMWBeUPk3Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11044"; a="9096411"
X-IronPort-AV: E=Sophos;i="6.07,202,1708416000"; 
   d="scan'208";a="9096411"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 01:14:21 -0700
X-CSE-ConnectionGUID: jIyFS6YRRxuX0qF+p2l3wA==
X-CSE-MsgGUID: 2gASZP0OQv+IWVBauBMjIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,202,1708416000"; d="scan'208";a="26400353"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 01:14:20 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH v3 11/21] drm/i915/xe2hpd: Add display info
Date: Mon, 15 Apr 2024 13:44:13 +0530
Message-Id: <20240415081423.495834-12-balasubramani.vivekanandan@intel.com>
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

From: Lucas De Marchi <lucas.demarchi@intel.com>

Add initial display info for xe2hpd. It is similar to xelpdp, but with no
PORT_B.

v2: Inherit from XE_LPDP_FEATURES instead of XE_LPD_FEATURES

Bspec: 67066
CC: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
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

