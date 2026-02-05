Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WCFjGcJihGkM2wMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 10:28:34 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39EA0F0B96
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 10:28:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E5C910E844;
	Thu,  5 Feb 2026 09:28:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YmbK0C1+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D805B10E84F;
 Thu,  5 Feb 2026 09:28:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770283711; x=1801819711;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9Oj4R4dYnVgdOurSf/83zsxmGzfe0jJEBcvOpywKcXw=;
 b=YmbK0C1+Rc5C1IOcWaHz8cnhcPv7gD9Ntwl8qHvupRbOiWFopjRG+zpf
 JsGZksAx0/3WSLSfsV91orQSrL4kIsSdRYDKymuuCQg6Z0qsPBzjQGLZL
 SagV7Vb2GVXjm3vJiDY3QqjIYB4gVLGy/as3M3SWW93xyNgp3R3VvbvY8
 oSV7f85pZDfz0hp6Sz3/8Ckf+NYZC/SCcT+6bP5Ow/SYluUV9Aqu05/LE
 KScllBGFPK8eyj76jjEmWxoGcA6MlKm6S9qPlKplAWhyMhzb6OFYzmYaH
 HpTVgqhmfT2oonElOrQdYWIoplGUiaNiYVISmC2XBTu6bwRjdyN26QeHm Q==;
X-CSE-ConnectionGUID: hRJ6tPObQn6EVueEuXLDWA==
X-CSE-MsgGUID: hDQyq1fXTxia8gFm9Vrm6w==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="89060143"
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="89060143"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 01:28:30 -0800
X-CSE-ConnectionGUID: 4vvo+VnwSHSFCWWAnvbVgg==
X-CSE-MsgGUID: S3t6TXDNRFSXtwwnuQnevA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="209807815"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa007.fm.intel.com with ESMTP; 05 Feb 2026 01:28:29 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [v4 18/20] drm/i915: Remove i915_reg.h from intel_display_power_well.c
Date: Thu,  5 Feb 2026 15:13:39 +0530
Message-ID: <20260205094341.1882816-19-uma.shankar@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260205094341.1882816-1-uma.shankar@intel.com>
References: <20260205094341.1882816-1-uma.shankar@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 39EA0F0B96
X-Rspamd-Action: no action

Make intel_display_power_well.c free from including i915_reg.h.

v3: Separate bit field for VLV (Ville)

v2: Include specific pcode header, drop common header (Jani)

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power_well.c | 3 +--
 drivers/gpu/drm/i915/display/intel_display_regs.h       | 1 +
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 45c4313e6900..9c8d29839caf 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -8,7 +8,6 @@
 #include <drm/drm_print.h>
 #include <drm/intel/intel_pcode_regs.h>
 
-#include "i915_reg.h"
 #include "intel_backlight_regs.h"
 #include "intel_combo_phy.h"
 #include "intel_combo_phy_regs.h"
@@ -1277,7 +1276,7 @@ static void vlv_init_display_clock_gating(struct intel_display *display)
 	 * Disable trickle feed and enable pnd deadline calculation
 	 */
 	intel_de_write(display, MI_ARB_VLV,
-		       MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE);
+		       MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE_VLV);
 	intel_de_write(display, CBR1_VLV, 0);
 
 	drm_WARN_ON(display->drm, DISPLAY_RUNTIME_INFO(display)->rawclk_freq == 0);
diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index 1c77a7de2d6e..d661385a1edd 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -350,6 +350,7 @@
 #define  FW_CSPWRDWNEN		(1 << 15)
 
 #define MI_ARB_VLV		_MMIO(VLV_DISPLAY_BASE + 0x6504)
+#define   MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE_VLV	(1 << 2)
 
 #define CZCLK_CDCLK_FREQ_RATIO	_MMIO(VLV_DISPLAY_BASE + 0x6508)
 #define   CDCLK_FREQ_SHIFT	4
-- 
2.50.1

