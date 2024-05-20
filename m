Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDC788CA263
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 20:58:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82EBF10E894;
	Mon, 20 May 2024 18:58:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QEzT2ag/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03CE410E572
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 18:58:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716231512; x=1747767512;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=mIZuqHdMCoLYo4iyVRboxmbY3mSKHVSrEmFo29PhqCU=;
 b=QEzT2ag/hl7O0UcUtlrMgGWGYy93jAqt/QxBBu3bAOhjsIQSIxD/udk9
 8fw52jnhFERS5igp5U3D3Q2Q5t7LVjJWp3+BLb7onM6aZNbEx+x9/Eg6N
 lgKw3EGCTwdU1x0PR0vy1SEPIBla63lkSybRwY6pmuJK/rqonu0xjqOx4
 N3t6o9pa9CeCryY6rFGLiEzHcOIsRc1UFRSBa4Jl/l1nlNUkJXFyIonWj
 SK93jkH9nP64hjaLjbFmEdpkM+SGs5qwW8/MzgWHjGHzgDQITlDpiYyHR
 CTH6VKRy/1NlLmOg1105IY5IduXXOCB75U90GAJj03a9saXKFCW8hJUVO A==;
X-CSE-ConnectionGUID: z0PP9EneSKC5P79vT1BWKw==
X-CSE-MsgGUID: aA7GVUI8T0qaliXGHQlq/w==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="16218543"
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="16218543"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 11:58:32 -0700
X-CSE-ConnectionGUID: CmwCdQZ8QnKLrr0wUEsfQw==
X-CSE-MsgGUID: s7uA/LypQOGEsQ/GrqUxPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="37213871"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 11:58:31 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 13/21] drm/i915/dp: Use check link state work in the HPD
 IRQ handler
Date: Mon, 20 May 2024 21:58:11 +0300
Message-ID: <20240520185822.3725844-14-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240520185822.3725844-1-imre.deak@intel.com>
References: <20240520185822.3725844-1-imre.deak@intel.com>
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
 drivers/gpu/drm/i915/display/intel_dp.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 70b00e5ae7ad7..b72dbd7becb74 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4950,6 +4950,7 @@ static bool
 intel_dp_check_mst_status(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	bool link_ok = true;
 	bool reprobe_needed = false;
 
@@ -4995,7 +4996,10 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 			drm_dp_mst_hpd_irq_send_new_request(&intel_dp->mst_mgr);
 	}
 
-	return link_ok && !reprobe_needed;
+	if (!link_ok)
+		intel_ddi_queue_link_check(dig_port, 0);
+
+	return !reprobe_needed;
 }
 
 static void
@@ -5453,9 +5457,7 @@ intel_dp_short_pulse(struct intel_dp *intel_dp)
 	/* Handle CEC interrupts, if any */
 	drm_dp_cec_irq(&intel_dp->aux);
 
-	/* defer to the hotplug work for link retraining if needed */
-	if (intel_dp_needs_link_retrain(intel_dp))
-		return false;
+	intel_dp_check_link_state(intel_dp);
 
 	intel_psr_short_pulse(intel_dp);
 
-- 
2.43.3

