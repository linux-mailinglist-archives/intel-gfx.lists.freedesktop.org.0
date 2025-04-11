Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71254A85871
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Apr 2025 11:54:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE96D10EB57;
	Fri, 11 Apr 2025 09:54:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JcPDmCXd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD16C10EB55;
 Fri, 11 Apr 2025 09:54:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744365278; x=1775901278;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=e8tZuMGyt/Milr/yTlY3hYjbrkG60Ql9cvKC1qmh3wo=;
 b=JcPDmCXdcMJfj5/Yw2VKvl4K2dj5BKxpFTsO/JaPeXTmegn3Yucgh+Ka
 sopOAbDgAtzq284pRefB47AJqmIA/idL9cifQnYajaUVy5mpo4wU9Lm9l
 w7CKjjquGB9pKXedqEjPsEVhHzExqCHjsFByNGWlbjDB5uaxSmWwVuV54
 eqeyKm2kMgUU1ZkVHdt8wWCrHe8QgUrCvD24XC6cygkU6mwloMPsfIra1
 Dc62jTFRQpWuPNV9RbvcmHHwfgVI9slAb6QM+BrWSjXTVfbFWhkNDnQhR
 FJI8RDhAs4vHwf9dl1m44oTuXJXgCptxbGoekubFBBdCGbxhimVC0yrt7 Q==;
X-CSE-ConnectionGUID: OQkQsxoATfC8YbdbvzLEDw==
X-CSE-MsgGUID: HZPecSVzRnGUDFSBLqjFSg==
X-IronPort-AV: E=McAfee;i="6700,10204,11400"; a="56094864"
X-IronPort-AV: E=Sophos;i="6.15,203,1739865600"; d="scan'208";a="56094864"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 02:54:37 -0700
X-CSE-ConnectionGUID: OltnPvjWQFKpEQq2VWTBAw==
X-CSE-MsgGUID: hp2SXuFOSwuLQBtuEagO4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,203,1739865600"; d="scan'208";a="133265655"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.115])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 02:54:35 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 3/4] drm/i915/pch: move PCH detection to
 intel_display_driver_early_probe()
Date: Fri, 11 Apr 2025 12:54:13 +0300
Message-Id: <de70b35b170c9a74edddb497a209eb10427b77de.1744364975.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1744364975.git.jani.nikula@intel.com>
References: <cover.1744364975.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Make PCH detection part of display. For now, call it also for
!HAS_DISPLAY() to avoid functional changes here.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_driver.c | 3 +++
 drivers/gpu/drm/i915/display/intel_pch.c            | 2 +-
 drivers/gpu/drm/i915/display/intel_pch.h            | 2 +-
 drivers/gpu/drm/i915/i915_driver.c                  | 3 ---
 drivers/gpu/drm/xe/display/xe_display.c             | 3 ---
 5 files changed, 5 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index efee8925987e..e4192f6cb0c7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -180,6 +180,9 @@ static void intel_plane_possible_crtcs_init(struct intel_display *display)
 
 void intel_display_driver_early_probe(struct intel_display *display)
 {
+	/* This must be called before any calls to HAS_PCH_* */
+	intel_pch_detect(display);
+
 	if (!HAS_DISPLAY(display))
 		return;
 
diff --git a/drivers/gpu/drm/i915/display/intel_pch.c b/drivers/gpu/drm/i915/display/intel_pch.c
index e63480dd01fe..c5045d2527b4 100644
--- a/drivers/gpu/drm/i915/display/intel_pch.c
+++ b/drivers/gpu/drm/i915/display/intel_pch.c
@@ -250,7 +250,7 @@ intel_virt_detect_pch(const struct intel_display *display,
 	*pch_id = id;
 }
 
-void intel_detect_pch(struct intel_display *display)
+void intel_pch_detect(struct intel_display *display)
 {
 	struct pci_dev *pch = NULL;
 	unsigned short id;
diff --git a/drivers/gpu/drm/i915/display/intel_pch.h b/drivers/gpu/drm/i915/display/intel_pch.h
index b2b309a9fe6b..cf4dab1b98bf 100644
--- a/drivers/gpu/drm/i915/display/intel_pch.h
+++ b/drivers/gpu/drm/i915/display/intel_pch.h
@@ -53,6 +53,6 @@ enum intel_pch {
 #define HAS_PCH_NOP(display)			(INTEL_PCH_TYPE(display) == PCH_NOP)
 #define HAS_PCH_SPLIT(display)			(INTEL_PCH_TYPE(display) != PCH_NONE)
 
-void intel_detect_pch(struct intel_display *display);
+void intel_pch_detect(struct intel_display *display);
 
 #endif /* __INTEL_PCH__ */
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 787a9864c687..97ff9855b5de 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -263,9 +263,6 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 
 	i915_gem_init_early(dev_priv);
 
-	/* This must be called before any calls to HAS_PCH_* */
-	intel_detect_pch(display);
-
 	intel_irq_init(dev_priv);
 	intel_display_driver_early_probe(display);
 	intel_clock_gating_hooks_init(dev_priv);
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 45836fca51d8..68f064f33d4b 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -133,9 +133,6 @@ int xe_display_init_early(struct xe_device *xe)
 	/* Fake uncore lock */
 	spin_lock_init(&xe->uncore.lock);
 
-	/* This must be called before any calls to HAS_PCH_* */
-	intel_detect_pch(display);
-
 	intel_display_driver_early_probe(display);
 
 	/* Early display init.. */
-- 
2.39.5

