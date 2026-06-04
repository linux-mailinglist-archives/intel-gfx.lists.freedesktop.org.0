Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RGVVBoO+IWq/MwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Jun 2026 20:05:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B97CF6427C2
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Jun 2026 20:05:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=igalia.com header.s=20170329 header.b=bt1mEVVS;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=igalia.com (policy=none)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D89611291B;
	Thu,  4 Jun 2026 18:05:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78ADA112916;
 Thu,  4 Jun 2026 18:05:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RUncSXLy+7iRfo2X0zRCa/to3zvHt7MenW8xfC3Dcgo=; b=bt1mEVVSTGHf4N9gqPbfO4jA3V
 6bOv3YoZjqYKwz0vM7Ku9/MS9pf7/F+Shrwy4efz0Q2zvXYqarC+3HZ3zFGLz5UzEEo7/mHWOYraY
 AiXmfh6t1zSw77CT5SCu+PGVmwK/OATQScnfXSl8upEMe+Skgb3y2ETugEiMqThbs3YgBR1WLhyrI
 7QRvGJiHZaYt9RjKeYIz2FEBCAlsXMaG/SdGYznhNCa07LEIsnmqMMC6reegsIY0pLCfK5TxZVe93
 g5w3HI/2QGVhuNY1a2HIUjmwQtAQW1+bONf6wWBfZzttbpPiqw2iUAMNfX5vVnhMiWIbeZBte8oJ6
 MGm814Fw==;
Received: from [79.117.146.159] (helo=killbill.home)
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
 id 1wVCRH-00Ckqs-5A; Thu, 04 Jun 2026 20:05:07 +0200
From: Melissa Wen <mwen@igalia.com>
To: airlied@gmail.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 simona@ffwll.ch, tzimmermann@suse.de
Cc: Alex Hung <alex.hung@amd.com>, Simon Ser <contact@emersion.fr>,
 Uma Shankar <uma.shankar@intel.com>,
 Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 Xaver Hugl <xaver.hugl@kde.org>,
 Pekka Paalanen <pekka.paalanen@collabora.com>,
 Louis Chauvet <louis.chauvet@bootlin.com>,
 Matthew Schwartz <matthew.schwartz@linux.dev>,
 Sebastian Wick <sebastian.wick@redhat.com>,
 John Harrison <John.Harrison@Igalia.com>,
 Rodrigo Siqueira <siqueira@igalia.com>, amd-gfx@lists.freedesktop.org,
 kernel-dev@igalia.com, Rob Clark <robin.clark@oss.qualcomm.com>,
 Dmitry Baryshkov <lumag@kernel.org>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Subject: [PATCH v2 1/3] drm/atomic: only add states of active or transient
 active colorops
