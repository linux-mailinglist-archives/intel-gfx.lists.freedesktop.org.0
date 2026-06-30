Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CJA3KaiBQ2oAZgoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 10:43:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 526346E1C1B
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 10:43:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=zohomail header.b=TBSZmYCq;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("zohomail.com:s=zohoarc:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C914610E6DE;
	Tue, 30 Jun 2026 08:43:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com
 [136.143.188.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7879810E1C8;
 Tue, 30 Jun 2026 08:43:17 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1782808991; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=Vmcp9+P2+zVVGjlknJcCugSPkACENyZchXZwe3EkEbGbyajkzli0ANoSzeauGiit1WvI9DwnWPjpWbeSIl20fquGutUd0E8txJiXY8aAln6He6+paZA96Ez/adnApuKoquc7ib60BFtjAT0zzpeJmBQtCTqKF85bCSJ0AGgkq4Q=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1782808991;
 h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=7SKXbw6sqS2+R2VhFfpClmyyEFJnI1KY9RMDYcCVsTA=; 
 b=VOC+p1UqsyZHzjNJg6+p75eVv+ap29pjP9V9DgeNuJBibqfI0mKCDWAJYA2mkEM2/RWyRk24i3LE3On/V8yz/K63YnxbcSScBYVqqyw+l2FMPiwvqdIeDrk5lUuGoGpwuWuWR1F3xy8pWAZw/nL4cqtk3NPfvhYG9RYLGLoYUFg=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=collabora.com;
 spf=pass  smtp.mailfrom=robert.mader@collabora.com;
 dmarc=pass header.from=<robert.mader@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1782808991; 
 s=zohomail; d=collabora.com; i=robert.mader@collabora.com;
 h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
 bh=7SKXbw6sqS2+R2VhFfpClmyyEFJnI1KY9RMDYcCVsTA=;
 b=TBSZmYCqT98RYWK0hEu0LgcjnyoNv2ppn7AWZuWxUW686HMA7TPMv4pHdGj9mDlD
 xkkqwuBh2Y7MeJDD7vpOD9QdH8YAUZw2JeDyV3B6n0IZ/63q904DzFH2S/JZ2MZx/B1
 Eg0+T18nP5P0K1hSOouI/YhjsFLF5EBUmoOSC8Q0=
Received: by mx.zohomail.com with SMTPS id 1782808989324295.46946848078676;
 Tue, 30 Jun 2026 01:43:09 -0700 (PDT)
From: Robert Mader <robert.mader@collabora.com>
To: dri-devel@lists.freedesktop.org
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, linux-kernel@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Harry Wentland <harry.wentland@amd.com>,
 Daniel Stone <daniels@collabora.com>,
 Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 Uma Shankar <uma.shankar@intel.com>,
 Louis Chauvet <louis.chauvet@bootlin.com>, Melissa Wen <mwen@igalia.com>,
 Simon Ser <contact@emersion.fr>,
 Pekka Paalanen <pekka.paalanen@collabora.com>,
 Leandro Ribeiro <leandro.ribeiro@collabora.com>,
 Robert Mader <robert.mader@collabora.com>
Subject: [PATCH v1 1/4] drm: Guard DRM_CLIENT_CAP_PLANE_COLOR_PIPELINE behind
 driver feature
Date: Tue, 30 Jun 2026 10:42:26 +0200
Message-ID: <20260630084229.529682-2-robert.mader@collabora.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260630084229.529682-1-robert.mader@collabora.com>
References: <20260630084229.529682-1-robert.mader@collabora.com>
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	ARC_ALLOW(-1.00)[zohomail.com:s=zohoarc:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=zohomail];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,vger.kernel.org,lists.freedesktop.org,amd.com,collabora.com,intel.com,bootlin.com,igalia.com,emersion.fr];
	DKIM_TRACE(0.00)[collabora.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robert.mader@collabora.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 526346E1C1B

The client cap is currently advertised unconditionally, even for drivers that do
not support plane color pipelines. If clients supporting the later, like Wayland
compositors and drm_info, enable the client cap on sich drivers they will be
left without both color pipeline and the legacy properties COLOR_ENCODING and
COLOR_RANGE, effectively breaking YUV->RGB conversion support.

Add a new driver feature and guard the client cap behind it, allowing
plane color pipeline and legacy YUV->RGB support to co-exist.

Signed-off-by: Robert Mader <robert.mader@collabora.com>
---
 drivers/gpu/drm/drm_ioctl.c | 2 ++
 include/drm/drm_drv.h       | 6 ++++++
 2 files changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/drm_ioctl.c b/drivers/gpu/drm/drm_ioctl.c
index ff193155129e..96fda92e31b9 100644
--- a/drivers/gpu/drm/drm_ioctl.c
+++ b/drivers/gpu/drm/drm_ioctl.c
@@ -374,6 +374,8 @@ drm_setclientcap(struct drm_device *dev, void *data, struct drm_file *file_priv)
 		file_priv->supports_virtualized_cursor_plane = req->value;
 		break;
 	case DRM_CLIENT_CAP_PLANE_COLOR_PIPELINE:
+		if (!drm_core_check_feature(dev, DRIVER_PLANE_COLOR_PIPELINE))
+			return -EOPNOTSUPP;
 		if (!file_priv->atomic)
 			return -EINVAL;
 		if (req->value > 1)
diff --git a/include/drm/drm_drv.h b/include/drm/drm_drv.h
index e09559495c5b..108ddd2c8d30 100644
--- a/include/drm/drm_drv.h
+++ b/include/drm/drm_drv.h
@@ -116,6 +116,12 @@ enum drm_driver_feature {
 	 * the cursor planes to work correctly).
 	 */
 	DRIVER_CURSOR_HOTSPOT           = BIT(9),
+	/**
+	 * @DRIVER_PLANE_COLOR_PIPELINE:
+	 *
+	 * Driver supports PLANE_COLOR_PIPELINE.
+	 */
+	DRIVER_PLANE_COLOR_PIPELINE	= BIT(10),
 
 	/* IMPORTANT: Below are all the legacy flags, add new ones above. */
 
-- 
2.54.0

