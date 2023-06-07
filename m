Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C3B726008
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jun 2023 14:49:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5662E10E04E;
	Wed,  7 Jun 2023 12:49:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 013FF10E04E
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Jun 2023 12:49:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686142184; x=1717678184;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KUoTXoHoh7M7skLRnCxX1wUm6gMW+7x9gy1lHX0cOlI=;
 b=mWKgXSgxogVrcuW2doyQNJW+LJOVxY8r9W5oTo/cgItm70HIMebEdbcp
 xX3e8uSiBH4bkj5duhWYr2baH+3DPSIk9oxC7G+wu+Pnop6GBEclXeBDu
 b1Om8x+cZC9XB1AJx39TOaJ7Szno4ANnV0pq4frRcLJNc1Isgv/povUwU
 /BkzZrJQii3ePA6rrErt0qfSUm8XDVsdba/ejJQrhr42XuYU+zDj7GLlN
 yDm2dRBb0D1k0Uot3t2qHK/Z6es7FJ+72nqino+APCDSFjFSuZiQNTcuI
 so87WNeIkrVguBhCn5o5mEn+wp/XFQx7TOqaECYE4qhajt8mzwzS9sv1z Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="385293909"
X-IronPort-AV: E=Sophos;i="6.00,224,1681196400"; d="scan'208";a="385293909"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 05:49:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="742673965"
X-IronPort-AV: E=Sophos;i="6.00,224,1681196400"; d="scan'208";a="742673965"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga001.jf.intel.com with ESMTP; 07 Jun 2023 05:49:41 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Jun 2023 15:49:41 +0300
Message-Id: <20230607124941.19016-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/mst: Make sure all resources are freed
 for MST topology manager before destroy
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In some of the CI failures we have see a race condition, when we were getting
continuous hpd pulses, forcing DP MST topology manager to try handling them,
however if this is combined with module reload that might cause it
to try destroying the already locked mutex, also some workqueue might attempt
to use already freed encoder resources, because
drm_dp_mst_topology_mgr_destroy doesn't check if mutex is still locked(triggers
WARN) and flushes only one drm_dp_mst_link_probe_work queue, while others, like
drm_dp_mst_up_req_work might be running at the moment, especially in case if
due to some other sw/hw bug, we are constantly getting hpd pulses from MST device.
Best way would be to modify drm_dp_mst_topology_mgr_destroy function itself, however
as it might take way more time, for now lets try to call drm_dp_mst_topology_mgr_suspend
first, which seems to do all the required actions.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 3ba4a2fef98a..9c587b40cf42 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1298,6 +1298,7 @@ intel_dp_mst_encoder_cleanup(struct intel_digital_port *dig_port)
 	if (!intel_dp_mst_source_support(intel_dp))
 		return;
 
+	drm_dp_mst_topology_mgr_suspend(&intel_dp->mst_mgr);
 	drm_dp_mst_topology_mgr_destroy(&intel_dp->mst_mgr);
 	/* encoders will get killed by normal cleanup */
 
-- 
2.37.3

