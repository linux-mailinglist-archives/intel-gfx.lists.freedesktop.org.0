Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD7E0CA3569
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Dec 2025 11:58:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D49010E929;
	Thu,  4 Dec 2025 10:58:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Or83dJhb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6B8610E929;
 Thu,  4 Dec 2025 10:58:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764845909; x=1796381909;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rLnCh6bhk4Kvp0XhV9C6I4fBiO3vl2yG6F1ChFwEhNY=;
 b=Or83dJhbiqVkAlsT0ixn6H25zitJA1FMPAZJcPKuFHJhXjbSVZiIa+TS
 KYfre9iQLPLYr9HFHaStfTHshPNuD/mhjBi7aZgzzpG8SbuDdNAszoO32
 z8kaZUp9k8rulzCyZiPLkzny1KkV9W7zS7RLDrxB3FpTub5yw6C0+rrB0
 /n8C+K7XeJfz3TyXXbBnw/Rx+a1MzelEYsftUhjrh22lizFzUKvmXruRt
 plLEEnxA2rCCw9P9gICifeLjbVQV8o925FH8Q/f3/D7ZBAI+/40lSJviG
 e3AqiYQHypBSQLw9ZoI5xzQ3Ai0Row6aBGhrj/165Lf21tOmmnTh9UOQf Q==;
X-CSE-ConnectionGUID: 0TG0D0UEQjeODm7ABweGtw==
X-CSE-MsgGUID: aASCEIWeS4m1TZ34sRYiAA==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="78327003"
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="78327003"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:58:29 -0800
X-CSE-ConnectionGUID: NE5K1ZOJQLSO9RRmgMqaSg==
X-CSE-MsgGUID: vpjRP4ZiTuyCBVe7Kml2eQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="195064603"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.11])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:58:25 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: tzimmermann@suse.de, ville.syrjala@linux.intel.com,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 05/25] drm/vblank: limit vblank variable scope to atomic
Date: Thu,  4 Dec 2025 12:57:33 +0200
Message-ID: <9c154f4f4da3be32d012ca238377118589ee7864.1764845757.git.jani.nikula@intel.com>
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

In drm_crtc_vblank_helper_get_vblank_timestamp_internal(), we only need
the vblank variable for atomic modesetting. Limit the scope to make
upcoming changes easier.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_vblank.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
index 503eb23d38d2..91e63177daaf 100644
--- a/drivers/gpu/drm/drm_vblank.c
+++ b/drivers/gpu/drm/drm_vblank.c
@@ -710,7 +710,6 @@ drm_crtc_vblank_helper_get_vblank_timestamp_internal(
 {
 	struct drm_device *dev = crtc->dev;
 	unsigned int pipe = crtc->index;
-	struct drm_vblank_crtc *vblank = &dev->vblank[pipe];
 	struct timespec64 ts_etime, ts_vblank_time;
 	ktime_t stime, etime;
 	bool vbl_status;
@@ -729,10 +728,13 @@ drm_crtc_vblank_helper_get_vblank_timestamp_internal(
 		return false;
 	}
 
-	if (drm_drv_uses_atomic_modeset(dev))
+	if (drm_drv_uses_atomic_modeset(dev)) {
+		struct drm_vblank_crtc *vblank = &dev->vblank[pipe];
+
 		mode = &vblank->hwmode;
-	else
+	} else {
 		mode = &crtc->hwmode;
+	}
 
 	/* If mode timing undefined, just return as no-op:
 	 * Happens during initial modesetting of a crtc.
-- 
2.47.3

