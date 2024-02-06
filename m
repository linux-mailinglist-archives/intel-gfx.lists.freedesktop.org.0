Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C00D784B9D3
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Feb 2024 16:38:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8EC410F085;
	Tue,  6 Feb 2024 15:38:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UWB/MhaC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 821F310F085
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Feb 2024 15:38:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707233935; x=1738769935;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=nsE4KtMzHBAxAkTvgK7KyOWtIKYOdczXZT+EiF9Lk9g=;
 b=UWB/MhaC650EegdiO2cc2Y60X302nnTvmsmiyhtFnWLy9XxKvyKbi9on
 TlXv6Jk4Xq5y8/gtYolMBlEiLN/Cwy+7hLEvYYn4O58+HxqObOoNCn14V
 Uoyd87CfgtqiIAazLOaDmCpI6HqZKtJGjsCWjxfcIrfgdUq4txpKLCA9R
 a48bqU2Ml/4Ml5yyfJzqfJ6mrVkZMJ5Tq9iLfj0vnJ091GgyOvKh+YS8E
 RpZ0rnxQRX2ouHqgf/kMrHi4k8qg0FzTKKa8D5v93Slzd3S7jgJq8SHWn
 UHqWBMMOMXUVaDHAV4bZSDgZIk+Ou7cCYCmu/3MzZQVM9+6n1CwHYQtvl g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="914707"
X-IronPort-AV: E=Sophos;i="6.05,247,1701158400"; 
   d="scan'208";a="914707"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 07:38:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,247,1701158400"; 
   d="scan'208";a="5652260"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.66.155])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 07:38:54 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/2] drm/i915: Prevent HW access during init from SDVO TV
 get_modes hook
Date: Tue,  6 Feb 2024 17:39:09 +0200
Message-Id: <20240206153910.1758057-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240206153910.1758057-1-imre.deak@intel.com>
References: <20240206153910.1758057-1-imre.deak@intel.com>
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

Prevent accessing the HW from the SDVO/TV get_modes connector hook.
Returning 0 from the hook will make the caller -
drm_helper_probe_single_connector_modes() - keep the previously detected
mode list of the connector.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 2571ef5a1b211..ccea0efbd136f 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2287,6 +2287,7 @@ static const struct drm_display_mode sdvo_tv_modes[] = {
 static int intel_sdvo_get_tv_modes(struct drm_connector *connector)
 {
 	struct intel_sdvo *intel_sdvo = intel_attached_sdvo(to_intel_connector(connector));
+	struct drm_i915_private *i915 = to_i915(intel_sdvo->base.base.dev);
 	struct intel_sdvo_connector *intel_sdvo_connector =
 		to_intel_sdvo_connector(connector);
 	const struct drm_connector_state *conn_state = connector->state;
@@ -2298,6 +2299,9 @@ static int intel_sdvo_get_tv_modes(struct drm_connector *connector)
 	DRM_DEBUG_KMS("[CONNECTOR:%d:%s]\n",
 		      connector->base.id, connector->name);
 
+	if (!intel_display_driver_check_access(i915))
+		return 0;
+
 	/*
 	 * Read the list of supported input resolutions for the selected TV
 	 * format.
-- 
2.39.2

