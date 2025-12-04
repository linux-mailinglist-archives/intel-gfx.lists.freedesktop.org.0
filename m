Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36E05CA3590
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Dec 2025 11:59:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C531010E962;
	Thu,  4 Dec 2025 10:59:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NEFss5A8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B289D10E95A;
 Thu,  4 Dec 2025 10:59:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764845960; x=1796381960;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YYPlscMjKKxSVu2L2vumG1lI/AuOhZVvfgYKaHwz9oU=;
 b=NEFss5A8HHCmBfcxUT8dX7GUl7cjYYubRtVaq+K0JbwQRyCOX6kOc+Mz
 IDQCmbExOih04639vH9rWaKpbJvV2p1xdFJ9gq1aRur7uqt6f8V3XlUIZ
 8i1CH2kkZGlhVTMUaOipVJr2pxcuOmydQxc9n/9oag6pY1ZRV9tSU8ro4
 43uVmkNXDBuA1OwGvuA3bzyaU0htV5Z3Mz7JFW4W2h4EfxOkkEpPvh3zE
 mNiEM+oKJg+oOgbbaImi/IsFB5v53uBIGMDmKX8pIOagFf71Jfh/OgUZQ
 4tG4tVUg358f7uIGCx1KvbIfQu3lm+/tOYs7TtC39yQ24lJxX+bjWuzam w==;
X-CSE-ConnectionGUID: /xAMLbkiSc2RmqjlOJ63Cw==
X-CSE-MsgGUID: fVoIs11+Rlm/3/McGwqplg==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="69456187"
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="69456187"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:59:19 -0800
X-CSE-ConnectionGUID: 3HTQTqNnTA+Z0EbmXtiEDg==
X-CSE-MsgGUID: 0qZ5Ml0STiK0sL8EPLJY3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="225627558"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.11])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:59:17 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: tzimmermann@suse.de, ville.syrjala@linux.intel.com,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 15/25] drm/vblank: pass vblank to
 drm_reset_vblank_timestamp()
Date: Thu,  4 Dec 2025 12:57:43 +0200
Message-ID: <77479e5928d15a2956bc6a2629851b44dd68f62a.1764845757.git.jani.nikula@intel.com>
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

Use the vblank pointer instead of a dev, pipe pair to simplify
code. Rename to drm_vblank_crtc_reset_timestamp().

v2: Rename (Thomas)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_vblank.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
index 5182dfc7b930..ed4a589c408f 100644
--- a/drivers/gpu/drm/drm_vblank.c
+++ b/drivers/gpu/drm/drm_vblank.c
@@ -245,8 +245,10 @@ static u32 __get_vblank_counter(struct drm_device *dev, unsigned int pipe)
  * Note: caller must hold &drm_device.vbl_lock since this reads & writes
  * device vblank fields.
  */
-static void drm_reset_vblank_timestamp(struct drm_device *dev, unsigned int pipe)
+static void drm_vblank_crtc_reset_timestamp(struct drm_vblank_crtc *vblank)
 {
+	struct drm_device *dev = vblank->dev;
+	unsigned int pipe = vblank->pipe;
 	u32 cur_vblank;
 	bool rc;
 	ktime_t t_vblank;
@@ -1490,7 +1492,7 @@ void drm_crtc_vblank_on_config(struct drm_crtc *crtc,
 		vblank->inmodeset = 0;
 	}
 
-	drm_reset_vblank_timestamp(dev, pipe);
+	drm_vblank_crtc_reset_timestamp(vblank);
 
 	/*
 	 * re-enable interrupts if there are users left, or the
-- 
2.47.3

