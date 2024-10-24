Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 516869AE4D2
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 14:34:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3AD510E90B;
	Thu, 24 Oct 2024 12:34:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DUndryD4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 244A410E90B;
 Thu, 24 Oct 2024 12:34:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729773272; x=1761309272;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oIxX41jMChko6zGAFonvi8NoMl3nbLx37JSck0IyV7k=;
 b=DUndryD4sCPezxYo5SUlZE7EyVn2cv8Oh2XLsjoFIAT1BtUNEGUs/e3r
 PIeMDeBuXc4jyULFzShsstPnb9wJRsjKCQZPU6JkNrsH3oUtlbIJhcjjK
 QRLBJoKFrnMfaXLod5qQgv42y5kMSoKpG6lsle7bmL6N+4v3UMA0HRZvn
 ydITD559RpY9updlbXFdjo/lsfau60czuTQrmEmxQf6PY4bwcCKSxgSG0
 cW3ZZVY7Ta+3oc8hMIr3zRrEv/kjKbs/k+nryyCB8iRoEAo5cZM0MfDah
 XzUB3V2AjGIGRrse8o0tVo9zC8HXfO7dyM9Q4i6d4FWBPZQYsnSXbRtr3 g==;
X-CSE-ConnectionGUID: XuucFO1hQrWbdQx9MiYOag==
X-CSE-MsgGUID: TcNiAJUpS7SB0SdCmcbOKA==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="17026314"
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="17026314"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 05:34:32 -0700
X-CSE-ConnectionGUID: TVzN702SRTWySSBLfcL6XQ==
X-CSE-MsgGUID: 21pPqdRBTXWFeKOkZ2TwSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="80872399"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 05:34:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 maarten.lankhorst@linux.intel.com
Subject: [CI v4 v4 09/16] drm/i915/display: add platform group for g4x
Date: Thu, 24 Oct 2024 15:33:35 +0300
Message-Id: <fd8ae0991105a6eab2f51881a535cf6bcf574219.1729773149.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1729773149.git.jani.nikula@intel.com>
References: <cover.1729773149.git.jani.nikula@intel.com>
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

Add support for defining aliases for platform groups, such as g4x that
covers both g45 and gm45.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 9 +++++++++
 drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
 2 files changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index e9d56f8aa3ab..50ffb31662b1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -53,6 +53,13 @@ struct platform_desc {
 	.platforms._platform = 1,		 \
 	.name = #_platform
 
+/*
+ * Group platform alias that matches multiple platforms. For aliases such as g4x
+ * that covers both g45 and gm45.
+ */
+#define PLATFORM_GROUP(_platform)		\
+	.platforms._platform = 1
+
 #define ID(id) (id)
 
 static const struct intel_display_device_info no_display = {};
@@ -387,6 +394,7 @@ static const struct platform_desc i965gm_desc = {
 
 static const struct platform_desc g45_desc = {
 	PLATFORM(g45),
+	PLATFORM_GROUP(g4x),
 	.info = &(const struct intel_display_device_info) {
 		GEN4_DISPLAY,
 
@@ -396,6 +404,7 @@ static const struct platform_desc g45_desc = {
 
 static const struct platform_desc gm45_desc = {
 	PLATFORM(gm45),
+	PLATFORM_GROUP(g4x),
 	.info = &(const struct intel_display_device_info) {
 		GEN4_DISPLAY,
 		.supports_tv = 1,
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index b240c28db2cb..745d03f49acf 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -38,6 +38,7 @@ struct drm_printer;
 	func(i965gm) \
 	func(g45) \
 	func(gm45) \
+	func(g4x) /* group alias for g45 and gm45 */ \
 	/* Display ver 5 */ \
 	func(ironlake) \
 	/* Display ver 6 */ \
-- 
2.39.5

