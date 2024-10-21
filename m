Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7233F9A6B23
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2024 15:55:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A46910E51A;
	Mon, 21 Oct 2024 13:55:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lm1Ja1hW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1231110E516;
 Mon, 21 Oct 2024 13:55:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729518914; x=1761054914;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PoQu8UR/FZRt0f0g7O1QFkm9/xW6PqGHN2T1fQ1jUzg=;
 b=lm1Ja1hWrmnWl4On1K3ltftd4CXsNsIeiVzWWShtUiRRwLfU1PoaC8do
 M2wq1lSd2qzQu6oTwMHJN7M12YWMGuj6E+DR1w9y6Y4X1JSg7GS9VBdFg
 fzMz9/vKrH07OfiEAkSU5sv/8xrWMN3xqMsF7vXoHVXFaynHLS7LbOqEF
 j/snuif/zN048bFyzj20KHGxu8AZeEtp0gO2JlwsDBIl+V0G9uzw92lyF
 8otk8qAb9AX7gHHtR3Xq98OhVxiDk+ENE7orlqs+XvWYNg3TcSH+6lLoK
 hgC2JrjSknViTmoycVyLHsFRiZVHTVI7aRR7TvfFKBL/zhSNeByAzGqFP A==;
X-CSE-ConnectionGUID: Z2zHPvFvQwOisXlZQy8+dA==
X-CSE-MsgGUID: mz6optdNS2GGS5rUMTpHZw==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="29212934"
X-IronPort-AV: E=Sophos;i="6.11,221,1725346800"; d="scan'208";a="29212934"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 06:55:14 -0700
X-CSE-ConnectionGUID: DQm0F1hMTBi++7PrOlPLgA==
X-CSE-MsgGUID: 6NR9ALSBQuOJ7N2XuIk7lQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,221,1725346800"; d="scan'208";a="79534507"
Received: from lbogdanm-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.222])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 06:55:11 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 maarten.lankhorst@linux.intel.com
Subject: [PATCH v4 09/15] drm/i915/display: add platform group for g4x
Date: Mon, 21 Oct 2024 16:54:10 +0300
Message-Id: <c189ffb52003b4bf7a85eedf1d98a93ae7a0df36.1729518793.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1729518793.git.jani.nikula@intel.com>
References: <cover.1729518793.git.jani.nikula@intel.com>
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

