Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AC3A9738A1
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 15:29:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 925A410E7CE;
	Tue, 10 Sep 2024 13:29:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ncW+v7me";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CA0810E7CE;
 Tue, 10 Sep 2024 13:29:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725974961; x=1757510961;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zoYhWZ0Vi32e5ZcSF2NRuCoKHL3gyCBl5zu0ET4nqKc=;
 b=ncW+v7meKj3RBunyqrYpygL7kRi5UPlTbFOIkoAhCLW8Sclgasj1ZMzd
 PRjJobdKcrq8d68FoptUgUM7C2upd3coofSsJQpKocTHbLjSm4WbJzL2h
 vhQzBq5bkgPbL0hN6OKNynX9b5d+cuMcJVDF5Bsi4ogwwJz/Vv9i0Ew6I
 lCRia4L4GJF0D6PawPPeZpKGIXNmknasQ1Ml7ti53ZpRtqTWggij7EozR
 lnjIdGKZNxCn4yOBq4D9/GueyOhDiG0+sNUu8dMJw2CyQA4pEOlAnKK7o
 XcW8Fbk4fpEb+ItsNSnj1Z+s/Tc7O9T+AboX68D+Otnqsf4v5FxZZy4tK Q==;
X-CSE-ConnectionGUID: rMqeku85S8SLziP2cehAmw==
X-CSE-MsgGUID: pUcAmMfNRj64gPrZu1HQ+g==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="24870320"
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="24870320"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 06:29:21 -0700
X-CSE-ConnectionGUID: lfUkgZsyQQW82msbkvUs5w==
X-CSE-MsgGUID: Ow1xr0RXTT2/VOjSjW4V6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="67796109"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.43])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 06:29:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 04/11] drm/i915/reg: fix pipe data/link m/n register style
Date: Tue, 10 Sep 2024 16:28:48 +0300
Message-Id: <99fb1c8aabb7646ca2565db0b969cf15d9103318.1725974820.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1725974820.git.jani.nikula@intel.com>
References: <cover.1725974820.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
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

