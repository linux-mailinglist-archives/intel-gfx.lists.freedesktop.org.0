Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24EA78C4582
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2024 19:00:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FF0310E891;
	Mon, 13 May 2024 17:00:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WRlm5KJG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CFF010E891
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 May 2024 17:00:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715619614; x=1747155614;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7B3+GF+wwEZK/bG2LZ3tmaNvzEC4+2baIDD/jK+RfzM=;
 b=WRlm5KJGtAMhBjsij0B6hN5s1MZXcceXrC1bevdSlqWx4y7A+LERmUWA
 iP+AlzfNwKRBEHvJyLybToJ3C+4/Voc9rP3F9lWb0+gbyOxqJaXJehhsR
 6BFayBu+3FA0Js4zb/cSy+ft9QdKGJGRb1Nj7jpyfLQrKC1ab6PnBDxcA
 P5KTYNGJ5/4A/rU4Ki3quoAIwOgzmyL0+8FYH7un1RMOGYvDrOAkmVDm8
 qS28TL7nRaxytn/Sjh7TO+IVuswlph7Ezq6nuBAgNypBTVNH3MFcxSMDM
 QN+t3gPnp0rIQaqQBkVHhMbrT2gl46a1jQhWFxuOltkqC4mN1x5+CVBES Q==;
X-CSE-ConnectionGUID: jFMzLB9tTAqqqivQLocgfw==
X-CSE-MsgGUID: VYovezuzQg6OdQAwDX2X3Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11072"; a="15387879"
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="15387879"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 10:00:11 -0700
X-CSE-ConnectionGUID: +09rhrQ8SWG3B8DxV2PYsA==
X-CSE-MsgGUID: ftqwRpzTQVy6V3+BNV25sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="30379032"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 13 May 2024 10:00:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 13 May 2024 20:00:08 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 12/16] drm/i915: Drop a few unwanted tabs from skl+ plane
 reg defines
Date: Mon, 13 May 2024 20:00:08 +0300
Message-ID: <20240513170008.15338-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240510152329.24098-13-ville.syrjala@linux.intel.com>
References: <20240510152329.24098-13-ville.syrjala@linux.intel.com>
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

A few extra tabs have snuck into the skl+ plane register bit
definitions. Remove them.

v2: Rebase

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane_regs.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
index e8d399592fd3..0b4f97059479 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
@@ -205,17 +205,17 @@
 #define _PLANE_CUS_CTL_2(pipe)		_PIPE(pipe, _PLANE_CUS_CTL_2_A, _PLANE_CUS_CTL_2_B)
 #define PLANE_CUS_CTL(pipe, plane)	_MMIO_PLANE(plane, _PLANE_CUS_CTL_1(pipe), _PLANE_CUS_CTL_2(pipe))
 #define   PLANE_CUS_ENABLE			REG_BIT(31)
-#define   PLANE_CUS_Y_PLANE_MASK			REG_BIT(30)
+#define   PLANE_CUS_Y_PLANE_MASK		REG_BIT(30)
 #define   PLANE_CUS_Y_PLANE_4_RKL		REG_FIELD_PREP(PLANE_CUS_Y_PLANE_MASK, 0)
 #define   PLANE_CUS_Y_PLANE_5_RKL		REG_FIELD_PREP(PLANE_CUS_Y_PLANE_MASK, 1)
 #define   PLANE_CUS_Y_PLANE_6_ICL		REG_FIELD_PREP(PLANE_CUS_Y_PLANE_MASK, 0)
 #define   PLANE_CUS_Y_PLANE_7_ICL		REG_FIELD_PREP(PLANE_CUS_Y_PLANE_MASK, 1)
-#define   PLANE_CUS_HPHASE_SIGN_NEGATIVE		REG_BIT(19)
+#define   PLANE_CUS_HPHASE_SIGN_NEGATIVE	REG_BIT(19)
 #define   PLANE_CUS_HPHASE_MASK			REG_GENMASK(17, 16)
 #define   PLANE_CUS_HPHASE_0			REG_FIELD_PREP(PLANE_CUS_HPHASE_MASK, 0)
 #define   PLANE_CUS_HPHASE_0_25			REG_FIELD_PREP(PLANE_CUS_HPHASE_MASK, 1)
 #define   PLANE_CUS_HPHASE_0_5			REG_FIELD_PREP(PLANE_CUS_HPHASE_MASK, 2)
-#define   PLANE_CUS_VPHASE_SIGN_NEGATIVE		REG_BIT(15)
+#define   PLANE_CUS_VPHASE_SIGN_NEGATIVE	REG_BIT(15)
 #define   PLANE_CUS_VPHASE_MASK			REG_GENMASK(13, 12)
 #define   PLANE_CUS_VPHASE_0			REG_FIELD_PREP(PLANE_CUS_VPHASE_MASK, 0)
 #define   PLANE_CUS_VPHASE_0_25			REG_FIELD_PREP(PLANE_CUS_VPHASE_MASK, 1)
-- 
2.43.2

