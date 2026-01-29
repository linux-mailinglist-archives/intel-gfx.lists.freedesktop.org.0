Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GIhwIQPKe2kQIgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 21:58:43 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39539B4670
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 21:58:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71ABC10E8FC;
	Thu, 29 Jan 2026 20:58:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bAL50+iT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A08910E8F7;
 Thu, 29 Jan 2026 20:58:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769720318; x=1801256318;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IthNIr7qxyFQH7hHo60ZiM+9FVWK75Bbd556pLxaLPw=;
 b=bAL50+iTOqhweF0PiKt4nVc/y7pKUoEP6n0/65zFsQlS0z8OsJ6Q+4ME
 w0P+Gs4H94JG9xBxEqDVWznQcY/ZLKujYioIRdtb5N4Zv97786OaAY99U
 3Rh8gzQ/LgybWMHaifx67rwHhAZNoF9YVannfaFoRstNUcUn1sX3NV5cC
 RLYDU4VUUiakyAwEKIZLP6mnfHnyb+KW3PaUtYIXamX4thhc/r4UYzZy6
 gP5c0wKb93JkXFXMSMFqrKQNayvNZxaDD7C+2Amn96x3drNazVfLNUTZU
 IddIPhDK5HMnI23cJDbKVi/hnaOWc2VQflpz/u6+gvwIJ23pzAfwLXwPi Q==;
X-CSE-ConnectionGUID: HLYshr47Rcift+VrJs/FMA==
X-CSE-MsgGUID: 46Jg3eJfQ/a4m7aKKlJ5hw==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="88545341"
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="88545341"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 12:58:38 -0800
X-CSE-ConnectionGUID: DciMJTVbTCqc+7FGc8vexA==
X-CSE-MsgGUID: j04rdC6SRZqANQBpGqzuiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="239927187"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa001.fm.intel.com with ESMTP; 29 Jan 2026 12:58:36 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [v3 13/19] drm/i915: Remove i915_reg.h from intel_rom.c
Date: Fri, 30 Jan 2026 02:43:52 +0530
Message-ID: <20260129211358.1240283-14-uma.shankar@intel.com>
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
X-Rspamd-Queue-Id: 39539B4670
X-Rspamd-Action: no action

Make intel_rom.c free from including i915_reg.h.

v3: Update patch header

v2: Use display header instead of gmd common include (Jani)

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_regs.h | 8 ++++++++
 drivers/gpu/drm/i915/display/intel_rom.c          | 3 +--
 drivers/gpu/drm/i915/i915_reg.h                   | 8 --------
 3 files changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index 5679a83ff19b..3707c5999ffb 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -10,6 +10,14 @@
 #define GU_CNTL_PROTECTED		_MMIO(0x10100C)
 #define   DEPRESENT			REG_BIT(9)
 
+#define PRIMARY_SPI_TRIGGER			_MMIO(0x102040)
+#define PRIMARY_SPI_ADDRESS			_MMIO(0x102080)
+#define PRIMARY_SPI_REGIONID			_MMIO(0x102084)
+#define SPI_STATIC_REGIONS			_MMIO(0x102090)
+#define   OPTIONROM_SPI_REGIONID_MASK		REG_GENMASK(7, 0)
+#define OROM_OFFSET				_MMIO(0x1020c0)
+#define   OROM_OFFSET_MASK			REG_GENMASK(20, 16)
+
 #define _GEN7_PIPEA_DE_LOAD_SL	0x70068
 #define _GEN7_PIPEB_DE_LOAD_SL	0x71068
 #define GEN7_PIPE_DE_LOAD_SL(pipe) _MMIO_PIPE(pipe, _GEN7_PIPEA_DE_LOAD_SL, _GEN7_PIPEB_DE_LOAD_SL)
diff --git a/drivers/gpu/drm/i915/display/intel_rom.c b/drivers/gpu/drm/i915/display/intel_rom.c
index c8f615315310..d7de53acaba9 100644
--- a/drivers/gpu/drm/i915/display/intel_rom.c
+++ b/drivers/gpu/drm/i915/display/intel_rom.c
@@ -7,10 +7,9 @@
 
 #include <drm/drm_device.h>
 
-#include "i915_reg.h"
-
 #include "intel_rom.h"
 #include "intel_uncore.h"
+#include "intel_display_regs.h"
 
 struct intel_rom {
 	/* for PCI ROM */
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 635726f01e9a..f896ece3b568 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -898,14 +898,6 @@
 #define   SGGI_DIS			REG_BIT(15)
 #define   SGR_DIS			REG_BIT(13)
 
-#define PRIMARY_SPI_TRIGGER			_MMIO(0x102040)
-#define PRIMARY_SPI_ADDRESS			_MMIO(0x102080)
-#define PRIMARY_SPI_REGIONID			_MMIO(0x102084)
-#define SPI_STATIC_REGIONS			_MMIO(0x102090)
-#define   OPTIONROM_SPI_REGIONID_MASK		REG_GENMASK(7, 0)
-#define OROM_OFFSET				_MMIO(0x1020c0)
-#define   OROM_OFFSET_MASK			REG_GENMASK(20, 16)
-
 #define MTL_MEDIA_GSI_BASE		0x380000
 
 #endif /* _I915_REG_H_ */
-- 
2.50.1

