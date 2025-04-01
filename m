Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E40A7809C
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Apr 2025 18:38:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75B8810E622;
	Tue,  1 Apr 2025 16:37:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YKMOWzZ9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40A8910E621
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Apr 2025 16:37:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743525478; x=1775061478;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=NmMpN0YUd/FwUsx5irtIWksDRxI/xPQ7RAUJeCvz5BA=;
 b=YKMOWzZ90c/XuVXu5TDkauM2Ipyd/fV7LwTAbutCOQ4mkuY75EYIGeYw
 6WwiKtT73Vu12nZ2eOgO1YCSXRkN8Nl3XNim+JmUcmGPsIo6mTJunGCuO
 ikpY6knydPHwkU40ZephTaQrmTZkMGr1XD/MCKhV2wy5VDLqyvw/cNG9D
 1Al2xQGcB356lZPddW/Ug9YraKad0pAH17L3WTbMpSgCwUmv6M/5KN2ge
 wsSghrIvryB5OKC1ZsplyhpdIh4SFuKw5vMIrV1NibGwZuOgde5tkLKrR
 b3Q4Hypnc74izsIaU+ndTMcHsU+hKTrSySkUdyqzJy5K1lFm0hLDbdffD Q==;
X-CSE-ConnectionGUID: 4d0WNTkVSDmPNZpoe54GEw==
X-CSE-MsgGUID: hnqkIGtlQGmOV1uSK7v6tg==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="55520037"
X-IronPort-AV: E=Sophos;i="6.14,293,1736841600"; d="scan'208";a="55520037"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 09:37:58 -0700
X-CSE-ConnectionGUID: 3yVLeWTNRTuoniLiPHS2tQ==
X-CSE-MsgGUID: KG8mpVMaRpmq6I3KQmqaow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,293,1736841600"; d="scan'208";a="131638548"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 01 Apr 2025 09:37:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 01 Apr 2025 19:37:55 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/4] drm/i915: Apply the combo PLL frac w/a on DG1
Date: Tue,  1 Apr 2025 19:37:49 +0300
Message-ID: <20250401163752.6412-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250401163752.6412-1-ville.syrjala@linux.intel.com>
References: <20250401163752.6412-1-ville.syrjala@linux.intel.com>
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

DG1 apparently needs the combo PLL fractional divider w/a
with 38.4 MHz refclk as well. This isn't listed in bspec, but
looking at the hsd it looks like it was possibly just missed
due to no one having a DG1 around at the time.

This gives us slightly more accurate clocks on DG1.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index ec7feef1ef59..76ab55ee4b80 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -2604,6 +2604,7 @@ ehl_combo_pll_div_frac_wa_needed(struct intel_display *display)
 {
 	return ((display->platform.elkhartlake &&
 		 IS_DISPLAY_STEP(display, STEP_B0, STEP_FOREVER)) ||
+		 display->platform.dg1 ||
 		 display->platform.tigerlake ||
 		 display->platform.alderlake_s ||
 		 display->platform.alderlake_p) &&
-- 
2.45.3

