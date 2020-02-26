Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B541709C5
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 21:35:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63A856EBC1;
	Wed, 26 Feb 2020 20:35:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A2B66EBBB
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 20:35:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 12:35:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,489,1574150400"; d="scan'208";a="238154938"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 26 Feb 2020 12:35:31 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Feb 2020 22:34:43 +0200
Message-Id: <20200226203455.23032-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.23.1
In-Reply-To: <20200226203455.23032-1-imre.deak@intel.com>
References: <20200226203455.23032-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/13] drm/i915: Fix bounds check in
 intel_get_shared_dpll_id()
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

Fix an off-by-one error in the upper-bound check and while at it clear
up a bit the function.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index e5bfe5245276..6cf291754390 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -103,11 +103,14 @@ enum intel_dpll_id
 intel_get_shared_dpll_id(struct drm_i915_private *dev_priv,
 			 struct intel_shared_dpll *pll)
 {
-	if (drm_WARN_ON(&dev_priv->drm, pll < dev_priv->shared_dplls ||
-			pll > &dev_priv->shared_dplls[dev_priv->num_shared_dpll]))
+	long pll_idx = pll - dev_priv->shared_dplls;
+
+	if (drm_WARN_ON(&dev_priv->drm,
+			pll_idx < 0 ||
+			pll_idx >= dev_priv->num_shared_dpll))
 		return -1;
 
-	return (enum intel_dpll_id) (pll - dev_priv->shared_dplls);
+	return pll_idx;
 }
 
 /* For ILK+ */
-- 
2.23.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
