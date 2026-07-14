Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tH6WASC7VWp+sAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 06:29:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D54750D96
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 06:29:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="K/1Az9E7";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB7D010EBF2;
	Tue, 14 Jul 2026 04:29:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8F1710EBEB;
 Tue, 14 Jul 2026 04:29:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784003356; x=1815539356;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5pja3JWFJTGKx2DvNAs/27uLDMfwJ0xeptECvRU4MuE=;
 b=K/1Az9E7/pLDbFWfi11RqOY97HXMLTPJ1Wb5GM4MMBn8TGDkQO+KMB14
 5ylGWlzFOP0ALiU/vsePl7V4g2VwRt5PdLh1+zheDlWbC/qi/Qi2GjoIq
 FH/svOF4oqYnYinA73WXF0sqAPV2Gr+MvYjIOCEqVRkfha+YU4lavzE2+
 IuY25QW+S2c075q2LHXGq8CSp63ot8AmsQmRWpWorcscjsJIA6ZbBItZK
 ZbEFVSGW459x/lyDZkOe5dP69fMofATUtV3dQMwvv9uwGhgjVfzeOO4h6
 r3Hm/AciJ9AeyiaWhqYhVKSpe1eOV3JkDkuggII2HJWUHqsc0ZbvtqVLL w==;
X-CSE-ConnectionGUID: O7F2kOcLTViEp3WReB20Tg==
X-CSE-MsgGUID: ykilnkpsSm6VYyMA82ve/A==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="88297179"
X-IronPort-AV: E=Sophos;i="6.25,163,1779174000"; d="scan'208";a="88297179"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 21:29:15 -0700
X-CSE-ConnectionGUID: DN9a1P+2RFCQCNqZ0GvMZg==
X-CSE-MsgGUID: iPGMyXdzR6ONExyhsp+9nA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,163,1779174000"; d="scan'208";a="255243256"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa008.jf.intel.com with ESMTP; 13 Jul 2026 21:29:07 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: freedreno@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 kernel-list@raspberrypi.com, amd-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, arun.r.murthy@intel.com, abhinav.kumar@linux.dev,
 tzimmermann@suse.de, sean@poorly.ru, marijn.suijten@somainline.org,
 laurent.pinchart+renesas@ideasonboard.com, dave.stevenson@raspberrypi.com,
 tomi.valkeinen+renesas@ideasonboard.com,
 kieran.bingham+renesas@ideasonboard.com, louis.chauvet@bootlin.com,
 kernel-dev@igalia.com, John.Harrison@Igalia.com,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v6 7/7] drm: writeback: Modify cleanup_writeback_job helper
Date: Tue, 14 Jul 2026 09:58:05 +0530
Message-Id: <20260714042805.77934-8-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260714042805.77934-1-suraj.kandpal@intel.com>
References: <20260714042805.77934-1-suraj.kandpal@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx,renesas];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:mid,intel.com:email,intel.com:dkim,igalia.com:email,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,qualcomm.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 63D54750D96

The cleanup_writeback_job() connector helper hook needs access to
the parent drm_connector object as well as the drm_writeback_connector
object itself. So, pass in the top level drm_connector and traverse
down to drm_writeback_connector rather than passing in the lower
level object and traversing back up. This also makes it uniform
with the params passed to other drm_connector_helper_funcs hooks.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: John Harrison <John.Harrison@Igalia.com>
---
v5 -> v6:
- Rebase over latest kernel

v3 -> v4:
- Update subject line for consitency (John)
- Update commit message across commits for consitency (John)

 drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_wb.c | 4 ++--
 drivers/gpu/drm/drm_writeback.c                      | 2 +-
 drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.c        | 3 +--
 drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c  | 5 ++---
 drivers/gpu/drm/vkms/vkms_writeback.c                | 5 +----
 include/drm/drm_modeset_helper_vtables.h             | 2 +-
 6 files changed, 8 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_wb.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_wb.c
index e0425eda0bb6..6fd1376fbc1a 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_wb.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_wb.c
@@ -147,8 +147,8 @@ static int amdgpu_dm_wb_prepare_job(struct drm_connector *connector,
 	return r;
 }
 
