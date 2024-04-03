Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0210F896D39
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 12:52:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43DD11129D8;
	Wed,  3 Apr 2024 10:52:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WE18r1c+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D9F4112990;
 Wed,  3 Apr 2024 10:52:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712141525; x=1743677525;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=x9FWVleKs7D+4e4BU7/Le3GMyZ17Ep+oh7ErJsqOPgA=;
 b=WE18r1c+pyvupqDBQpoM1xJn7k0cblktk8MpcFlvDozBsoOuERhwVpDU
 3wPuNjp+2w/SxDpDpr3KVky9ALg06xCUg5GyPEvh8L1CatGj88964fvIt
 JngV9imoctPA+msqIVnfM3qZsu8rMd2XGhKt8qIWe83vbenow8bHxyOEZ
 ufTbGvi+1sUcEwntJFp+d3xTn+BPhJoLicaxRllbvWkLwINBfI/cNjA5J
 4cmWwutaRub3ct8SZJGSsZWYiJAj6KhBx8P6fruMG34qfxTaavxUCiVu5
 Am58NeMi85tSxpi3yNElNvahlcs/+qMrx4I1f6UId6okQzUAexdO7FngE g==;
X-CSE-ConnectionGUID: iE77hsEDR5uKy+5GislueA==
X-CSE-MsgGUID: wjXohbPPR26hvdJFaNFe5g==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="7212175"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7212175"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 03:51:40 -0700
X-CSE-ConnectionGUID: ArBj8K9jQGCrcNHR07htBw==
X-CSE-MsgGUID: Qvv1ho2DSuisr4sXGqPL9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18493384"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 03:51:38 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH 13/25] drm/i915/xe2hpd: Add display info
Date: Wed,  3 Apr 2024 16:21:11 +0530
Message-Id: <20240403105123.1327669-14-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240403105123.1327669-1-balasubramani.vivekanandan@intel.com>
References: <20240403105123.1327669-1-balasubramani.vivekanandan@intel.com>
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

Add initial display info for xe2hpd. It is similar to xelpd, but with no
PORT_B.

Bspec: 67066
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 .../gpu/drm/i915/display/intel_display_device.c  | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index c02d79b50006..2c505c480337 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -768,6 +768,21 @@ static const struct intel_display_device_info xe2_lpd_display = {
 		BIT(INTEL_FBC_C) | BIT(INTEL_FBC_D),
 };
 
+static const struct intel_display_device_info xe2_hpd_display = {
+	XE_LPD_FEATURES,
+	.has_cdclk_crawl = 1,
+	.has_cdclk_squash = 1,
+
+	.__runtime_defaults.ip.ver = 14,
+	.__runtime_defaults.ip.rel = 1,
+	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A) | BIT(INTEL_FBC_B),
+	.__runtime_defaults.cpu_transcoder_mask =
+		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
+		BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
+	.__runtime_defaults.port_mask = BIT(PORT_A) |
+		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4),
+};
+
 /*
  * Separate detection for no display cases to keep the display id array simple.
  *
@@ -847,6 +862,7 @@ static const struct {
 	const struct intel_display_device_info *display;
 } gmdid_display_map[] = {
 	{ 14,  0, &xe_lpdp_display },
+	{ 14,  1, &xe2_hpd_display },
 	{ 20,  0, &xe2_lpd_display },
 };
 
-- 
2.25.1

