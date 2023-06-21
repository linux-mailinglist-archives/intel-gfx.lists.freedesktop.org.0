Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9279F737DE2
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jun 2023 10:56:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E313510E419;
	Wed, 21 Jun 2023 08:56:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E94F810E419
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jun 2023 08:56:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687337791; x=1718873791;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rJ7LuDpvNZi7NOlY1cnUpH96RLU+aneZ/AZ/W4hid7w=;
 b=GconQuX7JQwG3aHYsB00weVrArLNXNQaQilqVHQ1P8Qkr2dzG4cbAb2/
 FlLJ1QO8OhAmTeFoLn/IBORHx3jhD3qQhxINkRi7BwsUjsAPgwckYS6ae
 4uTTdXTrcGa7ZHJBm83LkYJtX4qQ5op/rSuf1owcksS03SPQOqxgUB8kt
 SsiJ80JJmH4ca6cB7hlo4SE+wtkG3aEkbtKA/Sro7BmQLabve1vwTf1I4
 IMGMOmcshnA58RpG29fNN+3e/PW5C2PdQijTpkuhWUUaXGv2hQ6+KKNTn
 LlXbUh16FP5y9dN7Djdo+iAQgMaNToBRIzGTQytlTbIBJyfukbdZ2w8gC A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="339731765"
X-IronPort-AV: E=Sophos;i="6.00,259,1681196400"; d="scan'208";a="339731765"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 01:56:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="784399339"
X-IronPort-AV: E=Sophos;i="6.00,259,1681196400"; d="scan'208";a="784399339"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga004.fm.intel.com with ESMTP; 21 Jun 2023 01:56:29 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Jun 2023 14:24:53 +0530
Message-Id: <20230621085453.1996166-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230621014156.1994797-1-suraj.kandpal@intel.com>
References: <20230621014156.1994797-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/i915/hdcp: Add a debug statement at
 hdcp2 capability check
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
-correcttypo in commit header

--v3
-correct the other typo in commit header [Jani]

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

