Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yOHHFYRccWnLGAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 00:08:52 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 069A25F4A7
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 00:08:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97F9710E8B5;
	Wed, 21 Jan 2026 23:08:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eAK+rTwJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A062B10E8B0;
 Wed, 21 Jan 2026 23:08:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769036928; x=1800572928;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jZxwx2wFo42uG9JarfR0/WyLst/ojacxCVGbI2bDTB0=;
 b=eAK+rTwJlw0rPs4n3ldKluzTIPAlKqkqNI7Z2aG1zVgIuyQzChShPhOR
 bQGqvdrlIvH5sQYsvuNAQlS7t18ZC28QM7SG9TAYAU8IcaG9nX/CXoUjh
 DP/5sHAXMmwyxWV8mtbAx4N0192Vx8AfBmmf3PM6JMYXk5clR/+sMozQG
 2B1vQa7snQaNW+WvrDh1b+b63Xh55oJ7bca+2Ra4oWWNJpD1KfAauxT77
 uyR9l9XFS2qqjecHSxeuIpvIZOHbzEdEV0PUu6rmSRQ59BvcGP3H/hDQZ
 6U6LK7Xd6ykA2tS6K7jfBQw0LaZJlfXcqJ8imfssk8hVnN+5NKkfywZgJ w==;
X-CSE-ConnectionGUID: Z1o9Fx9nSFmIZC3ImYPmJg==
X-CSE-MsgGUID: LhsTiK8RSX6t2F9Y2bsrLg==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="70244991"
X-IronPort-AV: E=Sophos;i="6.21,244,1763452800"; d="scan'208";a="70244991"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 15:08:47 -0800
X-CSE-ConnectionGUID: xk9zt6QjTvGP7Z2nq3g2VA==
X-CSE-MsgGUID: V8wgjCPqTTqNQWPQ457ESg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,244,1763452800"; d="scan'208";a="206889603"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa010.fm.intel.com with ESMTP; 21 Jan 2026 15:08:46 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [v2 10/19] drm/{i915, xe}: Remove i915_reg.h from g4x_dp.c
Date: Thu, 22 Jan 2026 04:54:05 +0530
Message-ID: <20260121232414.707192-11-uma.shankar@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 069A25F4A7
X-Rspamd-Action: no action

Move DE_IRQ_REGS to common header to make g4x_dp.c
free from i915_reg.h dependency.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c            |  2 +-
 .../gpu/drm/i915/display/intel_display_regs.h    |  9 +++++++++
 drivers/gpu/drm/i915/i915_reg.h                  | 16 ----------------
 include/drm/intel/intel_gmd_common_regs.h        |  7 +++++++
 4 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 4cb753177fd8..b2b63e811776 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -8,9 +8,9 @@
 #include <linux/string_helpers.h>
 
 #include <drm/drm_print.h>
+#include <drm/intel/intel_gmd_common_regs.h>
 
 #include "g4x_dp.h"
-#include "i915_reg.h"
 #include "intel_audio.h"
 #include "intel_backlight.h"
 #include "intel_connector.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index b26e6a4ee1c3..eabee5abc23b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -3104,4 +3104,13 @@ enum skl_power_gate {
 #define   MTL_N_OF_POPULATED_CH_MASK		REG_GENMASK(7, 4)
 #define   MTL_DDR_TYPE_MASK			REG_GENMASK(3, 0)
 
+#define DEISR   _MMIO(0x44000)
+#define DEIMR   _MMIO(0x44004)
+#define DEIIR   _MMIO(0x44008)
+#define DEIER   _MMIO(0x4400c)
+
+#define DE_IRQ_REGS		I915_IRQ_REGS(DEIMR, \
+					      DEIER, \
+					      DEIIR)
+
 #endif /* __INTEL_DISPLAY_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 504ba9b2fb5b..c0c2fab99a47 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -728,15 +728,6 @@
 #define VLV_MASTER_IER			_MMIO(0x4400c) /* Gunit master IER */
 #define   MASTER_INTERRUPT_ENABLE	(1 << 31)
 
-#define DEISR   _MMIO(0x44000)
-#define DEIMR   _MMIO(0x44004)
-#define DEIIR   _MMIO(0x44008)
-#define DEIER   _MMIO(0x4400c)
-
-#define DE_IRQ_REGS		I915_IRQ_REGS(DEIMR, \
-					      DEIER, \
-					      DEIIR)
-
 #define GTISR   _MMIO(0x44010)
 #define GTIMR   _MMIO(0x44014)
 #define GTIIR   _MMIO(0x44018)
@@ -864,13 +855,6 @@
 #define   MASK_WAKEMEM				REG_BIT(13)
 #define   DDI_CLOCK_REG_ACCESS			REG_BIT(7)
 
-/* PCH */
-
-#define SDEISR  _MMIO(0xc4000)
-#define SDEIMR  _MMIO(0xc4004)
-#define SDEIIR  _MMIO(0xc4008)
-#define SDEIER  _MMIO(0xc400c)
-
 /* Icelake PPS_DATA and _ECC DIP Registers.
  * These are available for transcoders B,C and eDP.
  * Adding the _A so as to reuse the _MMIO_TRANS2
diff --git a/include/drm/intel/intel_gmd_common_regs.h b/include/drm/intel/intel_gmd_common_regs.h
index 2214cee38cf7..c8b2b5b2739c 100644
--- a/include/drm/intel/intel_gmd_common_regs.h
+++ b/include/drm/intel/intel_gmd_common_regs.h
@@ -148,4 +148,11 @@
 #define I915_ASLE_INTERRUPT				(1 << 0)
 #define I915_BSD_USER_INTERRUPT				(1 << 25)
 
+/* PCH */
+
+#define SDEISR  _MMIO(0xc4000)
+#define SDEIMR  _MMIO(0xc4004)
+#define SDEIIR  _MMIO(0xc4008)
+#define SDEIER  _MMIO(0xc400c)
+
 #endif
-- 
2.50.1

