Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD3E784039
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Aug 2023 14:02:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5759910E332;
	Tue, 22 Aug 2023 12:02:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD25210E334;
 Tue, 22 Aug 2023 12:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692705718; x=1724241718;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hbLWwqAMtEUbuE7b/pMMVY9k3Y9bSqZEWMUgQEGGXZA=;
 b=WBTD9zXBDjT5GXjLJ1dfbyT5YnQnzY5/Ouc6gmmRlHjPXXCkO/yIqyVm
 t03+hrTWvsTSr9gwjEFuTRd7yALRqpTs83BqMsI5IenFayCFI8a5rfUAo
 yUFBylUG3RcEP2mvMrMplpG/QJgtmGo8CqIizEI3xTSjG1X5g8YSfE1Et
 XGR1L85bvwXfOZLuo04MAXJTQywZY7WUaCth9mxIV7d0xxfjAec7UU518
 q12ynaV6+uWAKYIrlC6c8eXiB1fRZXmaJT4IlB6nRTpcqBq2qz3+vJSI5
 zJ+Bwp3L+8wsnD5jH19GSfW2/tButofUsE2EeD2Zcfew4+eqgTxYL/7cY g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="354198179"
X-IronPort-AV: E=Sophos;i="6.01,193,1684825200"; d="scan'208";a="354198179"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 05:01:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="910070621"
X-IronPort-AV: E=Sophos;i="6.01,193,1684825200"; d="scan'208";a="910070621"
Received: from kainaats-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.42.230])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 05:01:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org,
	amd-gfx@lists.freedesktop.org
Date: Tue, 22 Aug 2023 15:01:37 +0300
Message-Id: <e3fabd6e619b258ae10d89a09da79f8e71b99b64.1692705543.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1692705543.git.jani.nikula@intel.com>
References: <cover.1692705543.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] Revert "drm/amd/display: drop unused count
 variable in create_eml_sink()"
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
Cc: jani.nikula@intel.com, David Airlie <airlied@gmail.com>,
 intel-gfx@lists.freedesktop.org, Leo Li <sunpeng.li@amd.com>,
 Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>, Alex Hung <alex.hung@amd.com>,
 Daniel Wheeler <daniel.wheeler@amd.com>, Hersen Wu <hersenxs.wu@amd.com>,
 Daniel Vetter <daniel@ffwll.ch>, Wenchieh Chien <wenchieh.chien@amd.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 Harry Wentland <harry.wentland@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This reverts commit 8789989b476b5f3bb0bf1a63b5223f6e76cfd13d.

Dependency for reverting the next commit cleanly.

Cc: Alex Deucher <alexander.deucher@amd.com>
Cc: Alex Hung <alex.hung@amd.com>
Cc: Chao-kai Wang <Stylon.Wang@amd.com>
Cc: Daniel Wheeler <daniel.wheeler@amd.com>
Cc: Harry Wentland <harry.wentland@amd.com>
Cc: Hersen Wu <hersenxs.wu@amd.com>
Cc: Leo Li <sunpeng.li@amd.com>
Cc: Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>
Cc: Wenchieh Chien <wenchieh.chien@amd.com>
Cc: David Airlie <airlied@gmail.com>
Cc: Daniel Vetter <daniel@ffwll.ch>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
index 268cb99a4c4b..3e132438bc13 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
@@ -6373,8 +6373,9 @@ static void create_eml_sink(struct amdgpu_dm_connector *aconnector)
 		/* if connector->edid_override valid, pass
 		 * it to edid_override to edid_blob_ptr
 		 */
+		int count;
 
-		drm_edid_override_connector_update(&aconnector->base);
+		count = drm_edid_override_connector_update(&aconnector->base);
 
 		if (!aconnector->base.edid_blob_ptr) {
 			DRM_ERROR("No EDID firmware found on connector: %s ,forcing to OFF!\n",
-- 
2.39.2

