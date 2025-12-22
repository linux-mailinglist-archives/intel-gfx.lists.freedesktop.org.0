Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF9EDCD5FCE
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Dec 2025 13:34:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63E4C10E65D;
	Mon, 22 Dec 2025 12:34:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JbFKtX4x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B90710E64E;
 Mon, 22 Dec 2025 12:34:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766406853; x=1797942853;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PqO721j+cGf1kMllUTZ6/A9cVDt1avYx3C3tDIQp/EE=;
 b=JbFKtX4xX9lhujD67CM1xozyagpH7JjAWGyI5h6uL8lXNSHS4bz5GWAe
 v2TcmZZb7L05Wy7M6Qqib7NBK1HFQ7fUBig4TeXEXZbsdcuPHcZaYWcvB
 h26cW3p62gK0Cx+RFDkNK13yWxyjpjVxbEh6G9nogLsIIruFAMNqfoj0S
 1tONxEjG2hCoUWWnRXVrOz3hqtcCovl54Epv4f/SPA74gj6uXtw7Aew1a
 UHnHknHYWXZ3ZP5IRH33Ap3WAPl43YcewfUUcX0xsTUzg2vUpOtYyvboV
 zzaVS3DpBMLxl3iMpHFCO9a++ARVBQtUXBIw2G8FNFAM11Y2c5Q53KtaG w==;
X-CSE-ConnectionGUID: oxeJCZLhS6SxQkoDobZFLQ==
X-CSE-MsgGUID: Cj/4U0FrSoqgP52KlMQvZg==
X-IronPort-AV: E=McAfee;i="6800,10657,11649"; a="72121834"
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="72121834"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 04:34:13 -0800
X-CSE-ConnectionGUID: +nUcHXvrRT6L51JtIfS2LA==
X-CSE-MsgGUID: 3Y/oeMblQ5GyFjS7pOqebA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="203984535"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.79])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 04:34:11 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 1/4] drm/i915: remove unused dev_priv local variable
Date: Mon, 22 Dec 2025 14:34:00 +0200
Message-ID: <222871a73efbe1049862d11a03abf253611e46b1.1766406794.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1766406794.git.jani.nikula@intel.com>
References: <cover.1766406794.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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

Since commit 35ec71285c93 ("drm/i915/pc8: Add parent interface for PC8
forcewake tricks"), the __maybe_unused dev_priv has become definitely
unused. Remove, along with the i915_drv.h include.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 47042a4c3a30..d27397f43863 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -8,7 +8,6 @@
 
 #include <drm/drm_print.h>
 
-#include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_backlight_regs.h"
 #include "intel_cdclk.h"
@@ -31,6 +30,7 @@
 #include "intel_pmdemand.h"
 #include "intel_pps_regs.h"
 #include "intel_snps_phy.h"
+#include "intel_step.h"
 #include "skl_watermark.h"
 #include "skl_watermark_regs.h"
 #include "vlv_sideband.h"
@@ -1328,7 +1328,6 @@ static void hsw_disable_lcpll(struct intel_display *display,
  */
 static void hsw_restore_lcpll(struct intel_display *display)
 {
-	struct drm_i915_private __maybe_unused *dev_priv = to_i915(display->drm);
 	u32 val;
 	int ret;
 
-- 
2.47.3

