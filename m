Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 978FE62E6F2
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Nov 2022 22:31:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4A3410E693;
	Thu, 17 Nov 2022 21:31:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D1B610E68F
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Nov 2022 21:31:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668720667; x=1700256667;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1B6iV+aS1uAFlD17IWPR9A0NVrwND/KluL/fZIUgUoA=;
 b=Rgxi6U+7RIBWLER47psrVoyuU0v7u2CSixeUsn5D35l+1mW8tGINTIvt
 vEgJhgQj0T2r7J7wLSaeuAGDJDOZli88RMXDyEj6AJ/Q7L+HphKtgorCM
 ORO5vLgHiAaXz5/ijp9Tqs28zpJHtPJLoqHTh1g6e3TwvLHn8GwX0tqdc
 XwPPHTRRunVyFhV1NVZVFJX2xbm3AhgH8xBqjzh77O9DT9tvWXmn3Vcsd
 mOiIqxihqnE7FFyB+Ihx/1TGLVhd+IWzcJj5YScMflDYexdsjCi2c7kfs
 nUiV4PUZxfMItcoismTrXr8VJ7aG5ofTUOY9vwflLtjCW3vmw14SpJM/H Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="300514791"
X-IronPort-AV: E=Sophos;i="5.96,172,1665471600"; d="scan'208";a="300514791"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 13:31:04 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="782397060"
X-IronPort-AV: E=Sophos;i="5.96,172,1665471600"; d="scan'208";a="782397060"
Received: from invictus.jf.intel.com ([10.165.21.134])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 13:31:04 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Nov 2022 13:30:15 -0800
Message-Id: <20221117213015.584417-2-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221117213015.584417-1-radhakrishna.sripada@intel.com>
References: <20221117213015.584417-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915/mtl: Skip doubling channel
 numbers for LPDDR4/LPDDDR5
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

MTL LPDDR5 reported 16b with 8 channels. Previous platforms
reported 32b with 4 channels and hence needed a multiplication
by a factor of 2. Skip increasing the channels for MTL.

v2: Use version check instead of platform check(MattR)

Bspec: 64631
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 4ace026b29bd..1c236f02b380 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -439,7 +439,8 @@ static int tgl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 		return ret;
 	}
 
-	if (dram_info->type == INTEL_DRAM_LPDDR4 || dram_info->type == INTEL_DRAM_LPDDR5)
+	if (DISPLAY_VER(dev_priv) < 14 &&
+	    (dram_info->type == INTEL_DRAM_LPDDR4 || dram_info->type == INTEL_DRAM_LPDDR5))
 		num_channels *= 2;
 
 	qi.deinterleave = qi.deinterleave ? : DIV_ROUND_UP(num_channels, is_y_tile ? 4 : 2);
-- 
2.34.1

