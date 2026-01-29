Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QEkaOfXJe2kQIgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 21:58:29 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF2BB4641
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 21:58:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57FB910E8E8;
	Thu, 29 Jan 2026 20:58:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m0UuHxQP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A5DA10E8E5;
 Thu, 29 Jan 2026 20:58:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769720307; x=1801256307;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WIHq6oeBP+U9eQARUmKSEHzkB5YJ1GmowfiRjicZR9A=;
 b=m0UuHxQPSsYANmafX6SW1eFZQXs2Zh1PMBkbrX5GAdSywrCD+vRHA8c6
 6iURLxXnfQYjDHiJZn8QsUinevmjBF0uF1fC0KH5dYwv/9tK5xUiQ9+h8
 wn+fHlufcTt6n9mZIp34FGdSPoQQ/z8wSHP0yeKvykWN8zZbcqrnbbaRH
 kQ9z4jdM7P/Day1FbtPnlJjHVFnY6C1//v0aOxM1APYpqnuuwlHpg19Fl
 PQMyuGBbEbzjWU6kQgb8G9i45cJBWGERsV6e6eqAe77IFGJMphT6wVGZ0
 WQawYP2a/SuOD2fFikZ9JzeqDfo5JmHdu6nlcsXaR+C9nKdYHfHQ6W+Z7 g==;
X-CSE-ConnectionGUID: fvqp/jsAT2GMzzA1Du4eVw==
X-CSE-MsgGUID: 9kgPlXRWRnyV+szF0MUw5Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="88545319"
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="88545319"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 12:58:26 -0800
X-CSE-ConnectionGUID: ERI9+rprRReJvvcP24WtiQ==
X-CSE-MsgGUID: TjCrskcmQ+C+DehTgwkJKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="239927141"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa001.fm.intel.com with ESMTP; 29 Jan 2026 12:58:24 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [v3 07/19] drm/i915: Remove i915_reg.h from intel_dram.c
Date: Fri, 30 Jan 2026 02:43:46 +0530
Message-ID: <20260129211358.1240283-8-uma.shankar@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260129211358.1240283-1-uma.shankar@intel.com>
References: <20260129211358.1240283-1-uma.shankar@intel.com>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: BEF2BB4641
X-Rspamd-Action: no action

Make intel_dram.c free from including i915_reg.h.

v2: Move mem config register to newly added pcode header (Jani)

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dram.c | 2 +-
 drivers/gpu/drm/i915/i915_reg.h           | 6 ------
 include/drm/intel/intel_pcode.h           | 6 ++++++
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dram.c b/drivers/gpu/drm/i915/display/intel_dram.c
index 3b9879714ea9..3366e18f594e 100644
--- a/drivers/gpu/drm/i915/display/intel_dram.c
+++ b/drivers/gpu/drm/i915/display/intel_dram.c
@@ -7,8 +7,8 @@
 
 #include <drm/drm_managed.h>
 #include <drm/drm_print.h>
+#include <drm/intel/intel_pcode.h>
 
-#include "i915_reg.h"
 #include "intel_display_core.h"
 #include "intel_display_utils.h"
 #include "intel_dram.h"
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 4341308c3b2b..bc466d8c8c60 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1010,12 +1010,6 @@
 #define OROM_OFFSET				_MMIO(0x1020c0)
 #define   OROM_OFFSET_MASK			REG_GENMASK(20, 16)
 
-#define MTL_MEM_SS_INFO_GLOBAL			_MMIO(0x45700)
-#define   XE3P_ECC_IMPACTING_DE			REG_BIT(12)
-#define   MTL_N_OF_ENABLED_QGV_POINTS_MASK	REG_GENMASK(11, 8)
-#define   MTL_N_OF_POPULATED_CH_MASK		REG_GENMASK(7, 4)
-#define   MTL_DDR_TYPE_MASK			REG_GENMASK(3, 0)
-
 #define MTL_MEDIA_GSI_BASE		0x380000
 
 #endif /* _I915_REG_H_ */
diff --git a/include/drm/intel/intel_pcode.h b/include/drm/intel/intel_pcode.h
index 8e9a574c87d9..f6f894ba9b20 100644
--- a/include/drm/intel/intel_pcode.h
+++ b/include/drm/intel/intel_pcode.h
@@ -105,4 +105,10 @@
 #define     PCODE_MBOX_DOMAIN_NONE		0x0
 #define     PCODE_MBOX_DOMAIN_MEDIAFF		0x3
 
+#define MTL_MEM_SS_INFO_GLOBAL			_MMIO(0x45700)
+#define   XE3P_ECC_IMPACTING_DE			REG_BIT(12)
+#define   MTL_N_OF_ENABLED_QGV_POINTS_MASK	REG_GENMASK(11, 8)
+#define   MTL_N_OF_POPULATED_CH_MASK		REG_GENMASK(7, 4)
+#define   MTL_DDR_TYPE_MASK			REG_GENMASK(3, 0)
+
 #endif
-- 
2.50.1

