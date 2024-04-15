Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05AE68A4A04
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 10:14:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9239A1122D5;
	Mon, 15 Apr 2024 08:14:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WWw1X2hT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B6B510E85E;
 Mon, 15 Apr 2024 08:14:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713168850; x=1744704850;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QtcZg1wXWwV5cefokVscAV07WQWx390yUocScmg2PJk=;
 b=WWw1X2hTfZFPuiZCOK1f4ZsCNz87ORAdVunNMaM90ou3/i3fNxXyh2vf
 6tek7tLH//T1pCMBV+hMonuCd3xYEYZQ1ty34nmyuMM1uzOW8i8sqbaRu
 E8kG8NsmSVYzivd5XhjgL2CE8R8rqrrbsXRqdnWQ57FMNNVK35VbsRovw
 qr3Nh0+0KgOX1Pm7OBbR5IxN/Y96SWDFMVsBA3Q7hKhpdj0s3WGeyddQo
 k+7639bRnpZ30QDxUy93YixfJ1mRM/FNY3yq0wzQesA872GPRGwXdKwS8
 w0lqqDN4xlsA6r8RVggYRUoq27dJRMKJOO2DoMz3VAill37mX3GxbwwXo Q==;
X-CSE-ConnectionGUID: Nqihto1fQC6VllMsenBEkw==
X-CSE-MsgGUID: ekeRogo/SQa+a6li9fA9FA==
X-IronPort-AV: E=McAfee;i="6600,9927,11044"; a="9096375"
X-IronPort-AV: E=Sophos;i="6.07,202,1708416000"; 
   d="scan'208";a="9096375"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 01:14:09 -0700
X-CSE-ConnectionGUID: ++sw67pkRkqBlAvd4NXojA==
X-CSE-MsgGUID: IEaQVlWFRb+Dae9+8ZMp7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,202,1708416000"; d="scan'208";a="26400258"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 01:14:08 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH v3 06/21] drm/i915/bmg: Extend DG2 tc check to future
Date: Mon, 15 Apr 2024 13:44:08 +0530
Message-Id: <20240415081423.495834-7-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240415081423.495834-1-balasubramani.vivekanandan@intel.com>
References: <20240415081423.495834-1-balasubramani.vivekanandan@intel.com>
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

