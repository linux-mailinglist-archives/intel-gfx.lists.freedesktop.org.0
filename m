Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37860175B38
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 14:09:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8474E6E283;
	Mon,  2 Mar 2020 13:09:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84C516E283;
 Mon,  2 Mar 2020 13:09:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Mar 2020 05:09:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,507,1574150400"; d="scan'208";a="319059371"
Received: from pktinlab.iind.intel.com ([10.66.253.121])
 by orsmga001.jf.intel.com with ESMTP; 02 Mar 2020 05:08:58 -0800
From: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
To: jani.nikula@linux.intel.com, daniel@ffwll.ch,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 "David (ChunMing) Zhou" <David1.Zhou@amd.com>,
 David Airlie <airlied@linux.ie>, Mikita Lipski <mikita.lipski@amd.com>,
 Lyude Paul <lyude@redhat.com>,
 Nicholas Kazlauskas <Nicholas.Kazlauskas@amd.com>,
 David Francis <David.Francis@amd.com>,
 Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
Date: Mon,  2 Mar 2020 18:26:43 +0530
Message-Id: <20200302125649.61443-4-pankaj.laxminarayan.bharadiya@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200302125649.61443-1-pankaj.laxminarayan.bharadiya@intel.com>
References: <20200302125649.61443-1-pankaj.laxminarayan.bharadiya@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/9] drm/amdgpu: Remove drm_fb_helper_{add,
 remove}_one_connector calls
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

drm_fb_helper_{add,remove}_one_connector() are dummy functions now
and serve no purpose. Hence remove their calls.

This is the preparatory step for removing the
drm_fb_helper_{add,remove}_one_connector() functions from
drm_fb_helper.h

Signed-off-by: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
---
 .../drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c | 13 -------------
 1 file changed, 13 deletions(-)

diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
index 0ef0eeb16778..0c4faba8ed28 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
@@ -440,9 +440,6 @@ dm_dp_add_mst_connector(struct drm_dp_mst_topology_mgr *mgr,
 static void dm_dp_destroy_mst_connector(struct drm_dp_mst_topology_mgr *mgr,
 					struct drm_connector *connector)
 {
-	struct amdgpu_dm_connector *master = container_of(mgr, struct amdgpu_dm_connector, mst_mgr);
-	struct drm_device *dev = master->base.dev;
-	struct amdgpu_device *adev = dev->dev_private;
 	struct amdgpu_dm_connector *aconnector = to_amdgpu_dm_connector(connector);
 
 	DRM_INFO("DM_MST: Disabling connector: %p [id: %d] [master: %p]\n",
@@ -457,21 +454,11 @@ static void dm_dp_destroy_mst_connector(struct drm_dp_mst_topology_mgr *mgr,
 	}
 
 	drm_connector_unregister(connector);
-	if (adev->mode_info.rfbdev)
-		drm_fb_helper_remove_one_connector(&adev->mode_info.rfbdev->helper, connector);
 	drm_connector_put(connector);
 }
 
 static void dm_dp_mst_register_connector(struct drm_connector *connector)
 {
-	struct drm_device *dev = connector->dev;
-	struct amdgpu_device *adev = dev->dev_private;
-
-	if (adev->mode_info.rfbdev)
-		drm_fb_helper_add_one_connector(&adev->mode_info.rfbdev->helper, connector);
-	else
-		DRM_ERROR("adev->mode_info.rfbdev is NULL\n");
-
 	drm_connector_register(connector);
 }
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
