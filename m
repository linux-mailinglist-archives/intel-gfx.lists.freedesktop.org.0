Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33604B48583
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 09:37:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FC5810E481;
	Mon,  8 Sep 2025 07:37:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LO7zy+An";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32AA410E47D
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Sep 2025 07:37:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757317071; x=1788853071;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ouMhYSZKdrz236ATtwoRvtV7nmw3KOdeBpCSe+PGaA4=;
 b=LO7zy+AnMpuLJV7N+LhPsvIMSaNfVW5HYJCSxnCIuf32s7WP6Fo95pZX
 oFVSLwchiqmzMpOeErcd/oIbnofLx3N7+eCT1szKFAICbaNDGoxTWytpC
 uIUXQj5+FARmzulH4N4z28mCGlgmMfBajSgUS0PixqI3wprMzDO02INl+
 mp4Jr2tBDRqbEhhRzFfXLAnJXLsZoM2hfwnz2wSJ0AYylex638IyGjz74
 KCl1FyemqBwECaWdLlcnTyA/FDmjO/bEj4kaTQRKTcCp4Ty9e27XT8YcI
 MDEjMdt3VYk667pD6kTNPJCfzhdi9TtZvq42ILmqG02PA4l/2EPr57Wmw w==;
X-CSE-ConnectionGUID: bs0xXLF3QAGgA/ScJHSlKA==
X-CSE-MsgGUID: AsvjCEdgTPS0azPorQiRRA==
X-IronPort-AV: E=McAfee;i="6800,10657,11546"; a="59506297"
X-IronPort-AV: E=Sophos;i="6.18,247,1751266800"; d="scan'208";a="59506297"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 00:37:51 -0700
X-CSE-ConnectionGUID: CctnsImyRSOT8CvMobqoOA==
X-CSE-MsgGUID: UcDV/srxSzeYtq0iN3ux6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,247,1751266800"; d="scan'208";a="171986986"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.245.210])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 00:37:50 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/6] drm/i915/wm: clarify watermark ops with comments
Date: Mon,  8 Sep 2025 10:35:30 +0300
Message-ID: <20250908073734.1180687-2-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250908073734.1180687-1-luciano.coelho@intel.com>
References: <20250908073734.1180687-1-luciano.coelho@intel.com>
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

Some of the ops in struct intel_wm_funcs are used only for legacy
watermark management, while others are only for SKL+ or both.  Clarify
that in the struct definition.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_core.h | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 8c226406c5cd..938971591470 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -78,7 +78,7 @@ struct intel_display_funcs {
 
 /* functions used for watermark calcs for display. */
 struct intel_wm_funcs {
-	/* update_wm is for legacy wm management */
+	/* these are only for legacy wm management */
 	void (*update_wm)(struct intel_display *display);
 	int (*compute_watermarks)(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc);
@@ -88,8 +88,12 @@ struct intel_wm_funcs {
 					 struct intel_crtc *crtc);
 	void (*optimize_watermarks)(struct intel_atomic_state *state,
 				    struct intel_crtc *crtc);
+
+	/* these are for SKL+ wm management */
 	int (*compute_global_watermarks)(struct intel_atomic_state *state);
 	void (*get_hw_state)(struct intel_display *display);
+
+	/* this is used by both legacy and SKL+ */
 	void (*sanitize)(struct intel_display *display);
 };
 
-- 
2.50.1

