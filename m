Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E399960448
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2024 10:21:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7126210E245;
	Tue, 27 Aug 2024 08:21:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K+nQGhA5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A98CC10E114;
 Tue, 27 Aug 2024 08:21:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724746912; x=1756282912;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xqVM/UbUEhz1fSAgRgUsancKqyBpEklmWnqcL57ia3M=;
 b=K+nQGhA50CjMx9A6sa4I+M1vuOYBbkTi9kp6owEONedL/eHogPndWMc9
 41AQ1BirJ56hRp9KtrsDguf3nT3imqA5nqiTmtFlresSrWGa4VENoAs4K
 T/a6hSJbSLfauJrnPnUAVSC/KA7obi4ZzWqILbF2J2N5/a7KS74nnbhS9
 oH8v6m8n74tl/eSoJXaEmIt2BBNyKNq5bZLo5H1E2FB6nji9qKowJTS3F
 g/sSA0+ZHEkL8trDTgCorfUhqcd0caId9BxfPOizo/hs294EKZYgRXKH0
 tzOhpPRFKG1VVIpaTdEzVjNnrpQElku69z2MKUhkpI7z0H5xxFXtIPUrY w==;
X-CSE-ConnectionGUID: mDHSWhYKTZOVgfRiXx9nQg==
X-CSE-MsgGUID: N75m03mLQuyVpL1thrpFXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11176"; a="40679590"
X-IronPort-AV: E=Sophos;i="6.10,180,1719903600"; d="scan'208";a="40679590"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 01:21:52 -0700
X-CSE-ConnectionGUID: AG+YHuJbT56cajKLj2BWig==
X-CSE-MsgGUID: vtx6ebkMStaHBODxqy/8WA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,180,1719903600"; d="scan'208";a="62846265"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmviesa009.fm.intel.com with ESMTP; 27 Aug 2024 01:21:50 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCHv2] drm/i915/display: BMG supports UHBR13.5
Date: Tue, 27 Aug 2024 13:42:05 +0530
Message-Id: <20240827081205.136569-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
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

UHBR20 is not supported by battlemage and the maximum link rate
supported is UHBR13.5

v2: Replace IS_DGFX with IS_BATTLEMAGE (Jani)

HSD: 16023263677
Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 789c2f78826d..99a365a945ae 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -528,6 +528,10 @@ static void
 intel_dp_set_source_rates(struct intel_dp *intel_dp)
 {
 	/* The values must be in increasing order */
+	static const int bmg_rates[] = {
+		162000, 216000, 243000, 270000, 324000, 432000, 540000, 675000,
+		810000,	1000000, 1350000,
+	};
 	static const int mtl_rates[] = {
 		162000, 216000, 243000, 270000, 324000, 432000, 540000, 675000,
 		810000,	1000000, 2000000,
@@ -558,8 +562,13 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
 		    intel_dp->source_rates || intel_dp->num_source_rates);
 
 	if (DISPLAY_VER(dev_priv) >= 14) {
-		source_rates = mtl_rates;
-		size = ARRAY_SIZE(mtl_rates);
+		if (IS_BATTLEMAGE(dev_priv)) {
+			source_rates = bmg_rates;
+			size = ARRAY_SIZE(bmg_rates);
+		} else {
+			source_rates = mtl_rates;
+			size = ARRAY_SIZE(mtl_rates);
+		}
 		max_rate = mtl_max_source_rate(intel_dp);
 	} else if (DISPLAY_VER(dev_priv) >= 11) {
 		source_rates = icl_rates;
-- 
2.25.1

