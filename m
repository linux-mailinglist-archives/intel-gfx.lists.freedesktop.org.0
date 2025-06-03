Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84201ACC8C2
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Jun 2025 16:08:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2174C10E70E;
	Tue,  3 Jun 2025 14:08:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fkUiPo1p";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AAFB10E1F8;
 Tue,  3 Jun 2025 14:08:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748959733; x=1780495733;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=viKV2eLrmhOB0P+mgzGQjyq0dFKmUhe9FTWyNtRDxHY=;
 b=fkUiPo1pgYKOUJrfSwwS9dRYuS1HBf03ADyqwJmIwpEzGp0lsgB1bTI7
 7RvEhcDGrW6HzQwYItkxl7qjNzIcWD5brVsdZonPSCMGjDztu0T5ESxoA
 lwUIRFWSPKu0H7FjVLg4TsSJTJiGA26Sls4k84UYYVKNFpkdwJ1hWf5Lo
 n5BAUAGNguOUT6X9JQLiQeR2ITp15GUMWACnPDW/V3ZQ9VU9FijymRcYf
 /GhCHT8n0A4oh66G643TfPlf0KnVJ078OhtUi9ZSDLtEtbOClRVR8nGOs
 B4TTTDpMK7+2Hx8C2eRBjg5ybUmZ98kWzmh77NXPcpEN+NEvY6h4qOZ/8 A==;
X-CSE-ConnectionGUID: 62GikHIjQsKUs1TWBWCKNg==
X-CSE-MsgGUID: WuJ7SwKhQ9WxNEsuC+lS+w==
X-IronPort-AV: E=McAfee;i="6700,10204,11453"; a="61265808"
X-IronPort-AV: E=Sophos;i="6.16,206,1744095600"; d="scan'208";a="61265808"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2025 07:08:53 -0700
X-CSE-ConnectionGUID: UrMR+veuQEmb6F2OHyVDvg==
X-CSE-MsgGUID: 60mdPKwERrSLDtrPSeqymQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,206,1744095600"; d="scan'208";a="150155639"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.220])
 by orviesa005.jf.intel.com with SMTP; 03 Jun 2025 07:08:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 Jun 2025 17:08:49 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v3 04/12] drm/i915: Set PKG_C_LATENCY.added_wake_time to 0
Date: Tue,  3 Jun 2025 17:08:28 +0300
Message-ID: <20250603140836.21432-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250603140836.21432-1-ville.syrjala@linux.intel.com>
References: <20250603140836.21432-1-ville.syrjala@linux.intel.com>
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
index 8080f777910a..9580672827b0 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -29,12 +29,6 @@
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
@@ -2946,9 +2940,6 @@ intel_program_dpkgc_latency(struct intel_atomic_state *state)
 	}
 
 	if (fixed_refresh_rate) {
-		added_wake_time = DSB_EXE_TIME +
-			display->sagv.block_time_us;
-
 		latency = skl_watermark_max_latency(display, 1);
 
 		/* Wa_22020432604 */
-- 
2.49.0

