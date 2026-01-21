Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YDJxFZFccWnLGAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 00:09:05 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 293405F4E0
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 00:09:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0F3010E8C9;
	Wed, 21 Jan 2026 23:09:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dZgUgzrl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AAE410E8C6;
 Wed, 21 Jan 2026 23:09:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769036942; x=1800572942;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yaFk2AueAzqo09K14e60IJPezrv2NfQLJg1o1dAO6pg=;
 b=dZgUgzrlW0/XusRRVelRGSKvXhpg8AqY5XGDh9pE6vIHecaInWSsz1oP
 MPVcm7bmLOFk3gjkDHc3gLswRo6n9LYm7nBdD5nW5V1tI9ah97u5eLqvl
 OHIi+fR2rK3PliRbm5/PG3aLMSkVUgfv/9ZpiKNdaQBgmdbbgLJunbKsu
 yZ2V67j6wk0RtRr/9ZGO/IaM2oVEXLjOpVeVAwJc69rQGd9U4bYHvgSru
 VvXjcI7MN6CF4VTsY5o8++mVeQAVIlcwSFx/g7CGCNCiyPyky944isYai
 ED30ceBeDTUEsVm4CipUChxB8OxbCmUfOzZzL6fJI10PeuoLTZJfttZg+ Q==;
X-CSE-ConnectionGUID: lz+FX571R8q2iRL2C/zmhQ==
X-CSE-MsgGUID: KO7XzyRFRcKQzKMNHv4izA==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="70245003"
X-IronPort-AV: E=Sophos;i="6.21,244,1763452800"; d="scan'208";a="70245003"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 15:09:01 -0800
X-CSE-ConnectionGUID: Ps+AYMiJR9utzjucqyBEAw==
X-CSE-MsgGUID: 5yFkL1nZRmekHeNw+PPz3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,244,1763452800"; d="scan'208";a="206889671"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa010.fm.intel.com with ESMTP; 21 Jan 2026 15:09:00 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [v2 17/19] drm/{i915,
 xe}: Remove i915_reg.h from intel_display_power_well.c
Date: Thu, 22 Jan 2026 04:54:12 +0530
Message-ID: <20260121232414.707192-18-uma.shankar@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260121232414.707192-1-uma.shankar@intel.com>
References: <20260121232414.707192-1-uma.shankar@intel.com>
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
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 293405F4E0
X-Rspamd-Action: no action

Make intel_display_power_well.c free from including i915_reg.h.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power_well.c | 2 +-
 drivers/gpu/drm/i915/display/intel_display_regs.h       | 2 ++
 drivers/gpu/drm/i915/i915_reg.h                         | 3 ---
 3 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index db185a859133..8a1f1c61c6da 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -6,8 +6,8 @@
 #include <linux/iopoll.h>
 
 #include <drm/drm_print.h>
+#include <drm/intel/intel_gmd_common_regs.h>
 
-#include "i915_reg.h"
 #include "intel_backlight_regs.h"
 #include "intel_combo_phy.h"
 #include "intel_combo_phy_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index fb21b1cf6124..1def3dccdf61 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -319,6 +319,8 @@
 #define  FW_CSPWRDWNEN		(1 << 15)
 
 #define MI_ARB_VLV		_MMIO(VLV_DISPLAY_BASE + 0x6504)
+/* Disable display A/B trickle feed */
+#define   MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE	(1 << 2)
 
 #define CZCLK_CDCLK_FREQ_RATIO	_MMIO(VLV_DISPLAY_BASE + 0x6508)
 #define   CDCLK_FREQ_SHIFT	4
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index a85e2d9ab561..c68a64bc7646 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -428,9 +428,6 @@
 #define   MI_ARB_LOW_PRIORITY_GRACE_4KB		(0 << 4)	/* default */
 #define   MI_ARB_LOW_PRIORITY_GRACE_8KB		(1 << 4)
 
-/* Disable display A/B trickle feed */
-#define   MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE	(1 << 2)
-
 /* Set display plane priority */
 #define   MI_ARB_DISPLAY_PRIORITY_A_B		(0 << 0)	/* display A > display B */
 #define   MI_ARB_DISPLAY_PRIORITY_B_A		(1 << 0)	/* display B > display A */
-- 
2.50.1

