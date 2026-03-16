Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iNmbNOS/t2k3VAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 09:31:32 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 849B529639C
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 09:31:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED14210E49B;
	Mon, 16 Mar 2026 08:31:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Yj/HrSXQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9535C10E387;
 Mon, 16 Mar 2026 08:31:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773649890; x=1805185890;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/vdvZ8+JNewyJLC5VPWobT2nRff/AFgHAyyvAiwGErs=;
 b=Yj/HrSXQ+DkFrb4agYOSni7jNWeNQNnSD1qSwMel41nehB2pSAD358ZK
 SKmsqECn6OBDkzKVzO6S0CVyySe8ijhmmJQeUNUVnTeGBkSw8X7TOI+gL
 hwhOzsRe5tRd9FnQci7buxATEOFXR0WwkyN/G2D5LzMUsCmIDf4yL6yaC
 yaijSq+DoqOwhAAB2hlY5h4QxdnituCO8WEbG3fnQmEQCR1B9OGyeL/ZX
 gHeMPKGygT6dVfAXPQ1eb/JSE5tY01sV2Mztug5XIq1KFyRNYEr6/6lkf
 0nRbv3sMWhX9Gfz2QUZcd0EeiYhtObMNpjVd/AQAuurXZ4CBt7DKM1JNd w==;
X-CSE-ConnectionGUID: ypgHGPMfSYCd8Ku4ccbUkg==
X-CSE-MsgGUID: LcIs08G3TwaV6oW/AXv+XQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11730"; a="77268370"
X-IronPort-AV: E=Sophos;i="6.23,123,1770624000"; d="scan'208";a="77268370"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 01:31:29 -0700
X-CSE-ConnectionGUID: UYF//OnvROu3s89iesGXgQ==
X-CSE-MsgGUID: ZwiqnZgNQRyw7rUdPnhmjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,123,1770624000"; d="scan'208";a="220889095"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa006.jf.intel.com with ESMTP; 16 Mar 2026 01:31:20 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: freedreno@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 kernel-list@raspberrypi.com, amd-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com,
 dmitry.baryshkov@oss.qualcomm.com, arun.r.murthy@intel.com,
 jani.nikula@intel.com, harry.wentland@amd.com, siqueira@igalia.com,
 alexander.deucher@amd.com, christian.koenig@amd.com, airlied@gmail.com,
 simona@ffwll.ch, liviu.dudau@arm.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, robin.clark@oss.qualcomm.com, abhinav.kumar@linux.dev,
 tzimmermann@suse.de, sean@poorly.ru, marijn.suijten@somainline.org,
 laurent.pinchart+renesas@ideasonboard.com, dave.stevenson@raspberrypi.com,
 tomi.valkeinen+renesas@ideasonboard.com,
 kieran.bingham+renesas@ideasonboard.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v3 6/7] drm/connector: Modify prepare_writeback_job helper
Date: Mon, 16 Mar 2026 14:00:08 +0530
Message-Id: <20260316083008.87466-7-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260316083008.87466-1-suraj.kandpal@intel.com>
References: <20260316083008.87466-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
X-Spamd-Result: default: False [1.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[31];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,oss.qualcomm.com,amd.com,igalia.com,gmail.com,ffwll.ch,arm.com,linux.intel.com,kernel.org,linux.dev,suse.de,poorly.ru,somainline.org,ideasonboard.com,raspberrypi.com];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx,renesas];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 849B529639C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Pass drm_connector to prepare_writeback_job since
drm_writeback_connector now resides within drm_connector.
It also makes it uniform with params passed to other
drm_connector_helper_funcs.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_wb.c | 2 +-
 drivers/gpu/drm/drm_writeback.c                      | 2 +-
 drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.c        | 4 +---
 drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c  | 6 ++----
 drivers/gpu/drm/vkms/vkms_writeback.c                | 2 +-
 include/drm/drm_modeset_helper_vtables.h             | 2 +-
 6 files changed, 7 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_wb.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_wb.c
index 84a9c1d2bd8e..d02f5d20f3b1 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_wb.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_wb.c
@@ -80,7 +80,7 @@ static int amdgpu_dm_wb_connector_get_modes(struct drm_connector *connector)
 	return drm_add_modes_noedid(connector, 3840, 2160);
 }
 
