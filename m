Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A93489A569
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 22:06:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC1061126D1;
	Fri,  5 Apr 2024 20:06:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BdiziDI6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B09AC10F910;
 Fri,  5 Apr 2024 20:06:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712347595; x=1743883595;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iVoVz84xNkJ3qtnThxvbHLuE/id7xykOrRxufehfhJ8=;
 b=BdiziDI6hH11yLwRQg3p2Wv6quirQisE36x6uaMHo9b2hHd85FM6ReiN
 S2ISJuzfUKEp9XuthdD6dkRzzoqmmu75jek8Xy7Geu0NQ1ezWCMy+iXJz
 +UTM2VXfS8xRyJLIYDO6Iyap3sEr31qXmcHFmoPBesEX+DH2udGS34VLd
 4LFcnX/eTmgtujLkSSiEste3IjHuXQDBJn3IcTN2qWHOc4gFL/GFhxGnF
 /ujGulCb9ZiOZpPKufqr3xWGUocNwzyNeb4IAON011EB1cHfMO9ppB8e5
 NY/7m/z1LXTSDOH+lG+BgSBPSywCoeAEWHR+mhBz6Sm/n6tMKT/ReIKyB A==;
X-CSE-ConnectionGUID: Jt8ctmoeQMqaKR66mRoZDA==
X-CSE-MsgGUID: JVlBcmNATAKKc8s0NEoWCg==
X-IronPort-AV: E=McAfee;i="6600,9927,11035"; a="18424129"
X-IronPort-AV: E=Sophos;i="6.07,182,1708416000"; d="scan'208";a="18424129"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 13:06:34 -0700
X-CSE-ConnectionGUID: 2p8hkAfdQkOD/H14Yb18Jg==
X-CSE-MsgGUID: sdznxUjLTdWrmXKA1Lm1dw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,182,1708416000"; d="scan'208";a="19710933"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 13:06:34 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: <intel-xe@lists.freedesktop.org>
Cc: intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH] drm/xe/display: Fix double mutex initialization
Date: Fri,  5 Apr 2024 13:07:11 -0700
Message-ID: <20240405200711.2041428-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

All of these mutexes are already initialized by the display side since
commit 3fef3e6ff86a ("drm/i915: move display mutex inits to display
code"), so the xe shouldn´t initialize them.

Fixes: 44e694958b95 ("drm/xe/display: Implement display support")
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index e4db069f0db3..6ec375c1c4b6 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -108,11 +108,6 @@ int xe_display_create(struct xe_device *xe)
 	xe->display.hotplug.dp_wq = alloc_ordered_workqueue("xe-dp", 0);
 
 	drmm_mutex_init(&xe->drm, &xe->sb_lock);
-	drmm_mutex_init(&xe->drm, &xe->display.backlight.lock);
-	drmm_mutex_init(&xe->drm, &xe->display.audio.mutex);
-	drmm_mutex_init(&xe->drm, &xe->display.wm.wm_mutex);
-	drmm_mutex_init(&xe->drm, &xe->display.pps.mutex);
-	drmm_mutex_init(&xe->drm, &xe->display.hdcp.hdcp_mutex);
 	xe->enabled_irq_mask = ~0;
 
 	err = drmm_add_action_or_reset(&xe->drm, display_destroy, NULL);
-- 
2.43.0

