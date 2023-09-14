Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 320F17A0E48
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 21:27:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 257E710E597;
	Thu, 14 Sep 2023 19:27:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF63210E588;
 Thu, 14 Sep 2023 19:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694719625; x=1726255625;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4Wd9hHneXkilU07UcBJJGhlVWs0tgvp+rvn2ju4lWHo=;
 b=FLGAj/kcRAkgQTg+QkGiZENZCeFpvwv1pB9wjpvGtD+LaJsZ5CqL5gnM
 H+IRSLz50B/vmDIyBp4ykI/YYUxkPHU9jqB3DXWAIB5Rwq16ltE0xRLaj
 cmGUwzAcKzyZsh43yZXlWzDtCV+Y1wREOMGle0zZvG6+5Qu5CEUTVcWnD
 EoXBaLJrLklpvrbqogA+sxniqYlL8uuRC5uXfNuN0n1X+bJG24uLiMTXW
 SZ+oqkLNKXhzBSm7P9XJ1QXbLiPoAv374simup7xDpMRxi57yMLE/Ej2V
 B73R1iSJOoH1FoFmWNtWqOZeBpBRGjU5FBiEQQ9LUdkdLMWHAsiTPZzj3 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="465421756"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="465421756"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 12:27:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="779790597"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="779790597"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 12:27:03 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Sep 2023 22:26:50 +0300
Message-Id: <20230914192659.757475-17-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230914192659.757475-1-imre.deak@intel.com>
References: <20230914192659.757475-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 16/25] drm/dp_mst: Swap the order of checking
 root vs. non-root port BW limitations
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

drm_dp_mst_atomic_check_mgr() should check for BW limitation starting
from sink ports continuing towards the root port, so that drivers can
use the @failing_port returned to resolve a BW overallocation in an
ideal way. For instance from streams A,B,C in a topology A,B going
through @failing_port and C not going through it, a BW overallocation of
A,B due to a limit of the port must be resolved first before considering
the limits of other ports closer to the root port. This way can avoid
reducing the BW of stream C unnecessarily due to a BW limit closer to the
root port.

Based on the above swap the order of the BW check for the root port and
the check for all the ports downstream of it (the latter going through
the topology already in the sink->root port direction).

Cc: Lyude Paul <lyude@redhat.com>
Cc: dri-devel@lists.freedesktop.org
Reviewed-by: Lyude Paul <lyude@redhat.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/display/drm_dp_mst_topology.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/display/drm_dp_mst_topology.c b/drivers/gpu/drm/display/drm_dp_mst_topology.c
index 3d93bc093c46c..f4b70ee3d715c 100644
--- a/drivers/gpu/drm/display/drm_dp_mst_topology.c
+++ b/drivers/gpu/drm/display/drm_dp_mst_topology.c
@@ -5479,9 +5479,13 @@ EXPORT_SYMBOL(drm_dp_mst_atomic_enable_dsc);
  *   - %-ENOSPC, if the new state is invalid, because of BW limitation
  *         @failing_port is set to:
  *         - The non-root port where a BW limit check failed
+ *           with all the ports downstream of @failing_port passing
+ *           the BW limit check.
  *           The returned port pointer is valid until at least
  *           one payload downstream of it exists.
  *         - %NULL if the BW limit check failed at the root port
+ *           with all the ports downstream of the root port passing
+ *           the BW limit check.
  *   - %-EINVAL, if the new state is invalid, because the root port has
  *     too many payloads.
  */
@@ -5497,17 +5501,16 @@ int drm_dp_mst_atomic_check_mgr(struct drm_atomic_state *state,
 	if (!mgr->mst_state)
 		return 0;
 
-	ret = drm_dp_mst_atomic_check_payload_alloc_limits(mgr, mst_state);
-	if (ret)
-		return ret;
-
 	mutex_lock(&mgr->lock);
 	ret = drm_dp_mst_atomic_check_mstb_bw_limit(mgr->mst_primary,
 						    mst_state,
 						    failing_port);
 	mutex_unlock(&mgr->lock);
 
-	return ret < 0 ? ret : 0;
+	if (ret < 0)
+		return ret;
+
+	return drm_dp_mst_atomic_check_payload_alloc_limits(mgr, mst_state);
 }
 EXPORT_SYMBOL(drm_dp_mst_atomic_check_mgr);
 
-- 
2.37.2

