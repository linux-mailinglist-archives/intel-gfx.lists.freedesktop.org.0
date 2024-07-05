Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A781E928AF7
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2024 16:53:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DD6510EBE4;
	Fri,  5 Jul 2024 14:53:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Dtm2Coj/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A20BE10EBE4;
 Fri,  5 Jul 2024 14:53:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720191207; x=1751727207;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ezNYYWOou9W1KQmLYpymreDr59QPWQ8t5sIMxDuvXtA=;
 b=Dtm2Coj/hoLjSXLfM3fVYMEorRQBhdUxB5fs6vhhyGeyRtCkJMejUveE
 rsbHh5UoMyMdJWTo70RFrr8h+XgI8xBFTF4kNvgbq3/XJ7vF49R5/JM6N
 C0wKHt1WVUosgjfuPeoUhuhL2YvduEXxjZ1f/+nt5W82of8g6JqvWad3d
 NZyj/Wze1Z3TrNEeywIz2wGQVFTZ6gKmQ02Y7o/I3gBxHKwqyog2sCB6q
 BEfU2xrs28l6zqwurmBk0bulZA3OdM9KEd23thvFNA0yHwHzjs8KnXRiQ
 NkcOKL+iDdP9ayVbJw8GwHyWN5AyMdOoWyEMD/yWbaOVoicMC40WNSR1P w==;
X-CSE-ConnectionGUID: Xb6EuPerQmeZwsll0Y1WnA==
X-CSE-MsgGUID: YTS/0/BDTFWcF0L+t9ZnoQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11123"; a="17204763"
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="17204763"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2024 07:53:27 -0700
X-CSE-ConnectionGUID: 9We7S08tTMWfUaTMk6GAtA==
X-CSE-MsgGUID: FolQOQYPRLK9o9RZd1DyzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="46864447"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 05 Jul 2024 07:53:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Jul 2024 17:53:23 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 10/20] drm/i915/fbc: Reoder CFB max height platform checks
Date: Fri,  5 Jul 2024 17:52:44 +0300
Message-ID: <20240705145254.3355-11-ville.syrjala@linux.intel.com>
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

Rearrange the max CFB max height platform into the
more common "new first, old last" order.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 4d25ebb5ae9d..cf5750ed4681 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -206,10 +206,10 @@ static unsigned int intel_fbc_cfb_size(const struct intel_plane_state *plane_sta
 	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
 	int height = drm_rect_height(&plane_state->uapi.src) >> 16;
 
-	if (DISPLAY_VER(display) == 7)
-		height = min(height, 2048);
-	else if (DISPLAY_VER(display) >= 8)
+	if (DISPLAY_VER(display) >= 8)
 		height = min(height, 2560);
+	else if (DISPLAY_VER(display) == 7)
+		height = min(height, 2048);
 
 	return height * intel_fbc_cfb_stride(plane_state);
 }
-- 
2.44.2

