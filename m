Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA70290271F
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2024 18:50:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B27810E525;
	Mon, 10 Jun 2024 16:50:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TpedixJX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25A6810E18B
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2024 16:49:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718038183; x=1749574183;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=YH8Q7ZLsd1AXeiH0SZ6BhYcJRpoOicXIrfZ40d+gFbI=;
 b=TpedixJXlrxkGH5AMWFgF2gfC5uSIjq5xaDUeIblQp5DMMBXK/FApn3B
 UofYn5kO+QNHaLf8uwBo/7IvIaK+DjmMFwjF8pkdKMKcU3fKYs5KUKG9u
 s0NjL7RtGO6k+zYHhkBa4cPdFjeLAVOK6eeECjixX/YY0F3xGOyUFKsAU
 D7gGrCtYS3sNEHWbHGuh0y2QCyLGrNoxWIwG7csO0/UR0Zfn/ujMmo4uG
 6jmJpPP3XrIwz62frI1d4nQlBLgaUHjl4oJfHMdLDwa2NSG6ndX5jmU74
 A6f946beoX5ElscS4mqe/OXjxQquS/k2VqbMhkbkY8SYCe3jS/tkQvkjx g==;
X-CSE-ConnectionGUID: L2i77e6KQR2KzNr7ZqnJvg==
X-CSE-MsgGUID: asNMvIYZSoOhwm7fmk5yzA==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="18494007"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="18494007"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 09:49:42 -0700
X-CSE-ConnectionGUID: WcVFQVRwRkuGN8cz9rEC8g==
X-CSE-MsgGUID: eODrIjA6RoKQxsdu8ksd1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="39060599"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 09:49:41 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 13/21] drm/i915/dp: Use check link state work in the HPD
 IRQ handler
Date: Mon, 10 Jun 2024 19:49:25 +0300
Message-ID: <20240610164933.2947366-14-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240610164933.2947366-1-imre.deak@intel.com>
References: <20240610164933.2947366-1-imre.deak@intel.com>
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

Simplify things by retraining a DP link if a bad link is detected in the
HPD IRQ handler from the encoder's check link state work, similarly to
how this is done after a modeset link training failure.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6e9c85a94d27e..1f4798be58eb5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4959,6 +4959,8 @@ static bool
 intel_dp_check_mst_status(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
+	struct intel_encoder *encoder = &dig_port->base;
 	bool link_ok = true;
 	bool reprobe_needed = false;
 
@@ -5004,7 +5006,10 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 			drm_dp_mst_hpd_irq_send_new_request(&intel_dp->mst_mgr);
 	}
 
-	return link_ok && !reprobe_needed;
+	if (!link_ok)
+		intel_encoder_link_check_queue_work(encoder, 0);
+
+	return !reprobe_needed;
 }
 
 static void
@@ -5480,9 +5485,7 @@ intel_dp_short_pulse(struct intel_dp *intel_dp)
 	/* Handle CEC interrupts, if any */
 	drm_dp_cec_irq(&intel_dp->aux);
 
-	/* defer to the hotplug work for link retraining if needed */
-	if (intel_dp_needs_link_retrain(intel_dp))
-		return false;
+	intel_dp_check_link_state(intel_dp);
 
 	intel_psr_short_pulse(intel_dp);
 
-- 
2.43.3

