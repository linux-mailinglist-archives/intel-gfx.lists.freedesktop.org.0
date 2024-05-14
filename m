Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A96408C5B91
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2024 21:14:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22AEE10E8FB;
	Tue, 14 May 2024 19:14:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iZ4qESGq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EE4810E816
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 May 2024 19:14:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715714068; x=1747250068;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=eSRMWlLhhY9GjAynN+Gi/fiL/nyRS/JKidjqsh1Akrw=;
 b=iZ4qESGqAhmTBtR9iBtcLnYo97jF1HrWBc95fMsI1wTD8Llz1GZWHdxp
 m9jmibLYXdQxloNdbCRLl5gD+BhHhPzWcXEfr7NzeHhQ1bNgaWDcOVIqy
 9ZjcgItqrm5yiNxWO4qRWlDSFuVh/DsdDJ2tc1pKS6lS7sFCwHk1YAlvL
 eaXHmONpU+jrE/3reprTYpF/NXIQNlI+Ivo5bv+2jvsIarZ9nnnR/dZh/
 fXmvKzMmLTu1YbBbfZdX+00rPt8NqI+PHc9/Xk26TTjASy9NP+raqTqwm
 nUKoXE6BGPNyhD3YSuXv+9L0fpx0yuj2w2bjDzy+QOOTBIz9/DfjEjkch w==;
X-CSE-ConnectionGUID: X/IEoUNyTd2f7nH0OXe7Rg==
X-CSE-MsgGUID: j71yK94TTJqB3DJkJdfcew==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="23124996"
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="23124996"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 12:14:28 -0700
X-CSE-ConnectionGUID: uiBoxndsQsi4oIgB7d1ZhQ==
X-CSE-MsgGUID: mRHPl1a6QPiCMFKJOrBFIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="30724624"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 12:14:27 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 13/20] drm/i915/dp: Use check link state work in the HPD IRQ
 handler
Date: Tue, 14 May 2024 22:14:11 +0300
Message-ID: <20240514191418.2863344-14-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240514191418.2863344-1-imre.deak@intel.com>
References: <20240514191418.2863344-1-imre.deak@intel.com>
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
 drivers/gpu/drm/i915/display/intel_dp.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a41a63b8ae5f0..e5bd2bbcc8d89 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4996,7 +4996,10 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 			drm_dp_mst_hpd_irq_send_new_request(&intel_dp->mst_mgr);
 	}
 
-	return link_ok && !reprobe_needed;
+	if (!link_ok)
+		intel_dp_queue_link_check(intel_dp, 0);
+
+	return !reprobe_needed;
 }
 
 static void
@@ -5472,9 +5475,7 @@ intel_dp_short_pulse(struct intel_dp *intel_dp)
 	/* Handle CEC interrupts, if any */
 	drm_dp_cec_irq(&intel_dp->aux);
 
-	/* defer to the hotplug work for link retraining if needed */
-	if (intel_dp_needs_link_retrain(intel_dp))
-		return false;
+	intel_dp_check_link_state(intel_dp);
 
 	intel_psr_short_pulse(intel_dp);
 
-- 
2.43.3

