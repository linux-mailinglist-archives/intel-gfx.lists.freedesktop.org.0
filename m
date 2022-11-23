Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DFAB1636C42
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 22:20:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE3CB10E642;
	Wed, 23 Nov 2022 21:20:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 592A110E24E
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 21:19:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669238361; x=1700774361;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SZvfjG7EyniAU1Wxkml/xIybtajDFmcZAmjmDNgiWK4=;
 b=DJeWR6mSCvH7lD2ym59JmjP0RZMb/kjLiNXWXMY1DBrsWVIR8paJmt8S
 lLoYcEGAa870rvGGgbaXzLsL1O5+Q11fG0Dy2yPFbeY2koHgNOH9emTAx
 /QUS5lpWqBK0aUgA/NK/PCdmGIaGT7cPaky185Viu3gTWc+2/jQ3wE+rf
 oqMfjkUbfJwl4Sr0Qx+zoDzLluizUepoKpqqMY7nxKf05N5ZBehuBzkXo
 QYprymdrBa854yS14M7cQli/aCDJ4T/asSCgLFDb+1IRKcvo7iiChE3nX
 /ggZ0vDk3de5Q1p73wlGGj5Dre/8RADjxXyHwSgx6sEHTsYydXLPROq6W w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="312859721"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="312859721"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 13:19:20 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="636053097"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="636053097"
Received: from jgronski-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.16.163])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 13:19:19 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Nov 2022 23:18:25 +0200
Message-Id: <6d9653c249d4a863b4bec71b66ddb5718dd3c8c3.1669238194.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1669238194.git.jani.nikula@intel.com>
References: <cover.1669238194.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 12/12] drm/i915/fbc: switch to intel_de_*
 register accessors in display code
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

Avoid direct uncore use in display code. Use the new
intel_de_rewrite_fw().

Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index b5ee5ea0d010..6066ac412e6f 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -323,10 +323,7 @@ static void i8xx_fbc_nuke(struct intel_fbc *fbc)
 	enum i9xx_plane_id i9xx_plane = fbc_state->plane->i9xx_plane;
 	struct drm_i915_private *dev_priv = fbc->i915;
 
-	spin_lock_irq(&dev_priv->uncore.lock);
-	intel_de_write_fw(dev_priv, DSPADDR(i9xx_plane),
-			  intel_de_read_fw(dev_priv, DSPADDR(i9xx_plane)));
-	spin_unlock_irq(&dev_priv->uncore.lock);
+	intel_de_rewrite_fw(dev_priv, DSPADDR(i9xx_plane));
 }
 
 static void i8xx_fbc_program_cfb(struct intel_fbc *fbc)
@@ -359,10 +356,7 @@ static void i965_fbc_nuke(struct intel_fbc *fbc)
 	enum i9xx_plane_id i9xx_plane = fbc_state->plane->i9xx_plane;
 	struct drm_i915_private *dev_priv = fbc->i915;
 
-	spin_lock_irq(&dev_priv->uncore.lock);
-	intel_de_write_fw(dev_priv, DSPSURF(i9xx_plane),
-			  intel_de_read_fw(dev_priv, DSPSURF(i9xx_plane)));
-	spin_unlock_irq(&dev_priv->uncore.lock);
+	intel_de_rewrite_fw(dev_priv, DSPSURF(i9xx_plane));
 }
 
 static const struct intel_fbc_funcs i965_fbc_funcs = {
-- 
2.34.1

