Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B43458B6EDE
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 11:56:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13E9F10F4CC;
	Tue, 30 Apr 2024 09:56:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="goeQG/NB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 003FD10F507
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2024 09:56:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714471008; x=1746007008;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Rs3FZi1xuS0Rja/jbmHMwoUChZ+p6qkRMRpzUqupod0=;
 b=goeQG/NBjN/V3epAJGieH9NwXHsVLDGiCODuhu9z45I6gHtP43rlgKoU
 NmmVX8l9Qor4fIUVBORAl86NvQYnB87Di2A41sDY1Chxizf80RPnnzhKh
 9xbvCxgQlXVyN+Qpe2sSMh7Ac6pKz+gq81+bYPEqj2ileJoS8ICx6r3ob
 ysOzPBz8oF0DCkXOU+6RO2M9fYcMnki47D569aMFBgRultlr/wI+Q+bB9
 5VPMCCIWP5S0EpNqzpElPpHSiKqcQQnBf8Pa14bV0p7KauhPRSPSfavvG
 vQpv+8JQavOTsX19Cf7+emxRPizFRwDxypfd6dnKAjBI53MJ/DZi+X5+t A==;
X-CSE-ConnectionGUID: HkMZHislTBS07QtDk02oIg==
X-CSE-MsgGUID: u7ehCxQ3QtOzx7UIeHM6Fg==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="27617858"
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="27617858"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 02:56:48 -0700
X-CSE-ConnectionGUID: y7g5S4YNSjqBs08/vYfBmQ==
X-CSE-MsgGUID: jdFOE5yWS5eLWO99z0BX1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="26419310"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 30 Apr 2024 02:56:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 30 Apr 2024 12:56:44 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH v2 2/5] drm/i915: Reject async flips if we need to change
 DDB/watermarks
Date: Tue, 30 Apr 2024 12:56:36 +0300
Message-ID: <20240430095639.26390-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240430095639.26390-1-ville.syrjala@linux.intel.com>
References: <20240430095639.26390-1-ville.syrjala@linux.intel.com>
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

DDB/watermarks are always double buffered on the vblank, so we
can't safely change them during async flips. Currently this never
happens, but we'll be making changing between sync and async
flips a bit more flexible, in which case we can actually end up
here.

Reviewed-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 7c6187b4479f..e6476aa621a7 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2540,6 +2540,12 @@ skl_ddb_add_affected_planes(const struct intel_crtc_state *old_crtc_state,
 					&new_crtc_state->wm.skl.plane_ddb_y[plane_id]))
 			continue;
 
+		if (new_crtc_state->do_async_flip) {
+			drm_dbg_kms(&i915->drm, "[PLANE:%d:%s] Can't change DDB during async flip\n",
+				    plane->base.base.id, plane->base.name);
+			return -EINVAL;
+		}
+
 		plane_state = intel_atomic_get_plane_state(state, plane);
 		if (IS_ERR(plane_state))
 			return PTR_ERR(plane_state);
@@ -2899,6 +2905,12 @@ static int skl_wm_add_affected_planes(struct intel_atomic_state *state,
 						 &new_crtc_state->wm.skl.optimal))
 			continue;
 
+		if (new_crtc_state->do_async_flip) {
+			drm_dbg_kms(&i915->drm, "[PLANE:%d:%s] Can't change watermarks during async flip\n",
+				    plane->base.base.id, plane->base.name);
+			return -EINVAL;
+		}
+
 		plane_state = intel_atomic_get_plane_state(state, plane);
 		if (IS_ERR(plane_state))
 			return PTR_ERR(plane_state);
-- 
2.43.2

