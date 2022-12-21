Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51338653903
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Dec 2022 23:51:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C634110E0F7;
	Wed, 21 Dec 2022 22:51:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8509010E135
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Dec 2022 22:51:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671663109; x=1703199109;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=/YKkW1l4U7eduipxOO4rUMd2XB1phFWki053IcvBnSA=;
 b=bya6A0oURzQqKyiOynvpXl03YCdo7fXnvXokOzGTAwpB+0UG8dF+pnPH
 PNoxtL47MKYh16J76Dac8gCIPTdkNli0f3uiC708jHWV3uJK2ocS70K2K
 R2d5xNXO9YteK9DO4Mp/68v8i8bTZ/HLcfl9qKYs+JYdkRHSepu4vO/3c
 3iP01IpDzTlH7/tQuKaBh3Ngvmzj+loCgh+Aqgjw7AlFrdW9wFMUrD1w0
 g6IA57e5qR4zT7dgZ+IhIO+fDMt3tbMvFshCCT3TTb2dmhpJ9H8uftfJ9
 01sW+BeVRikauMstXNSJUcBLiT3SpDP0mILJV1rvwPH7osJ3xvEh5YKcf Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="300328210"
X-IronPort-AV: E=Sophos;i="5.96,263,1665471600"; d="scan'208";a="300328210"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 14:51:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="682183970"
X-IronPort-AV: E=Sophos;i="5.96,263,1665471600"; d="scan'208";a="682183970"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga008.jf.intel.com with ESMTP; 21 Dec 2022 14:51:48 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Dec 2022 14:54:34 -0800
Message-Id: <20221221225439.2714575-3-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221221225439.2714575-1-alan.previn.teres.alexis@intel.com>
References: <20221129004832.3735764-1-alan.previn.teres.alexis@intel.com>
 <20221221225439.2714575-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/7] drm/i915/pxp: add device link between
 i915 and mei_pxp
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

From: Alexander Usyskin <alexander.usyskin@intel.com>

Add device link with i915 as consumer and mei_pxp as supplier
to ensure proper ordering of power flows.

V2: condition on absence of heci_pxp to filter out DG

Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
index d50354bfb993..bef6d7f8ac55 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
@@ -127,6 +127,10 @@ static int i915_pxp_tee_component_bind(struct device *i915_kdev,
 	intel_wakeref_t wakeref;
 	int ret = 0;
 
+	if (!HAS_HECI_PXP(i915) &&
+	    drm_WARN_ON(&i915->drm, !device_link_add(i915_kdev, tee_kdev, DL_FLAG_STATELESS)))
+		return -ENOMEM;
+
 	mutex_lock(&pxp->tee_mutex);
 	pxp->pxp_component = data;
 	pxp->pxp_component->tee_dev = tee_kdev;
@@ -169,6 +173,9 @@ static void i915_pxp_tee_component_unbind(struct device *i915_kdev,
 	mutex_lock(&pxp->tee_mutex);
 	pxp->pxp_component = NULL;
 	mutex_unlock(&pxp->tee_mutex);
+
+	if (!HAS_HECI_PXP(i915))
+		device_link_remove(i915_kdev, tee_kdev);
 }
 
 static const struct component_ops i915_pxp_tee_component_ops = {
-- 
2.34.1

