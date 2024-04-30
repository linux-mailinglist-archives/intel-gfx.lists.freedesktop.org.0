Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C8FD8B7E7B
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 19:30:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52000112D73;
	Tue, 30 Apr 2024 17:30:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ilp7PBAf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FCCC112D73;
 Tue, 30 Apr 2024 17:30:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714498220; x=1746034220;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=omm6ZvRnGPcvkeKmE2v3Y/SH1p3kTyXwWZgil+QRFBI=;
 b=ilp7PBAfz5eTRvoDLFWFHx7unrirhnQJYUPUQH9y/J/JVOTqWGzfSXme
 Xxfzz2J+vfNXhSzwqOzUn4sONWGOxMqK13IBOXRSYLF0tPYEJAI4SB7Xj
 t95NSV4ByMHGK9e6WfwvmTbpL1VFKbd0VfyWMRmn7Y8TC2yxJtptHKewl
 0mP7iuwi1M8Jf9CQZ1tN6ysSCM0IKRcTXpNQTAWyGx7YKE7adlMQN6VaT
 wRxRnuN1m5ndjiQ4P26Vmeu5SB+RA0g9/pAhUJsDsjNR8XXWCDU2GDNGf
 pjzl2+6DVricMd2pAgDJA5GWc/9hLvjw2dLQWtdCiyiGzpenArBHP8/9W A==;
X-CSE-ConnectionGUID: L2ijmq32SgulQc0DVXfiYA==
X-CSE-MsgGUID: yohyRKc6Rc+R+IiYOoOvgA==
X-IronPort-AV: E=McAfee;i="6600,9927,11060"; a="27741988"
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="27741988"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 10:30:19 -0700
X-CSE-ConnectionGUID: xqR32Z/qTIGiSw6Rp2pQoA==
X-CSE-MsgGUID: 3z5Ktu0aR9ymmXGfgnT+dQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="26617822"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 10:30:19 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
 Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Subject: [PATCH v3 04/19] drm/i915/bmg: Extend DG2 tc check to future
Date: Tue, 30 Apr 2024 10:28:35 -0700
Message-Id: <20240430172850.1881525-5-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240430172850.1881525-1-radhakrishna.sripada@intel.com>
References: <20240430172850.1881525-1-radhakrishna.sripada@intel.com>
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

Discrete cards use the Port numbers TC1-4 for the offsets. The regular
flow for type-c subsystem port initialization can be skipped. This check
is present in DG2. Extend this to future discrete products.

Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f45e5f02096d..00e583fc2a8c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1893,11 +1893,10 @@ bool intel_phy_is_combo(struct drm_i915_private *dev_priv, enum phy phy)
 bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
 {
 	/*
-	 * DG2's "TC1", although TC-capable output, doesn't share the same flow
-	 * as other platforms on the display engine side and rather rely on the
-	 * SNPS PHY, that is programmed separately
+	 * Discrete GPU phy's are not attached to FIA's to support TC
+	 * subsystem Legacy or non-legacy, and only support native DP/HDMI
 	 */
-	if (IS_DG2(dev_priv))
+	if (IS_DGFX(dev_priv))
 		return false;
 
 	if (DISPLAY_VER(dev_priv) >= 13)
-- 
2.34.1

