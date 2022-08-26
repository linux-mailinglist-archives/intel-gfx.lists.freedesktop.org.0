Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73E045A2333
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Aug 2022 10:38:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0D4310E764;
	Fri, 26 Aug 2022 08:38:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A21EE10E74D
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Aug 2022 08:38:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661503107; x=1693039107;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZBIEREdxeKL8im69hlLZ1ZP0y3Sa9u1Ci7uc1EgHi1I=;
 b=M4vUjSYdQt4gRtsfyoBVbaHvzhPM8KqAbcRLfS9po7xz+LMDqk59/hbe
 55TKTCj7/u1cnawA/N86BByhGmKGMWF+peB2iPsXVPZbJV2owNwSaR31h
 o4WXPd+zDy0o0Y7d+pAqJwdnyLJxXZlet78fOZUhEEY0dfclWf2bOTMxf
 0I0BmcvxMWgUX43MVl9BYLKJ/Dobs/M2059QWa/+eE7iNCSkrnDmXlNEo
 KFcnl1UZ0fxl1oI8E33UKcYOeb4vcwq6KIbY/IHXwse9uWIDq5IXAJEPL
 JBLm2jaW+vFAsBq9F+GGocWuUQfVuUQFxfYa38DPBXbrTXOkt20wt0+Qq w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10450"; a="358425281"
X-IronPort-AV: E=Sophos;i="5.93,264,1654585200"; d="scan'208";a="358425281"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2022 01:38:27 -0700
X-IronPort-AV: E=Sophos;i="5.93,264,1654585200"; d="scan'208";a="671378080"
Received: from plomuzio-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.40.203])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2022 01:38:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 Aug 2022 11:38:13 +0300
Message-Id: <766ca4049aeedeaaaef1158ca912173412885409.1661503049.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1661503049.git.jani.nikula@intel.com>
References: <cover.1661503049.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/5] drm/i915/crt: replace BUG_ON() with
 drm_WARN_ON()
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

Avoid BUG_ON(). Replace with drm_WARN_ON() and early return.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 6a3893c8ff22..b92e2d0d14ea 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -643,7 +643,8 @@ static bool intel_crt_detect_ddc(struct drm_connector *connector)
 	struct i2c_adapter *i2c;
 	bool ret = false;
 
-	BUG_ON(crt->base.type != INTEL_OUTPUT_ANALOG);
+	if (drm_WARN_ON(&dev_priv->drm, crt->base.type != INTEL_OUTPUT_ANALOG))
+		return false;
 
 	i2c = intel_gmbus_get_adapter(dev_priv, dev_priv->vbt.crt_ddc_pin);
 	edid = intel_crt_get_edid(connector, i2c);
-- 
2.34.1

