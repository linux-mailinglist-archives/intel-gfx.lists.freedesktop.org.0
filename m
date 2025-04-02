Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9BABA789FB
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Apr 2025 10:32:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DEF410E6FE;
	Wed,  2 Apr 2025 08:32:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bIpDxuFK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDB7D10E6F8;
 Wed,  2 Apr 2025 08:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743582744; x=1775118744;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rMxG3Ut+S2wxdjLyhXU5LfpA3xGyhU8/bIbiTS83icw=;
 b=bIpDxuFKIbKYsOuuTFZD8gkunFGt9q0BQjzZJtswpcFLohdTMDFaoN+I
 UwLlrbhJ5/R0wBw35GBOZMPhgRp6/I/eBfxuPrNqRYS7UUEBbOYweNZ+l
 RSC49OjaiNrL96nW1VBWIWtQzn68WMl2cZpJTZc1/ydnhrNciRzDvX7dJ
 3KMSqJmjdQx3XL/rcK9t0tRY1MFCm280KMc6EVuFdbOi9A+D0fEaDd8C0
 gUn9I3rVG38vDkEHhCgaVibmUWeKleHzNb6zs0IiEsUWF5HczeFDZ1O2v
 dD2lz9XF3vNrYZGEewqD8ICZdfPrffvZt3aQh9VBUTE3iYudwPke9w3iO g==;
X-CSE-ConnectionGUID: GyyCEIUQReGliiKrLBxrmQ==
X-CSE-MsgGUID: oOmAwx7ZSVe3RsRtiSTEOg==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="44828710"
X-IronPort-AV: E=Sophos;i="6.14,295,1736841600"; d="scan'208";a="44828710"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2025 01:32:24 -0700
X-CSE-ConnectionGUID: RIoFwmCISsaUz8exLBTEyA==
X-CSE-MsgGUID: Znugq25HR36+2SslywYNoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,295,1736841600"; d="scan'208";a="126612433"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa007.fm.intel.com with ESMTP; 02 Apr 2025 01:32:21 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, jani.nikula@intel.com,
 mika.kahola@intel.com, ville.syrjala@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 09/16] drm/i915/dpll: Introduce new hook in
 intel_dpll_global_func
Date: Wed,  2 Apr 2025 14:01:57 +0530
Message-Id: <20250402083204.1523470-10-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250402083204.1523470-1-suraj.kandpal@intel.com>
References: <20250402083204.1523470-1-suraj.kandpal@intel.com>
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

Introduce disable hook to disable individual dpll which is to
be used by DISPLAY_VER() >= 14.

--v2
-Rename intel_global_dpll to intel_dpll_global [Jani/Ville]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 48efc25e18dc..27181ddc4e0f 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -69,6 +69,12 @@ struct intel_dpll_global_funcs {
 	void (*enable)(const struct intel_crtc_state *state,
 		       struct intel_encoder *encoder);
 
+	/*
+	 * Hook for disabling the individual pll, used from DISPLAY_VER() >= 14
+	 */
+	void (*disable)(struct intel_display *display,
+			struct intel_dpll_global *pll);
+
 	/*
 	 * Hook for disabling the shared pll, called from intel_disable_global_dpll()
 	 * only when it is safe to disable the pll, i.e., there are no more
-- 
2.34.1

