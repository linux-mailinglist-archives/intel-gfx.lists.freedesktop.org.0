Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27295AD209D
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Jun 2025 16:11:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8749110E3C7;
	Mon,  9 Jun 2025 14:11:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bk12mR4h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24B1810E3CB;
 Mon,  9 Jun 2025 14:11:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749478280; x=1781014280;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BZYRQJ/9+iWAbf6GVoP87cZVsc1Yi8CWQE0q4ftfHM0=;
 b=bk12mR4hfgWynGQ6wJWOycw32yu47bnHlZZKRS6N72ExIkQBNwMrrxF7
 dbFiIzTk5eexj60cGG47weruuKDQ+hgfsvI2vy5fWfpFy6GNLntlD9QcE
 bigzGakIs0RIEcPQnx3d/Nm3uqCZwOnpKtWM05VU9lYfF7w0FPoz2vTiu
 EPNusbutgbQ/89Cty+uyLgUMMCM+W3NP6qZeNYp/pNx422v5KQKUIq/F/
 GYtCPD4R6etatQsnC8qtnIGkleaf6czWqjqAiIHBAYJ0ETv3itYFLbrdC
 To6f+z4PYpTJQLpd81wbx6Qxt+gLPRojsO2gOHvVn4RWHFjUHWtEuLI6B g==;
X-CSE-ConnectionGUID: eSnmd4qXQDuFL6wtSqtwnQ==
X-CSE-MsgGUID: FB8BnHEuQV63jlzmoYAtlA==
X-IronPort-AV: E=McAfee;i="6800,10657,11459"; a="55360769"
X-IronPort-AV: E=Sophos;i="6.16,222,1744095600"; d="scan'208";a="55360769"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 07:11:20 -0700
X-CSE-ConnectionGUID: zA7Gd3+DQ2yQwnVsJXBhVQ==
X-CSE-MsgGUID: zaGmkR+AR0K1K1wsBTmAew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,222,1744095600"; d="scan'208";a="151765723"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.99])
 by orviesa005.jf.intel.com with SMTP; 09 Jun 2025 07:11:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 09 Jun 2025 17:11:17 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v4 09/21] drm/i915: Set PKG_C_LATENCY.added_wake_time to 0
Date: Mon,  9 Jun 2025 17:10:34 +0300
Message-ID: <20250609141046.6244-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250609141046.6244-1-ville.syrjala@linux.intel.com>
References: <20250609141046.6244-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

AFAIK PKG_C_LATENCY.added_wake_time only matters for flip queue.
As long as we're not using that there's no point in adding any
extra wake time.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 2c2371574d6f..bf1372024efd 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -32,12 +32,6 @@
 #include "skl_watermark.h"
 #include "skl_watermark_regs.h"
 
-/*It is expected that DSB can do posted writes to every register in
- * the pipe and planes within 100us. For flip queue use case, the
- * recommended DSB execution time is 100us + one SAGV block time.
- */
-#define DSB_EXE_TIME 100
-
 static void skl_sagv_disable(struct intel_display *display);
 
 /* Stores plane specific WM parameters */
@@ -2949,9 +2943,6 @@ intel_program_dpkgc_latency(struct intel_atomic_state *state)
 	}
 
 	if (fixed_refresh_rate) {
-		added_wake_time = DSB_EXE_TIME +
-			display->sagv.block_time_us;
-
 		latency = skl_watermark_max_latency(display, 1);
 
 		/* Wa_22020432604 */
-- 
2.49.0

