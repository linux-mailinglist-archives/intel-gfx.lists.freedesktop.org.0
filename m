Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF85ACA3560
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Dec 2025 11:58:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46CC210E926;
	Thu,  4 Dec 2025 10:58:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KIlwdrxd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16DA710E925;
 Thu,  4 Dec 2025 10:58:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764845891; x=1796381891;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=E6m5xMdtokxQfk/FVLzPIfWQaWb9e8R7HJTb6T1Evd4=;
 b=KIlwdrxd4U6ZyYlVTobs+YaT3VZkehX47nAKhNxOs6W7j5xVgKxeJp7A
 E7HZjMLEWnnkPQ4LB/9FBTxugEinJujvrFZgag1QSquptaSKj5MzFYMp+
 d2R7usyRz4o6uSyqR2qeGd7/Q1uglMnu6dQxhv2fpmHbYME0yTpfE4hTG
 1dH7r/nNgfUeGTX7CWtDQitEJHMlalNVAuYnqJZqyGdz0Kl/Ujm0Q15pH
 hf1vLfSEDDXMV4YT9e5BsiYYrrXmx6dNGFor9J/DKMJLkGpJxq3njRTU2
 UMxeZmHHqATLeXrINU+kDF2xMDfWfiBbJ93rKmLdfeh//ATraC4vv+yoX A==;
X-CSE-ConnectionGUID: yNDRaL4jTaSjEgV2KsWhXA==
X-CSE-MsgGUID: WUAs1uzsQyO1CFmp1lKw9g==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="78326981"
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="78326981"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:58:11 -0800
X-CSE-ConnectionGUID: XxIBvzALQI2vSY5dqW4VDA==
X-CSE-MsgGUID: d5EO3zk5TEuJzIYkTHsWhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="195064576"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.11])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:58:08 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: tzimmermann@suse.de, ville.syrjala@linux.intel.com,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 02/25] drm/vblank: remove drm_wait_one_vblank() completely
Date: Thu,  4 Dec 2025 12:57:30 +0200
Message-ID: <3702f44f3efde90c97f5d321204ce4163241b8ff.1764845757.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1764845757.git.jani.nikula@intel.com>
References: <cover.1764845757.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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

There's really no need for the extra static function at all.

Reviewed-by: Thomas Zimmermann <tzimmermann@suse.de>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_vblank.c | 25 +++++++++++--------------
 1 file changed, 11 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
index c15d6d9d0082..1d12836e3d80 100644
--- a/drivers/gpu/drm/drm_vblank.c
+++ b/drivers/gpu/drm/drm_vblank.c
@@ -1286,8 +1286,18 @@ void drm_crtc_vblank_put(struct drm_crtc *crtc)
 }
 EXPORT_SYMBOL(drm_crtc_vblank_put);
 
-static void drm_wait_one_vblank(struct drm_device *dev, unsigned int pipe)
+/**
+ * drm_crtc_wait_one_vblank - wait for one vblank
+ * @crtc: DRM crtc
+ *
+ * This waits for one vblank to pass on @crtc, using the irq driver interfaces.
+ * It is a failure to call this when the vblank irq for @crtc is disabled, e.g.
+ * due to lack of driver support or because the crtc is off.
+ */
+void drm_crtc_wait_one_vblank(struct drm_crtc *crtc)
 {
+	struct drm_device *dev = crtc->dev;
+	int pipe = drm_crtc_index(crtc);
 	struct drm_vblank_crtc *vblank = drm_vblank_crtc(dev, pipe);
 	int ret;
 	u64 last;
@@ -1310,19 +1320,6 @@ static void drm_wait_one_vblank(struct drm_device *dev, unsigned int pipe)
 
 	drm_vblank_put(dev, pipe);
 }
-
-/**
- * drm_crtc_wait_one_vblank - wait for one vblank
- * @crtc: DRM crtc
- *
- * This waits for one vblank to pass on @crtc, using the irq driver interfaces.
- * It is a failure to call this when the vblank irq for @crtc is disabled, e.g.
- * due to lack of driver support or because the crtc is off.
- */
-void drm_crtc_wait_one_vblank(struct drm_crtc *crtc)
-{
-	drm_wait_one_vblank(crtc->dev, drm_crtc_index(crtc));
-}
 EXPORT_SYMBOL(drm_crtc_wait_one_vblank);
 
 /**
-- 
2.47.3

