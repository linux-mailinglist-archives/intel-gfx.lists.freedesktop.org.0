Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D96C77378CE
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jun 2023 03:43:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CC1610E3A1;
	Wed, 21 Jun 2023 01:43:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5276A10E39F
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jun 2023 01:43:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687311812; x=1718847812;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=T00z1QrOxHDJqLzoWM6Qn1ltfhqP7DvN3nwuk9YCUww=;
 b=MY1O3fdaCw8JtFFJhYxFVz8e1obillPtvA0Mwwt915Z0/FS3I/ty3JcV
 le8lYnTRoidTYrY+yUmiuAoiCLcO0KpxIo4RIYdHGfbywBL6ppj14Y9P2
 R1LpFQSvlEfXbFgO9zBl4irN/mh6y7fnskwcC7pJ2uSAW+vLuatJc6uW9
 Ynzj8IfVfPxBq2MADEu5a5DiTy6vIsrrMNXpBD7vCso7N9ty3mbv92I1r
 NkEjcqaroRBfgMsLLi7ezlTFA9CIRTW4fS64Bj+X8zeKq4N0TCEf+ImUn
 5tkVSQx2f9LDTP2nSoxMUTS2gTqOIBznncVAEh+pvCDK5Q0s1GfkwOzhi A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="446408474"
X-IronPort-AV: E=Sophos;i="6.00,258,1681196400"; d="scan'208";a="446408474"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 18:43:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="714259509"
X-IronPort-AV: E=Sophos;i="6.00,258,1681196400"; d="scan'208";a="714259509"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga002.jf.intel.com with ESMTP; 20 Jun 2023 18:43:29 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Jun 2023 07:11:56 +0530
Message-Id: <20230621014156.1994797-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230621013524.1994538-1-suraj.kandpal@intel.com>
References: <20230621013524.1994538-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/hdcp: Add a debug statment at hdcp2
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

--v2
-correcting typo in commit header

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

