Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8E8B642873
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Dec 2022 13:29:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7012E10E1CB;
	Mon,  5 Dec 2022 12:29:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC68210E1CB
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Dec 2022 12:29:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670243365; x=1701779365;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tBEfdUQjDfD76I87WM/cxeCydcBUIs0tliVrwnPUenM=;
 b=RubG14ittmgSvWsbbcJ6HJvtZeWEQIJSj0CSR5lzpXF/8p1g5BuFHwxP
 t+8I1KXBnPiqCpoImVjhzPxop9Wp+PAN0TfJwQZqzADURoW8GoW+h1xQ+
 ZUFxICKV+U7zLmIJaUTWN1kXf8cCtb2S0F8YzMbHOnIb4lzGg4ib4jxR9
 XblX5jgihnEcRodgXtQBq1Gxf7psJeM7a7Bu9h1bMrlOEHcNqiFl4+7Nl
 jkVDc6k4zvt8L8/OahydBDd2nou3p1nmnwdxZW8nJuqgEZOqBdaoiGVp2
 8YsGMO1EQ2LuezgLOCrLZZteQ2rnXilnhhTy7LTONqzJfBc5uN2onrMoM g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10551"; a="303953537"
X-IronPort-AV: E=Sophos;i="5.96,219,1665471600"; d="scan'208";a="303953537"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 04:29:24 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10551"; a="890944027"
X-IronPort-AV: E=Sophos;i="5.96,219,1665471600"; d="scan'208";a="890944027"
Received: from akramiss-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.54.203])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 04:29:22 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  5 Dec 2022 14:29:18 +0200
Message-Id: <20221205122918.3092092-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/fbc: drop uncore locking around
 i8xx/i965 fbc nuke
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The locking should not be needed after commits de5bd083d247
("drm/i915/fbc: Skip nuke when flip is pending") and 7cfd1a18c5f9
("drm/i915: Remove remaining locks from i9xx plane udpates").

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index b5ee5ea0d010..deba0c49c827 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -323,10 +323,8 @@ static void i8xx_fbc_nuke(struct intel_fbc *fbc)
 	enum i9xx_plane_id i9xx_plane = fbc_state->plane->i9xx_plane;
 	struct drm_i915_private *dev_priv = fbc->i915;
 
-	spin_lock_irq(&dev_priv->uncore.lock);
 	intel_de_write_fw(dev_priv, DSPADDR(i9xx_plane),
 			  intel_de_read_fw(dev_priv, DSPADDR(i9xx_plane)));
-	spin_unlock_irq(&dev_priv->uncore.lock);
 }
 
 static void i8xx_fbc_program_cfb(struct intel_fbc *fbc)
@@ -359,10 +357,8 @@ static void i965_fbc_nuke(struct intel_fbc *fbc)
 	enum i9xx_plane_id i9xx_plane = fbc_state->plane->i9xx_plane;
 	struct drm_i915_private *dev_priv = fbc->i915;
 
-	spin_lock_irq(&dev_priv->uncore.lock);
 	intel_de_write_fw(dev_priv, DSPSURF(i9xx_plane),
 			  intel_de_read_fw(dev_priv, DSPSURF(i9xx_plane)));
-	spin_unlock_irq(&dev_priv->uncore.lock);
 }
 
 static const struct intel_fbc_funcs i965_fbc_funcs = {
-- 
2.34.1

