Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9990CA3566
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Dec 2025 11:58:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C36110E93B;
	Thu,  4 Dec 2025 10:58:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VLxpBMlF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3199410E921;
 Thu,  4 Dec 2025 10:58:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764845903; x=1796381903;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=z5IHqaZJyCAoSQ8SXKSsxs61AzGTxDk7PgeCnIoQwQ8=;
 b=VLxpBMlFnhNteLzS5GS2Fhy4klmqNg9KGGyzYxCHayzxAzc2VDw8G1R2
 GAwv5kbxZIIa6no6yYL9oPSBVkoYlBwS7mbaCJ5KK5qTDxArmRbd8vHSC
 i5nh5dtwxvtYDLRwNddVM4YZSd5zlBvzKKLQLs8w9TQJ5KgJfzwRKsKQK
 v+BFQoDcYTLe71dkrbEQ7tXATSHRAXzgKtrcx6/3DCyDi/EobsQjeDP2a
 QX69eaZ7QQ/sCoZd5OSaouPr+3sATP/+UTItZUTTYYKiCGDSNvjuXUgaO
 xTtbNqnMP9UWS2cttBp05vcoL2kRNtQeTfeI6mkY8KkVa6pL6NGQuyiUO Q==;
X-CSE-ConnectionGUID: PdbRR9qaRWSuF9aBrhz8CA==
X-CSE-MsgGUID: Jt/s4rtZSM+CjrQ2/shhIA==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="78326995"
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="78326995"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:58:23 -0800
X-CSE-ConnectionGUID: PlQuQVJ3QxWYg7dnxj0ybw==
X-CSE-MsgGUID: dPF+QL5nTeqBNl+F8SE06g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="195064594"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.11])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:58:19 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: tzimmermann@suse.de, ville.syrjala@linux.intel.com,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 04/25] drm/vblank: add return value to
 drm_crtc_wait_one_vblank()
Date: Thu,  4 Dec 2025 12:57:32 +0200
Message-ID: <d994e422fa34886e8c3fe8fb8e07fb79195084ff.1764845757.git.jani.nikula@intel.com>
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

Let drivers deal with the vblank wait failures if they so desire. If the
current warning backtrace gets toned down to a simple warning message,
the drivers may wish to add the backtrace themselves.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_vblank.c | 8 ++++++--
 include/drm/drm_vblank.h     | 2 +-
 2 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
index f4d1fe182a4d..503eb23d38d2 100644
--- a/drivers/gpu/drm/drm_vblank.c
+++ b/drivers/gpu/drm/drm_vblank.c
@@ -1293,8 +1293,10 @@ EXPORT_SYMBOL(drm_crtc_vblank_put);
  * This waits for one vblank to pass on @crtc, using the irq driver interfaces.
  * It is a failure to call this when the vblank irq for @crtc is disabled, e.g.
  * due to lack of driver support or because the crtc is off.
+ *
+ * Returns: 0 on success, negative error on failures.
  */
-void drm_crtc_wait_one_vblank(struct drm_crtc *crtc)
+int drm_crtc_wait_one_vblank(struct drm_crtc *crtc)
 {
 	struct drm_device *dev = crtc->dev;
 	int pipe = drm_crtc_index(crtc);
@@ -1305,7 +1307,7 @@ void drm_crtc_wait_one_vblank(struct drm_crtc *crtc)
 	ret = drm_vblank_get(dev, pipe);
 	if (drm_WARN(dev, ret, "vblank not available on crtc %i, ret=%i\n",
 		     pipe, ret))
-		return;
+		return ret;
 
 	last = drm_vblank_count(dev, pipe);
 
@@ -1316,6 +1318,8 @@ void drm_crtc_wait_one_vblank(struct drm_crtc *crtc)
 	drm_WARN(dev, ret == 0, "vblank wait timed out on crtc %i\n", pipe);
 
 	drm_vblank_put(dev, pipe);
+
+	return ret ? 0 : -ETIMEDOUT;
 }
 EXPORT_SYMBOL(drm_crtc_wait_one_vblank);
 
diff --git a/include/drm/drm_vblank.h b/include/drm/drm_vblank.h
index 94ee09b48895..2fcef9c0f5b1 100644
--- a/include/drm/drm_vblank.h
+++ b/include/drm/drm_vblank.h
@@ -302,7 +302,7 @@ bool drm_handle_vblank(struct drm_device *dev, unsigned int pipe);
 bool drm_crtc_handle_vblank(struct drm_crtc *crtc);
 int drm_crtc_vblank_get(struct drm_crtc *crtc);
 void drm_crtc_vblank_put(struct drm_crtc *crtc);
-void drm_crtc_wait_one_vblank(struct drm_crtc *crtc);
+int drm_crtc_wait_one_vblank(struct drm_crtc *crtc);
 void drm_crtc_vblank_off(struct drm_crtc *crtc);
 void drm_crtc_vblank_reset(struct drm_crtc *crtc);
 void drm_crtc_vblank_on_config(struct drm_crtc *crtc,
-- 
2.47.3

