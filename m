Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89181ABD19A
	for <lists+intel-gfx@lfdr.de>; Tue, 20 May 2025 10:14:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94D7810E565;
	Tue, 20 May 2025 08:14:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KwO7+3A0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7ABAB10E586;
 Tue, 20 May 2025 08:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747728863; x=1779264863;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ykog9yXlqSqnpyFTofEI8Ua164R5Q9JbRNdV+UPPS5A=;
 b=KwO7+3A0ZnoaJ0g785fqIE/snU+PvbJajW+5s0cNWFyaDUCGWzSJt+aT
 WeiW4Fyc/r54rjlGzVcdEobwZR4EginJt7+/H13Vqkfx4OsuHCR/h3zkV
 7Zm30OfEnqAngd8/Cgq7nAkJ1TYF+5m2JvKiTfkQrMX1r4hlQTSS8C5ii
 RqXazeKdmMfMZLwUkkPSMiz5ylnuBJBNkm2Q55eun9si3gtfR6nuLHRPZ
 HyXUPzQQ+bUFf1FClgfBl0ZqH4fnumbzJOGPvv/+Q1bKPG9ihq44Vn2y7
 0J/pfIAaGrCvTcYyAd8au1mJJAQRqK8wl1c4s6dIKg+ikbwxGKDfM4Wye A==;
X-CSE-ConnectionGUID: d8FQiEMgSmCaip2DH1ZQUQ==
X-CSE-MsgGUID: Ca30z0ytSVKdko71eWrL2w==
X-IronPort-AV: E=McAfee;i="6700,10204,11438"; a="48764867"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="48764867"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 01:14:23 -0700
X-CSE-ConnectionGUID: Xck8LfC7Ryev6M0z6dxMIQ==
X-CSE-MsgGUID: V9IfS8nsRAaxmj7u+kyG7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="144476054"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa005.fm.intel.com with ESMTP; 20 May 2025 01:14:21 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 animesh.manna@intel.com, chaitanya.kumar.borah@intel.com
Subject: [v7 11/11] drm/i915: Disable updating of LUT values during vblank
Date: Tue, 20 May 2025 13:25:37 +0530
Message-Id: <20250520075537.4074010-12-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250520075537.4074010-1-chaitanya.kumar.borah@intel.com>
References: <20250520075537.4074010-1-chaitanya.kumar.borah@intel.com>
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

Do not schedule vblank worker for LUT update if the registers are
double buffered

v2: Do not schedule the worker at all (Ville)

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 29cfc38f12e0..a88317ea4e9c 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -417,10 +417,13 @@ int intel_crtc_get_pipe_from_crtc_id_ioctl(struct drm_device *dev, void *data,
 
 static bool intel_crtc_needs_vblank_work(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
+
 	return crtc_state->hw.active &&
 		!crtc_state->preload_luts &&
 		!intel_crtc_needs_modeset(crtc_state) &&
-		intel_crtc_needs_color_update(crtc_state) &&
+		(intel_crtc_needs_color_update(crtc_state) &&
+		 !HAS_DOUBLE_BUFFERED_LUT(display)) &&
 		!intel_color_uses_dsb(crtc_state) &&
 		!crtc_state->use_dsb;
 }
-- 
2.25.1

