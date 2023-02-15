Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC12697E2E
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 15:19:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 650A310E1D1;
	Wed, 15 Feb 2023 14:19:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA9DE10E1D1
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Feb 2023 14:19:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676470759; x=1708006759;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LnyS9Z0jEPB6e87gK/bh8RL/gPwVPB9py8eBFXbHs68=;
 b=n37xlk2mlAvPN+/GFKQ9ZeOG8+4nCRREml3MGURgnNd0cz67EjCjwTP0
 eYK/A3dJfdkmt61CTOYMJrzeoxC1hZBkDPoTdJgShvBk1quNYUqBbFwQY
 VZVooxaMo9oUYad2zQBFxQABQJFpTjPvTKR3AdmBkt7MYUXrMnfYNVHLc
 zBZ64dVLsRz5LwTOky7dgy6rH+NkW8UDBTJi4hWGn3WzkAWHCUzOJx5rd
 rWnDAAQBQXm9LXE3rYVretCkqC2gQWFiLb+2x/89zCWJF3OD5O65asHf+
 Iw/YGvf5OPPa4qICWB3OHo8tV+Foj0dw8UG/7liNXFxNe5xVhpgrL4LMP w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="329156515"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="329156515"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 06:19:19 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="662955782"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="662955782"
Received: from gchung-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.51.244])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 06:19:18 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Feb 2023 16:19:07 +0200
Message-Id: <20230215141910.433043-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230215141910.433043-1-jani.nikula@intel.com>
References: <20230215141910.433043-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/5] drm/i915/wm: warn about
 ilk_wm_sanitize() on display ver 9+
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

The sanitization should be limited to PCH split platforms up to display
version 8. Warn and bail out otherwise.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index f76ac64ebd71..50cdfe11192e 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -3437,6 +3437,9 @@ void ilk_wm_sanitize(struct drm_i915_private *dev_priv)
 	if (!dev_priv->display.funcs.wm->optimize_watermarks)
 		return;
 
+	if (drm_WARN_ON(&dev_priv->drm, DISPLAY_VER(dev_priv) >= 9))
+		return;
+
 	state = drm_atomic_state_alloc(&dev_priv->drm);
 	if (drm_WARN_ON(&dev_priv->drm, !state))
 		return;
-- 
2.34.1

