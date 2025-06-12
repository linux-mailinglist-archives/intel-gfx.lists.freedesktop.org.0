Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B94D5AD6FE0
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 14:13:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4996D10E80E;
	Thu, 12 Jun 2025 12:13:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TOyFzuLr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BE0610E80C;
 Thu, 12 Jun 2025 12:13:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749730405; x=1781266405;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZLhLBdAA3H+j0kFT8XkPnBSFcYrEo3PmS41u8HJu3xQ=;
 b=TOyFzuLrGpkWWbj1HZqGna6QrlxG4n16LW7JwZ9QMvOis20M6gJqdb8M
 2vQVYfBSAnTW3WaSCcxythCNmyox2oQOCXKq3JMohsRmEoKebTOnuO+bU
 fZfLehF8rGIYKnjqnTRZn9418NWer+OGZmyqQLRycPK+pEQbmZUDqZ3MY
 8PDKa2Hd7fEsMJHRpdLllHVkabyzSEiHczn2eieSp78D5Vea/YGrJQ98c
 S5FI2W62BXXJr+X/NhDIvxT6N0Fw86k+wgGdea/+/RRkXHcEhMupgb2jq
 dXDVIHTsoEkKH5ICKWJoMK3YEfeYiLAkC02N9Ju9dfhs3klGmOl60hZBM Q==;
X-CSE-ConnectionGUID: GrJOgYJsQu27RktEqucCGw==
X-CSE-MsgGUID: 6vq7zAN+TDKOrdYcTBynsA==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="51779430"
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="51779430"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 05:13:25 -0700
X-CSE-ConnectionGUID: RN/eLE0pRJqEb99tQ8bQ1g==
X-CSE-MsgGUID: 9PX6yKTZSSKHu+TJoGXcNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="152267539"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.242])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 05:13:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 14/16] drm/i915/cdclk: abstract intel_cdclk_read_hw()
Date: Thu, 12 Jun 2025 15:12:09 +0300
Message-Id: <6f7accb2388b9cd1825befd307581be5aee85fc6.1749730224.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1749730224.git.jani.nikula@intel.com>
References: <cover.1749730224.git.jani.nikula@intel.com>
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

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c          | 12 ++++++++++++
 drivers/gpu/drm/i915/display/intel_cdclk.h          |  1 +
 drivers/gpu/drm/i915/display/intel_display_driver.c |  8 +-------
 3 files changed, 14 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index f63b6b3b5476..994be1d0e20c 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3872,3 +3872,15 @@ void intel_cdclk_force_min_cdclk(struct intel_cdclk_state *cdclk_state, int forc
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

