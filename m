Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 494C9A5E142
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Mar 2025 16:58:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B178110E79C;
	Wed, 12 Mar 2025 15:58:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OdYJPE+j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACBE810E79C
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Mar 2025 15:58:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741795085; x=1773331085;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Nr/po7nwl16Sz3/kWMlb/ATvHGMtSpq66RQE+t8sTEI=;
 b=OdYJPE+ju8OMQDBu+1O9oJXNAuQCILrQ3YhWLX2jNg/6iObpc9XFperr
 5x8DcBMGq+/q9hwAoMdV/f8aKx9eTD1+BP0r4qW3Li8DUUYT+0qWrSxMX
 sQPCar23nNSXmkGuQ9nQ0rM2Yc6P2y7DL7qdC01HRe+A6HeElDq1hfJ2F
 ZG5MxHqo26x10PUp/0oryMJG2yJoYv3rJw7iBqJqr0VyuLIv5/qgAFdvq
 mxTKXIaCf86h6CfH8kX4fAyjP+Boc4vicEesukvu3pTTi4hzqyY2TXIJ+
 kfsjIPEeC2AruBELvH/v/1gMAHKuyKlbrX2IsAXBsp3ehncfQjN0ibEDJ Q==;
X-CSE-ConnectionGUID: AY66DVVvTd+4KPFXUdcoHg==
X-CSE-MsgGUID: pw5WuMisTPeQ63dzW95Ckw==
X-IronPort-AV: E=McAfee;i="6700,10204,11371"; a="43063450"
X-IronPort-AV: E=Sophos;i="6.14,242,1736841600"; d="scan'208";a="43063450"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 08:58:04 -0700
X-CSE-ConnectionGUID: 1khZJGHfTHK5CPgIUAFHWA==
X-CSE-MsgGUID: 751HakjmTe2WgVy8CqqAnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,242,1736841600"; d="scan'208";a="121174060"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.23])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 08:58:03 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Zhenyu Wang <zhenyuw.linux@gmail.com>, Zhi Wang <zhi.wang.linux@gmail.com>,
 jani.nikula@intel.com,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH] drm/i915/gvt: use hardcoded reference clocks
Date: Wed, 12 Mar 2025 17:57:55 +0200
Message-Id: <20250312155755.2226140-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Usually I'd argue hardcoding values is the wrong thing to do, but in
this case, GVT looking deep into the guts of the DPLL manager for the
reference clocks is worse. This is done for BDW and BXT only, and there
shouldn't be any reason to try to be so dynamic about it.

This helps reduce the direct pokes at display guts from non-display
code.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gvt/handlers.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index 4efee6797873..5e08f4df172c 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -513,7 +513,7 @@ static u32 bdw_vgpu_get_dp_bitrate(struct intel_vgpu *vgpu, enum port port)
 
 		switch (wrpll_ctl & WRPLL_REF_MASK) {
 		case WRPLL_REF_PCH_SSC:
-			refclk = vgpu->gvt->gt->i915->display.dpll.ref_clks.ssc;
+			refclk = 135000;
 			break;
 		case WRPLL_REF_LCPLL:
 			refclk = 2700000;
@@ -544,7 +544,7 @@ static u32 bdw_vgpu_get_dp_bitrate(struct intel_vgpu *vgpu, enum port port)
 static u32 bxt_vgpu_get_dp_bitrate(struct intel_vgpu *vgpu, enum port port)
 {
 	u32 dp_br = 0;
-	int refclk = vgpu->gvt->gt->i915->display.dpll.ref_clks.nssc;
+	int refclk = 100000;
 	enum dpio_phy phy = DPIO_PHY0;
 	enum dpio_channel ch = DPIO_CH0;
 	struct dpll clock = {};
-- 
2.39.5

