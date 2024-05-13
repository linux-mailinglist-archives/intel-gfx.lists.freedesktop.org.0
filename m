Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D7F8C4581
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2024 19:00:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AB7010E8AD;
	Mon, 13 May 2024 17:00:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C64m56Z+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9436910E8AC
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 May 2024 17:00:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715619601; x=1747155601;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uEMlnM/9TApx0rvTLLNuRyD2Qx/iDJ/f2SLY/5I2ZLw=;
 b=C64m56Z+5zqHR4mtlRp5XRFcw4iGmFF1PN4OMrflvTOIRh5NEBJsYzNf
 l0yoc3oLlLtlvR8zLiAg5kaylSWt+Muvx4D4V0Em4t71wNyyC1EOOgNi9
 MrhcV7Ztzu1dZFXqm8Kgw+rEooOr7wgUzX17f08hROFHwK3jFxnK+e17F
 TAnw2+4dseRKAmfiElzNGJmcgk38hg+TppLv2WZsixowimpyJUD+tg3tL
 lB0894wdBTo5fXmiiMmVkVzAa8AB3uhEbH4+LaOtwjoqTyb4PFrR1UmD4
 E2pH9Ouxa271p91a1MSZDZInotCNieaaL75eo09JXMMYu4HJkRsaIcvPD w==;
X-CSE-ConnectionGUID: w5OFNK2zS2uwq3Wfqaj1lw==
X-CSE-MsgGUID: 5yHM5rRqS2unWAky31YgfA==
X-IronPort-AV: E=McAfee;i="6600,9927,11072"; a="15387794"
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="15387794"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 09:59:48 -0700
X-CSE-ConnectionGUID: Wef9WCY8T72GGwnHSwz9VA==
X-CSE-MsgGUID: FHedfIxsQxSq1Ja4IyLkTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="30378754"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 13 May 2024 09:59:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 13 May 2024 19:59:45 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 11/16] drm/i915: Use REG_BIT for PLANE_WM bits
Date: Mon, 13 May 2024 19:59:45 +0300
Message-ID: <20240513165945.15285-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240510152329.24098-12-ville.syrjala@linux.intel.com>
References: <20240510152329.24098-12-ville.syrjala@linux.intel.com>
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

A couple of PLANE_WM bits were still using the hand
rolled (1<<N) form. Replace with REG_BIT().

v2: Rebase

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane_regs.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
index 5fcd5898af4f..e8d399592fd3 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
@@ -307,8 +307,8 @@
 #define _PLANE_WM_2(pipe)		_PIPE(pipe, _PLANE_WM_2_A_0, _PLANE_WM_2_B_0)
 #define _PLANE_WM_BASE(pipe, plane)	_PLANE(plane, _PLANE_WM_1(pipe), _PLANE_WM_2(pipe))
 #define PLANE_WM(pipe, plane, level)	_MMIO(_PLANE_WM_BASE(pipe, plane) + ((4) * (level)))
-#define   PLANE_WM_EN				(1 << 31)
-#define   PLANE_WM_IGNORE_LINES			(1 << 30)
+#define   PLANE_WM_EN				REG_BIT(31)
+#define   PLANE_WM_IGNORE_LINES			REG_BIT(30)
 #define   PLANE_WM_LINES_MASK			REG_GENMASK(26, 14)
 #define   PLANE_WM_BLOCKS_MASK			REG_GENMASK(11, 0)
 
-- 
2.43.2