-static void amdgpu_dm_wb_cleanup_job(struct drm_writeback_connector *connector,
-				struct drm_writeback_job *job)
+static void amdgpu_dm_wb_cleanup_job(struct drm_connector *connector,
+				     struct drm_writeback_job *job)
 {
 	struct amdgpu_bo *rbo;
 	int r;
diff --git a/drivers/gpu/drm/drm_writeback.c b/drivers/gpu/drm/drm_writeback.c
index e6b52de69ad6..c8cc09118a6e 100644
--- a/drivers/gpu/drm/drm_writeback.c
+++ b/drivers/gpu/drm/drm_writeback.c
@@ -450,7 +450,7 @@ void drm_writeback_cleanup_job(struct drm_writeback_job *job)
 		connector->helper_private;
 
 	if (job->prepared && funcs->cleanup_writeback_job)
-		funcs->cleanup_writeback_job(wb_connector, job);
+		funcs->cleanup_writeback_job(connector, job);
 
 	if (job->fb)
 		drm_framebuffer_put(job->fb);
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.c
index 061e6960c09b..c6396ac1f64c 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.c
@@ -100,10 +100,9 @@ static int dpu_wb_conn_prepare_job(struct drm_connector *connector,
 	return 0;
 }
 
-static void dpu_wb_conn_cleanup_job(struct drm_writeback_connector *wb_connector,
+static void dpu_wb_conn_cleanup_job(struct drm_connector *connector,
 		struct drm_writeback_job *job)
 {
-	struct drm_connector *connector = drm_writeback_to_connector(wb_connector);
 	struct dpu_wb_connector *dpu_wb_conn = to_dpu_wb_conn(connector);
 
 	if (!job->fb)
diff --git a/drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c b/drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c
index 218b6504cacf..e7d7b221c487 100644
--- a/drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c
+++ b/drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c
@@ -72,11 +72,10 @@ static int rcar_du_wb_prepare_job(struct drm_connector *connector,
 	return 0;
 }
 
-static void rcar_du_wb_cleanup_job(struct drm_writeback_connector *connector,
+static void rcar_du_wb_cleanup_job(struct drm_connector *connector,
 				   struct drm_writeback_job *job)
 {
-	struct drm_connector *conn = drm_writeback_to_connector(connector);
-	struct rcar_du_crtc *rcrtc = wb_to_rcar_crtc(conn);
+	struct rcar_du_crtc *rcrtc = wb_to_rcar_crtc(connector);
 	struct rcar_du_wb_job *rjob = job->priv;
 
 	if (!job->fb)
diff --git a/drivers/gpu/drm/vkms/vkms_writeback.c b/drivers/gpu/drm/vkms/vkms_writeback.c
index 86e5b92c7965..775abb4677ef 100644
--- a/drivers/gpu/drm/vkms/vkms_writeback.c
+++ b/drivers/gpu/drm/vkms/vkms_writeback.c
@@ -103,13 +103,10 @@ static int vkms_wb_prepare_job(struct drm_connector *connector,
 	return ret;
 }
 
-static void vkms_wb_cleanup_job(struct drm_writeback_connector *wb_conn,
+static void vkms_wb_cleanup_job(struct drm_connector *connector,
 				struct drm_writeback_job *job)
 {
 	struct vkms_writeback_job *vkmsjob = job->priv;
-	struct drm_connector *connector = container_of(wb_conn,
-						       struct drm_connector,
-						       writeback);
 	struct vkms_output *vkms_output = container_of(connector,
 						       struct vkms_output,
 						       wb_connector);
diff --git a/include/drm/drm_modeset_helper_vtables.h b/include/drm/drm_modeset_helper_vtables.h
index 4e26568a16fb..9ce5ddd82057 100644
--- a/include/drm/drm_modeset_helper_vtables.h
+++ b/include/drm/drm_modeset_helper_vtables.h
@@ -1134,7 +1134,7 @@ struct drm_connector_helper_funcs {
 	 *
 	 * This callback is used by the atomic modeset helpers.
 	 */
-	void (*cleanup_writeback_job)(struct drm_writeback_connector *connector,
+	void (*cleanup_writeback_job)(struct drm_connector *connector,
 				      struct drm_writeback_job *job);
 
 	/**
-- 
2.34.1

