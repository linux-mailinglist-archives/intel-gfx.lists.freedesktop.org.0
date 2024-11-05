Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3914B9BC6C0
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2024 08:16:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF14E10E530;
	Tue,  5 Nov 2024 07:16:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e7UwLA04";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FC2A10E530;
 Tue,  5 Nov 2024 07:16:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730790990; x=1762326990;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dfkoONrr2H9jCulSk4ZZ/Xme5pFeIDhodImx+XI1Iio=;
 b=e7UwLA04N3rlP+Sm8u+DlDpPwxGEd0nldMhAJgjCV/IhiiLxQ+a3aZfg
 pMvfewRU4KcVGNdOBKPRS9opmYCV4qW4sAHUXX00CWL/leQiwOJqorHYm
 xkiCGQ5BTnL8D7ECFMuFVYOKnKOrj/4ZK57x7hsu9n97bU0ydm1vqCAVZ
 vYkyfYwjnPALRKSnvHLL/Wrt8i6s6C4KLupyghpdx05OamnSXAs2Ztu70
 iG45/vnqAWuieR3dtoq52L25wYFK7yRnfDUPWNJLBWd6A6jDpIhiecyZ2
 aPLeMHCbgdLNig8wcdmn0gcG6p6fmsbhWMSZ4cdvHwlkwiqYAjL9TIOen g==;
X-CSE-ConnectionGUID: v84KsADtQzCte27vX/FqEg==
X-CSE-MsgGUID: l/EWhDe2TqW9d11RzFp2AQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="34449548"
X-IronPort-AV: E=Sophos;i="6.11,259,1725346800"; d="scan'208";a="34449548"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 23:16:30 -0800
X-CSE-ConnectionGUID: D0F3fz6nR9GYd5NkEMiBIA==
X-CSE-MsgGUID: mZsRQK4/ROyjwhSMotRnAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,259,1725346800"; d="scan'208";a="87835589"
Received: from apaszkie-mobl2.apaszkie-mobl2 (HELO vgovind2-mobl3..)
 ([10.245.245.146])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 23:16:28 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, jani.nikula@intel.com,
 ville.syrjala@intel.com, jani.saarinen@intel.com
Subject: [PATCH 4/8] drm/i915/display: update use_min_ddb to use intel_display
Date: Tue,  5 Nov 2024 09:15:56 +0200
Message-Id: <20241105071600.235338-5-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241105071600.235338-1-vinod.govindapillai@intel.com>
References: <20241105071600.235338-1-vinod.govindapillai@intel.com>
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

Avoid using struct drm_i915_private reference and use intel_display
instead. This is in preparation for the rest of the patches in this
series where hw support for the minimum and interim ddb allocations
for async flip is added

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index d89630b2d5c1..2c8fae8de4da 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -211,9 +211,9 @@ static bool
 use_min_ddb(const struct intel_crtc_state *crtc_state,
 	    struct intel_plane *plane)
 {
-	struct drm_i915_private *i915 = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 
-	return DISPLAY_VER(i915) >= 13 &&
+	return DISPLAY_VER(display) >= 13 &&
 	       crtc_state->uapi.async_flip &&
 	       plane->async_flip;
 }
-- 
2.34.1

