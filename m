Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACEC0CAF077
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 07:29:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF91A10E482;
	Tue,  9 Dec 2025 06:29:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G1fFZ7C5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93FD610E1BF;
 Tue,  9 Dec 2025 06:29:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765261757; x=1796797757;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9ZvjNMocqYfVCZjHUEozhVlQ+ZTUIjElNdJRXZuWHew=;
 b=G1fFZ7C5QEBR5pckK5+P9PbXPQA/TDdmmmIzAcZ2poEtvxzEdRbf7qbI
 vpAJzIXruTDBQfReEeLE3I/IJLFA4kY2WYQQ6ZJgSyuvynNZPQc+QoHo0
 5ySy5TZdjOVIL+MbNvKHh8ZTd4ZpDwsKELhUdIltaxgvL7GXLNXZxjr2R
 7Zcy/V3ig2nlM7CYfQYfrSfGrE9ajRW0q4oWlnOhEBKiDSTuVXPJJVdyT
 2h+yUHl98AtbRzbNSp56DzE+0lDdWHEbuO2wXY4Q1NA0A7dXT7BT2dnUT
 8T7OSR8BeBorWkkLbx2LNSx0UblkRnYDpI7qrM4myQQWs6h9lm+rob1Nr A==;
X-CSE-ConnectionGUID: +wVSayZQSv6xdjW+mjNuog==
X-CSE-MsgGUID: 6IbTMKriSgGC5dl8Z2ll+g==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="69804104"
X-IronPort-AV: E=Sophos;i="6.20,260,1758610800"; d="scan'208";a="69804104"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 22:29:17 -0800
X-CSE-ConnectionGUID: NOlfJjeYTVaR/BPWckx3yQ==
X-CSE-MsgGUID: dZoR6E0JRreuz60//k8SqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,260,1758610800"; d="scan'208";a="200585562"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa005.fm.intel.com with ESMTP; 08 Dec 2025 22:29:15 -0800
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@intel.com, uma.shankar@intel.com,
 Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 3/5] drm/i915/display: Pass dsb_commit to CASF helpers
Date: Tue,  9 Dec 2025 11:55:25 +0530
Message-Id: <20251209062527.620382-4-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251209062527.620382-1-nemesa.garg@intel.com>
References: <20251209062527.620382-1-nemesa.garg@intel.com>
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

Incase of non-modeset enable the casf, update the
strength or disable the casf through dsb.

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 256103d55409..7edfc8c2ae21 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7300,6 +7300,8 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
+	struct intel_crtc_state *old_crtc_state =
+		intel_atomic_get_old_crtc_state(state, crtc);
 	unsigned int size = new_crtc_state->plane_color_changed ? 8192 : 1024;
 
 	if (!new_crtc_state->use_flipq &&
@@ -7332,6 +7334,16 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 		if (intel_crtc_needs_color_update(new_crtc_state))
 			intel_color_commit_noarm(new_crtc_state->dsb_commit,
 						 new_crtc_state);
+		if (intel_casf_enabling(new_crtc_state, old_crtc_state))
+			intel_casf_enable(new_crtc_state->dsb_commit,
+					  new_crtc_state);
+		else if (new_crtc_state->hw.casf_params.strength !=
+				old_crtc_state->hw.casf_params.strength)
+			intel_casf_update_strength(new_crtc_state->dsb_commit,
+						   new_crtc_state);
+		if (intel_casf_disabling(old_crtc_state, new_crtc_state))
+			intel_casf_disable(new_crtc_state->dsb_commit,
+					   new_crtc_state);
 		intel_crtc_planes_update_noarm(new_crtc_state->dsb_commit,
 					       state, crtc);
 
-- 
2.25.1

