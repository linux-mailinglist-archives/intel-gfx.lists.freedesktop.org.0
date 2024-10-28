Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8CBB9B3AB8
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 20:49:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC91310E55A;
	Mon, 28 Oct 2024 19:49:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G1GlVwhM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 472CF10E559;
 Mon, 28 Oct 2024 19:49:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730144986; x=1761680986;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oIxX41jMChko6zGAFonvi8NoMl3nbLx37JSck0IyV7k=;
 b=G1GlVwhMB5yHqTnvGO8DNkL1OrXorIjA4iQa31RIF3asBf3LH75z2RvY
 vCJBrUtBLwDnYdlx14ncIEmBHcmZRYRAgl29c6wqw0hKZbEyX0RBM2fp+
 l8piEAm5dmsSFUGJjdg9fholWwdcsVcA/sg29F5BdZY89/VFlQvnvIZv5
 1PBViVFrHoKRXJMiCmPInOqYBTFlKDDiE4RBYhR2aetMhaq7kO9lVtarJ
 6rUIw9xyfn1D9/lWIN8DwdlcM/Ko+1enjouqxLtLSeNFXkjOMfctRZkPl
 2UBH9IidIySrsiLIfiNYyCHk+wgx/TH/KjxLxfgOiiLLNv/c7WG4NjiXS Q==;
X-CSE-ConnectionGUID: ZDFe8OvLQ/u61V6HqQA0jg==
X-CSE-MsgGUID: tn8DDLO0RxqhqdJjHsc04g==
X-IronPort-AV: E=McAfee;i="6700,10204,11239"; a="33679543"
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="33679543"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 12:49:46 -0700
X-CSE-ConnectionGUID: YZRr/lQ4QEm4lY86QvomxQ==
X-CSE-MsgGUID: IZFj2FVIQJuA0QYQ8So8KQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="85670250"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.21])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 12:49:43 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 maarten.lankhorst@linux.intel.com
Subject: [CI RESEND v4 v4 09/16] drm/i915/display: add platform group for g4x
Date: Mon, 28 Oct 2024 21:48:42 +0200
Message-Id: <947bdbc03913838383d75b3e07cf340100cbb5bb.1730144869.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1730144869.git.jani.nikula@intel.com>
References: <cover.1730144869.git.jani.nikula@intel.com>
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

