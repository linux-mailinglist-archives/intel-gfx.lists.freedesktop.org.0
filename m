Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1931C7E9944
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Nov 2023 10:43:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98E3710E326;
	Mon, 13 Nov 2023 09:43:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 834EE10E326
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Nov 2023 09:43:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699868633; x=1731404633;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=COT5HTLzY01TiWcwuUTZx7gENcItZhA7w+mQsD+0FW0=;
 b=Bzgv1SB0VdozvDLpphXcZGx+ZdZTvYQf0dxOFSkivUZMRf+aPEgF5cIA
 7TUMOW+WJFvsb8yBQ/xKnj2hBkxQLrhEtheflCnK80tfc1IB3WSp9aSIZ
 46TlvL0cX2tE1LnqdL2vQgG1LF33nrG6CtqXXD1nwhltL/MPPI6AAua3c
 JAt6DV2ZC5IlFcsFW8x+PCKjyDSln6sxxzo/Et/cbxzFCDtk5D9k9BX/c
 kiAueM9y4oW5s/XEOG3rNpomuOK6+VZ8V2uWT+NwxU+ZK3XirbZYl/x9O
 Vd+3M88NL6Z297taM+58ze5x2BomTxqhtFEMZz+OvxmZlWnfmB+6MioEE A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10892"; a="11953849"
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; d="scan'208";a="11953849"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2023 01:43:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10892"; a="834673785"
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; d="scan'208";a="834673785"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmsmga004.fm.intel.com with ESMTP; 13 Nov 2023 01:43:50 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Nov 2023 11:37:37 +0200
Message-Id: <20231113093737.358137-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/mtl: Use int for entry setup frames
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

At least one TGL had regression when using u8 types
for entry setup frames calculation. So, let's switch
to use ints instead.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 3691f882e1c0..a4417e85f92a 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1093,12 +1093,12 @@ static bool _compute_psr2_wake_times(struct intel_dp *intel_dp,
 	return true;
 }
 
-static u8 intel_psr_entry_setup_frames(struct intel_dp *intel_dp,
-				       const struct drm_display_mode *adjusted_mode)
+static int intel_psr_entry_setup_frames(struct intel_dp *intel_dp,
+					const struct drm_display_mode *adjusted_mode)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	int psr_setup_time = drm_dp_psr_setup_time(intel_dp->psr_dpcd);
-	u8 entry_setup_frames = 0;
+	int entry_setup_frames = 0;
 
 	if (psr_setup_time < 0) {
 		drm_dbg_kms(&i915->drm,
-- 
2.34.1

