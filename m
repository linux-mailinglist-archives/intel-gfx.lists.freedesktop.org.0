Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wGhyBbpihGkK2wMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 10:28:26 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBD71F0B73
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 10:28:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F11310E83E;
	Thu,  5 Feb 2026 09:28:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hZkVLqYg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F24D910E840;
 Thu,  5 Feb 2026 09:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770283703; x=1801819703;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ECtknv7xiIM4/Zsz01bIzbL7Bi+3afleXP0MJhUz4eQ=;
 b=hZkVLqYgfBuguzexgGNtxgNp/vT6+GWb/vtRFRGm0M7eogCU30Jo45rH
 HuIpht7hkLk0gwkbXi8K/ASMzrDOO0ylzOo5OKup3gqQ3cagw3WBXc2Uu
 VfnZ539PcEQGgBlZRu0n1rrTtASruMH+c11iQBJA02rYRAQ1qYMyqbscY
 GF5L+itUexnVtEX8poev/4Cw8Kh1TlidHQ3U1A6izhdFeis1LTP7cmroD
 SpNWHGTBBoLechuETDrbu2um0gs/ABi8YVbP1n9Efx8DMfHZ++pR19XkR
 KqqFiN2vCDydZg7CXeblA76LepQ0MecnO/BeVY4v14wMj4qIGRHjoJQ0X g==;
X-CSE-ConnectionGUID: 65oFySnXTqW7HY1ByvUhag==
X-CSE-MsgGUID: 7q6ESMyJSfatfXeG1T1N1w==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="89060130"
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="89060130"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 01:28:23 -0800
X-CSE-ConnectionGUID: Auq4TukMSk6Mbn4zZOngbw==
X-CSE-MsgGUID: iviD25E7SHCHCN958r+k9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="209807798"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa007.fm.intel.com with ESMTP; 05 Feb 2026 01:28:21 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [v4 14/20] drm/i915: Remove i915_reg.h from intel_rom.c
Date: Thu,  5 Feb 2026 15:13:35 +0530
Message-ID: <20260205094341.1882816-15-uma.shankar@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260205094341.1882816-1-uma.shankar@intel.com>
References: <20260205094341.1882816-1-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
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
X-Rspamd-Queue-Id: BBD71F0B73
X-Rspamd-Action: no action

Make intel_rom.c free from including i915_reg.h.

v4: Move oprom reg to separate header (Ville)

v3: Update patch header

v2: Use display header instead of gmd common include (Jani)

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 .../gpu/drm/i915/display/intel_oprom_regs.h   | 36 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_rom.c      |  3 +-
 drivers/gpu/drm/i915/i915_reg.h               |  8 -----
 3 files changed, 37 insertions(+), 10 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_oprom_regs.h

diff --git a/drivers/gpu/drm/i915/display/intel_oprom_regs.h b/drivers/gpu/drm/i915/display/intel_oprom_regs.h
new file mode 100644
index 000000000000..2cf723aa4ab0
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_oprom_regs.h
@@ -0,0 +1,36 @@
+/*
+ * Copyright © 2026 Intel Corporation
+ *
+ * Permission is hereby granted, free of charge, to any person obtaining a
+ * copy of this software and associated documentation files (the "Software"),
+ * to deal in the Software without restriction, including without limitation
+ * the rights to use, copy, modify, merge, publish, distribute, sublicense,
+ * and/or sell copies of the Software, and to permit persons to whom the
+ * Software is furnished to do so, subject to the following conditions:
+ *
+ * The above copyright notice and this permission notice (including the next
+ * paragraph) shall be included in all copies or substantial portions of the
+ * Software.
+ *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
+ * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
+ * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
+ * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
+ * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
+ * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
+ * IN THE SOFTWARE.
+ *
+ */
+
+#ifndef _INTEL_OPROM_REGS_H_
+#define _INTEL_OPROM_REGS_H_
+
+#define PRIMARY_SPI_TRIGGER			_MMIO(0x102040)
+#define PRIMARY_SPI_ADDRESS			_MMIO(0x102080)
+#define PRIMARY_SPI_REGIONID			_MMIO(0x102084)
+#define SPI_STATIC_REGIONS			_MMIO(0x102090)
+#define   OPTIONROM_SPI_REGIONID_MASK		REG_GENMASK(7, 0)
+#define OROM_OFFSET				_MMIO(0x1020c0)
+#define   OROM_OFFSET_MASK			REG_GENMASK(20, 16)
+
+#endif
diff --git a/drivers/gpu/drm/i915/display/intel_rom.c b/drivers/gpu/drm/i915/display/intel_rom.c
index c8f615315310..024db7b1a1c6 100644
--- a/drivers/gpu/drm/i915/display/intel_rom.c
+++ b/drivers/gpu/drm/i915/display/intel_rom.c
@@ -7,10 +7,9 @@
 
 #include <drm/drm_device.h>
 
-#include "i915_reg.h"
-
 #include "intel_rom.h"
 #include "intel_uncore.h"
+#include "intel_oprom_regs.h"
 
 struct intel_rom {
 	/* for PCI ROM */
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 2c279bd3342d..9cb753b65bc2 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -892,14 +892,6 @@
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

