Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40745A7E217
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Apr 2025 16:39:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1F3510E4C6;
	Mon,  7 Apr 2025 14:39:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HvTuFR0c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F025B10E4C5;
 Mon,  7 Apr 2025 14:39:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744036775; x=1775572775;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=R1lFZyv1/ND2xxUHKtybvUMfRVmFiOIV3/BLVC8AZho=;
 b=HvTuFR0cSZn9Fv3zGTvaCWFRMgBbsMjGV7qWipkTV72g2IOyC5TOq3zY
 as6oLuPIV3wDV2/qe40u4Kbij0qKVb/SS8UdVKl02zl6wueqy/XFflRDI
 ElR+WBCA8swp3KxKhbyiNSQZyl0315dbrJoVjxs5sKr1dd/smA6rWWwRx
 lB866BYqTgg8WPYRcrR1OkfAEMyG2+IDIslj3yNeClu77GP2hSEnjg/tx
 mKeESc4uqFkV8c+nqIS4FxzogdlR7E5jTVnAhp2IWucREa09co14jIrmY
 O1BHLhvt1vtFsMY1orLklUfCnAnSjWwrbOmDevSkWMQOseC0RmtlBy+t0 Q==;
X-CSE-ConnectionGUID: 35ZrDxK4SDC+mh+9ayE/qg==
X-CSE-MsgGUID: na6tAPrSS/qiO5X9aL1mag==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="44572491"
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="44572491"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 07:39:34 -0700
X-CSE-ConnectionGUID: fWrMIrPsQvCzXQDyLFQayg==
X-CSE-MsgGUID: J4e+oP8mSGmt/h++sLH8xQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="158963785"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa001.fm.intel.com with ESMTP; 07 Apr 2025 07:39:32 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 chaitanya.kumar.borah@intel.com, animesh.manna@intel.com
Subject: [PATCH 11/11] drm/i915: Disable updating of LUT values during vblank
Date: Mon,  7 Apr 2025 19:53:59 +0530
Message-Id: <20250407142359.1398410-12-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250407142359.1398410-1-chaitanya.kumar.borah@intel.com>
References: <20250407142359.1398410-1-chaitanya.kumar.borah@intel.com>
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

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 5b2603ef2ff7..fd6d52712462 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -418,10 +418,13 @@ int intel_crtc_get_pipe_from_crtc_id_ioctl(struct drm_device *dev, void *data,
 
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

