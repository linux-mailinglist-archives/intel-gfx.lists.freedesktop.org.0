Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB34735F2D9
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 13:51:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB0F66E935;
	Wed, 14 Apr 2021 11:51:10 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B3D06E934
 for <Intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 11:51:08 +0000 (UTC)
IronPort-SDR: tGKZKayeZ+5xfWbydcX/G4wefvE6XSDyxCEiFk2DqZ9BYnycN350hFRe9LBm4fsDXMCpmwdz2k
 GXQqyGZmyulw==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="174119587"
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="174119587"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:51:08 -0700
IronPort-SDR: R2XsGc56Q12jZWG/SMAV3e82iMXdHxXVOzDjGmiUDNmRSTMQ8zBNu6XIo64/OY5jjppI73D+77
 m+1B0d2NNXgQ==
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="521965282"
Received: from bdebhal-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.205.119])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:51:07 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 14 Apr 2021 12:50:26 +0100
Message-Id: <20210414115028.168504-27-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210414115028.168504-1-tvrtko.ursulin@linux.intel.com>
References: <20210414115028.168504-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 26/28] drm/i915: Use IS_GEN in intel_guc.c
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/intel_guc.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_guc.c b/drivers/gpu/drm/i915/intel_guc.c
index 21140ccd7a97..e67283947624 100644
--- a/drivers/gpu/drm/i915/intel_guc.c
+++ b/drivers/gpu/drm/i915/intel_guc.c
@@ -208,14 +208,10 @@ static u32 get_gt_type(struct drm_i915_private *dev_priv)
 
 static u32 get_core_family(struct drm_i915_private *dev_priv)
 {
-	u32 gen = INTEL_GEN(dev_priv);
-
-	switch (gen) {
-	case 9:
+	if (IS_GEN9(dev_priv)) {
 		return GUC_CORE_FAMILY_GEN9;
-
-	default:
-		MISSING_CASE(gen);
+	} else {
+		MISSING_CASE(INTEL_GEN(dev_priv));
 		return GUC_CORE_FAMILY_UNKNOWN;
 	}
 }
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
