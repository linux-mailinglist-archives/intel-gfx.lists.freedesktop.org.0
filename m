Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F6938FCA3B
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2024 13:18:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EB6610E74A;
	Wed,  5 Jun 2024 11:18:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bnQ7x5zN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07AA310E76D
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2024 11:18:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717586332; x=1749122332;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=eCpZEgOjBbI/Zs8dK7TjC0LHUL0Zfzzg7fTJTSHftw0=;
 b=bnQ7x5zNjoDl38BptCJXLuSxz07YnT3cVweJyn8D+R+LrjQowxeOfooG
 DQJYdmYga9AAAl+ZUwMl6np+7/tUsP9FkW4fKOLQcXRObxqdp7Qs69DWb
 OlFUi0LMFxsB5bQU43u3YtIGWbObWX5U0O3iGo+yUF2HA3vA4iPhxlYpr
 nRJCLFEB0tIri7NnecjPgKDAiXZ+oGi4skORvNKf+/j0a2AjQREb55Vsk
 JRRmbfLczwmrfH5J5q1WAvPDOY5kgXV+3swEchy/kc7jkpZ5ICjzdU41s
 NmvZm55hrbORJP4QgrnSN0Md8+gS26sbkafjLq4t/eUrqT9IJDveNlCES w==;
X-CSE-ConnectionGUID: CIdcBhaHQumFsAy8hxnDTA==
X-CSE-MsgGUID: xoVo5SDvTQGs9kpIH4Aprw==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="11920183"
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="11920183"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 04:18:52 -0700
X-CSE-ConnectionGUID: aIrQ2gRhTHypwzStb6ZUng==
X-CSE-MsgGUID: Tsuy4dDITAO60lGTFeq8Ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="37566110"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 05 Jun 2024 04:18:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 05 Jun 2024 14:18:49 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 6/7] drm/i915: Enable pipeDMC fault interrupts on tgl+
Date: Wed,  5 Jun 2024 14:18:31 +0300
Message-ID: <20240605111832.21373-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240605111832.21373-1-ville.syrjala@linux.intel.com>
References: <20240605111832.21373-1-ville.syrjala@linux.intel.com>
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

PipeDMC has its own fault interrupt. Enable that so that
we can know if things are failing.

While at it, define the other pipeDMC interrupt as well, even
though we're not currently using it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c | 15 +++++++++++++--
 drivers/gpu/drm/i915/i915_reg.h                  |  2 ++
 2 files changed, 15 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 219f7693207d..6eb14ffc3c1b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -836,13 +836,24 @@ static u32 gen8_de_port_aux_mask(struct drm_i915_private *dev_priv)
 static u32 gen8_de_pipe_fault_mask(struct drm_i915_private *dev_priv)
 {
 	if (DISPLAY_VER(dev_priv) >= 13 || HAS_D12_PLANE_MINIMIZATION(dev_priv))
-		return GEN9_PIPE_CURSOR_FAULT |
+		return GEN12_PIPEDMC_FAULT |
+			GEN9_PIPE_CURSOR_FAULT |
 			GEN11_PIPE_PLANE5_FAULT |
 			GEN9_PIPE_PLANE4_FAULT |
 			GEN9_PIPE_PLANE3_FAULT |
 			GEN9_PIPE_PLANE2_FAULT |
 			GEN9_PIPE_PLANE1_FAULT;
-	else if (DISPLAY_VER(dev_priv) >= 11)
+	else if (DISPLAY_VER(dev_priv) == 12)
+		return GEN12_PIPEDMC_FAULT |
+			GEN9_PIPE_CURSOR_FAULT |
+			GEN11_PIPE_PLANE7_FAULT |
+			GEN11_PIPE_PLANE6_FAULT |
+			GEN11_PIPE_PLANE5_FAULT |
+			GEN9_PIPE_PLANE4_FAULT |
+			GEN9_PIPE_PLANE3_FAULT |
+			GEN9_PIPE_PLANE2_FAULT |
+			GEN9_PIPE_PLANE1_FAULT;
+	else if (DISPLAY_VER(dev_priv) == 11)
 		return GEN9_PIPE_CURSOR_FAULT |
 			GEN11_PIPE_PLANE7_FAULT |
 			GEN11_PIPE_PLANE6_FAULT |
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index b85e12bb4781..8cd5abc52a2d 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2625,6 +2625,8 @@
 #define  GEN8_PIPE_FIFO_UNDERRUN	REG_BIT(31)
 #define  GEN8_PIPE_CDCLK_CRC_ERROR	REG_BIT(29)
 #define  GEN8_PIPE_CDCLK_CRC_DONE	REG_BIT(28)
+#define  GEN12_PIPEDMC_INTERRUPT	REG_BIT(26) /* tgl+ */
+#define  GEN12_PIPEDMC_FAULT		REG_BIT(25) /* tgl+ */
 #define  XELPD_PIPE_SOFT_UNDERRUN	REG_BIT(22) /* adl/dg2+ */
 #define  GEN11_PIPE_PLANE7_FAULT	REG_BIT(22) /* icl/tgl */
 #define  XELPD_PIPE_HARD_UNDERRUN	REG_BIT(21) /* adl/dg2+ */
-- 
2.44.1

