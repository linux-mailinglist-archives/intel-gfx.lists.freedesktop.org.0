Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C75AB34F8
	for <lists+intel-gfx@lfdr.de>; Mon, 12 May 2025 12:34:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52F5910E368;
	Mon, 12 May 2025 10:34:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RRsR1M8L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0F7310E362;
 Mon, 12 May 2025 10:34:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747046044; x=1778582044;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+qRqq/OV3jCuLQqNComqfViRUF2fhozV8u71PuJoONE=;
 b=RRsR1M8LZtiis+Qz9R7pi0sUS0TkfPp3JpgnzWm565OY+wClwBiiZPOT
 j7MVaja7xBdiENZB/mVmKdZNQW1OoUyfw7jNMTy2fG+1/J7qFsomTmbMT
 BiMBEQksX1cz1uidf3AhAs22fxnbU7AlHqZUYPDWmS5G547HybeY7Kdb4
 jmve+i/+KpCIXXOfL+eLZfnNQMqQzhrs5LZ36zdBFcoZhpJZoo+bxnHU1
 Pry6dQ3J5HJPdaDAEDUcvK54sd4c197edfIeYk4ps6M/beSWNmthEDBQz
 DLlGnP6gg3/Qt2AMv5+kEEFOVGP+x55wIKrbmNWjhmqDxm0GoNUroRSnD A==;
X-CSE-ConnectionGUID: xsv2huy8RCSm7poE/7Uzbw==
X-CSE-MsgGUID: iIUTHCS4QeyvSTBq2Pk6IQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11430"; a="59467356"
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="59467356"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 03:34:04 -0700
X-CSE-ConnectionGUID: lblUGwYkRoe7xbHv5V4ZhA==
X-CSE-MsgGUID: ku4e4KizSxC2LAFmbigpOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="142439947"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.195])
 by orviesa005.jf.intel.com with SMTP; 12 May 2025 03:34:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 12 May 2025 13:34:01 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 1/7] drm/i915: Drop PIPEDMC faults from the fault mask on LNL+
Date: Mon, 12 May 2025 13:33:52 +0300
Message-ID: <20250512103358.15724-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250512103358.15724-1-ville.syrjala@linux.intel.com>
References: <20250512103358.15724-1-ville.syrjala@linux.intel.com>
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

On LNL+ PIPEDMC faults are reported via PIPEDMC interrupts
instead of the direct DE_PIPE_* reporting used on earlier
platforms. Drop the relevant bits from the fault mask.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c | 10 +++++++++-
 drivers/gpu/drm/i915/i915_reg.h                  |  4 ++--
 2 files changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 3e73832e5e81..a7130b14aace 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1016,7 +1016,15 @@ static u32 gen8_de_port_aux_mask(struct intel_display *display)
 
 static u32 gen8_de_pipe_fault_mask(struct intel_display *display)
 {
-	if (DISPLAY_VER(display) >= 14)
+	if (DISPLAY_VER(display) >= 20)
+		return MTL_PLANE_ATS_FAULT |
+			GEN9_PIPE_CURSOR_FAULT |
+			GEN11_PIPE_PLANE5_FAULT |
+			GEN9_PIPE_PLANE4_FAULT |
+			GEN9_PIPE_PLANE3_FAULT |
+			GEN9_PIPE_PLANE2_FAULT |
+			GEN9_PIPE_PLANE1_FAULT;
+	else if (DISPLAY_VER(display) >= 14)
 		return MTL_PIPEDMC_ATS_FAULT |
 			MTL_PLANE_ATS_FAULT |
 			GEN12_PIPEDMC_FAULT |
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 2e4190da3e0d..2d0e04eae763 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2126,8 +2126,8 @@
 #define  GEN8_PIPE_CDCLK_CRC_ERROR	REG_BIT(29)
 #define  GEN8_PIPE_CDCLK_CRC_DONE	REG_BIT(28)
 #define  GEN12_PIPEDMC_INTERRUPT	REG_BIT(26) /* tgl+ */
-#define  GEN12_PIPEDMC_FAULT		REG_BIT(25) /* tgl+ */
-#define  MTL_PIPEDMC_ATS_FAULT		REG_BIT(24) /* mtl+ */
+#define  GEN12_PIPEDMC_FAULT		REG_BIT(25) /* tgl-mtl */
+#define  MTL_PIPEDMC_ATS_FAULT		REG_BIT(24) /* mtl */
 #define  GEN11_PIPE_PLANE7_FAULT	REG_BIT(22) /* icl/tgl */
 #define  GEN11_PIPE_PLANE6_FAULT	REG_BIT(21) /* icl/tgl */
 #define  GEN11_PIPE_PLANE5_FAULT	REG_BIT(20) /* icl+ */
-- 
2.49.0

