Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A30A4960D3D
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2024 16:12:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F01B10E31B;
	Tue, 27 Aug 2024 14:12:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BZrRNliP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA9B110E33F
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Aug 2024 14:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724767926; x=1756303926;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=A2gemx9cScbmbL/4LKVCoPfGZN5DRqpj+B0ml/Oa4sE=;
 b=BZrRNliPu9+hRJ9KHoIt6NHZu85+r/aif9bRkzCTsxyz9Sf4baxUrSVU
 PjGAM19qN+reou1E+fLTURGW98juifYycUhYp5cCABbbZrogDvolJEZCo
 w/6QQaKeYulxaqel6TJstsQGYcMIdrU6IBw6i5pmIp+wpErvTdcHB/FOv
 LMSGOt8m2Qx0gGi5K0V6BzoxBxupxvmXoSqsbxo9vxeIb+VCARHr/2Ax7
 PM59ctRSfWH6e1DSsk35AdJvEOvaoD3+Nhsxq91SKcOv2FPTzeR4iGQIq
 FQCcfed1QiHIX2DO2ENqxAr+AayWb0IDBca1vMPnJS7RA0w/Ma9ZzKIn1 w==;
X-CSE-ConnectionGUID: 7+H2b01jRoGcnciG4YF8lA==
X-CSE-MsgGUID: ni5+aRiFTQKbjHZnL9JItA==
X-IronPort-AV: E=McAfee;i="6700,10204,11177"; a="33819256"
X-IronPort-AV: E=Sophos;i="6.10,180,1719903600"; d="scan'208";a="33819256"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 07:12:06 -0700
X-CSE-ConnectionGUID: jWdA3WIyT52eJJAlU522EQ==
X-CSE-MsgGUID: q1wUtljySFaO1K8MQMTP6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,180,1719903600"; d="scan'208";a="67707001"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by orviesa003.jf.intel.com with ESMTP; 27 Aug 2024 07:12:05 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: [PATCH] drm/i915/mtl: Update PLL c20 phy value for DP uhbr20
Date: Tue, 27 Aug 2024 19:43:56 +0530
Message-Id: <20240827141356.3024760-1-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
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

Update mtl c20 phy DP table for uhbr20 values according to the revised
specifications.

Bspec: 74165
Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 4a6c3040ca15..f73d576fd99e 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -923,10 +923,10 @@ static const struct intel_c20pll_state mtl_c20_dp_uhbr20 = {
 		},
 	.mplla = { 0x3104,	/* mplla cfg0 */
 		0xd105,		/* mplla cfg1 */
-		0xc025,		/* mplla cfg2 */
-		0xc025,		/* mplla cfg3 */
-		0xa6ab,		/* mplla cfg4 */
-		0x8c00,		/* mplla cfg5 */
+		0x9217,		/* mplla cfg2 */
+		0x9217,		/* mplla cfg3 */
+		0x8c00,		/* mplla cfg4 */
+		0x759a,		/* mplla cfg5 */
 		0x4000,		/* mplla cfg6 */
 		0x0003,		/* mplla cfg7 */
 		0x3555,		/* mplla cfg8 */
-- 
2.34.1

