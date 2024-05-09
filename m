Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B72258C0A08
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2024 05:16:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3833110E106;
	Thu,  9 May 2024 03:16:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ksqSaZms";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCE9410E106
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 May 2024 03:16:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715224603; x=1746760603;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gtBaQ0jR1zAypAk+WXJzgZ6LceZbtCAsd6VqwE8uiHU=;
 b=ksqSaZmsNILNBHeSU1KBP9aCBj1oi9KvxMhRJo6tuhQ0i2DG6rx5F9W9
 SR3QRX/bvGCD5lTyDJviP9XnpnxFQXiyRR0NcOmMxxhSjJ7cWZo7yMgEL
 jPfxChpBUAtX2m0FqU1atBo1A+rk+6pLIrbwk7kxtB8TFJFMDtFpjjeBW
 2VUtvzUAaAXPoD0ShA8UCc4nNwYcnipW3bkS5P7KQUPY7Cp/fPw6B4l+w
 XaSBIU9i0lob4tvVNyM5r3CYahn0w2nvdVB5ZJQC5c/o+ki8EXC9N1wNJ
 XvI/RAfNmd8gWJXTafhfcvRNbB0B4sY6UxIJf1KpbtWOFKaNu9gbFmajp w==;
X-CSE-ConnectionGUID: DGpXF8luRm+iQUkH8Ld8lg==
X-CSE-MsgGUID: CC1pkTgcT+2iBVOCX/33fw==
X-IronPort-AV: E=McAfee;i="6600,9927,11067"; a="11247060"
X-IronPort-AV: E=Sophos;i="6.08,146,1712646000"; d="scan'208";a="11247060"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 20:16:42 -0700
X-CSE-ConnectionGUID: FJG6yNt8Sbe85vHV+blyxA==
X-CSE-MsgGUID: 9JbulEiGRumW1cJPAYgWpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,146,1712646000"; d="scan'208";a="28974146"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orviesa010.jf.intel.com with ESMTP; 08 May 2024 20:16:40 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org, jani.nikula@intel.com,
 ville.syrjala@intel.com
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCHv2 1/2] drm/i915/display/dp: Remove UHBR13.5 for icl
Date: Thu,  9 May 2024 08:36:45 +0530
Message-Id: <20240509030646.3037310-1-arun.r.murthy@intel.com>
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

Per Bspec display 14+ has uhbr13.5 Due to the retimer constraint none of
the Intel platforms support uhbr13.5. This has been removed for mtl
by the commit caf3d748f646 ("drm/i915/dp: Remove support for UHBR13.5")
This patch will remove the support for DG2.

v2: Reframed the commit msg (Jani)

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 163da48bc406..7098ca65701f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -507,7 +507,7 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
 	};
 	static const int icl_rates[] = {
 		162000, 216000, 270000, 324000, 432000, 540000, 648000, 810000,
-		1000000, 1350000,
+		1000000,
 	};
 	static const int bxt_rates[] = {
 		162000, 216000, 243000, 270000, 324000, 432000, 540000
-- 
2.25.1

