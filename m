Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF359EBB92
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2024 22:10:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E383010E5E1;
	Tue, 10 Dec 2024 21:10:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lmVq31sZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A1C410E5E1
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2024 21:10:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733865032; x=1765401032;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=AnSUA0YKPX2HzW9FVhCnEY4mMw3ndvBv+cJ9qUmSiZk=;
 b=lmVq31sZfhamDX1CDAcUUC5bRrBS/e2h6xAPkYns+mJD9+2oaWHvRigS
 owBbSpYz9XuK59/uiPRjVHQQFbOkvQVwyhY8WDGqaNZcOGLG6oGi5cyi+
 rlOc660l+I7yoVw8LYYgLyHHyX8NDektLMV/n5LDtUFRkwIJhk48HcZsY
 JWiyvZoJeWU0De90UM2Qm+sI4NUkNomKspAKL9N5y2INqbDCBguX9+3xd
 9W5R7KpO9ub8U40/yDU10/SSavV3TOJg49duqja+kRYws+t/3wMzCiB1W
 DQsemWh9XdZIie9KEHhA/AWMX+2SL1cOS7lQY2Hr1yaRvD+fS0PloQSeN g==;
X-CSE-ConnectionGUID: 0NmC/48ORMKlUx+M7b57tQ==
X-CSE-MsgGUID: LigXdN7MRjmb9qWaTjFWTg==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="59620191"
X-IronPort-AV: E=Sophos;i="6.12,223,1728975600"; d="scan'208";a="59620191"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 13:10:32 -0800
X-CSE-ConnectionGUID: 50qYavR7Rv6b3TzYkhbaYw==
X-CSE-MsgGUID: 4yfxdzDCQCCx/SXNyveYCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,223,1728975600"; d="scan'208";a="95735102"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Dec 2024 13:10:31 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Dec 2024 23:10:29 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 08/18] drm/i915: Include the scanline offset in the state dump
Date: Tue, 10 Dec 2024 23:09:57 +0200
Message-ID: <20241210211007.5976-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
References: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
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

When looking at raw hardware scanline numbers it's helpful to
remember what the offset between the hardware values and our
more human readable numbers should be. Include that in the state dump.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 97e3cdccda01..1fbaa67e2fea 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -10,6 +10,7 @@
 #include "intel_crtc_state_dump.h"
 #include "intel_display_types.h"
 #include "intel_hdmi.h"
+#include "intel_vblank.h"
 #include "intel_vdsc.h"
 #include "intel_vrr.h"
 
@@ -283,6 +284,9 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 		drm_print_hex_dump(&p, "ELD: ", pipe_config->eld,
 				   drm_eld_size(pipe_config->eld));
 
+	drm_printf(&p, "scanline offset: %d\n",
+		   intel_crtc_scanline_offset(pipe_config));
+
 	drm_printf(&p, "vblank delay: %d, framestart delay: %d, MSA timing delay: %d\n",
 		   pipe_config->hw.adjusted_mode.crtc_vblank_start -
 		   pipe_config->hw.adjusted_mode.crtc_vdisplay,
-- 
2.45.2

