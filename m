Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8E07928B00
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2024 16:53:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 521EB10EBF4;
	Fri,  5 Jul 2024 14:53:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vz83bGnL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9B9C10EBF2;
 Fri,  5 Jul 2024 14:53:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720191230; x=1751727230;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vuJ6ZJ4y5AaP9LoYFfERzpm5unIIGqui6PJOycFdIlc=;
 b=Vz83bGnL/Uoa8iGeAnHewxfLhiA9akGAHvyQLW6E/UbK94AkTPKMId4q
 hnPBlrFARZTU3gKECpAlyh0UeVpw9gNQqkcKjhLTfGwuynaJkct/3jh2A
 cvVyD/gNiKOpr6RwYUuNQLdc63cr/tRXhmHrRnIIbXFcNizyyPh5vCmeD
 8xxYy+ydt1WzkH9PtW/Dex+JV4osFWUOxTYUCb0/bCnCU6xHCvJtJtjde
 S2E0jCU09LQzh57UOoRhuug9vvC/8Yg6Vy80l1c+3IBz612fXHShXXN23
 HNEvcw6zihZJltP+tfwoE0YE2QdK+R5vi2pjnjBQh6lMfIZMXSXzdXT/N g==;
X-CSE-ConnectionGUID: z8bhH4quREaqBU491Wguow==
X-CSE-MsgGUID: /Qxd7TluQWiQJe6+351CzQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11123"; a="17204873"
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="17204873"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2024 07:53:50 -0700
X-CSE-ConnectionGUID: SarTXCuvSBOX+28S5hmwFw==
X-CSE-MsgGUID: 5B/k4TDHRmqeSoyFu0b70w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="46864631"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 05 Jul 2024 07:53:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Jul 2024 17:53:47 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 18/20] drm/xe/fbdev: Use the same logic for fbdev stolen
 takever and fresh allocation
Date: Fri,  5 Jul 2024 17:52:52 +0300
Message-ID: <20240705145254.3355-19-ville.syrjala@linux.intel.com>
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

Currently xe only checks that the BIOS FB doesn't take up too much
stolen memory, but does no such check when allocating a fresh FB
from stolen. Use the same rule for both, just like i915 does.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/xe/display/intel_fbdev_fb.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
index f7905b382d06..f67bc0fd803b 100644
--- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
@@ -17,6 +17,9 @@ bool intel_fbdev_fb_prefer_stolen(struct intel_display *display,
 	struct xe_device *xe = to_xe_device(display->drm);
 	struct ttm_resource_manager *stolen;
 
+	if (IS_DGFX(xe))
+		return false;
+
 	stolen = ttm_manager_type(&xe->ttm, XE_PL_STOLEN);
 	if (!stolen)
 		return false;
@@ -55,7 +58,7 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
 	size = PAGE_ALIGN(size);
 	obj = ERR_PTR(-ENODEV);
 
-	if (!IS_DGFX(xe)) {
+	if (intel_fbdev_fb_prefer_stolen(&xe->display, size)) {
 		obj = xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe),
 					   NULL, size,
 					   ttm_bo_type_kernel, XE_BO_FLAG_SCANOUT |
-- 
2.44.2

