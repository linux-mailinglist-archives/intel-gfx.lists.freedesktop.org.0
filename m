Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F91C785E3C
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 19:10:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73B8510E4B2;
	Wed, 23 Aug 2023 17:09:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DBA310E481;
 Wed, 23 Aug 2023 17:09:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692810559; x=1724346559;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gSMPS+TX0ASRu9cql7A2WkXS4xSWEOSwd+RU9jp/hYE=;
 b=ThRzT4RkHngHDjfpGnLaqTZhlMBOEzdI4fgC2/aaPrDCALB/X+wQumAU
 AKr/wA9OEYI1Z37UyEDGlrZR/c4FgzBi8DWTI6Sjkt1X7puxNU2nT/eEn
 tLZTB9BKcc8e8qNJnku/uFIkGt1td3ooP2pDWN/2ns0h6diyMs1jIYNu/
 ++K9j+QLHERGzqzKhkcLWp/esW4L6tj0Ikj0Jkvwbo+Zu/38loJHIwxZr
 egqyXWUcr/mEYi5xEI/Hi9qKE+0jKO4hzZx2ml8g4o2cvZez8oC4twR2Z
 PS7LzFWHL/imJe+LrGR1J0jKWLJEL1hkOf+8xwbGlNiLtkz69NlKjMEM6 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="438147485"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="438147485"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="802204819"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="802204819"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:18 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed, 23 Aug 2023 10:07:17 -0700
Message-Id: <20230823170740.1180212-20-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230823170740.1180212-1-lucas.demarchi@intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 19/42] drm/i915/xe2lpd: Don't try to program
 PLANE_AUX_DIST
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Matt Roper <matthew.d.roper@intel.com>

Since Xe2LPD technically has FlatCCS, it doesn't have AuxCCS registers
like PLANE_AUX_DIST.  However we currently have HAS_FLAT_CCS hardcoded
to 0 since compression isn't ready; we need to make sure this doesn't
cause the display code to go back to trying to write this register.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 3c212d8401c8..4dfd8b627147 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1254,7 +1254,7 @@ icl_plane_update_noarm(struct intel_plane *plane,
 	}
 
 	/* FLAT CCS doesn't need to program AUX_DIST */
-	if (!HAS_FLAT_CCS(dev_priv))
+	if (!HAS_FLAT_CCS(dev_priv) && DISPLAY_VER(dev_priv) < 20)
 		intel_de_write_fw(dev_priv, PLANE_AUX_DIST(pipe, plane_id),
 				  skl_plane_aux_dist(plane_state, color_plane));
 
-- 
2.40.1

