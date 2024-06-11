Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1141903D76
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 15:34:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 037BE10E644;
	Tue, 11 Jun 2024 13:34:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="REYyqYad";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FD9610E644
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2024 13:33:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718112838; x=1749648838;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=JLWDW9EHO7OW8I3/cXri3J1ky6SkeOE8cmp/fPdP1o0=;
 b=REYyqYaddl/JJXe+MAWjduJ1AzLrX0dIpDpYZuaWcvnqvrDe2tA9kgu8
 9m+GW2/ExescdZQu/1r40/h7msqWk3a8K1iZykgu5Kfc5nomqDZj2hUZx
 Ro8U+tg3MPT7nG5C+E7i7r6TmDy1r0HmBjLf6nyxLTfD5iFpV/4ItSaRz
 ucJlBx50BSv4+ezcmzVA5gQ2eY6irmlZFH7IU7KJWKG3hIH+JwJwykKY8
 Uvll1Jj4frxE/C/uRaEcGgqkNjS4J3ziTFiDH+Qe0toW0Q7PAzn+yEeZd
 glfZqkFLYcLzRLdJg4fSSC4g2JApinmfAKn4fbXKl6tXgmJRqA9xeOVCG Q==;
X-CSE-ConnectionGUID: YFlLXD5NTRiQXAOFJWdW8Q==
X-CSE-MsgGUID: E1LPztFkQnGj2NZhIRTt0w==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="12018237"
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="12018237"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 06:33:58 -0700
X-CSE-ConnectionGUID: WtT8YpZAT4amEkwZYHMKfA==
X-CSE-MsgGUID: uqoQq5EDTdmC4h++bBiZRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="39421386"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 11 Jun 2024 06:33:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Jun 2024 16:33:55 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 04/11] drm/i915: Introduce intel_mode_vdisplay()
Date: Tue, 11 Jun 2024 16:33:37 +0300
Message-ID: <20240611133344.30673-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240611133344.30673-1-ville.syrjala@linux.intel.com>
References: <20240611133344.30673-1-ville.syrjala@linux.intel.com>
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

The DSB code will need to know the hardware's idea of vertical
active, as that is also what defines the start of undelayed
vblank. Introduce a helper that gives us that information,
in line with the other intel_mode_v*() functions.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vblank.c | 10 ++++++++++
 drivers/gpu/drm/i915/display/intel_vblank.h |  1 +
 2 files changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index e5db54b1c632..5b065e1cd4e4 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -557,6 +557,16 @@ void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state,
 	spin_unlock_irqrestore(&i915->drm.vblank_time_lock, irqflags);
 }
 
+int intel_mode_vdisplay(const struct drm_display_mode *mode)
+{
+	int vdisplay = mode->crtc_vdisplay;
+
+	if (mode->flags & DRM_MODE_FLAG_INTERLACE)
+		vdisplay = DIV_ROUND_UP(vdisplay, 2);
+
+	return vdisplay;
+}
+
 int intel_mode_vblank_start(const struct drm_display_mode *mode)
 {
 	int vblank_start = mode->crtc_vblank_start;
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.h b/drivers/gpu/drm/i915/display/intel_vblank.h
index b51ae2c1039e..7e526f6861e4 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.h
+++ b/drivers/gpu/drm/i915/display/intel_vblank.h
@@ -20,6 +20,7 @@ struct intel_vblank_evade_ctx {
 	bool need_vlv_dsi_wa;
 };
 
+int intel_mode_vdisplay(const struct drm_display_mode *mode);
 int intel_mode_vblank_start(const struct drm_display_mode *mode);
 int intel_mode_vblank_end(const struct drm_display_mode *mode);
 int intel_mode_vtotal(const struct drm_display_mode *mode);
-- 
2.44.2

