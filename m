Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1HfPOK4eRmosKQsAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 10:17:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42D706F4B06
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 10:17:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=zohomail header.b=Geisr4Ww;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("zohomail.com:s=zohoarc:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FCEC10F228;
	Thu,  2 Jul 2026 08:17:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com
 [136.143.188.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE20A10F220;
 Thu,  2 Jul 2026 08:17:47 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1782980259; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=UQ4N3uoTpLdHqGqeyN6bP31boYEYbJk7nNKzBUi5UAzHO64mnh7++NtNIct+RRm7qcF8xCT5MvlrEO1RCoyEFTS5GU0U/tMU/oU9fdUwZYLyCPDWkGbCs8tVlqHqao4O3u+Q5DQye2g0cM91EGHlayR20QkHYUF4Ajh+FPQmVNY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1782980259;
 h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=wn/JhRLP/kw9OT3tYgqPgKSK7xYfFVe48gW5Umt2FKA=; 
 b=F0k5PoQ6m7wK49IAyXZLL7cze/9rSRUfw3GXTqsIm2YYYE9C2AgacsXc+EEcxIGiw7pSCWz+L25ElUFWs3OWx2JZQpvUc8FpjYGP8cgjV6bUYbS52HiDSKvxbUToxXYS1BsPT90YUnEl7IzdNweJvBdUlSwYNjEI/QwiDTSdcP8=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=collabora.com;
 spf=pass  smtp.mailfrom=robert.mader@collabora.com;
 dmarc=pass header.from=<robert.mader@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1782980259; 
 s=zohomail; d=collabora.com; i=robert.mader@collabora.com;
 h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
 bh=wn/JhRLP/kw9OT3tYgqPgKSK7xYfFVe48gW5Umt2FKA=;
 b=Geisr4Wwqy5yLjY/Puu8gfYpHnElb+k2YKKM+wJf8reqnJ+D3z/eqcKSGhQzx+e8
 2YCXEVcPVAVwmEX3nu4B9WEBuaT3MAFO/qYTd0i43APBucyK7JWSh83HmQF2PLSgDX6
 fdMV+4rO75ihHE+ReAwif8x6Nxtt7Ou2d9CF9PCo=
Received: by mx.zohomail.com with SMTPS id 1782980257337423.760676344912;
 Thu, 2 Jul 2026 01:17:37 -0700 (PDT)
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
Subject: [PATCH v2] drm: Guard DRM_CLIENT_CAP_PLANE_COLOR_PIPELINE
Date: Thu,  2 Jul 2026 10:16:41 +0200
Message-ID: <20260702081641.22990-1-robert.mader@collabora.com>
X-Mailer: git-send-email 2.55.0
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:email,collabora.com:dkim,collabora.com:email,collabora.com:mid,collabora.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 42D706F4B06

The client cap is currently advertised unconditionally, even for drivers
that do not support plane color pipelines. If clients supporting the later,
like Wayland compositors or tools like drm_info, enable the client cap on
such drivers they will be left without both color pipeline and the legacy
properties COLOR_ENCODING and COLOR_RANGE, effectively breaking YUV->RGB
conversion support.

Prevent that by only marking the cap supported if there are actually planes
with color pipelines.

Note: while the color pipeline replacement for the legacy properties is
still under review (1), we can assume that it will work as a drop-in
replacement. That means any plane on any hardware currently supporting
the legacy properties will be able to offer a functionally equal color
pipeline and there will be no technical reason keep using the legacy
properties if both the driver and the client support the new API.

1: https://lore.kernel.org/dri-devel/20260623164812.81110-1-harry.wentland@amd.com/

Signed-off-by: Robert Mader <robert.mader@collabora.com>

---

Changes in v2:
 - Replace the driver feature with a simple check (suggested by Maarten
   Lankhorst <maarten.lankhorst@linux.intel.com>)
 - Expand the commit message slightly and change the title
---
 drivers/gpu/drm/drm_ioctl.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_ioctl.c b/drivers/gpu/drm/drm_ioctl.c
index e2df4becce62..b2c0234eaf14 100644
--- a/drivers/gpu/drm/drm_ioctl.c
+++ b/drivers/gpu/drm/drm_ioctl.c
@@ -373,13 +373,26 @@ drm_setclientcap(struct drm_device *dev, void *data, struct drm_file *file_priv)
 			return -EINVAL;
 		file_priv->supports_virtualized_cursor_plane = req->value;
 		break;
-	case DRM_CLIENT_CAP_PLANE_COLOR_PIPELINE:
+	case DRM_CLIENT_CAP_PLANE_COLOR_PIPELINE: {
+		struct drm_plane *plane;
+		bool has_plane_with_color_pipeline = false;
+
+		drm_for_each_plane(plane, dev) {
+			if (plane->color_pipeline_property) {
+				has_plane_with_color_pipeline = true;
+				break;
+			}
+		}
+		if (!has_plane_with_color_pipeline)
+			return -EOPNOTSUPP;
+
 		if (!file_priv->atomic)
 			return -EINVAL;
 		if (req->value > 1)
 			return -EINVAL;
 		file_priv->plane_color_pipeline = req->value;
 		break;
+	}
 	default:
 		return -EINVAL;
 	}
-- 
2.55.0

