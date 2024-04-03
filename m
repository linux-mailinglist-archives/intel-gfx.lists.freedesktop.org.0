Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84289896D38
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 12:52:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D269A112990;
	Wed,  3 Apr 2024 10:52:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OrmeOrN2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74E8B11263E;
 Wed,  3 Apr 2024 10:52:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712141524; x=1743677524;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=k5vVrDHOGXGIX6TqFn0d1Wmuo+zGSGpmn15xT/TVfYI=;
 b=OrmeOrN2tI80BSL3+qsQargP5jcvGxGv5pC/xG8STX3tfZMQ309WCRwj
 7obLFXWVaHAQ51+bUu5cEN4g62wkiUOfpcmKrkVtKNxZ5BvKNT6+ebkc0
 6dvS9afL+a65agz35yakJ/nfZ2kDbCP2KT+7hst1jabeC+Ej5kL37X4jZ
 rKoFdgGOHpOEJPbKui4unMhK/GrRGZqrzo4W0soJ7dLauM0jkmgUhkZ9Q
 V9XwTbIj8JFbwQ2fPkAE5Z02n6FXQd6/Ss9580IgcFBFpBUdW5rCcmMxs
 98nZ5QPDkBaAyeEumE6lTG7ON8PZn2rAYLrHgeMKujV2cSa7agqB3Ywe5 w==;
X-CSE-ConnectionGUID: Rlu1CagiTROsyiUHCkNPEQ==
X-CSE-MsgGUID: PyycgKGERf62J7RQXZUiTg==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="7212141"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7212141"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 03:51:29 -0700
X-CSE-ConnectionGUID: N5eEYlFYSgix8SG3+VQLiA==
X-CSE-MsgGUID: wGIJpg06TmWRkezM9os1Wg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18493360"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 03:51:27 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH 08/25] drm/i915/bmg: Extend DG2 tc check to future
Date: Wed,  3 Apr 2024 16:21:06 +0530
Message-Id: <20240403105123.1327669-9-balasubramani.vivekanandan@intel.com>
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

