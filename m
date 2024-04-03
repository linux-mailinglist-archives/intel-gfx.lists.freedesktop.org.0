Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4302896E0D
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 13:22:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5EAE112A13;
	Wed,  3 Apr 2024 11:22:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WfiAtth1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 128EA112A13;
 Wed,  3 Apr 2024 11:22:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712143378; x=1743679378;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=E+/qmvmu7vA275hhKi/pscf3kXISOjYilu4tx04vdpY=;
 b=WfiAtth1265fSBAKbCxv7Zpee8ImzS71rxIwvPN/g6+OON6SxA8/7hE0
 WKdszQuNzzQmYJiodxZg+srX4GaINxrvOEzyY8EGX2uzIJ59fydpQXi+3
 tGxxB6bYFVylN3pKhwCcUmQjYll7qKN+mq21crnxpe7cnusvIdwTQfxgT
 lbg9WhiCeTtSDsQVL+oXY3X58IaC7vYGpFUUJkzm3Dh5mJpdOaPusjTd6
 2i6mHVRfkaGDqIkNZ2mLijv/OkqWLw45HF5a1+IQ+xwKQ6OIdZrbGwUfR
 1KTrihuJu4jIR4PZ04KZrBweG4wVAT9XagLzDlIuOpZGTmHBB2e+dcX4m Q==;
X-CSE-ConnectionGUID: bSazC3ykSC+VOwgereLgQw==
X-CSE-MsgGUID: t5aSzWgsT7Cqk+QQxXiPYw==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="24824023"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="24824023"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 04:22:57 -0700
X-CSE-ConnectionGUID: h6X1KBeaSlC6lqg3X5qwKw==
X-CSE-MsgGUID: vu+vF8UBS+aoH0SzdqRN2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18358503"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 04:22:56 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH v2 05/25] drm/i915/xe2: Skip CCS modifiers for Xe2 platforms
Date: Wed,  3 Apr 2024 16:52:33 +0530
Message-Id: <20240403112253.1432390-6-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
References: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
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

Xe2 platforms doesn't support Aux CCS and the Flat CCS is enabled
through PAT. No CCS modifiers required for Xe2 platforms.

Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 3ea6470d6d92..923e97c3aa6c 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -431,9 +431,17 @@ static bool plane_has_modifier(struct drm_i915_private *i915,
 	 * Separate AuxCCS and Flat CCS modifiers to be run only on platforms
 	 * where supported.
 	 */
-	if (intel_fb_is_ccs_modifier(md->modifier) &&
-	    HAS_FLAT_CCS(i915) != !md->ccs.packed_aux_planes)
-		return false;
+	if (intel_fb_is_ccs_modifier(md->modifier)) {
+		/*
+		 * No CCS modifiers available on Xe2 platforms as they don't
+		 * support Aux CCS and the Flat CCS is enabled via PAT
+		 */
+		if ((DISPLAY_VER(i915) >= 20) || IS_BATTLEMAGE(i915))
+			return false;
+
+		if (HAS_FLAT_CCS(i915) != !md->ccs.packed_aux_planes)
+			return false;
+	}
 
 	return true;
 }
-- 
2.25.1

