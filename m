Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C057378C3
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jun 2023 03:37:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9A5010E39F;
	Wed, 21 Jun 2023 01:37:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA68510E39F
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jun 2023 01:37:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687311433; x=1718847433;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XsaqNBPuYZo0sJbiQVnJMoaNzCM8UI56TMFhyh1TfAw=;
 b=H653ZWEsP/f6mg+CmLBF4zjbAZIy06EXf7iMOZDfNW5DbJt/KTaQqaee
 6i9TPLok0c4I9ESzUDUOT2456BWvIBL8oG6GwSrEBzH5lYEwzvO4modce
 mhsv+8+a8FUqZ5c70V1c1k+qY2a3YjN17oXTyJQTaJH1zZy95nXutYpyS
 b/GYEuKscYEinpSOiw8FbH4u78mOIeHw13axEpiv9iI/1NUOWLoPw5Dtu
 IZETFEY0WwAPQI+fnJjkZYnZS8ONpD5LCJE4UR06LoU4heRF1fHC94Duo
 nFQ3nkVRSv85DHvT/cPthDX9X6GMaIi+xlexFpKE1dzO5oJAOyAru/Jhd g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="362574568"
X-IronPort-AV: E=Sophos;i="6.00,258,1681196400"; d="scan'208";a="362574568"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 18:37:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="838435084"
X-IronPort-AV: E=Sophos;i="6.00,258,1681196400"; d="scan'208";a="838435084"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga004.jf.intel.com with ESMTP; 20 Jun 2023 18:37:10 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Jun 2023 07:05:24 +0530
Message-Id: <20230621013524.1994538-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/hdcp: Add a debug statment at hcdp2
 capability check
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

Add a debug statement at hdcp2 capability check which indicates if
GSC CS is causing hdcp2 incapability

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 5ed450111f77..73fe84fc9bf5 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -177,8 +177,11 @@ bool intel_hdcp2_capable(struct intel_connector *connector)
 		struct intel_gt *gt = i915->media_gt;
 		struct intel_gsc_uc *gsc = gt ? &gt->uc.gsc : NULL;
 
-		if (!gsc || !intel_uc_fw_is_running(&gsc->fw))
+		if (!gsc || !intel_uc_fw_is_running(&gsc->fw)) {
+			drm_dbg_kms(&i915->drm,
+				    "GSC components required for HDCP2.2 are not ready\n");
 			return false;
+		}
 	}
 
 	/* MEI/GSC interface is solid depending on which is used */
-- 
2.25.1

