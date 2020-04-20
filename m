Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D1841B0735
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 13:17:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A5DA6E51A;
	Mon, 20 Apr 2020 11:17:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B3C56E51B
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2020 11:17:51 +0000 (UTC)
IronPort-SDR: UP+2m9lGKm4FkHY7m9USzfSp/5AkdpthSxGz3JZQ8uPZGOgDiM2HVWQkV2WRRXqrMjEZ3gWqtZ
 hqG4j5CD+ClQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2020 04:17:50 -0700
IronPort-SDR: 4rGhTM3en7FBJ9vzcOsYolY2JBRo9Dhqfae5QMFzB0fPtiQ7M8eKEHT+Sxrb1uy0frNZl2CAIU
 xF2eJ/ZMq+fA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,406,1580803200"; d="scan'208";a="290053405"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by fmsmga002.fm.intel.com with ESMTP; 20 Apr 2020 04:17:49 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Apr 2020 14:14:16 +0300
Message-Id: <20200420111416.23550-9-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200420111416.23550-1-stanislav.lisovskiy@intel.com>
References: <20200420111416.23550-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v25 8/8] drm/i915: Enable SAGV support for Gen12
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
Cc: jani.nikula@intel.com
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
index e4aef90c7364..75991467a375 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -3638,10 +3638,6 @@ static bool skl_needs_memory_bw_wa(struct drm_i915_private *dev_priv)
 static bool
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
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
