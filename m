Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF41E8BF758
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2024 09:45:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C78011286B;
	Wed,  8 May 2024 07:45:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WcEdlTSA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BDCD112868;
 Wed,  8 May 2024 07:45:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715154301; x=1746690301;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ar+GZNyjEU734acKH92tUeIPfXEJDXfexS0HZ0KJey4=;
 b=WcEdlTSAWApEOr5xmeLmlsII6n+QseCukERgwaSeSnXkQI/YhtON/uQY
 U444uYNJRg7Wl9PqR6fiX8ETosKvVsndQdsIwZpRnUkfO4jLY+Fn1lyKN
 ++15ScneMcd87wZv4g8H1j91mG1I2Udns6qbTC43KDOdm3J1h5os+YuS5
 qbDlcBpRXakHegjeLAFd+u46N855tZiJExIwLHefnYYOu74lQnwiKyxhy
 Br9d2/rnhsNDcoZqsW0tyHzid7W52DKd9/CQHSzvZ2YVArnZpO0hTEQEU
 1ixRYskTABMP/oF2EEnkUwWhfjPqdrPdkZMLKG2Fovpnad1xj1jzqV9FN w==;
X-CSE-ConnectionGUID: KSP4MUETTBSsHpzMWv0I4w==
X-CSE-MsgGUID: u4S+QqpySiePH73z98t95w==
X-IronPort-AV: E=McAfee;i="6600,9927,11066"; a="21665437"
X-IronPort-AV: E=Sophos;i="6.08,144,1712646000"; d="scan'208";a="21665437"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 00:45:01 -0700
X-CSE-ConnectionGUID: Tn7FYnigQYCMAPO+QXStnw==
X-CSE-MsgGUID: j2Qm3dIgTxmPj+qMej/BmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,144,1712646000"; d="scan'208";a="33273808"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa005.fm.intel.com with ESMTP; 08 May 2024 00:44:59 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, ville.syrjala@linux.intel.com,
 maarten.lankhorst@linux.intel.com
Subject: [PATCH 2/4] drm: Add helper to check if there are pending vblank work
Date: Wed,  8 May 2024 13:09:02 +0530
Message-Id: <20240508073904.1661848-3-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240508073904.1661848-1-chaitanya.kumar.borah@intel.com>
References: <20240508073904.1661848-1-chaitanya.kumar.borah@intel.com>
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

Add helper to check if there are pending vblank work for a crtc
which are yet to be scheduled.

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/drm_vblank_work.c | 24 ++++++++++++++++++++++++
 include/drm/drm_vblank_work.h     |  1 +
 2 files changed, 25 insertions(+)

diff --git a/drivers/gpu/drm/drm_vblank_work.c b/drivers/gpu/drm/drm_vblank_work.c
index 83a81a5e8280..1137a66d4153 100644
--- a/drivers/gpu/drm/drm_vblank_work.c
+++ b/drivers/gpu/drm/drm_vblank_work.c
@@ -254,6 +254,30 @@ void drm_vblank_work_flush_all(struct drm_crtc *crtc)
 }
 EXPORT_SYMBOL(drm_vblank_work_flush_all);
 
+/**
+ * drm_vblank_has_pending_work - Check if there are any currently pending vblank work on crtc.
+ * @crtc: crtc for which vblank work to flush
+ *
+ * Check if there are any pending vblank work on crtc, which are yet to be scheduled.
+ *
+ * Returns:
+ * %True if there are pending vblank workers, %false
+ * otherwise.
+ */
+bool drm_vblank_has_pending_work(struct drm_crtc *crtc)
+{
+	struct drm_device *dev = crtc->dev;
+	struct drm_vblank_crtc *vblank = &dev->vblank[drm_crtc_index(crtc)];
+	bool is_pending = false;
+
+	spin_lock_irq(&dev->event_lock);
+	is_pending = !list_empty(&vblank->pending_work);
+	spin_unlock_irq(&dev->event_lock);
+
+	return is_pending;
+}
+EXPORT_SYMBOL(drm_vblank_has_pending_work);
+
 /**
  * drm_vblank_work_init - initialize a vblank work item
  * @work: vblank work item
diff --git a/include/drm/drm_vblank_work.h b/include/drm/drm_vblank_work.h
index e04d436b7297..41ed27c8f74f 100644
--- a/include/drm/drm_vblank_work.h
+++ b/include/drm/drm_vblank_work.h
@@ -69,5 +69,6 @@ void drm_vblank_work_init(struct drm_vblank_work *work, struct drm_crtc *crtc,
 bool drm_vblank_work_cancel_sync(struct drm_vblank_work *work);
 void drm_vblank_work_flush(struct drm_vblank_work *work);
 void drm_vblank_work_flush_all(struct drm_crtc *crtc);
+bool drm_vblank_has_pending_work(struct drm_crtc *crtc);
 
 #endif /* !_DRM_VBLANK_WORK_H_ */
-- 
2.25.1

