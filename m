Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CNxgF7qBQ2oQZgoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 10:43:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 032BB6E1C43
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 10:43:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=zohomail header.b=j5ddAt9G;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("zohomail.com:s=zohoarc:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9694710EBA4;
	Tue, 30 Jun 2026 08:43:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com
 [136.143.188.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E037B10EBA4;
 Tue, 30 Jun 2026 08:43:35 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1782809005; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=SCSRk7aTYAhJax/fYc8iCskXLRwLaQQFK+EU68vU0vxhUfK7TtpwqlW7NmfL9onrqlduKaAs+MBU9UQUw+ZIJhZlPSGXQpvEYz6CkR0UPHJ3b5T81xhkhuVimtOq354s7QAXcIYBoVsyCB0TPuwk4pnRAyn3szV1C4J2wQMDfRA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1782809005;
 h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=3uTzBwtk9xyx4qwH6w0U3TQMKQFtVWsvk7rUOMUPkWc=; 
 b=MyIwurFODDdwuPdmzlJck3lCLzG2tynbmmgqjHZZ26REDGPJA/scBCQ3aeOeXWD/u3TzF4dxg/P3NdT3nU5TEPlipOFe/0uvJ2/ANE9fm9aEtkNMbh4oJVfrG+4/exMMZzYC10dyMlwH88SYlXrPBkH5+PmQPFjK23Z8XBhjkLs=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=collabora.com;
 spf=pass  smtp.mailfrom=robert.mader@collabora.com;
 dmarc=pass header.from=<robert.mader@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1782809005; 
 s=zohomail; d=collabora.com; i=robert.mader@collabora.com;
 h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
 bh=3uTzBwtk9xyx4qwH6w0U3TQMKQFtVWsvk7rUOMUPkWc=;
 b=j5ddAt9Gl27MlGnQ+VWCQgVtc6LYi1RQckPeaU+oufvOLCRDrRHhMcesIMNCc6dx
 +3CCVXoA7COn6lgazocfarDQuQNvNz9kvoe3qNZj8buDyIXFGB48BM7PSCsKF3ol9tm
 Dcrkgvmw8MdBLgs9UAdAXU/JWMrJ6YS+H+hJfJ0Q=
Received: by mx.zohomail.com with SMTPS id 178280900447820.58225834597306;
 Tue, 30 Jun 2026 01:43:24 -0700 (PDT)
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
Subject: [PATCH v1 4/4] drm/vkms: Add DRIVER_PLANE_COLOR_PIPELINE driver
 feature
Date: Tue, 30 Jun 2026 10:42:29 +0200
Message-ID: <20260630084229.529682-5-robert.mader@collabora.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,collabora.com:dkim,collabora.com:email,collabora.com:mid,collabora.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 032BB6E1C43

Which is now required for DRM_CLIENT_CAP_PLANE_COLOR_PIPELINE. Only
enable it if the enable_plane_pipeline option is enabled so otherwise
the legacy flags COLOR_ENCODING and COLOR_RANGE continue to be
supported.

Signed-off-by: Robert Mader <robert.mader@collabora.com>
---
 drivers/gpu/drm/vkms/vkms_drv.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/vkms/vkms_drv.c b/drivers/gpu/drm/vkms/vkms_drv.c
index 5a640b531d88..00bbde950521 100644
--- a/drivers/gpu/drm/vkms/vkms_drv.c
+++ b/drivers/gpu/drm/vkms/vkms_drv.c
@@ -91,7 +91,8 @@ static void vkms_atomic_commit_tail(struct drm_atomic_commit *old_state)
 }
 
 static const struct drm_driver vkms_driver = {
-	.driver_features	= DRIVER_MODESET | DRIVER_ATOMIC | DRIVER_GEM,
+	.driver_features	= DRIVER_MODESET | DRIVER_ATOMIC | DRIVER_GEM |
+				  DRIVER_PLANE_COLOR_PIPELINE,
 	.fops			= &vkms_driver_fops,
 	DRM_GEM_SHMEM_DRIVER_OPS,
 	DRM_FBDEV_SHMEM_DRIVER_OPS,
@@ -184,6 +185,9 @@ int vkms_create(struct vkms_config *config)
 	vkms_device->config = config;
 	config->dev = vkms_device;
 
+	if (!enable_plane_pipeline)
+		vkms_device->drm.driver_features &= ~DRIVER_PLANE_COLOR_PIPELINE;
+
 	ret = dma_coerce_mask_and_coherent(vkms_device->drm.dev,
 					   DMA_BIT_MASK(64));
 
-- 
2.54.0

