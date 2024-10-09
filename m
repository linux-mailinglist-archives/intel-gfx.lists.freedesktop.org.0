Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB7BA9975DB
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 21:43:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52A1010E7D7;
	Wed,  9 Oct 2024 19:43:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g71s9z8U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D03EB10E7E5;
 Wed,  9 Oct 2024 19:43:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728503015; x=1760039015;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JFUBkcOcy305PEfMSBynLbjmfkMBCs+1T5xeFKeyiP0=;
 b=g71s9z8U7dmx7cZaIRxKYN25QSwHdt6/mvDmeu19UsYqVWrE1aUMezx5
 O+Ut0w/Wsadc5dpvaELGQaVoD3dwwII5MQD63RpTVKkNWWtPwJDRnpPUN
 t8xJJ/nRj68ArN4ekhdWNwLus2dmFPjR4PGdd7OWAi/CkWSsjb8f0ULvF
 mN+EUW1ZuvZWGpHUMGzlrISUfxXyaAUQti6AFCHeOc9qH1dC01KcXjUbe
 AdnN/22iBzTKMMdxCfSVIFu5oH87d6rts/nISN1a6uWs8CK/vvFW/ufGj
 VB1uIUOMNGoUQ1Yj5VcDKFutv614RDsz/wsW/MI9cYUpG8CawEdVGQqIw A==;
X-CSE-ConnectionGUID: 3oPD7xK5RNW2NVWBQuGAzg==
X-CSE-MsgGUID: y2pP6D4iRL6v8Getkqc9Zg==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="27947105"
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="27947105"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 12:43:35 -0700
X-CSE-ConnectionGUID: VodtasvLSJS0ft6EzWujRg==
X-CSE-MsgGUID: L7QkBD7QT6erq7TUW8GXaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="81371477"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 12:43:33 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>
Subject: [PATCH v2 3/4] drm/xe/display: Separate the d3cold and non-d3cold
 runtime PM handling
Date: Wed,  9 Oct 2024 22:43:57 +0300
Message-ID: <20241009194358.1321200-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20241009194358.1321200-1-imre.deak@intel.com>
References: <20241009194358.1321200-1-imre.deak@intel.com>
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

For clarity separate the d3cold and non-d3cold runtime PM handling. The
only change in behavior is disabling polling later during runtime
resume. This shouldn't make a difference, since the poll disabling is
handled from a work, which could run at any point wrt. the runtime
resume handler. The work will also require a runtime PM reference,
syncing it with the resume handler.

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index ca00a365080fb..cb2449b7921ac 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -345,6 +345,9 @@ static void __xe_display_pm_suspend(struct xe_device *xe, bool runtime)
 	intel_opregion_suspend(display, s2idle ? PCI_D1 : PCI_D3cold);
 
 	intel_dmc_suspend(display);
+
+	if (runtime && has_display(xe))
+		intel_hpd_poll_enable(xe);
 }
 
 void xe_display_pm_suspend(struct xe_device *xe)
@@ -387,8 +390,10 @@ void xe_display_pm_runtime_suspend(struct xe_device *xe)
 	if (!xe->info.probe_display)
 		return;
 
-	if (xe->d3cold.allowed)
+	if (xe->d3cold.allowed) {
 		__xe_display_pm_suspend(xe, true);
+		return;
+	}
 
 	intel_hpd_poll_enable(xe);
 }
@@ -453,9 +458,11 @@ static void __xe_display_pm_resume(struct xe_device *xe, bool runtime)
 		intel_display_driver_resume(xe);
 		drm_kms_helper_poll_enable(&xe->drm);
 		intel_display_driver_enable_user_access(xe);
-		intel_hpd_poll_disable(xe);
 	}
 
+	if (has_display(xe))
+		intel_hpd_poll_disable(xe);
+
 	intel_opregion_resume(display);
 
 	if (!runtime)
@@ -474,10 +481,12 @@ void xe_display_pm_runtime_resume(struct xe_device *xe)
 	if (!xe->info.probe_display)
 		return;
 
-	intel_hpd_poll_disable(xe);
-
-	if (xe->d3cold.allowed)
+	if (xe->d3cold.allowed) {
 		__xe_display_pm_resume(xe, true);
+		return;
+	}
+
+	intel_hpd_poll_disable(xe);
 }
 
 
-- 
2.44.2

