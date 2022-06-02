Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96EB353BA96
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jun 2022 16:20:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3550112D7B;
	Thu,  2 Jun 2022 14:20:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3357112D7B
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jun 2022 14:20:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654179643; x=1685715643;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tCoRxhp/MVk8SlzUBx/oZGWT8r0ZZjVW77EuXBLnUFI=;
 b=dGWF52v1+yQmvELce/+DF5jiFaOaUc5gi7jl/MFjJ4btsCBSyQ8ZGX5q
 1iy+scOBvtEJpD9FfqSmdjzlSdxbuoulsuajrbRDzzCRPxlTMjMkzLPco
 ICBpuuGLYzMlAzPr7j46dlLuodP/FXgSLM1zpoAJlmIqS+yy4UjEn3tHx
 6p0zNbhj4cGKhBd8aOLn5RL3avDH2+KJVq38hC877w48ZOeFkmJIF7HEM
 eMb3YKl2Tl1zFJO1qseOrdE2uup8JK7JOReQnmxxjzMoWTmK2WRBsgwp6
 flKM9gGQRPLYVxJG0qNcNBnArFIsmsGJRxRVpR7De61QRAFf1JuBIRkmi w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10365"; a="339007327"
X-IronPort-AV: E=Sophos;i="5.91,271,1647327600"; d="scan'208";a="339007327"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2022 07:20:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,271,1647327600"; d="scan'208";a="905007744"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmsmga005.fm.intel.com with ESMTP; 02 Jun 2022 07:20:41 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Jun 2022 19:48:50 +0530
Message-Id: <20220602141850.21301-6-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20220602141850.21301-1-animesh.manna@intel.com>
References: <20220602141850.21301-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH 5/5] drm/i915/display/tgl+: Use PPS index
 from vbt
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
Cc: jani.nikula@intel.com, Nischal Varide <nischal.varide@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Nischal Varide <nischal.varide@intel.com>

Tigerlake and newer has two instances of PPS, to support up to two
eDP panels.

Signed-off-by: Nischal Varide <nischal.varide@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pps.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 1b21a341962f..52cb5be4e901 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -365,7 +365,8 @@ static void intel_pps_get_registers(struct intel_dp *intel_dp,
 
 	memset(regs, 0, sizeof(*regs));
 
-	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
+	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv) ||
+	    DISPLAY_VER(dev_priv) >= 12)
 		pps_idx = bxt_power_sequencer_idx(intel_dp);
 	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
 		pps_idx = vlv_power_sequencer_pipe(intel_dp);
-- 
2.29.0

