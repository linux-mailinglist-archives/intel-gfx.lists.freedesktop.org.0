Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68645899078
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Apr 2024 23:35:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81F8311356E;
	Thu,  4 Apr 2024 21:35:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QPqohk0t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D459B11356B
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Apr 2024 21:35:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712266502; x=1743802502;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8fOqf9sM8ED3NZkn22cMy7HsqBncKh7GrKGKQH/sVD4=;
 b=QPqohk0tT+1xHZEHkXQ2YNBs0ZoBP6PkBm6vmEkhGgnGG2lEYIDGCKvx
 q7MiJRLS9tlxkXNIgqkqAotY4yCYi7imCPbPkHs6UDUoGrsAhsyqva5TW
 fb+jC/B0JX72mj1/1Bj05fBZ7+j+JEJUtqultzU8BEoqwZyvEJ3zAwPtu
 W6PjJLL1pC0ULXv+CBZTKCkNNm6rzOKrzEp5o2MQrLW9ITkFTqPGKi5IN
 yi4O50lbEMJq13lQPv8fqZ4e8QVnDyZXvIQXffwzEx5qZBJyUvVwe3Rnp
 58S2/RaVOiK01EZYrYOTp/A/aeMYoqAzu3wKnfDqykR6q1hTjl790EH8S A==;
X-CSE-ConnectionGUID: wJ8/pGNUQnqPDa2VE8Hazg==
X-CSE-MsgGUID: 7IxETN95QJ+raGXsRrFkCg==
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="7710802"
X-IronPort-AV: E=Sophos;i="6.07,180,1708416000"; 
   d="scan'208";a="7710802"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 14:35:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="827790612"
X-IronPort-AV: E=Sophos;i="6.07,180,1708416000"; d="scan'208";a="827790612"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 04 Apr 2024 14:34:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Apr 2024 00:34:57 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Vidya Srinivas <vidya.srinivas@intel.com>,
 Vandita Kulkarni <vandita.kulkarni@intel.com>
Subject: [PATCH v2 05/17] drm/i915/vrr: Disable VRR when using bigjoiner
Date: Fri,  5 Apr 2024 00:34:29 +0300
Message-ID: <20240404213441.17637-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240404213441.17637-1-ville.syrjala@linux.intel.com>
References: <20240404213441.17637-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

All joined pipes share the same transcoder/timing generator.
Currently we just do the commits per-pipe, which doesn't really
work if we need to change switch between non-VRR and VRR timings
generators on the fly, or even when sending the push to the
transcoder. For now just disable VRR when bigjoiner is needed.

Tested-by: Vidya Srinivas <vidya.srinivas@intel.com>
Reviewed-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 856378f8b90e..894ee97b3e1b 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -119,6 +119,13 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	const struct drm_display_info *info = &connector->base.display_info;
 	int vmin, vmax;
 
+	/*
+	 * FIXME all joined pipes share the same transcoder.
+	 * Need to account for that during VRR toggle/push/etc.
+	 */
+	if (crtc_state->bigjoiner_pipes)
+		return;
+
 	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
 		return;
 
-- 
2.43.2

