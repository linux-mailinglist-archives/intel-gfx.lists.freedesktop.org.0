Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D74998BE3D
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2024 15:45:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76CEC10E61C;
	Tue,  1 Oct 2024 13:45:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="muHoL6uv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D05710E61C
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2024 13:45:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727790336; x=1759326336;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zUj6XwHTCW5Ix23zj1o+i2Ekp9ym7zAJlsfFFOV5T5g=;
 b=muHoL6uvK5njPfVTOEOIr7s0lZZxua4x0ZeuS33tCQUUnK47GywvGleK
 bRDv/8bmd9/eoZjFMLlgIRF7R8IidkZvtx9XFYr1W2ol+MsppJ3qgOpuj
 jt9u9/HShCmT7MrL8YTDkPK3JeI2onlgteD+Fiowd9+VtrVutdciukC3b
 d8Iq6ORTVknvnjxdw3QLTObyesLxBTIr1pcBGZbEFTp4RYatIYBHpyqpm
 ssnUq+fjz1qP0+9HbQyc3tc1War7Mx00xiOYs0I+GDE5dlMS/+13T1LKa
 9UEPSi4N3AVdf56jxVbJz6fVTBPfwChaIE3h8R9bZstZjDI3ihezUmDUY g==;
X-CSE-ConnectionGUID: 0BGGOsuMSt6q2J1nZ+N6hQ==
X-CSE-MsgGUID: Qn5qY2BLSjiXt3UTQov3nw==
X-IronPort-AV: E=McAfee;i="6700,10204,11212"; a="30810250"
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; d="scan'208";a="30810250"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2024 06:45:36 -0700
X-CSE-ConnectionGUID: WSXHmuZ5RVGfpRdy165Lag==
X-CSE-MsgGUID: k0YrZ4bwRhGP8RWYC/QSmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; d="scan'208";a="73336368"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa007.fm.intel.com with ESMTP; 01 Oct 2024 06:45:34 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@intel.com, ankit.k.nautiyal@intel.com,
 uma.shankar@intel.com
Subject: [PATCH v13 1/3] drm/i915/vrr: Add helper to check if vrr possible
Date: Tue,  1 Oct 2024 19:17:01 +0530
Message-ID: <20241001134703.1128487-2-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20241001134703.1128487-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20241001134703.1128487-1-mitulkumar.ajitkumar.golani@intel.com>
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

Add helper to check if vrr is possible based on flipline
is computed.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 7 ++++++-
 drivers/gpu/drm/i915/display/intel_vrr.h | 1 +
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 9a51f5bac307..79db30e31324 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -56,6 +56,11 @@ bool intel_vrr_is_in_range(struct intel_connector *connector, int vrefresh)
 		vrefresh <= info->monitor_range.max_vfreq;
 }
 
+bool intel_vrr_possible(const struct intel_crtc_state *crtc_state)
+{
+	return (crtc_state->vrr.flipline) ? true : false;
+}
+
 void
 intel_vrr_check_modeset(struct intel_atomic_state *state)
 {
@@ -281,7 +286,7 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 		intel_de_rmw(display, CHICKEN_TRANS(cpu_transcoder),
 			     0, PIPE_VBLANK_WITH_DELAY);
 
-	if (!crtc_state->vrr.flipline) {
+	if (!intel_vrr_possible(crtc_state)) {
 		intel_de_write(display,
 			       TRANS_VRR_CTL(display, cpu_transcoder), 0);
 		return;
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 89937858200d..af921dda4619 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -15,6 +15,7 @@ struct intel_crtc_state;
 
 bool intel_vrr_is_capable(struct intel_connector *connector);
 bool intel_vrr_is_in_range(struct intel_connector *connector, int vrefresh);
+bool intel_vrr_possible(const struct intel_crtc_state *crtc_state);
 void intel_vrr_check_modeset(struct intel_atomic_state *state);
 void intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 			      struct drm_connector_state *conn_state);
-- 
2.46.0

