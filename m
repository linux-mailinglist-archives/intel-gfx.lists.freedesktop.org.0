Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CAF6AE5E81
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jun 2025 09:51:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA89210E50B;
	Tue, 24 Jun 2025 07:51:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LSjgSS94";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8AEB10E509;
 Tue, 24 Jun 2025 07:51:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750751493; x=1782287493;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wNONvYyyZAwpjXa8Nxwj4Vh5Tn7ey5a5Mc5/c/BAegk=;
 b=LSjgSS94l3FDp37r+LfJw0t6W2f8CqYxcsylr3RIJ0IUb9XFCZZG8V58
 6U/BOfan1T18Jqt2Rgp33QslcJpV4/UfRsgIwKzURkaNcccw7qwQArWc4
 /RJkcQ0WNsVGY7FwN3e/hHLnHgeA1UQ/NbX1DF++QACtrHXRlDN/5bXhS
 5Axy04AD8mFnbAKdUnT/+MQVoUBt8FaQNU/4IArVm/a/m7WST5FP2/35P
 Bvp9Zho0XqSG/kzpRMKMAqKWv0vtSEiuzRYf1BoNMDEpynBM0wjdOKipA
 fq5XKFknjYukIFb/LQxvhL0cdlNkxoGZ/GACCGHj+ZqqpNvDllAzMCuYZ g==;
X-CSE-ConnectionGUID: 91q6D6vSRSOVECWVAUj6pA==
X-CSE-MsgGUID: J99tyncTTki0qngaMoq0Rw==
X-IronPort-AV: E=McAfee;i="6800,10657,11473"; a="78398259"
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="78398259"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 00:51:32 -0700
X-CSE-ConnectionGUID: K8Qmku7bSsmoKRIFhqTNpQ==
X-CSE-MsgGUID: 8mQ66DmvT36clhEIEfDIaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="175446474"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa002.fm.intel.com with ESMTP; 24 Jun 2025 00:51:30 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, ankit.k.nautiyal@intel.com,
 jani.nikula@linux.intel.com
Subject: [PATCH v7 12/18] drm/i915/dsb: Add pipedmc dc balance enable/disable
Date: Tue, 24 Jun 2025 13:19:42 +0530
Message-ID: <20250624074948.671761-13-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250624074948.671761-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250624074948.671761-1-mitulkumar.ajitkumar.golani@intel.com>
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

Add function to control DC balance enable/disable bit via DSB.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 18 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dmc.h |  5 +++++
 2 files changed, 23 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 4572e87d9bfa..1726c0ab18c2 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -1607,3 +1607,21 @@ void intel_pipedmc_irq_handler(struct intel_display *display, enum pipe pipe)
 		drm_err(display->drm, "[CRTC:%d:%s]] PIPEDMC interrupt vector 0x%x\n",
 			crtc->base.base.id, crtc->base.name, tmp);
 }
+
+void intel_pipedmc_dcb_enable(struct intel_dsb *dsb, struct intel_crtc *crtc)
+{
+	struct intel_display *display = to_intel_display(crtc);
+	enum pipe pipe = crtc->pipe;
+
+	intel_de_write_dsb(display, dsb, PIPEDMC_DCB_CTL(pipe),
+			   PIPEDMC_ADAPTIVE_DCB_ENABLE);
+}
+
+void intel_pipedmc_dcb_disable(struct intel_dsb *dsb, struct intel_crtc *crtc)
+{
+	struct intel_display *display = to_intel_display(crtc);
+	enum pipe pipe = crtc->pipe;
+
+	intel_de_write_dsb(display, dsb, PIPEDMC_DCB_CTL(pipe), 0);
+}
+
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
index 7820fa5aed3e..d45d51bedb87 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc.h
@@ -8,11 +8,14 @@
 
 #include <linux/types.h>
 
+
 enum pipe;
+struct intel_crtc;
 struct drm_printer;
 struct intel_crtc_state;
 struct intel_display;
 struct intel_dmc_snapshot;
+struct intel_dsb;
 
 void intel_dmc_init(struct intel_display *display);
 void intel_dmc_load_program(struct intel_display *display);
@@ -36,5 +39,7 @@ void intel_dmc_update_dc6_allowed_count(struct intel_display *display, bool star
 void assert_main_dmc_loaded(struct intel_display *display);
 
 void intel_pipedmc_irq_handler(struct intel_display *display, enum pipe pipe);
+void intel_pipedmc_dcb_enable(struct intel_dsb *dsb, struct intel_crtc *crtc);
+void intel_pipedmc_dcb_disable(struct intel_dsb *dsb, struct intel_crtc *crtc);
 
 #endif /* __INTEL_DMC_H__ */
-- 
2.48.1

