Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B69CA3572
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Dec 2025 11:58:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D36010E935;
	Thu,  4 Dec 2025 10:58:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OX+J6cdA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BA9A10E92E;
 Thu,  4 Dec 2025 10:58:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764845919; x=1796381919;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/ID4vRny/vKU2A0rxemD72OUI4rMIef8GB8tp7a5oE0=;
 b=OX+J6cdA27G0oqjuhq8oy9u+bv2i5+kdmlvShJ2NJC7nDuRGO5T9nfvd
 iVNepN1P2hy8yAndV9LEl5WPn/UE8FoHJuZVhp5q17kwE969YYSh4AqKd
 2PfAHw80zYmZyhxw7KYfhpNh1ZOBYG0oedliYQ8QmbUkZDXambjMAbuvt
 kt7FkMpjbuX0vATlIFny1drJMhxsoyp9mtZWK8wC/3s0RYih15EEzkA0c
 KwCvY8L/hMCf9WbWv65jp5EiuzkmqXKnOlqxHjfcDXtt/kDCU8W3zcsBq
 VmVlEOGfL30zCHRxzVs7EuGcSFOqz9ewouq+MTdXQTKa+fRuX0yZNQOa9 w==;
X-CSE-ConnectionGUID: 2W5Hg0k4Tj6idJTb9l37xA==
X-CSE-MsgGUID: 7c0kTN0kRByqBpCo14mWNA==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="65856875"
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="65856875"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:58:39 -0800
X-CSE-ConnectionGUID: SAkKp1quQkSr32yOErtVUA==
X-CSE-MsgGUID: ugp1tbqJSVioso5UO9TB2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="199904223"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.11])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:58:36 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: tzimmermann@suse.de, ville.syrjala@linux.intel.com,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 07/25] drm/vblank: prefer drm_crtc_vblank_crtc() over
 drm_vblank_crtc()
Date: Thu,  4 Dec 2025 12:57:35 +0200
Message-ID: <a0387a358b962e07344adbc9b7705040e42620a3.1764845757.git.jani.nikula@intel.com>
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

Use the higher level function where crtc is available.

v2: Rebase

Reviewed-by: Thomas Zimmermann <tzimmermann@suse.de>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_vblank.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
index a86561c4b999..498fc91450e6 100644
--- a/drivers/gpu/drm/drm_vblank.c
+++ b/drivers/gpu/drm/drm_vblank.c
@@ -731,7 +731,7 @@ drm_crtc_vblank_helper_get_vblank_timestamp_internal(
 	}
 
 	if (drm_drv_uses_atomic_modeset(dev)) {
-		struct drm_vblank_crtc *vblank = drm_vblank_crtc(dev, pipe);
+		struct drm_vblank_crtc *vblank = drm_crtc_vblank_crtc(crtc);
 
 		mode = &vblank->hwmode;
 	} else {
@@ -1304,7 +1304,7 @@ int drm_crtc_wait_one_vblank(struct drm_crtc *crtc)
 {
 	struct drm_device *dev = crtc->dev;
 	int pipe = drm_crtc_index(crtc);
-	struct drm_vblank_crtc *vblank = drm_vblank_crtc(dev, pipe);
+	struct drm_vblank_crtc *vblank = drm_crtc_vblank_crtc(crtc);
 	int ret;
 	u64 last;
 
-- 
2.47.3

