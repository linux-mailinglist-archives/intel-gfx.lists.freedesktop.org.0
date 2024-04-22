Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C8618AC456
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 08:40:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D60451127F3;
	Mon, 22 Apr 2024 06:40:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aDsa67D2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51C411127EF;
 Mon, 22 Apr 2024 06:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713768011; x=1745304011;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QtcZg1wXWwV5cefokVscAV07WQWx390yUocScmg2PJk=;
 b=aDsa67D2m0L76pJLV4Pmg2y3Ri3N+ymvSH+Wi71NIt/6ZAze62PPcFFx
 LXFCjCzaN5vKogUlWnjLPFLzuL0HUDUi3i6Dl2nUNP6Al1OBd7rpONSxR
 kkVeH+qRpfxqYiddSYYFVx0cAiJIIP9Z2eW/9OkzrBakMQV8zTjtvj8o1
 2rL1NDUGTNQq3FCCvI7SY2EK38qfd1tOVf9fUayosCu3ck2mcvQOp1MBS
 VhLhQCzIsDgTDaK+Zp1Kpkq2iItGLNRk2+TVgtwtF42sXphSgWMStXdw6
 EQlq2tzKV4dkIl0BFVploqnaH8W8DlNMtKC+ofUB2GwR39h9KSiaaG5Fh A==;
X-CSE-ConnectionGUID: 7BrE4M2IRWaFDB5k/0lCGQ==
X-CSE-MsgGUID: 0mhc/cRjRkKBOKU8UWSGXg==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="9208540"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; 
   d="scan'208";a="9208540"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2024 23:40:11 -0700
X-CSE-ConnectionGUID: XuAq7UsYQPuUE0tq1XXL5A==
X-CSE-MsgGUID: OEqb/tfXR2idKKsUgtndEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="23896377"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2024 23:40:09 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH v4 04/19] drm/i915/bmg: Extend DG2 tc check to future
Date: Mon, 22 Apr 2024 12:10:23 +0530
Message-Id: <20240422064038.1451579-5-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240422064038.1451579-1-balasubramani.vivekanandan@intel.com>
References: <20240422064038.1451579-1-balasubramani.vivekanandan@intel.com>
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

From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

Discrete cards use the Port numbers TC1-4 for the offsets. The regular
flow for type-c subsystem port initialization can be skipped. This check
is present in DG2. Extend this to future discrete products.

Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a92b67adee9c..67697d9a559c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1894,11 +1894,10 @@ bool intel_phy_is_combo(struct drm_i915_private *dev_priv, enum phy phy)
 bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
 {
 	/*
-	 * DG2's "TC1", although TC-capable output, doesn't share the same flow
-	 * as other platforms on the display engine side and rather rely on the
-	 * SNPS PHY, that is programmed separately
+	 * Discrete GPU phy's are not attached to FIA's to support TC
+	 * subsystem Legacy or non-legacy, and only support native DP/HDMI
 	 */
-	if (IS_DG2(dev_priv))
+	if (IS_DGFX(dev_priv))
 		return false;
 
 	if (DISPLAY_VER(dev_priv) >= 13)
-- 
2.25.1

