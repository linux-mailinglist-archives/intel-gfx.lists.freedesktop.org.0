Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D79611CD71
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 13:50:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C8F46ED37;
	Thu, 12 Dec 2019 12:50:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A42C66ED3C
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 12:50:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 04:43:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,305,1571727600"; d="scan'208";a="265205349"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com ([10.237.72.89])
 by FMSMGA003.fm.intel.com with ESMTP; 12 Dec 2019 04:43:11 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Dec 2019 14:40:15 +0200
Message-Id: <20191212124015.24077-4-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191212124015.24077-1-stanislav.lisovskiy@intel.com>
References: <20191212124015.24077-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] [PATCH v12 3/3] drm/i915: Enable SAGV support for Gen12
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Flip the switch and enable SAGV support
for Gen12 also.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index c3a8b3a8afb0..cf323e0781a8 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -3633,10 +3633,6 @@ static bool skl_needs_memory_bw_wa(struct drm_i915_private *dev_priv)
 bool
 intel_has_sagv(struct drm_i915_private *dev_priv)
 {
-	/* HACK! */
-	if (IS_GEN(dev_priv, 12))
-		return false;
-
 	return (IS_GEN9_BC(dev_priv) || INTEL_GEN(dev_priv) >= 10) &&
 		dev_priv->sagv_status != I915_SAGV_NOT_CONTROLLED;
 }
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
