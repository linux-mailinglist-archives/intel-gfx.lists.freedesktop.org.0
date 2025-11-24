Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04727C7F6D6
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Nov 2025 09:50:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E03B10E1EB;
	Mon, 24 Nov 2025 08:50:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EXvi8KSZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EC5E10E1EB;
 Mon, 24 Nov 2025 08:50:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763974228; x=1795510228;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yKHDqV9P9NlseBGAsF7nX/FgiX4hSpihFItw1erZ2Us=;
 b=EXvi8KSZGKReOoblrUtbuLZF1vi6VZNOyhQskzAs3eqx1fkSmWU6Me+F
 H6cpkcHqr74IOsyvf9+LuIHGvPt6W+Yg9+2gogSnUe35N+rhBGrhYv7NT
 jDxI045Eci24TxQtpwx4m7pqf4SCx+3sMIIOKbV0d5qJZgV1ckAFz6Dev
 Wu/TUjlp7JAddtGtu8PEmwyNsMH26NHE8gRe0yO1SUZYR5fPPDnGFXK1R
 37JgDah508Fx3bF7FXzymvifGv2okbpz3b4V1oKYSaj5oCVO0RAVUh9Yg
 +vWze8FeCkK9W8UqQPVPLqm0XKLF8Bjqo4CisIO59mN2IODIS8uM82eYe w==;
X-CSE-ConnectionGUID: g+Y+pBW7R6mwujIQwncvVg==
X-CSE-MsgGUID: beTdZx5QSpS7dCSTrL3qZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11622"; a="76295041"
X-IronPort-AV: E=Sophos;i="6.20,222,1758610800"; d="scan'208";a="76295041"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 00:50:27 -0800
X-CSE-ConnectionGUID: 2kNCgU8PTau86uzRT7OeHg==
X-CSE-MsgGUID: 5fYlfAxSRPGtStSlB/yIUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,222,1758610800"; d="scan'208";a="191938285"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa007.fm.intel.com with ESMTP; 24 Nov 2025 00:50:25 -0800
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH] drm/i915/display: Check number of scalers for casf
Date: Mon, 24 Nov 2025 14:16:29 +0530
Message-Id: <20251124084629.3322714-1-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
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

Before exposing the property check if the number of scalers
is 2 as casf needs second scaler. If not then dont expose the
property.

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 153ff4b4b52c..963e6c7d75b8 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -395,7 +395,7 @@ int intel_crtc_init(struct intel_display *display, enum pipe pipe)
 
 	drm_WARN_ON(display->drm, drm_crtc_index(&crtc->base) != crtc->pipe);
 
-	if (HAS_CASF(display))
+	if (HAS_CASF(display) && crtc->num_scalers > 1)
 		drm_crtc_create_sharpness_strength_property(&crtc->base);
 
 	return 0;
-- 
2.25.1

