Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54FFC896E10
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 13:23:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C78BE112A17;
	Wed,  3 Apr 2024 11:23:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BU/ws40o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21E0B112A17;
 Wed,  3 Apr 2024 11:23:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712143385; x=1743679385;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=k5vVrDHOGXGIX6TqFn0d1Wmuo+zGSGpmn15xT/TVfYI=;
 b=BU/ws40oEedocpA7aBngUrHCzHuRMARlwx6xX/cEDvUUgnPCtIJJ14vZ
 v+TC7wrxQ8Fv7FOrttaSyx4UH/p9SpwEUX4nre3mCYTLHJmqPzZYN5K8+
 4TWgF5NfyzFd02OYfyr435Dn/LB039siU7RnWbVS+WEfABXT9/J4/MJF0
 h67KMLCK99ubCUEgi3v6kv9LcVM3GgHKo00iAQXTb21+LExmoqpXatZ+B
 ERt5PDkNjbwHi0PoeBIqdvrn9aHj9liwGf6CTFQ6Mm//YgkYYWokMvt/y
 /uHadiXqHvWLkkdtF4oXPooc4HeQsXVhWzoNxqBpdMKaTLun1c5QA9QNe g==;
X-CSE-ConnectionGUID: t+27z/MYQ2WXO8/NZ3G8Pw==
X-CSE-MsgGUID: GeitHBAqTB2DJoMv+TKpvg==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="24824061"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="24824061"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 04:23:04 -0700
X-CSE-ConnectionGUID: c1WkxxQOSourjk7j6CDutg==
X-CSE-MsgGUID: mnWicduuTy28gZnPQ9FL8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18358512"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 04:23:02 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH v2 08/25] drm/i915/bmg: Extend DG2 tc check to future
Date: Wed,  3 Apr 2024 16:52:36 +0530
Message-Id: <20240403112253.1432390-9-balasubramani.vivekanandan@intel.com>
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

From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

Discrete cards use the Port numbers TC1-4 for the offsets. The regular
flow for type-c subsystem port initialization can be skipped. This check
is present in DG2. Extend this to future discrete products.

Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 614e60420a29..aed25890b6f5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1861,11 +1861,10 @@ bool intel_phy_is_combo(struct drm_i915_private *dev_priv, enum phy phy)
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

