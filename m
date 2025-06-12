Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 965E9AD6FDE
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 14:13:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F6DD10E801;
	Thu, 12 Jun 2025 12:13:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aVEMPh1V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3D6610E808;
 Thu, 12 Jun 2025 12:13:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749730395; x=1781266395;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rTdVxEOypNljAzzyDyzZn8EONIoHKu6aMrj341NC+Ug=;
 b=aVEMPh1VXYo2jCAj32Tl5vjpAm8hClm+nL0obu69cSjGZTuotpp2EE9Q
 31L6S7WjP5/cokNXt4eExrMrarZptytE2DGAvxoNat6ZLD1HELJTCOCX4
 0n1nP18kpnZsoNow402L/dBGruuRN1IrVn9MLlvmNgSpx4bWyJZCoh7hH
 iCX/luZSuPaajW08+2e29iiSp6artONbpZPQihOeLjWHJbKmr9svcGuyi
 csw5sddY0bKvVz53n+Ou0kw4CtdMcY99YkE0u4Uy/snydF8mSKM9BU16X
 LzcYck/Z5b8YoCaT1cecuLbTEB700NoHDjJhrVlIScQVrIn9H4AqhknY1 A==;
X-CSE-ConnectionGUID: LAIguWexQIq/+2gddUm5bA==
X-CSE-MsgGUID: ZL8+nbl1SjWKlCx1EPh9EQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="74438569"
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="74438569"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 05:13:15 -0700
X-CSE-ConnectionGUID: Cp3GnH0xQ8uTEKjKZqlICg==
X-CSE-MsgGUID: Vv3M0xcSSsGNmUIBsAeNzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,230,1744095600"; d="scan'208";a="152493874"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.242])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 05:13:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 12/16] drm/i915/cdclk: abstract
 intel_cdclk_pmdemand_needs_update()
Date: Thu, 12 Jun 2025 15:12:07 +0300
Message-Id: <8fbf9f7e282d868a41ac17464991b92ae2d4f97b.1749730224.git.jani.nikula@intel.com>
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

Add intel_cdclk_pmdemand_needs_update() helper to avoid looking at
struct intel_cdclk_state internals outside of intel_cdclk.c.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 15 +++++++++++++++
 drivers/gpu/drm/i915/display/intel_cdclk.h    |  1 +
 drivers/gpu/drm/i915/display/intel_pmdemand.c |  9 +--------
 3 files changed, 17 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 59d126e1b12a..ed6c407f66c7 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3852,3 +3852,18 @@ int intel_cdclk_bw_min_cdclk(const struct intel_cdclk_state *cdclk_state)
 {
 	return cdclk_state->bw_min_cdclk;
 }
+
+bool intel_cdclk_pmdemand_needs_update(struct intel_atomic_state *state)
+{
+	const struct intel_cdclk_state *new_cdclk_state, *old_cdclk_state;
+
+	new_cdclk_state = intel_atomic_get_new_cdclk_state(state);
+	old_cdclk_state = intel_atomic_get_old_cdclk_state(state);
+
+	if (new_cdclk_state &&
+	    (new_cdclk_state->actual.cdclk != old_cdclk_state->actual.cdclk ||
+	     new_cdclk_state->actual.voltage_level != old_cdclk_state->actual.voltage_level))
+		return true;
+
+	return false;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index fe1a1f1c1900..8527a6e44ee5 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -100,5 +100,6 @@ void intel_cdclk_debugfs_register(struct intel_display *display);
 int intel_cdclk_logical(const struct intel_cdclk_state *cdclk_state);
 int intel_cdclk_min_cdclk(const struct intel_cdclk_state *cdclk_state, enum pipe pipe);
 int intel_cdclk_bw_min_cdclk(const struct intel_cdclk_state *cdclk_state);
+bool intel_cdclk_pmdemand_needs_update(struct intel_atomic_state *state);
 
 #endif /* __INTEL_CDCLK_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
index a4d53fd94489..16ef68ef4041 100644
--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
@@ -294,7 +294,6 @@ intel_pmdemand_connector_needs_update(struct intel_atomic_state *state)
 
 static bool intel_pmdemand_needs_update(struct intel_atomic_state *state)
 {
-	const struct intel_cdclk_state *new_cdclk_state, *old_cdclk_state;
 	const struct intel_crtc_state *new_crtc_state, *old_crtc_state;
 	struct intel_crtc *crtc;
 	int i;
@@ -305,13 +304,7 @@ static bool intel_pmdemand_needs_update(struct intel_atomic_state *state)
 	if (intel_dbuf_pmdemand_needs_update(state))
 		return true;
 
-	new_cdclk_state = intel_atomic_get_new_cdclk_state(state);
-	old_cdclk_state = intel_atomic_get_old_cdclk_state(state);
-	if (new_cdclk_state &&
-	    (new_cdclk_state->actual.cdclk !=
-	     old_cdclk_state->actual.cdclk ||
-	     new_cdclk_state->actual.voltage_level !=
-	     old_cdclk_state->actual.voltage_level))
+	if (intel_cdclk_pmdemand_needs_update(state))
 		return true;
 
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
-- 
2.39.5

