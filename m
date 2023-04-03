Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0E876D4FF7
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Apr 2023 20:06:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E7C410E550;
	Mon,  3 Apr 2023 18:06:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A79C10E53F;
 Mon,  3 Apr 2023 18:06:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680545197; x=1712081197;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=eHscwEMheJ4cQOtRwB5dbjbffFkoWmLdRVEuGZAKVt4=;
 b=XhClbhxbrvSBc/v7Dk9pbh7JLiRW+/VJnwF6KLZonFrFYIJMVmJeCccH
 NckxU3OFIXUzYSrFIR0/IQg0jY4PMGB5Nv+KYnMAJnCBfpkOnVyr126r0
 O9HU1yR+BwnCteyjAjzNWGjC8EcLVZahqQE6k+MLTO0x3d/eXDa1wtDG6
 bRy/qe6sCtNo66elG7E+e6iFxi7ewmiHDUSJeLqQkba+2EcQBobLAVPex
 6dgbTPC/Bv6I3Y5BUEqvHZ9SeoMdfFJH+lMIc8DSQAUfwpKdFhVhF1PV/
 +ARtg3fxiE+DEEG009HWCNtB2WY4HDmJhzbT6w3xPedSnj1lL7N4TnHZj A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="369787221"
X-IronPort-AV: E=Sophos;i="5.98,315,1673942400"; d="scan'208";a="369787221"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 11:06:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="860307729"
X-IronPort-AV: E=Sophos;i="5.98,315,1673942400"; d="scan'208";a="860307729"
Received: from unknown (HELO josouza-mobl2.fso.intel.com) ([10.230.18.148])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 11:06:23 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-xe@lists.freedesktop.org
Date: Mon,  3 Apr 2023 11:06:09 -0700
Message-Id: <20230403180614.197711-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/6] drm/i915: Nuke unused dsparb_lock
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

dsparb_lock it not used anymore, nuke it.

Cc: intel-gfx@lists.freedesktop.org
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_core.h | 3 ---
 drivers/gpu/drm/i915/i915_driver.c                | 1 -
 2 files changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index cc058eb303ee8..d2346d43d1162 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -266,9 +266,6 @@ struct intel_wm {
 	 */
 	struct mutex wm_mutex;
 
-	/* protects DSPARB registers on pre-g4x/vlv/chv */
-	spinlock_t dsparb_lock;
-
 	bool ipc_enabled;
 };
 
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 066d79c2069c4..ea2cc56d18a6e 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -214,7 +214,6 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 	spin_lock_init(&dev_priv->irq_lock);
 	spin_lock_init(&dev_priv->gpu_error.lock);
 	spin_lock_init(&dev_priv->display.fb_tracking.lock);
-	spin_lock_init(&dev_priv->display.wm.dsparb_lock);
 	mutex_init(&dev_priv->display.backlight.lock);
 
 	mutex_init(&dev_priv->sb_lock);
-- 
2.40.0

