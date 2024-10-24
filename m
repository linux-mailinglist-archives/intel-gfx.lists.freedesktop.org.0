Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F1C89AF56B
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 00:31:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6096110E9B1;
	Thu, 24 Oct 2024 22:31:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ELLJ/W4t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF80710E3DD;
 Thu, 24 Oct 2024 22:31:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729809095; x=1761345095;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=2aRMB6apax37HIZCgt0RRlAoFdFRglk/Hvo3H4yDLq4=;
 b=ELLJ/W4tS52oP9p4gT79xWomEtKvT/wRiCYJyZ2zyWj866zWAqeCg47L
 1zd/t/8uoU+/MNG6/N/w8emOEWqSTmL/72voyIvDyVA9fyDs/j3nBMTAW
 2jcVV3BU5uR0Ue3GU5Fm0nJaSSh7BEiONrNc/0bHvbEUtUWKTPVqiICA1
 p85d5Dtba/A4sYnUYgWYh9Px86OkpCokfkPc+x8sWSAH7+ZPAzUU4Qmdn
 ITp3XpMahQSsn8xcjct5dUzwJVFR6ByHSslCIIqqSTH/ryJiQakTHDe+d
 DtSAjJRrfEPANDsFFbWkcx1PpeDJbrmF19T1aw7oC6o+LAOakQZH7hlz6 A==;
X-CSE-ConnectionGUID: ld8JgoSXQ82tBKOql8oRgA==
X-CSE-MsgGUID: VWZuzaIOQbqpZjOOy2A6mA==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="46950807"
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="46950807"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 15:31:20 -0700
X-CSE-ConnectionGUID: E8GcUHRFQ9+Vh/W/njUlXw==
X-CSE-MsgGUID: qS2mDNnDRMOKnhDG7vIqNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="80838669"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.140])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 15:31:19 -0700
From: Clint Taylor <clinton.a.taylor@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v4 05/11] drm/i915/cx0: Extend C10 check to PTL
Date: Thu, 24 Oct 2024 15:31:08 -0700
Message-Id: <20241024223114.785209-6-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241024223114.785209-1-clinton.a.taylor@intel.com>
References: <20241024223114.785209-1-clinton.a.taylor@intel.com>
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

From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

When deciding the type of the phy, add PTL support to make
sure the correct path is taken for selection of C10 PHY.
Only port A is connected C10 PHY for Pantherlake.

Bspec:  72571
Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
Signed-off-by: Clint Taylor <Clinton.A.Taylor@intel.com>
Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c      | 3 +++
 drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 1 +
 2 files changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index d05daa7a2b03..4d6e1c135bdc 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -34,6 +34,9 @@ bool intel_encoder_is_c10phy(struct intel_encoder *encoder)
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	enum phy phy = intel_encoder_to_phy(encoder);
 
+	if (IS_PANTHERLAKE(i915) && phy == PHY_A)
+		return true;
+
 	if ((IS_LUNARLAKE(i915) || IS_METEORLAKE(i915)) && phy < PHY_C)
 		return true;
 
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
index b7041b578e5e..bd8c3de57dcd 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
@@ -67,6 +67,7 @@ static inline struct drm_i915_private *to_i915(const struct drm_device *dev)
 #define IS_METEORLAKE(dev_priv) IS_PLATFORM(dev_priv, XE_METEORLAKE)
 #define IS_LUNARLAKE(dev_priv) IS_PLATFORM(dev_priv, XE_LUNARLAKE)
 #define IS_BATTLEMAGE(dev_priv)  IS_PLATFORM(dev_priv, XE_BATTLEMAGE)
+#define IS_PANTHERLAKE(dev_priv) IS_PLATFORM(dev_priv, XE_PANTHERLAKE)
 
 #define IS_HASWELL_ULT(dev_priv) (dev_priv && 0)
 #define IS_BROADWELL_ULT(dev_priv) (dev_priv && 0)
-- 
2.25.1

