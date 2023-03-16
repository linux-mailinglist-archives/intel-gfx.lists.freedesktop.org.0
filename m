Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A521E6BC8ED
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 09:23:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42A0E10EA80;
	Thu, 16 Mar 2023 08:23:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C898910EC7C
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 08:23:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678955000; x=1710491000;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BG4FiBIgXA6e0Fj7EQMsReh44+vEyre/cgu7gkoVgTw=;
 b=MEphoQm6gZgqVHdjGuOXUiWbX/CLsuTi0kt5KotwWs+4maJoBuMNESvm
 btvR7iXfDf08dpBdjpEVoV5Ww8wE+z8zsdRkNMgOr3csRtTF6az6XRwJp
 1xyjgxYOC64DrIvPi4KoVBaAiyc/8U4dlHtBU9dKDE0E4TFPaetgHwB9s
 N4sls7FMElORG6pgDqFcV8zlejfq7453bTfn9XPI7Sq01HGWoWXiEhMVY
 /5qEfez1vEmxu/RzQ98HCn2bBwwY5bf+WnrnbF/AR+MjnbCg5TIugEaO2
 pG1ITuSfO1KVV6+KSYX1HhGYwmfQ+kYfbgQi3vw0ENA+VzY5hXyzh4P8o g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="340285480"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="340285480"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 01:23:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="744036794"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="744036794"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga008.fm.intel.com with ESMTP; 16 Mar 2023 01:23:18 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Mar 2023 13:52:32 +0530
Message-Id: <20230316082232.666630-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/hdcp: Remove drm_modeset_lock in
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Remove drm_modeset_lock in intel_conn_to_vcpi as we don't need it
anymore since all the required locks are taken in atomic check and
prepare phases.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 2984d2810e42..f957b4bd9c26 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -41,7 +41,6 @@ static int intel_conn_to_vcpi(struct intel_connector *connector)
 		return 0;
 	mgr = connector->port->mgr;
 
-	drm_modeset_lock(&mgr->base.lock, NULL);
 	mst_state = to_drm_dp_mst_topology_state(mgr->base.state);
 	payload = drm_atomic_get_mst_payload_state(mst_state, connector->port);
 	if (drm_WARN_ON(mgr->dev, !payload))
@@ -53,7 +52,6 @@ static int intel_conn_to_vcpi(struct intel_connector *connector)
 		goto out;
 	}
 out:
-	drm_modeset_unlock(&mgr->base.lock);
 	return vcpi;
 }
 
-- 
2.25.1

