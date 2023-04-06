Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1677F6D9A70
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Apr 2023 16:34:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1027C10EC0B;
	Thu,  6 Apr 2023 14:34:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 555FB10EC08;
 Thu,  6 Apr 2023 14:34:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680791650; x=1712327650;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=eHscwEMheJ4cQOtRwB5dbjbffFkoWmLdRVEuGZAKVt4=;
 b=XTwk1WQDKyo8JS7W9BH1u+b6YwNSuD8ZsNfbfN8EzZP9MQUsRbJLt/A7
 gTR+4fAJ8HoCTuFd71nfDOYytMAncr/QxMW/cbqRfNMuWLNDDWbaCq8gW
 5Sv9GTxvKv0EocTSYFPnaOiiPgWvYkSW8jFj+BpiQ9PU9trulsH7FrE2y
 OY/XzV6yPTvDWP5VjZQgnJJ/iBnvg16ujBro+xgdFGLCMZNVAFwO00kYu
 1X8E47Yrf0XeIad1fJuXy09jlEybL7I0uOI1r2JwLqcqAuuu4ROyd9n1Y
 x/y5lXM17rJwaZRmV9ZAJWHlCqa64FfOr/fib0UkiDvk0CDPWWeYDw4IH g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10672"; a="331384529"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="331384529"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 07:31:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10672"; a="664488414"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="664488414"
Received: from josouza-mobl2.fso.intel.com ([10.230.18.148])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 07:31:40 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-xe@lists.freedesktop.org
Date: Thu,  6 Apr 2023 07:31:28 -0700
Message-Id: <20230406143133.29474-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 rebased 1/6] drm/i915: Nuke unused dsparb_lock
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

