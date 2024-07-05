Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFAC2928AF5
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2024 16:53:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52CB110EBE0;
	Fri,  5 Jul 2024 14:53:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gbgK/rZI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B871C10EBE4;
 Fri,  5 Jul 2024 14:53:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720191204; x=1751727204;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/MD0DFN0MQlsQwEz6YEe9iwTUdxsmekQfjptaUp1H+Y=;
 b=gbgK/rZIpdmVViHYRza5j8Ry/0gjapTe3G9MaYoRvVL7+e28l7pV6gex
 fwW2VM13rZmBbGT4V2xS3Me6lW9lN8UecOs1JCA4vSFv47szLXU5zC6ce
 mSoJIsAp2b9PpbP8AS6PdnwND/9eTq6kGFh6pqUFCb8m/XuKw+Qpaeg7C
 XzGO2esglSDv8iIxKUIJWLfiz8e1KcjK/EaCYS4bvS6iaghMnK2kWugJK
 fF8+rrb2pPmuNLQIVnVxDl42H9N+LHlJpe5vJ4NErMibVP+GZEC3MLZjV
 aW5T3I4K92gP0Jhz1mguK1vIizeBbRU3yBYHVgf+117XifYxWtxXvSIj4 g==;
X-CSE-ConnectionGUID: 2kB3Yif3Qku30y8rhL8nUA==
X-CSE-MsgGUID: JeX5vSdASKal7S/9GW0qUg==
X-IronPort-AV: E=McAfee;i="6700,10204,11123"; a="17204754"
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="17204754"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2024 07:53:24 -0700
X-CSE-ConnectionGUID: gISxLwf+R3W4FMcVAIqO9g==
X-CSE-MsgGUID: 6ddqc3zES6una1yedKuGtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="46864430"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 05 Jul 2024 07:53:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Jul 2024 17:53:20 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 09/20] drm/i915/fbc: s/lines/height/
Date: Fri,  5 Jul 2024 17:52:43 +0300
Message-ID: <20240705145254.3355-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
References: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
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

Use the more customary name 'height' instead of 'lines'.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 4a9321f5218f..4d25ebb5ae9d 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -204,14 +204,14 @@ static unsigned int intel_fbc_cfb_stride(const struct intel_plane_state *plane_s
 static unsigned int intel_fbc_cfb_size(const struct intel_plane_state *plane_state)
 {
 	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
-	int lines = drm_rect_height(&plane_state->uapi.src) >> 16;
+	int height = drm_rect_height(&plane_state->uapi.src) >> 16;
 
 	if (DISPLAY_VER(display) == 7)
-		lines = min(lines, 2048);
+		height = min(height, 2048);
 	else if (DISPLAY_VER(display) >= 8)
-		lines = min(lines, 2560);
+		height = min(height, 2560);
 
-	return lines * intel_fbc_cfb_stride(plane_state);
+	return height * intel_fbc_cfb_stride(plane_state);
 }
 
 static u16 intel_fbc_override_cfb_stride(const struct intel_plane_state *plane_state)
-- 
2.44.2

