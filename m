Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B1A823D74
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 09:30:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D679E10E3C8;
	Thu,  4 Jan 2024 08:30:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 610F710E3C7
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 08:30:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704357004; x=1735893004;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=biEtJvbtJTYYtFsjmKxlSab92nzWnC3P4i/+G2jC9Jc=;
 b=ibbfu3RErlfhcU31A9qhUViEj9od1lSvgMBJq1TsdW0Qc1AvsJSMnKhB
 pj5EB0DE2HKq8qfFxemw+Goh1jdDqYp7Wgx4CWhX7yJCBGpD64B9ZML3A
 Srurh/vUowPfwKU4AzTpBTlzIJcfrycurGiiTV2bvKqwZ24sDVTv0WCeA
 YGFkB7jaQn/1ju2KuuBL+/e3Mqff//gHf4NaUsrzq/F9UONGmf5YQGlLY
 HS8+CucM+eyfmnqX34fzI3MWnzpz38sCUa9/X5WRt0d9kbvWa9YF08tN9
 k1DJKyKQaf48zPDGK+T9xVHNzLf0gkp/AWn+PDTKumi1AUtEHUlop+fG5 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="387624521"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="387624521"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 00:30:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="773422646"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="773422646"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 00:30:03 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 06/12] drm/i915: Suspend the framebuffer console earlier
 during system suspend
Date: Thu,  4 Jan 2024 10:30:02 +0200
Message-Id: <20240104083008.2715733-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240104083008.2715733-1-imre.deak@intel.com>
References: <20240104083008.2715733-1-imre.deak@intel.com>
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

Suspend the FB console early during system suspend to prevent new FB
probe/modeset cycles interfering with the HW uninitialization steps in a
similar way as during driver shutdown as described in the previous
patch.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 9269b485137ce..166476948c896 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1081,6 +1081,7 @@ static int i915_drm_suspend(struct drm_device *dev)
 	/* We do a lot of poking in a lot of registers, make sure they work
 	 * properly. */
 	intel_power_domains_disable(dev_priv);
+	intel_fbdev_set_suspend(dev, FBINFO_STATE_SUSPENDED, true);
 	if (HAS_DISPLAY(dev_priv))
 		drm_kms_helper_poll_disable(dev);
 
@@ -1104,8 +1105,6 @@ static int i915_drm_suspend(struct drm_device *dev)
 	opregion_target_state = suspend_to_idle(dev_priv) ? PCI_D1 : PCI_D3cold;
 	intel_opregion_suspend(dev_priv, opregion_target_state);
 
-	intel_fbdev_set_suspend(dev, FBINFO_STATE_SUSPENDED, true);
-
 	dev_priv->suspend_count++;
 
 	intel_dmc_suspend(dev_priv);
-- 
2.39.2

