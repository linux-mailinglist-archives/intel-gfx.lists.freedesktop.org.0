Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 939026D3DBB
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Apr 2023 09:02:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E72D610E13D;
	Mon,  3 Apr 2023 07:02:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EEDF10E13D
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Apr 2023 07:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680505328; x=1712041328;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8LNlmAZ9AIG01fX4zf0ccNmEVvj5xwTMmoIp36hwYF4=;
 b=R7kMQPKkQoJlJlzDf7O2tLSd4ZwYJ0A4fZpneEr6FiDLz7zP51VnoKT0
 fX7TMvPElQ7vdCunIQj6XYpuGimuowSq4hYGPw8BOuxvuRR3/R6DM3yMv
 g4+7Nn0RhVX82kcDk64xz+dANHpEOhVm3MSfiEybPG2v5+a96rMO4kgxC
 lypolwgCsN23Fm9KfRo7b9H46gyOnLHJeiAkyXZFy5Il17mCO+1uqFO7I
 w/tryDLBtpwIgT2ZVhti3hlJQZpl0IIUusg126e7nXVPPxvja7YY9MjiJ
 4XyzUw6v3LjQAYML33NOaREMzZsqqBUNFS3pPP2GddQ6SoBk24jpukveJ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10668"; a="340556522"
X-IronPort-AV: E=Sophos;i="5.98,314,1673942400"; d="scan'208";a="340556522"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 00:02:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10668"; a="809746278"
X-IronPort-AV: E=Sophos;i="5.98,314,1673942400"; d="scan'208";a="809746278"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga004.jf.intel.com with ESMTP; 03 Apr 2023 00:02:05 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Apr 2023 12:31:25 +0530
Message-Id: <20230403070125.1127830-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/hdcp: Remove drm_modeset_lock in
 intel_conn_to_vcpi
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Remove drm_modeset_lock in intel_conn_to_vcpi as we don't need it
anymore since all the required locks are taken in atomic check and
prepare phases.

--v2
-take lock if hdcp function is called from legacy path [Ville]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 650232c4892b..65cfc4afbcaa 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -36,13 +36,16 @@ static int intel_conn_to_vcpi(struct intel_connector *connector)
 	struct drm_dp_mst_atomic_payload *payload;
 	struct drm_dp_mst_topology_state *mst_state;
 	int vcpi = 0;
+	bool is_locked;
 
 	/* For HDMI this is forced to be 0x0. For DP SST also this is 0x0. */
 	if (!connector->port)
 		return 0;
 	mgr = connector->port->mgr;
+	is_locked = drm_modeset_is_locked(&mgr->base.lock);
+	if (!is_locked)
+		drm_modeset_lock(&mgr->base.lock, NULL);
 
-	drm_modeset_lock(&mgr->base.lock, NULL);
 	mst_state = to_drm_dp_mst_topology_state(mgr->base.state);
 	payload = drm_atomic_get_mst_payload_state(mst_state, connector->port);
 	if (drm_WARN_ON(mgr->dev, !payload))
@@ -54,7 +57,9 @@ static int intel_conn_to_vcpi(struct intel_connector *connector)
 		goto out;
 	}
 out:
-	drm_modeset_unlock(&mgr->base.lock);
+	if (!is_locked)
+		drm_modeset_unlock(&mgr->base.lock);
+
 	return vcpi;
 }
 
-- 
2.25.1

