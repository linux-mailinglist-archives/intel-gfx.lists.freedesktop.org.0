Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB423C48558
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Nov 2025 18:29:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A7C710E4A9;
	Mon, 10 Nov 2025 17:29:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BLQPSR8e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD32D10E4A6;
 Mon, 10 Nov 2025 17:29:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762795748; x=1794331748;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=l6TpetpMmXtG4rb5k30hrFShh9zdCiXo7L/tKS5HSEY=;
 b=BLQPSR8epkQbD5bZIktcbDp8u3Ix347G4ylJmRgQXoKErQV5O9pdFibs
 DgXtUJdUXMbEN8+a+7CW+1ASGQm7QxMRyRl74TU6rjB6YNXWqRCyfdE6y
 fNqmJQ89mPHZ+G2dPBacp55eL0ce3Ln+uVa72r9/ksg/K5vR4+CjsIoJ7
 WSx4hrUnQM08yrbqcMY/O2MsHeyug9vwxO68r1Befm1XaPG3zKSE6NyYB
 csJxu4efrmjK+39F+nTT4V8Daop131KUwgiOOVqrQ1SSHrw3ZGeIPGFY4
 aMNkSWWkm9FsFQTNTt/aa6SfvhbCQk8AzPnwxZ8zqqq20XR72pc+4rHM3 Q==;
X-CSE-ConnectionGUID: XQ2sPt8bT9Cw0SJr+eQnoA==
X-CSE-MsgGUID: rLw1bvnvTTi7dzm8yrQepQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="82478054"
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="82478054"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 09:29:07 -0800
X-CSE-ConnectionGUID: V8t0sP4tTHKiG0qIcK9oBA==
X-CSE-MsgGUID: eI9a5YrEQbWsvx/ubmr2BQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="192834790"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.30])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 09:29:06 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 16/16] drm/i915/dpio: Use the intel_de_wait_ms() out value
Date: Mon, 10 Nov 2025 19:27:55 +0200
Message-ID: <20251110172756.2132-17-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251110172756.2132-1-ville.syrjala@linux.intel.com>
References: <20251110172756.2132-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Utilize the 'out_value' output parameter of intel_de_wait_ms()
isntead of re-readiong the DPLL/DPIO_PHY_STATUS register after
polling has finished.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpio_phy.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index 7b7a0461da36..8027bab2951b 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -1173,6 +1173,7 @@ void vlv_wait_port_ready(struct intel_encoder *encoder,
 	struct intel_display *display = to_intel_display(encoder);
 	u32 port_mask;
 	i915_reg_t dpll_reg;
+	u32 val;
 
 	switch (encoder->port) {
 	default:
@@ -1193,10 +1194,9 @@ void vlv_wait_port_ready(struct intel_encoder *encoder,
 		break;
 	}
 
-	if (intel_de_wait_ms(display, dpll_reg, port_mask, expected_mask, 1000, NULL))
+	if (intel_de_wait_ms(display, dpll_reg, port_mask, expected_mask, 1000, &val))
 		drm_WARN(display->drm, 1,
 			 "timed out waiting for [ENCODER:%d:%s] port ready: got 0x%x, expected 0x%x\n",
 			 encoder->base.base.id, encoder->base.name,
-			 intel_de_read(display, dpll_reg) & port_mask,
-			 expected_mask);
+			 val & port_mask, expected_mask);
 }
-- 
2.49.1

