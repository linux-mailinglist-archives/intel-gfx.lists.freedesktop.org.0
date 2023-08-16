Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 986C777EC10
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Aug 2023 23:42:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BED4C10E3D7;
	Wed, 16 Aug 2023 21:42:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 928C610E10E
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Aug 2023 21:42:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692222127; x=1723758127;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RKt85ST3Kih2dW9BOOVcaO0WJp8PwW11f5ygE44GE0I=;
 b=UZ3YtZoYetIv6N2MQFw75/98CXrSr5Rw6+DzDa8jqRA7cKmEen+4mb7H
 LpphYWjCw09b6UZrl1n9RYdPZjCvM2UMCM24ClyzqqzLr+Pg0jZNHMaT8
 NkLUaYf+RMOR6KMXm4ZzlcHQF8GqX5Vvul3oyQgRQC6j40nlI3ngTHJaE
 689VeLYCUJR5OukjSE98IP/3+eEpvvogFNWslq9xY+Wup6pOUjtC2DG6u
 iwQBXRIJhPZQfenCU99pS+FFbGeu3J5z/sS9MJYmeFO2gn+voLPu/HxF7
 IBxkXjDgOHzWhCjGbB+SC1DDMjMLm3BU5GKdr8CHVBmUC4esfNKzSI6rK A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="436546486"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="436546486"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 14:42:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="824378800"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="824378800"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 14:42:07 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Aug 2023 14:42:03 -0700
Message-ID: <20230816214201.534095-8-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230816214201.534095-7-matthew.d.roper@intel.com>
References: <20230816214201.534095-7-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/5] drm/i915/dg2: Recognize pre-production
 hardware
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
Cc: Jani Nikula <jani.nikula@intel.com>, matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The first production SoC steppings for DG2 were C0 (for G10), B1 (for
G11), and A1 (for G12).  This corresponds to PCI revision IDs 0x8, 0x5,
and 0x1 respectively.  Add this information to the driver's
pre-production detection.

Bspec: 44477
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Acked-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index b870c0df081a..0201115746a7 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -183,6 +183,9 @@ static void intel_detect_preproduction_hw(struct drm_i915_private *dev_priv)
 	pre |= IS_ICELAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x7;
 	pre |= IS_TIGERLAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x1;
 	pre |= IS_DG1(dev_priv) && INTEL_REVID(dev_priv) < 0x1;
+	pre |= IS_DG2_G10(dev_priv) && INTEL_REVID(dev_priv) < 0x8;
+	pre |= IS_DG2_G11(dev_priv) && INTEL_REVID(dev_priv) < 0x5;
+	pre |= IS_DG2_G12(dev_priv) && INTEL_REVID(dev_priv) < 0x1;
 
 	if (pre) {
 		drm_err(&dev_priv->drm, "This is a pre-production stepping. "
-- 
2.41.0

