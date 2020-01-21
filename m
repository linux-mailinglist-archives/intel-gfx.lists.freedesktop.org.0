Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F23143564
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 02:53:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D4686EB6C;
	Tue, 21 Jan 2020 01:53:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 431116E1E2
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2020 01:53:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jan 2020 17:53:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,344,1574150400"; d="scan'208";a="426904359"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by fmsmga006.fm.intel.com with ESMTP; 20 Jan 2020 17:53:10 -0800
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>
Date: Tue, 21 Jan 2020 07:23:04 +0530
Message-Id: <20200121015305.10597-2-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200121015305.10597-1-ramalingam.c@intel.com>
References: <20200121015305.10597-1-ramalingam.c@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 1/2] drm: dumb buffer size availability
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

drm_getcap is added with another parameter called
DRM_CAP_DUMB_SIZE_AVAILABLE to get the available size
for dumb buffer from drm driver.

Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
---
 drivers/gpu/drm/drm_ioctl.c |  5 +++++
 include/drm/drm_drv.h       | 15 +++++++++++++++
 include/uapi/drm/drm.h      |  1 +
 3 files changed, 21 insertions(+)

diff --git a/drivers/gpu/drm/drm_ioctl.c b/drivers/gpu/drm/drm_ioctl.c
index 5afb39688b55..786d23f8c03a 100644
--- a/drivers/gpu/drm/drm_ioctl.c
+++ b/drivers/gpu/drm/drm_ioctl.c
@@ -302,6 +302,11 @@ static int drm_getcap(struct drm_device *dev, void *data, struct drm_file *file_
 	case DRM_CAP_CRTC_IN_VBLANK_EVENT:
 		req->value = 1;
 		break;
+	case DRM_CAP_DUMB_SIZE_AVAILABLE:
+		if (dev->driver->dumb_size_available)
+			return dev->driver->dumb_size_available(file_priv, dev,
+								&req->value);
+		break;
 	default:
 		return -EINVAL;
 	}
diff --git a/include/drm/drm_drv.h b/include/drm/drm_drv.h
index cf13470810a5..19404e604c03 100644
--- a/include/drm/drm_drv.h
+++ b/include/drm/drm_drv.h
@@ -677,6 +677,21 @@ struct drm_driver {
 	int (*dumb_create)(struct drm_file *file_priv,
 			   struct drm_device *dev,
 			   struct drm_mode_create_dumb *args);
+
+	/**
+	 * @dumb_size_available:
+	 *
+	 * This function calculates the available backin store for the
+	 * dumb buffer that can be created through dumb_create ioctl.
+	 *
+	 * Returns:
+	 *
+	 * Zero on success, negative errno on failure.
+	 */
+	int (*dumb_size_available)(struct drm_file *file_priv,
+				   struct drm_device *dev,
+				   uint64_t *avail_size);
+
 	/**
 	 * @dumb_map_offset:
 	 *
diff --git a/include/uapi/drm/drm.h b/include/uapi/drm/drm.h
index 868bf7996c0f..4da8ebc5aee2 100644
--- a/include/uapi/drm/drm.h
+++ b/include/uapi/drm/drm.h
@@ -651,6 +651,7 @@ struct drm_gem_open {
 #define DRM_CAP_CRTC_IN_VBLANK_EVENT	0x12
 #define DRM_CAP_SYNCOBJ		0x13
 #define DRM_CAP_SYNCOBJ_TIMELINE	0x14
+#define DRM_CAP_DUMB_SIZE_AVAILABLE	0x15
 
 /** DRM_IOCTL_GET_CAP ioctl argument type */
 struct drm_get_cap {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
