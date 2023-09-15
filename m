Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA407A2514
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 19:47:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C18110E66A;
	Fri, 15 Sep 2023 17:46:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6078110E663;
 Fri, 15 Sep 2023 17:46:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694800011; x=1726336011;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HOgBTaV7zi6zrkpmZKPw5fCd3x2A45hzO9RMCtdD+qA=;
 b=ffhQudmoq40eHmr2+WivtGYnfxjRCcQ2oHdzqKJQRfP7li93kmxqUCCV
 FnyR7pNwbVbGOXQyImMoxd429IJJvMQfj1aLy/q2Yx49yRiqOQmSLOLC9
 gXl+dw+r5fnLFflZb8G/Vml6SHMxjg6+E5APLlw0Bjj6YJ4h33E4dlJyb
 65vZoFKmeS6p50ovqn47Kao3tY+oT3TuHk3zK8WS4YiUxSON/FPEh8ib8
 KZ57KDiFarrAX0tjGspZNeLtixFb7OMTouKCJ93Qy/ufpim+QvQukN3GL
 Ps57AMG3WIwMMAI4L2VOxkLDHau75VINGO1Sv9fYvG2K0F2PtdIA44I+C Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="445779267"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="445779267"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 10:46:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="868818252"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="868818252"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 10:46:49 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Sep 2023 10:46:29 -0700
Message-Id: <20230915174651.1928176-9-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230915174651.1928176-1-lucas.demarchi@intel.com>
References: <20230915174651.1928176-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 08/30] drm/i915/xe2lpd: Don't try to program
 PLANE_AUX_DIST
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Matt Roper <matthew.d.roper@intel.com>

Since Xe2LPD technically has FlatCCS, it doesn't have AuxCCS registers
like PLANE_AUX_DIST.  However we currently have HAS_FLAT_CCS hardcoded
to 0 since compression isn't ready; we need to make sure this doesn't
cause the display code to go back to trying to write this register.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 007a0bcb3f93..2a30b8aa2994 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1247,7 +1247,7 @@ icl_plane_update_noarm(struct intel_plane *plane,
 	}
 
 	/* FLAT CCS doesn't need to program AUX_DIST */
-	if (!HAS_FLAT_CCS(dev_priv))
+	if (!HAS_FLAT_CCS(dev_priv) && DISPLAY_VER(dev_priv) < 20)
 		intel_de_write_fw(dev_priv, PLANE_AUX_DIST(pipe, plane_id),
 				  skl_plane_aux_dist(plane_state, color_plane));
 
-- 
2.40.1

