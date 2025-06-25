Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C32BAE7F77
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jun 2025 12:33:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E814610E6DC;
	Wed, 25 Jun 2025 10:33:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DHKsh6CD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 090B410E6DC;
 Wed, 25 Jun 2025 10:33:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750847629; x=1782383629;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=T6QrhuT14IR5URCbTz1IZ2F886PZCoCWneAaeadrPss=;
 b=DHKsh6CDVgKx5mzXsdP2zDx9uKUk7/TTjQGDpPwEv0YH0vB4jd4R9hdx
 Skou3ZGp9NZVZZ3dOgrixw84XySo4xvW5Q5YheRfQ4eGKSUZWZy+eobHw
 nxVNWLtTIS9GweYsEZbore4KGMcdjw2kIBRT3MiHxQqyMjLraug0PfLSH
 VXLVVO3qNFbyTlxbtJ8sQosThV3u91pv5DhM9pIDf727t8I34eZ3XjaO2
 8kQj0hzeEVMHD7HL2a64ZzJoKo2Qor+Lic22lyawMnx7OkbFwE4rvQfKM
 81+BXF2Weo08agTs91UIUknzOFjFjNCkVK+Oe+BKn0Y2Eoeew1P3Twj72 g==;
X-CSE-ConnectionGUID: eRg8tC8rSI2iSf2oAlEyMw==
X-CSE-MsgGUID: nzlHGjj/Q46X7fHd7IdtTQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="78537661"
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="78537661"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 03:33:48 -0700
X-CSE-ConnectionGUID: a2N/cJL9TKusNZXW5zUe4g==
X-CSE-MsgGUID: Gn9D0o03QJqfb2vFCHAUig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="151936693"
Received: from monicael-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.78])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 03:33:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	imre.deak@intel.com
Subject: [CI v2 14/16] drm/i915/cdclk: abstract intel_cdclk_read_hw()
Date: Wed, 25 Jun 2025 13:32:32 +0300
Message-Id: <ef720d37bfeee933d59b64e382dc976f3c9fade1.1750847509.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1750847509.git.jani.nikula@intel.com>
References: <cover.1750847509.git.jani.nikula@intel.com>
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

Add intel_cdclk_read_hw() function to avoid looking at struct
intel_cdclk_state internals outside of intel_cdclk.c.

intel_cdclk_init_hw() would be a better name, but we already have that.

Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c          | 12 ++++++++++++
 drivers/gpu/drm/i915/display/intel_cdclk.h          |  1 +
 drivers/gpu/drm/i915/display/intel_display_driver.c |  8 +-------
 3 files changed, 14 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 0c2d0195a2d9..156b5b5190cc 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3869,3 +3869,15 @@ void intel_cdclk_force_min_cdclk(struct intel_cdclk_state *cdclk_state, int forc
 {
 	cdclk_state->force_min_cdclk = force_min_cdclk;
 }
+
+void intel_cdclk_read_hw(struct intel_display *display)
+{
+	struct intel_cdclk_state *cdclk_state;
+
+	cdclk_state = to_intel_cdclk_state(display->cdclk.obj.state);
+
+	intel_update_cdclk(display);
+	intel_cdclk_dump_config(display, &display->cdclk.hw, "Current CDCLK");
+	cdclk_state->actual = display->cdclk.hw;
+	cdclk_state->logical = display->cdclk.hw;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index ff10ed526bd4..0d5ee1826168 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -102,5 +102,6 @@ int intel_cdclk_min_cdclk(const struct intel_cdclk_state *cdclk_state, enum pipe
 int intel_cdclk_bw_min_cdclk(const struct intel_cdclk_state *cdclk_state);
 bool intel_cdclk_pmdemand_needs_update(struct intel_atomic_state *state);
 void intel_cdclk_force_min_cdclk(struct intel_cdclk_state *cdclk_state, int force_min_cdclk);
+void intel_cdclk_read_hw(struct intel_display *display);
 
 #endif /* __INTEL_CDCLK_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index ec799a1773e4..9058c23dd487 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -84,16 +84,10 @@ bool intel_display_driver_probe_defer(struct pci_dev *pdev)
 
 void intel_display_driver_init_hw(struct intel_display *display)
 {
-	struct intel_cdclk_state *cdclk_state;
-
 	if (!HAS_DISPLAY(display))
 		return;
 
-	cdclk_state = to_intel_cdclk_state(display->cdclk.obj.state);
-
-	intel_update_cdclk(display);
-	intel_cdclk_dump_config(display, &display->cdclk.hw, "Current CDCLK");
-	cdclk_state->logical = cdclk_state->actual = display->cdclk.hw;
+	intel_cdclk_read_hw(display);
 
 	intel_display_wa_apply(display);
 }
-- 
2.39.5

