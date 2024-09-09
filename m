Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77BC397222C
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 20:59:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D143710E64D;
	Mon,  9 Sep 2024 18:59:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="loG3/KcJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16C5810E650;
 Mon,  9 Sep 2024 18:59:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725908367; x=1757444367;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=59BuS2zoTduv2H8OSc6Kam3BKCLqUwn9YY89e9gtCiQ=;
 b=loG3/KcJli+h40wm/dnY0yWwC6z7D33ETfDXGWlSFw0Gn4q1nPMPTN+T
 sb2N0A6E/rwE+yEPA3dPs4B9yNEweu/1RDuWF7Tlb7V3iNLDZvgNhU4ph
 4l/E/4VN6f1p8lQJEyexrC5NhquyvCAI37BGLdr6NK1k8OsIJLfIEFiDH
 IYUqyS344yg4lWUmqeBmSRL8FcftA8yqDxtITg6tZqiTXbConuOLCJjUa
 0DvwQi5esY7LGQLakHmw4uf1qyTEcwGsHLXu1JLokow3frsXkUPI5/XvE
 JmrjcNYQ/bPKX6CIwmxe2r1oZAZa8tUBVJrAa68pc81BsgWWe9btRmyfE Q==;
X-CSE-ConnectionGUID: 1mq/ejWIRkWeXpELAfoXtg==
X-CSE-MsgGUID: 8XApBdYTSZ24NLtTluaGVQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="24499622"
X-IronPort-AV: E=Sophos;i="6.10,215,1719903600"; d="scan'208";a="24499622"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 11:59:27 -0700
X-CSE-ConnectionGUID: LStP2U+WTaGkPbu+8c5B2Q==
X-CSE-MsgGUID: S12rhCI/RRqhV4qAQEpJAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,215,1719903600"; d="scan'208";a="90037670"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.176])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 11:59:25 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 04/11] drm/i915/reg: fix pipe data/link m/n register style
Date: Mon,  9 Sep 2024 21:58:55 +0300
Message-Id: <9823792e60b76cebee22fbafcf502e5b6740fa92.1725908152.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1725908151.git.jani.nikula@intel.com>
References: <cover.1725908151.git.jani.nikula@intel.com>
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

Adhere to the style described at the top of i915_reg.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 39 ++++++++++++++++++---------------
 1 file changed, 21 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 591a6dc9c3bc..9ece696baae8 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2160,32 +2160,35 @@
 # define VFMUNIT_CLOCK_GATE_DISABLE		(1 << 11)
 
 #define _PIPEA_DATA_M1		0x60030
-#define _PIPEA_DATA_N1		0x60034
-#define _PIPEA_DATA_M2		0x60038
-#define _PIPEA_DATA_N2		0x6003c
-#define _PIPEA_LINK_M1		0x60040
-#define _PIPEA_LINK_N1		0x60044
-#define _PIPEA_LINK_M2		0x60048
-#define _PIPEA_LINK_N2		0x6004c
-
-/* PIPEB timing regs are same start from 0x61000 */
-
 #define _PIPEB_DATA_M1		0x61030
-#define _PIPEB_DATA_N1		0x61034
-#define _PIPEB_DATA_M2		0x61038
-#define _PIPEB_DATA_N2		0x6103c
-#define _PIPEB_LINK_M1		0x61040
-#define _PIPEB_LINK_N1		0x61044
-#define _PIPEB_LINK_M2		0x61048
-#define _PIPEB_LINK_N2		0x6104c
-
 #define PIPE_DATA_M1(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_M1)
+
+#define _PIPEA_DATA_N1		0x60034
+#define _PIPEB_DATA_N1		0x61034
 #define PIPE_DATA_N1(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_N1)
+
+#define _PIPEA_DATA_M2		0x60038
+#define _PIPEB_DATA_M2		0x61038
 #define PIPE_DATA_M2(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_M2)
+
+#define _PIPEA_DATA_N2		0x6003c
+#define _PIPEB_DATA_N2		0x6103c
 #define PIPE_DATA_N2(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_N2)
+
+#define _PIPEA_LINK_M1		0x60040
+#define _PIPEB_LINK_M1		0x61040
 #define PIPE_LINK_M1(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_M1)
+
+#define _PIPEA_LINK_N1		0x60044
+#define _PIPEB_LINK_N1		0x61044
 #define PIPE_LINK_N1(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_N1)
+
+#define _PIPEA_LINK_M2		0x60048
+#define _PIPEB_LINK_M2		0x61048
 #define PIPE_LINK_M2(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_M2)
+
+#define _PIPEA_LINK_N2		0x6004c
+#define _PIPEB_LINK_N2		0x6104c
 #define PIPE_LINK_N2(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_N2)
 
 /* CPU panel fitter */
-- 
2.39.2

