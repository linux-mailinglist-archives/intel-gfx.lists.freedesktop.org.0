Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8607896D34
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 12:51:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 435121129CB;
	Wed,  3 Apr 2024 10:51:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QCSLAXwe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7547B11263F;
 Wed,  3 Apr 2024 10:51:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712141508; x=1743677508;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=E+/qmvmu7vA275hhKi/pscf3kXISOjYilu4tx04vdpY=;
 b=QCSLAXweS8YJ7T/6kX2rFU3Xako9IvxdMnHad8gxMFI6yjNlyIeU4ScW
 Lmk00pSpTSvpGYvdOHQZ9erQ3zkX0C1LGIT8pZapsKkc1+Dh8O9SbFky2
 TU/Chbqtwi4z5So08Ua7OZaXVa/uANfbIEn6e9Mz9CCv8i+RU4JZQHsG6
 XFu4v7P8CwerkH7qAN3XGQmtPvT+cQa2mV32UMyWuX45emFFEaZVJ0bag
 607b9ZBCrPHeX2EiADqexKiywNF/cfy3gr7ZrOGE/x9kRVQ7cAy5CvcRY
 2qNMNheFQtSMxNNyLmSAaXjiZg+Ksn/LORFDGgWTl33hOVG9eQVstYJ1f A==;
X-CSE-ConnectionGUID: T5aRc566RnC6rmW6/I+NOQ==
X-CSE-MsgGUID: kCTSgvKaR7G13BeGEZvirg==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="7212123"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7212123"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 03:51:22 -0700
X-CSE-ConnectionGUID: zu2l6m98QpGK16mpg0yL+Q==
X-CSE-MsgGUID: 1FYFA3w/SvuLxZ+v2boqAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18493342"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 03:51:20 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH 05/25] drm/i915/xe2: Skip CCS modifiers for Xe2 platforms
Date: Wed,  3 Apr 2024 16:21:03 +0530
Message-Id: <20240403105123.1327669-6-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240403105123.1327669-1-balasubramani.vivekanandan@intel.com>
References: <20240403105123.1327669-1-balasubramani.vivekanandan@intel.com>
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