-static int amdgpu_dm_wb_prepare_job(struct drm_writeback_connector *wb_connector,
+static int amdgpu_dm_wb_prepare_job(struct drm_connector *connector,
 			       struct drm_writeback_job *job)
 {
 	struct amdgpu_framebuffer *afb;
diff --git a/drivers/gpu/drm/drm_writeback.c b/drivers/gpu/drm/drm_writeback.c
index 15a680ba98ae..d6b260478889 100644
--- a/drivers/gpu/drm/drm_writeback.c
+++ b/drivers/gpu/drm/drm_writeback.c
@@ -392,7 +392,7 @@ int drm_writeback_prepare_job(struct drm_writeback_job *job)
 	int ret;
 
 	if (funcs->prepare_writeback_job) {
-		ret = funcs->prepare_writeback_job(wb_connector, job);
+		ret = funcs->prepare_writeback_job(connector, job);
 		if (ret < 0)
 			return ret;
 	}
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.c
index d4fc28951085..b8b299067845 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.c
@@ -87,11 +87,9 @@ static const struct drm_connector_funcs dpu_wb_conn_funcs = {
 	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
 };
 
-static int dpu_wb_conn_prepare_job(struct drm_writeback_connector *wb_conn,
+static int dpu_wb_conn_prepare_job(struct drm_connector *connector,
 		struct drm_writeback_job *job)
 {
-	struct drm_connector *connector =
-		container_of(wb_conn, struct drm_connector, writeback);
 	struct dpu_wb_connector *dpu_wb_conn = to_dpu_wb_conn(connector);
 
 	if (!job->fb)
diff --git a/drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c b/drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c
index e874732f4d01..a0ad4c97971e 100644
--- a/drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c
+++ b/drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c
@@ -47,12 +47,10 @@ static int rcar_du_wb_conn_get_modes(struct drm_connector *connector)
 				    dev->mode_config.max_height);
 }
 
-static int rcar_du_wb_prepare_job(struct drm_writeback_connector *connector,
+static int rcar_du_wb_prepare_job(struct drm_connector *connector,
 				  struct drm_writeback_job *job)
 {
-	struct drm_connector *conn =
-		drm_writeback_to_connector(connector);
-	struct rcar_du_crtc *rcrtc = wb_to_rcar_crtc(conn);
+	struct rcar_du_crtc *rcrtc = wb_to_rcar_crtc(connector);
 	struct rcar_du_wb_job *rjob;
 	int ret;
 
diff --git a/drivers/gpu/drm/vkms/vkms_writeback.c b/drivers/gpu/drm/vkms/vkms_writeback.c
index 59d44c759785..ebfd243e2c1a 100644
--- a/drivers/gpu/drm/vkms/vkms_writeback.c
+++ b/drivers/gpu/drm/vkms/vkms_writeback.c
@@ -72,7 +72,7 @@ static int vkms_wb_connector_get_modes(struct drm_connector *connector)
 				    dev->mode_config.max_height);
 }
 
-static int vkms_wb_prepare_job(struct drm_writeback_connector *wb_connector,
+static int vkms_wb_prepare_job(struct drm_connector *connector,
 			       struct drm_writeback_job *job)
 {
 	struct vkms_writeback_job *vkmsjob;
diff --git a/include/drm/drm_modeset_helper_vtables.h b/include/drm/drm_modeset_helper_vtables.h
index 3e68213958dd..9de96a04784e 100644
--- a/include/drm/drm_modeset_helper_vtables.h
+++ b/include/drm/drm_modeset_helper_vtables.h
@@ -1119,7 +1119,7 @@ struct drm_connector_helper_funcs {
 	 *
 	 * This callback is used by the atomic modeset helpers.
 	 */
-	int (*prepare_writeback_job)(struct drm_writeback_connector *connector,
+	int (*prepare_writeback_job)(struct drm_connector *connector,
 				     struct drm_writeback_job *job);
 	/**
 	 * @cleanup_writeback_job:
-- 
2.34.1

