Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE42A152EC
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2025 16:37:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63D7010EB12;
	Fri, 17 Jan 2025 15:37:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KBsxufNc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A36210E213;
 Fri, 17 Jan 2025 15:37:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737128270; x=1768664270;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=AirPOLo6WzOVDzLNXgjqjdx2+hT9YGgYZ6ycqm67aLg=;
 b=KBsxufNcSXhOywDMJTQ7IuS8fixjWKJRSc8ew7oC+TA4JCyFmVaXtwGU
 /mNNTCjYFoN0juWWOKPqDXWf0TBQmHCRJ4HVU7aGlwA0HMhdmASp3WwXi
 ycKh7a2yx7ONFJnYTK9Dk2k/Zj0xHED9+6CxplRvrq1xLnCGsjV292m64
 zwEnF0j5J9EVcdNVFikIERy54YRn4nmlc3dBgVAD5IFmUTVA8as6Dr9dt
 p849gTfrpXcLuGiPrqqv1U05BvAU9Y6fkSFLqF0id7mMKmjzfGbtR5BIR
 savIbhvD/4Ezp2e0Y2GBm7HaGBu4I4TzQ1MjItEAmk3rwE2CzxqtrLMHY Q==;
X-CSE-ConnectionGUID: CAxQFEn0Qb2nMm/xkhV5AQ==
X-CSE-MsgGUID: wS+upn4HTE2BHjbh2tgi/A==
X-IronPort-AV: E=McAfee;i="6700,10204,11318"; a="37444681"
X-IronPort-AV: E=Sophos;i="6.13,212,1732608000"; d="scan'208";a="37444681"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 07:37:50 -0800
X-CSE-ConnectionGUID: ZRQh08QGTK+o0zKVXwzNxA==
X-CSE-MsgGUID: vYdpq0edRxee74GkhULH7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="129091277"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 07:37:48 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH] drm/xe/dp: Fix non-display builds with DP tunnelling
 incorrectly enabled
Date: Fri, 17 Jan 2025 17:38:43 +0200
Message-ID: <20250117153843.1312303-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
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

Code for the DP tunnelling functionality in the xe driver can be
built only if the display code is also built, adjust the kconfig
dependency accordingly.

Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Fixes: 73900dce57e4 ("drm/xe/dp: Enable DP tunneling")
Reported-by: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/xe/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/Kconfig b/drivers/gpu/drm/xe/Kconfig
index 50cf80df51900..99219c16e8aac 100644
--- a/drivers/gpu/drm/xe/Kconfig
+++ b/drivers/gpu/drm/xe/Kconfig
@@ -61,7 +61,7 @@ config DRM_XE_DISPLAY
 
 config DRM_XE_DP_TUNNEL
 	bool "Enable DP tunnel support"
-	depends on DRM_XE
+	depends on DRM_XE_DISPLAY
 	depends on USB4
 	select DRM_DISPLAY_DP_TUNNEL
 	default y
-- 
2.44.2

