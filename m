Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 99ED1415307
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Sep 2021 23:47:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE1BB6E051;
	Wed, 22 Sep 2021 21:47:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98B086E051
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Sep 2021 21:47:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10115"; a="203206928"
X-IronPort-AV: E=Sophos;i="5.85,315,1624345200"; d="scan'208";a="203206928"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 14:47:08 -0700
X-IronPort-AV: E=Sophos;i="5.85,315,1624345200"; d="scan'208";a="435593150"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.60])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 14:47:07 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>,
 Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Wed, 22 Sep 2021 14:52:40 -0700
Message-Id: <20210922215242.66683-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH CI 1/3] drm/i915/display/dmc: Set
 DC_STATE_DEBUG_MASK_CORES after firmware load
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

Specification asks for DC_STATE_DEBUG_MASK_CORES to be set for all
platforms that supports DMC, not only for geminilake and broxton.

While at is also taking the oportunity to simply the code.

BSpec: 7402
BSpec: 49436
Reviewed-by: Imre Deak <imre.deak@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 16 +++-------------
 1 file changed, 3 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index b0268552b2863..2dc9d632969db 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -255,20 +255,10 @@ intel_get_stepping_info(struct drm_i915_private *i915,
 
 static void gen9_set_dc_state_debugmask(struct drm_i915_private *dev_priv)
 {
-	u32 val, mask;
-
-	mask = DC_STATE_DEBUG_MASK_MEMORY_UP;
-
-	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
-		mask |= DC_STATE_DEBUG_MASK_CORES;
-
 	/* The below bit doesn't need to be cleared ever afterwards */
-	val = intel_de_read(dev_priv, DC_STATE_DEBUG);
-	if ((val & mask) != mask) {
-		val |= mask;
-		intel_de_write(dev_priv, DC_STATE_DEBUG, val);
-		intel_de_posting_read(dev_priv, DC_STATE_DEBUG);
-	}
+	intel_de_rmw(dev_priv, DC_STATE_DEBUG, 0,
+		     DC_STATE_DEBUG_MASK_CORES | DC_STATE_DEBUG_MASK_MEMORY_UP);
+	intel_de_posting_read(dev_priv, DC_STATE_DEBUG);
 }
 
 /**
-- 
2.33.0

