Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FCACCA355D
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Dec 2025 11:58:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CECD10E923;
	Thu,  4 Dec 2025 10:58:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hTifbwJ2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B81B10E923;
 Thu,  4 Dec 2025 10:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764845886; x=1796381886;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7tRzDjly9ayEiizg1rHgxaxzRNj3SFectyVgo3EZjHE=;
 b=hTifbwJ2DsFIgd1g9LEppWvsAiHKEpoQpk0TCoJBZx3BA2D8yKFRor1B
 kPwQrBRs20/vicmnQOr4Z2fgWCP8Lh8WXibnKpgSLhO15ahutPlZtE4/w
 ySetg6ZKCfgmUUbxIkbQuGMfz7xIX0YmUz1uXW0uyjiWXsEzqr8eCSJgA
 64WtQwHGZTrSJiKqwWiIwrDl0Q8LQw5RkVpj5WDDS46DkmXvAeQdXmBCm
 IKIkS9h0U9wetgprGvSaEmXn+EAMgmZb9Xi81YRYzVJNwKNBEubG9cs46
 oV9NVYYLYaKmCXzCP5FPT5wCvPnpfUFOqbMpdW3BfPaO3sP4gbqkWCLW3 g==;
X-CSE-ConnectionGUID: lXGDzmWfQvCakMqgKnBscQ==
X-CSE-MsgGUID: NcqgJJkDQQmSvheckE5YDA==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="78326975"
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="78326975"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:58:05 -0800
X-CSE-ConnectionGUID: Hskssd0DRQyz8ipdyhOmFA==
X-CSE-MsgGUID: Trl4i/g6T0CsEaCtbsHd8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="195064568"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.11])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:58:03 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: tzimmermann@suse.de, ville.syrjala@linux.intel.com,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 01/25] drm/vblank: Unexport drm_wait_one_vblank()
Date: Thu,  4 Dec 2025 12:57:29 +0200
Message-ID: <cb584b0666704e14b79091bbf48984b5c881456c.1764845757.git.jani.nikula@intel.com>
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

From: Thomas Zimmermann <tzimmermann@suse.de>

Make drm_wait_on_vblank() static. The function is an internal interface
and not invoked directly by drivers.

Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_vblank.c | 14 +-------------
 include/drm/drm_vblank.h     |  1 -
 2 files changed, 1 insertion(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
index 32d013c5c8fc..c15d6d9d0082 100644
--- a/drivers/gpu/drm/drm_vblank.c
+++ b/drivers/gpu/drm/drm_vblank.c
@@ -1286,18 +1286,7 @@ void drm_crtc_vblank_put(struct drm_crtc *crtc)
 }
 EXPORT_SYMBOL(drm_crtc_vblank_put);
 
-/**
- * drm_wait_one_vblank - wait for one vblank
- * @dev: DRM device
- * @pipe: CRTC index
- *
- * This waits for one vblank to pass on @pipe, using the irq driver interfaces.
- * It is a failure to call this when the vblank irq for @pipe is disabled, e.g.
- * due to lack of driver support or because the crtc is off.
- *
- * This is the legacy version of drm_crtc_wait_one_vblank().
- */
-void drm_wait_one_vblank(struct drm_device *dev, unsigned int pipe)
+static void drm_wait_one_vblank(struct drm_device *dev, unsigned int pipe)
 {
 	struct drm_vblank_crtc *vblank = drm_vblank_crtc(dev, pipe);
 	int ret;
@@ -1321,7 +1310,6 @@ void drm_wait_one_vblank(struct drm_device *dev, unsigned int pipe)
 
 	drm_vblank_put(dev, pipe);
 }
-EXPORT_SYMBOL(drm_wait_one_vblank);
 
 /**
  * drm_crtc_wait_one_vblank - wait for one vblank
diff --git a/include/drm/drm_vblank.h b/include/drm/drm_vblank.h
index ffa564d79638..94ee09b48895 100644
--- a/include/drm/drm_vblank.h
+++ b/include/drm/drm_vblank.h
@@ -302,7 +302,6 @@ bool drm_handle_vblank(struct drm_device *dev, unsigned int pipe);
 bool drm_crtc_handle_vblank(struct drm_crtc *crtc);
 int drm_crtc_vblank_get(struct drm_crtc *crtc);
 void drm_crtc_vblank_put(struct drm_crtc *crtc);
-void drm_wait_one_vblank(struct drm_device *dev, unsigned int pipe);
 void drm_crtc_wait_one_vblank(struct drm_crtc *crtc);
 void drm_crtc_vblank_off(struct drm_crtc *crtc);
 void drm_crtc_vblank_reset(struct drm_crtc *crtc);
-- 
2.47.3

