Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20FE597AAFB
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 07:27:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E54FF10E1E9;
	Tue, 17 Sep 2024 05:27:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LIH3W6FY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6586210E40E
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2024 05:27:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726550848; x=1758086848;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JyG/U2INTWUnJwGERv1gatAvyVERCJ/OyM90ylVAW+0=;
 b=LIH3W6FYYezLN3D485xjiATTzF5t3yqpJNsS/Gz53XNiGHJjCYy1LX8i
 S9obOPh2K/sEo3BenrK3tZTi37ec+aqEgofTNFTISRwxQ+tk6bUllRC7w
 GEyjG28ml2PDhQECAEWhG2CB/xkrpQqKhg6TSY+3NAbS0SuxREwIQKXU3
 F0nQMnfmH+IH9CScrLi1z6BnbQkbX8qYWl9OoVJUXUkAnRMMiq9dD1S9A
 tIr8lhePKkxkYoX7aeIZj7pw63JYadU7HuFG3tlil+2IOomsMySx17qOZ
 U++yjPoO8o502r857Tg0W6tB+1gZxfU6b30GJp730KMX30t8XhBtkW3/S Q==;
X-CSE-ConnectionGUID: aVNr0JGjRjOh31dqmZKnpw==
X-CSE-MsgGUID: VDk7/hXzTh+hE0Svo5TS2w==
X-IronPort-AV: E=McAfee;i="6700,10204,11197"; a="36744729"
X-IronPort-AV: E=Sophos;i="6.10,234,1719903600"; d="scan'208";a="36744729"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 22:25:40 -0700
X-CSE-ConnectionGUID: 3cStqph/ShmJlKzobm7Frw==
X-CSE-MsgGUID: SipOj5q4R/usQZIzN8s75g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,234,1719903600"; d="scan'208";a="69038890"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa009.jf.intel.com with ESMTP; 16 Sep 2024 22:25:38 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, matthew.d.roper@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/2] drm/i915/hotplug: Add comment for DISPLAY13
 SHPD_FILTER_CNT value
Date: Tue, 17 Sep 2024 10:53:07 +0530
Message-ID: <20240917052307.760662-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240917052307.760662-1-suraj.kandpal@intel.com>
References: <20240917052307.760662-1-suraj.kandpal@intel.com>
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

Add the reason for having SHPD_FILTER_CNT value for DISPLAY13 and
above as 250us instead of 500us.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hotplug_irq.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
index 05a9e82cac75..5429d93f67fc 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
@@ -1065,6 +1065,10 @@ static void mtp_hpd_irq_setup(struct drm_i915_private *i915)
 	enabled_irqs = intel_hpd_enabled_irqs(i915, i915->display.hotplug.pch_hpd);
 	hotplug_irqs = intel_hpd_hotplug_irqs(i915, i915->display.hotplug.pch_hpd);
 
+	/*
+	 * Use 250us here to align with the DP1.4a(Table 3-4) spec as to what the
+	 * SHPD_FILTER_CNT value should be.
+	 */
 	intel_de_write(i915, SHPD_FILTER_CNT, SHPD_FILTER_CNT_250);
 
 	mtp_hpd_invert(i915);
-- 
2.43.2

