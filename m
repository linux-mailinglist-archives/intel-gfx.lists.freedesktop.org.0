Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE2AD65390C
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Dec 2022 23:52:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFB5310E18E;
	Wed, 21 Dec 2022 22:52:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2028910E116
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Dec 2022 22:51:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671663110; x=1703199110;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=rkqspy9JZnOKiKQY8/9w7m0+kGXTpEmU2kglbH4Htv4=;
 b=LZFaAcoqOcNbeQIbfTyU+n6ahpwpn7AIddLlDA7EG4tIcDbrArMqjFW8
 hiXKSbIk5KbDz9aTEHz+5SsXw6GZsZdT41B+q8cr2IGroMEk/CHGhl0p7
 kQQfUPi8XRLUrvqzkZgyx+bFuBPmMDduPij9rK5e2TF0ttbd9zQPHdknb
 k+L8bC0aQYCzK5BsgeHtQvkh4mjomb3oYNi3EGvRDGQKm7zuDoBeB2xkc
 t73u8Mug41K66gtenaM3/jLuABDxYN4KoPw6BhdGSoMMlp5b2A6/SsG0j
 pGlzD7aP2V/WDNFSD8mbj+DBrUmPvTUPrtGU2Jy/aynU9T74tdEsd6pga w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="300328215"
X-IronPort-AV: E=Sophos;i="5.96,263,1665471600"; d="scan'208";a="300328215"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 14:51:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="682183975"
X-IronPort-AV: E=Sophos;i="5.96,263,1665471600"; d="scan'208";a="682183975"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga008.jf.intel.com with ESMTP; 21 Dec 2022 14:51:49 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Dec 2022 14:54:39 -0800
Message-Id: <20221221225439.2714575-8-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221221225439.2714575-1-alan.previn.teres.alexis@intel.com>
References: <20221129004832.3735764-1-alan.previn.teres.alexis@intel.com>
 <20221221225439.2714575-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 7/7] HAX: force enable PXP Kconfig
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

Force PXP configs on for CI testing to trigger full subtests
in IGT's gem_pxp as opposed to the partial "unsupported hw substests".

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/Kconfig | 2 +-
 drivers/misc/mei/pxp/Kconfig | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
index 3efce05d7b57..93595d804ef0 100644
--- a/drivers/gpu/drm/i915/Kconfig
+++ b/drivers/gpu/drm/i915/Kconfig
@@ -136,7 +136,7 @@ config DRM_I915_PXP
 	bool "Enable Intel PXP support"
 	depends on DRM_I915
 	depends on INTEL_MEI && INTEL_MEI_PXP
-	default n
+	default y
 	help
 	  PXP (Protected Xe Path) is an i915 component, available on graphics
 	  version 12 and newer GPUs, that helps to establish the hardware
diff --git a/drivers/misc/mei/pxp/Kconfig b/drivers/misc/mei/pxp/Kconfig
index 4029b96afc04..89e4ee5b4b07 100644
--- a/drivers/misc/mei/pxp/Kconfig
+++ b/drivers/misc/mei/pxp/Kconfig
@@ -6,6 +6,7 @@ config INTEL_MEI_PXP
 	tristate "Intel PXP services of ME Interface"
 	select INTEL_MEI_ME
 	depends on DRM_I915
+	default y
 	help
 	  MEI Support for PXP Services on Intel platforms.
 
-- 
2.34.1

