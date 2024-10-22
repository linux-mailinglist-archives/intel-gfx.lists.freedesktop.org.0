Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36B249A9C14
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 10:10:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E88710E196;
	Tue, 22 Oct 2024 08:09:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T7gKa+WI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E4DB10E165;
 Tue, 22 Oct 2024 08:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729584599; x=1761120599;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZI98S/+zI85DO4ZR9JDf6Xcp1rAEepxg18zCz33Ev5w=;
 b=T7gKa+WI/uSLOa4B57qC1PzbHq8fpG/+npUU8GZIz4vJPSfnMWoV8cPd
 yysTgs0CV0i9XWpSB6ocuPrlsn+RfTgrIB9IPn531KpzweAE5FnJBSOk4
 owfMmdHl3eD5z1HMV9qkhaIYYYouMnLBWh3uXgvZBsHnKtNMaQqbDnE2e
 XFiDeHq4rHy+kwgWAyB99HfYhceBoZ+f3JKfeFqINkDV06mVrYDnE8gi2
 4KRzEM+9+tAfTcETwWN+wUDkL20cSoEL8WlSsBdJH2nw+18JfHjsiNFm5
 alXy26la6TeXP2AHqbm4gNGkmaKjkzZ+di/s+brXR5dvR0w9clx5lF4Gl A==;
X-CSE-ConnectionGUID: s6Q7aHtkSk+5CgPjFMGL/g==
X-CSE-MsgGUID: /njbt5C9Sm6l28t2fc1Tyg==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="16731387"
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="16731387"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 01:09:49 -0700
X-CSE-ConnectionGUID: n6FUIvB2RiGIHAp9nFfIdg==
X-CSE-MsgGUID: HfPGkYzkS3qglF3znRikYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="83782444"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.4])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 01:09:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [drm-intel-next PATCH] drm/xe: fix build failure originating from
 backmerge
Date: Tue, 22 Oct 2024 11:09:43 +0300
Message-Id: <20241022080943.763580-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

../drivers/gpu/drm/xe/display/xe_display.c: In function ‘xe_display_pm_shutdown’:
../drivers/gpu/drm/xe/display/xe_display.c:382:27: error: passing argument 1 of ‘intel_dmc_suspend’ from incompatible pointer type [-Werror=incompatible-pointer-types]
  382 |         intel_dmc_suspend(xe);
      |                           ^~
      |                           |
      |                           struct xe_device *
In file included from ../drivers/gpu/drm/xe/display/xe_display.c:24:
../drivers/gpu/drm/i915/display/intel_dmc.h:22:46: note: expected ‘struct intel_display *’ but argument is of type ‘struct xe_device *’
   22 | void intel_dmc_suspend(struct intel_display *display);
      |                        ~~~~~~~~~~~~~~~~~~~~~~^~~~~~~

Fixes: c141cf76918e ("Merge drm/drm-next into drm-intel-next")
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 957ae763531d..ca00a365080f 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -379,7 +379,7 @@ void xe_display_pm_shutdown(struct xe_device *xe)
 
 	intel_opregion_suspend(display, PCI_D3cold);
 
-	intel_dmc_suspend(xe);
+	intel_dmc_suspend(display);
 }
 
 void xe_display_pm_runtime_suspend(struct xe_device *xe)
-- 
2.39.5

