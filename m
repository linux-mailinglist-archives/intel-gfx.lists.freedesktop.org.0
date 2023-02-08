Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 915D068EE25
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Feb 2023 12:43:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3AE910E755;
	Wed,  8 Feb 2023 11:43:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3017310E753
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Feb 2023 11:43:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675856590; x=1707392590;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+CpOJ7nJNpl2OOaP4rFNI+sxdpJCioV1mlXlmuYN4mA=;
 b=Kkyb7IpHp+0r6SIcHIjEggNOFUqMR9QoIzwMXkWgO2epe/vyrKWOXZW2
 2uyRmY5P4v2C5qy6lICqr1VJ/F2iPqUQy/KHR9xbxI0WuiJCA+gZSMhlp
 2xitAEewguCyOgTIttxTK4U+ABYlZFLwgK4pQX9tufphdh3CrcK0WElza
 M8AZnw9bGF5+ReoaCF81BYhErmiIYLDffkjCqG6XTDmOZ4QOE9RCOruEp
 eSusWd0X8wkWM7hcK98cG78DBizirSsDjgza2n+gDT2nYD9VQp4ov/TnD
 GCihcIzNl2qqlrAirUI1dRwcod3+1LmD55CG8h+TqVjfxvdCBFsHIVavQ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="313415508"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="313415508"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 03:43:10 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="699620694"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="699620694"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 03:43:08 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Feb 2023 13:43:00 +0200
Message-Id: <20230208114300.3123934-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230208114300.3123934-1-imre.deak@intel.com>
References: <20230208114300.3123934-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/4] drm/i915: Sanitize the display fused-off
 check on GEN7/8
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Detecting in intel_device_info_runtime_init() that the display is fused
off or not present should only zero intel_runtime_info::pipe_mask, while
the other related masks will be accordingly zeroed later in the
function. Remove the redundant zeroing of the related fields on GEN7/8.

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/intel_device_info.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index e07deb4630f97..b9ec184b5aab5 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -465,8 +465,6 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 			drm_info(&dev_priv->drm,
 				 "Display fused off, disabling\n");
 			runtime->pipe_mask = 0;
-			runtime->cpu_transcoder_mask = 0;
-			runtime->fbc_mask = 0;
 		} else if (fuse_strap & IVB_PIPE_C_DISABLE) {
 			drm_info(&dev_priv->drm, "PipeC fused off\n");
 			runtime->pipe_mask &= ~BIT(PIPE_C);
-- 
2.37.1