Date: Thu,  4 Jun 2026 19:59:05 +0200
Message-ID: <20260604180457.1110110-2-mwen@igalia.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260604180457.1110110-1-mwen@igalia.com>
References: <20260604180457.1110110-1-mwen@igalia.com>
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
X-Spamd-Result: default: False [1.99 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[igalia.com:s=20170329];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	DMARC_POLICY_SOFTFAIL(0.10)[igalia.com : SPF not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,linux.intel.com,kernel.org,ffwll.ch,suse.de];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mwen@igalia.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[igalia.com:-];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B97CF6427C2

Only consider affected colorop states those that are part of an active
color pipeline or a pipeline that is about to be activated or
deactivated in the same atomic commit, i.e., colorop is in the chain of
old/new plane color pipeline property. To cover color_pipeline
deactivation, remove the condition for plane_state->color_pipeline.

Signed-off-by: Melissa Wen <mwen@igalia.com>
---

v2: define a macro to walk in the color pipeline (Alex H.)
---
 drivers/gpu/drm/drm_atomic.c | 65 +++++++++++++++++++++++++++++++-----
 include/drm/drm_colorop.h    |  3 ++
 2 files changed, 59 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/drm_atomic.c b/drivers/gpu/drm/drm_atomic.c
index 3af1b9cc9a06..464562861408 100644
--- a/drivers/gpu/drm/drm_atomic.c
+++ b/drivers/gpu/drm/drm_atomic.c
@@ -892,6 +892,57 @@ static int drm_atomic_plane_check(const struct drm_plane_state *old_plane_state,
 	return 0;
 }
 
+/*
+ * This function walks old and new plane state color pipelines and adds all
+ * colorops in use by @plane to the atomic configuration @state. This is useful
+ * when an atomic commit needs to check all currently enabled or about to be
+ * enabled colorop on @plane, e.g. when changing the mode. This also avoids
+ * including colorop states that are not part of the atomic state.
+ *
+ * Returns:
+ * 0 on success or can fail with -EDEADLK or -ENOMEM. When the error is EDEADLK
+ * then the w/w mutex code has detected a deadlock and the entire atomic
+ * sequence must be restarted. All other errors are fatal.
+ */
+static int
+drm_atomic_add_pipeline_colorops(struct drm_atomic_commit *state,
+				 struct drm_plane *plane)
+{
+	struct drm_colorop *colorop;
+	struct drm_colorop_state *colorop_state;
+	struct drm_plane_state *new_plane_state, *old_plane_state;
+
+	new_plane_state = drm_atomic_get_new_plane_state(state, plane);
+	old_plane_state = drm_atomic_get_old_plane_state(state, plane);
+
+	if (WARN_ON(!new_plane_state || !old_plane_state))
+		return -EINVAL;
+
+	drm_dbg_atomic(plane->dev,
+		       "Adding old+new pipeline colorops for [PLANE:%d:%s]\n",
+		       plane->base.id, plane->name);
+
+	drm_for_each_colorop_in_pipeline(colorop,
+					 new_plane_state->color_pipeline) {
+		colorop_state = drm_atomic_get_colorop_state(state, colorop);
+		if (IS_ERR(colorop_state))
+			return PTR_ERR(colorop_state);
+	}
+
+	/* Same color pipeline as new; no point walking old. */
+	if (new_plane_state->color_pipeline == old_plane_state->color_pipeline)
+		return 0;
+
+	drm_for_each_colorop_in_pipeline(colorop,
+					 old_plane_state->color_pipeline) {
+		colorop_state = drm_atomic_get_colorop_state(state, colorop);
+		if (IS_ERR(colorop_state))
+			return PTR_ERR(colorop_state);
+	}
+
+	return 0;
+}
+
 static void drm_atomic_colorop_print_state(struct drm_printer *p,
 					   const struct drm_colorop_state *state)
 {
@@ -1671,11 +1722,9 @@ drm_atomic_add_affected_planes(struct drm_atomic_commit *state,
 		if (IS_ERR(plane_state))
 			return PTR_ERR(plane_state);
 
-		if (plane_state->color_pipeline) {
-			ret = drm_atomic_add_affected_colorops(state, plane);
-			if (ret)
-				return ret;
-		}
+		ret = drm_atomic_add_pipeline_colorops(state, plane);
+		if (ret)
+			return ret;
 	}
 	return 0;
 }
@@ -1687,10 +1736,8 @@ EXPORT_SYMBOL(drm_atomic_add_affected_planes);
  * @plane: DRM plane
  *
  * This function walks the current configuration and adds all colorops
- * currently used by @plane to the atomic configuration @state. This is useful
- * when an atomic commit also needs to check all currently enabled colorop on
- * @plane, e.g. when changing the mode. It's also useful when re-enabling a plane
- * to avoid special code to force-enable all colorops.
+ * currently used by @plane to the atomic configuration @state. It's useful
+ * when re-enabling a plane to avoid special code to force-enable all colorops.
  *
  * Since acquiring a colorop state will always also acquire the w/w mutex of the
  * current plane for that colorop (if there is any) adding all the colorop states for
diff --git a/include/drm/drm_colorop.h b/include/drm/drm_colorop.h
index b4b9e4f558ab..006278e21d49 100644
--- a/include/drm/drm_colorop.h
+++ b/include/drm/drm_colorop.h
@@ -459,6 +459,9 @@ static inline unsigned int drm_colorop_index(const struct drm_colorop *colorop)
 #define drm_for_each_colorop(colorop, dev) \
 	list_for_each_entry(colorop, &(dev)->mode_config.colorop_list, head)
 
+#define drm_for_each_colorop_in_pipeline(colorop, pipeline) \
+	for ((colorop) = (pipeline); (colorop); (colorop) = (colorop)->next)
+
 /**
  * drm_get_colorop_type_name - return a string for colorop type
  * @type: colorop type to compute name of
-- 
2.53.0

