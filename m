Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87261A429BC
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 18:30:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BFF710E4CB;
	Mon, 24 Feb 2025 17:30:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G6CmDBD2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12D2610E4A4
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Feb 2025 17:30:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740418221; x=1771954221;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CMQe2dcR9kWeqbjecUVtzmKpG/nmY7KZZ8Hcv9KGXN8=;
 b=G6CmDBD2IjI7oEkK464GZa+z7xxFepnl4wzahaZ44hjLciZauCklk0Kc
 7tZ85WjA0Sbp1UyP5kBRdY7ogkVpMKSVt5CmLTb4y0VUWmCLT538pMLwD
 qHPIbQZPxk8oZGg9YjIvVMptPPc86xL+YrRCO8+s8FEAtSxwAiQ2g4KgK
 2InnvroBc0sD9k+oGR3vC3odOAXPVY/X/xjXuq6zCUHAL2twamAhYy+G9
 iq8cTufhLKck75rkCqtP6wCp5i3lvYBLzZcMdn6bsCcqJwBr/b/B6Rh8o
 Ih6JME47lmVFrbhYEhbLr+Bo1V5tW3AFdKNBrbOnS/1VckW57AF4R4GvZ A==;
X-CSE-ConnectionGUID: wEp5KZslQDm7m/cKKxW4Ew==
X-CSE-MsgGUID: TbJ552K3ThGpU/bpRKeujA==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="58602247"
X-IronPort-AV: E=Sophos;i="6.13,312,1732608000"; d="scan'208";a="58602247"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 09:30:20 -0800
X-CSE-ConnectionGUID: S447MQ7gT/6WkDHLm6xVqg==
X-CSE-MsgGUID: 7XxpELYTS6ma9YnYupE3Cg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121374575"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 24 Feb 2025 09:30:19 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Feb 2025 19:30:17 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915: Fix pipeDMC and ATS fault handling
Date: Mon, 24 Feb 2025 19:30:17 +0200
Message-ID: <20250224173017.29500-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
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

The fault handler is supposed to return true when it
handles the fault. The pipeDMC and ATS handlers are
returning false instead which results in the
"unreported faults" WARN triggering when it shouldn't.

Fixes: f13011a79999 ("drm/i915: Pimp display fault reporting")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 99fb7fc7be39..aa23bb817805 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1101,7 +1101,7 @@ static bool handle_plane_ats_fault(struct intel_crtc *crtc, enum plane_id plane_
 			    "[CRTC:%d:%s] PLANE ATS fault\n",
 			    crtc->base.base.id, crtc->base.name);
 
-	return false;
+	return true;
 }
 
 static bool handle_pipedmc_ats_fault(struct intel_crtc *crtc, enum plane_id plane_id)
@@ -1112,7 +1112,7 @@ static bool handle_pipedmc_ats_fault(struct intel_crtc *crtc, enum plane_id plan
 			    "[CRTC:%d:%s] PIPEDMC ATS fault\n",
 			    crtc->base.base.id, crtc->base.name);
 
-	return false;
+	return true;
 }
 
 static bool handle_pipedmc_fault(struct intel_crtc *crtc, enum plane_id plane_id)
@@ -1123,7 +1123,7 @@ static bool handle_pipedmc_fault(struct intel_crtc *crtc, enum plane_id plane_id
 			    "[CRTC:%d:%s] PIPEDMC fault\n",
 			    crtc->base.base.id, crtc->base.name);
 
-	return false;
+	return true;
 }
 
 static const struct pipe_fault_handler mtl_pipe_fault_handlers[] = {
-- 
2.45.3

